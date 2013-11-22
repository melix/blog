<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
		<h1>Blog</h1>
	</div>
        <#assign lastposts = posts[0..3]>
	<#list lastposts as post>
  		<#if (post.status == "published")>
  			<a href="/blog${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
			<p><em>Tags: <#list post.tags as tag></em>${tag} </#list></p>
			<a href="https://twitter.com/share" class="twitter-share-button" data-url="http://melix.github.io/blog${post.uri}" data-via="CedricChampeau" data-lang="fr">Tweeter</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
			<div class="g-plusone" data-size="medium" data-href="http://melix.github.io/blog${post.uri}"></div>

  			<p>${post.body}</p>
			<p><a href="/blog${post.uri}#disqus_thread">Comments</a></p>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="/blog/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
