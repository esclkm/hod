<!-- BEGIN: MAIN -->
<div class="page-header">
	<div class="container container-fluid">		
		<h1>{PHP.L.plu_title}</h1>
	</div>
</div>
	
	

<div class="container container-fluid">


		<table class="table table-striped">
		<tr><td>{PHP.L.plu_sections}:</td><td style="text-align:right;">{FORUMSTATS_TOTALSECTIONS}</td></tr>
		<tr><td>{PHP.L.plu_topics}: </td><td style="text-align:right;">{FORUMSTATS_TOTALTOPICS}</td></tr>
		<tr><td>{PHP.L.plu_posts}: </td><td style="text-align:right;">{FORUMSTATS_TOTALPOSTS}</td></tr>
		<tr><td>{PHP.L.plu_views}: </td><td style="text-align:right;">{FORUMSTATS_TOTALVIEWS}</td></tr>
		</table>
		<h4>{PHP.L.plu_repliedtop10}:</h4>
		<table class="table table-striped">
<!-- BEGIN: FORUMSTATS_REPLIEDTOP_USER -->
		<tr>
		<td>#{FORUMSTATS_REPLIEDTOP_II}</td>
		<td> {FORUMSTATS_REPLIEDTOP_FORUMS}</td><td> <a href="{FORUMSTATS_REPLIEDTOP_URL}">{FORUMSTATS_REPLIEDTOP_TITLE}</td><td> ({FORUMSTATS_REPLIEDTOP_POSTCOUNT})
		</td></tr> 
<!-- END: FORUMSTATS_REPLIEDTOP_USER -->
<!-- BEGIN: FORUMSTATS_REPLIEDTOP_NO_USER -->
		<tr><td>#{FORUMSTATS_REPLIEDTOP_II}</td><td>{FORUMSTATS_REPLIEDTOP_FORUMS}</td><td>{PHP.L.plu_hidden}</td><td> ({FORUMSTATS_REPLIEDTOP_POSTCOUNT})
		</td></tr> 
<!-- END: FORUMSTATS_REPLIEDTOP_NO_USER -->
</table>
		<h4>{PHP.L.plu_viewedtop10}:</h4>
<table class="table table-striped">		
<!-- BEGIN: FORUMSTATS_VIEWEDTOP_USER -->
		<tr><td>#{FORUMSTATS_VIEWEDTOP_II}</td><td>{FORUMSTATS_VIEWEDTOP_FORUMS} </td><td>
		<a href="{FORUMSTATS_VIEWEDTOP_URL}">{FORUMSTATS_VIEWEDTOP_TITLE}</a></td><td> ({FORUMSTATS_VIEWEDTOP_VIEWCOUNT})
		</td></tr> 
<!-- END: FORUMSTATS_VIEWEDTOP_USER -->
<!-- BEGIN: FORUMSTATS_VIEWEDTOP_NO_USER -->
		<tr><td>#{FORUMSTATS_VIEWEDTOP_II}</td><td>{FORUMSTATS_VIEWEDTOP_FORUMS}</td><td>{PHP.L.plu_hidden}</td><td> ({FORUMSTATS_VIEWEDTOP_VIEWCOUNT})
		</td></tr> 
<!-- END: FORUMSTATS_VIEWEDTOP_NO_USER -->
</table>
		<h4>{PHP.L.plu_posterstop10}:</h4>
<!-- BEGIN: POSTERSTOP -->
		#{FORUMSTATS_POSTERSTOP_II}: {FORUMSTATS_POSTERSTOP_USER_NAME} ({FORUMSTATS_POSTERSTOP_USER_POSTCOUNT})<br />
<!-- END: POSTERSTOP -->


    </div><!-- end main content area -->
<!-- END: MAIN -->