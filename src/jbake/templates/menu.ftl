	<!-- Fixed navbar -->
      <div class="navbar navbar-default navbar-fixed-top" role="navigation">
          <div class="container">
	    <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/blog">Cédric Champeau's blog</a>
	    </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">                
                <li><a href="/blog/about.html">About</a></li>
		<li><a href="/blog/projects.html">Projects</a></li>
		<li><a href="/blog/astronomy.html">Astronomy</a></li>
		<li class="dropdown">
          		<a data-toggle="dropdown" href="#">Topics<b class="caret"></b></a>
		          <ul class="dropdown-menu" role="menu">
				<li><a href="/blog/tags/gradle.html">Gradle</a></li>
                <li><a href="/blog/tags/groovy.html">Groovy</a></li>
                <li><a href="/blog/tags/micronaut.html">Micronaut</a></li>
		          </ul>
	       </li>
                <li><a href="/blog/${config.feed_file}">Feed</a></li>                
              </ul>
	      <ul class="nav navbar-nav navbar-right">
	      	<li><a href="https://github.com/melix"><i class="fa fa-github"></i></a></li>
	        <li><a href="https://twitter.com/CedricChampeau"><i class="fa fa-twitter"></i></a>
	      </ul>
            </div>
          </div>
      </div>
      <div class="container">
