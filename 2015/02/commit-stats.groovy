String normalizeUser(String user) {
    switch (user) {
        case 'aalmiray':
            return 'Andres Almiray'
        case 'Larry J':
            return 'Larry Jacobson'
        case 'Cedric Champeau':
            return 'Cédric Champeau'
        case 'musketyr':
            return 'Vladimir Orany'
        case 'javaboon':
            return 'Richard Hightower'
        case 'jbaruch':
        case 'baruch':
            return 'Baruch Sadogursky'
        case 'jnorthr':
            return 'James Northrop'
        default:
            user
    }
}

Map stats(int year) {
    def map = [:]
    def cmd = "git shortlog -sn --no-merges -b master --after=$year-01-01 --before=$year-31-12".toString()
    def p = cmd.execute()
    p.in.eachLine {
        def line = it.trim()
        def (nb, user) = line.split(/\t/)
        nb = nb.toInteger()
        map[normalizeUser(user)] = nb
    }
    map
}

boolean isSponsored(String name, int year) {
    boolean sp = year >= 2007 &&
            name in ['Cédric Champeau', 'Guillaume Laforge', 'Jochen Theodorou',
                     'Graeme Rocher', 'Jeff Scott Brown', 'Lari Hotari','Alex Tkachman']
    if ('Alex Tkachman'==name && sp) {
        sp = year<2010
    }
    sp
}
def overall = [:].withDefault {0}
int overallsum = 0

(2003..2015).each { int yy ->
    def yearly = stats(yy)
    int total = yearly.values().sum()

    def sponsoredEntries = yearly.entrySet().findAll { isSponsored(it.key, yy) }
    int pivotal = sponsoredEntries ? sponsoredEntries.sum { it.value } : 0
    int community = total - pivotal
    int pp = 100 * pivotal / total
    int cp = 100 * community / total
    println """== Year $yy

*Total*: $total commits ${pivotal?'*Sponsored*: '+pivotal+' commits ('+pp+'%) ':''}*Community*: ${community} commits ($cp%)
"""
    boolean first = true
    yearly.each { name, nb ->
        println ". ${first?'*[red]#':''}$name${isSponsored(name, yy) ? ' (Sponsored)' : ''} : $nb commits (${(int) 100 * nb / total}%)${first?'#*':''}"
        overall[name] += nb
        overallsum += nb
        first=false
    }
    println()
}

println "Overall"
def top10 = overall.collect {[it.key, it.value]}.sort {-it[1]}[0..9]
top10.each { name, nb ->
    println ". $name : $nb commits (${(int) 100 * nb / overallsum}%)"
}
