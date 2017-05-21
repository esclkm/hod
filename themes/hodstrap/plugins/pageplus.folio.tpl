<!-- BEGIN: MAIN -->

<div class="row indexslider">
<!-- BEGIN: PAGE_ROW -->
	<div class="col-xs-2 marginbottom20 tovar">
		<!-- IF {PHP.usr.isadmin} -->
		<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
			<span class="glyphicon glyphicon-edit"></span>
		</a>
		<!-- ENDIF -->		
		<a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">
			<img class="img-responsive" src="{PAGE_ROW_DEMO|sshort_download($this, 400)}" />
		</a>

	</div>	
<!-- END: PAGE_ROW -->
</div>



<!-- END: MAIN -->