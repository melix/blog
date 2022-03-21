<#include "header.ftl">

	<#include "menu.ftl">
	
	<div class="page-header">
		<h1>Tags</h1>
	</div>
	
	<ul>
		<#list tags?map(tag -> {"uri": tag.uri, "name": tag.name, "count": tag.tagged_posts?size})?filter(tag -> tag.count > 0)?sort_by("count")?reverse as tag>
			<li><a href="/blog/${tag.uri}">${tag.name}</a> (${tag.count})</li>
		</#list>
	</ul>
	
<#include "footer.ftl">

