<!-- BEGIN: MAIN -->
<ul class="nav nav-pills nav-stacked">
	<!-- BEGIN: CATS -->
	<li <!-- IF {ROW_SELECTED}-->class="active"<!-- ENDIF --> >
		
		<a href="{ROW_HREF}">
			{ROW_TITLE}
		<!-- IF {ROW_COUNT} --><span class="pull-right small"> ({ROW_COUNT})</span><!-- ENDIF -->	
			</a>
		
		<!-- IF {ROW_SUBCAT} -->
			{ROW_SUBCAT}
		<!-- ENDIF -->
	</li>
	<!-- END: CATS -->
</ul>
<!-- END: MAIN -->