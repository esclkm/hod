<!-- BEGIN: MAIN -->
<div class="page-header">
	<div class="container container-fluid">		
		<h1>Карта сайта</h1>
	</div>
</div>
	
	

<div class="container container-fluid">
	<h2>Страницы</h2>
	<!-- BEGIN: LIST -->
	<div class="extra-wrap pad-bot textarea">
	<!-- BEGIN: CATLIST -->
	<ul class="sitemap_list">
		<!-- BEGIN: SYSTEM -->
		<li><a href="{ROW_HREF}">{ROW_TITLE}</a></li>
		<!-- END: SYSTEM -->
		<!-- BEGIN: CATS -->
		<li><a href="{ROW_HREF}">{ROW_TITLE} <!-- IF {ROW_PAGECOUNT} --> ({ROW_PAGECOUNT}) <!-- ENDIF --></a>
			{ROW_SUBCAT}
		</li>
		<!-- END: CATS -->
	</ul>
	<!-- END: CATLIST -->
	</div>
	<!-- END: LIST -->
	<h2>Форумы</h2>
	<!-- BEGIN: FORUMS -->
	<div class="extra-wrap pad-bot textarea">
	<!-- BEGIN: CATLIST -->
	<ul class="sitemap_list">
		<!-- BEGIN: SYSTEM -->
		<li><a href="{ROW_HREF}">{ROW_TITLE}</a></li>
		<!-- END: SYSTEM -->
		<!-- BEGIN: CATS -->
		<li><!-- IF {ROW_LEVEL} > 1 --><a href="{ROW_FORUMSHREF}"><!-- ENDIF -->{ROW_TITLE} <!-- IF {ROW_PAGECOUNT} --> ({ROW_PAGECOUNT}) <!-- ENDIF --><!-- IF {ROW_LEVEL} > 1 --></a><!-- ENDIF -->
			{ROW_SUBCAT}
		</li>
		<!-- END: CATS -->
	</ul>
	<!-- END: CATLIST -->
	</div>
	<!-- END: FORUMS -->
</div>

<!-- END: MAIN -->