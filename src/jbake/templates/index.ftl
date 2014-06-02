<#include "header.ftl">
	
	<#include "menu.ftl">

	<div class="page-header">
		<h1>Blog</h1>
		<h2>Next conferences</h2>
		<div class="lanyrd-target-splat"><a href="http://lanyrd.com/profile/cedricchampeau/" class="lanyrd-splat lanyrd-number-3 lanyrd-context-future" rel="me">My conferences on Lanyrd</a></div>
	</div>
        <#assign lastposts = posts[0..3]>
	<#list lastposts as post>
  		<#if (post.status == "published")>
  			<a href="/blog/${post.uri}"><h1>${post.title}</h1></a>
  			<p>${post.date?string("dd MMMM yyyy")}</p>
			<p><em>Tags: </em><#list post.tags as tag>
		<a href="/blog/tags/${tag?trim?replace(' ','-')}.html">${tag}</a> 
	</#list></p>
			<a href="https://twitter.com/share" class="twitter-share-button" data-text="${post.title}" data-url="http://melix.github.io/blog${post.uri}" data-via="CedricChampeau" data-lang="fr">Tweeter</a>
<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
			<div class="g-plusone" data-size="medium" data-href="http://melix.github.io/blog${post.uri}"></div>
		        <script id='fbvpgng${post.uri}'>(function(i){var f,s=document.getElementById(i);f=document.createElement('iframe');f.src='//api.flattr.com/button/view/?uid=CedricChampeau&button=compact&url='+encodeURIComponent('http://melix.github.io/blog${post.uri}');f.title='Flattr';f.height=20;f.width=110;f.style.borderWidth=0;s.parentNode.insertBefore(f,s);})('fbvpgng${post.uri}');</script>

			<script type="IN/Share" data-url="http://melix.github.io/blog${post.uri}" data-counter="right"></script>
			<div class="fb-like" data-href="http://melix.github.io/blog${post.uri}" data-layout="button_count" data-action="like" data-show-faces="false" data-share="true"></div>

  			<p>${post.body}</p>
			<p><a href="/blog${post.uri}#disqus_thread">Comments</a></p>
  		</#if>
  	</#list>
	
	<hr />
	
	<p>Older posts are available in the <a href="/blog/${config.archive_file}">archive</a>.</p>

<#include "footer.ftl">
