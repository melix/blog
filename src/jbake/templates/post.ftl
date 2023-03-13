<#include "header.ftl">
	
	<#include "menu.ftl">
	
	<div class="page-header">
		<h1>${content.title}</h1>
	</div>

	<p><em>${content.date?string("dd MMMM yyyy")}</em></p>
	<p><em>Tags: <#list content.tags as tag></em>
		<a href="/blog/tags/${tag?trim?replace(' ','-')}.html">${tag}</a> 
	</#list></p>
	<p>${content.body}</p>
   
	<hr>
	
<#include "footer.ftl">
