<!-- BEGIN: MAIN -->
<h2 class="">
	{PAGE_SHORTTITLE}
	<!-- IF {PHP.usr.isadmin} -->
	<a class="small pull-right" href="{PAGE_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
		<span class="glyphicon glyphicon-edit"></span>
	</a>
	<!-- ENDIF -->
</h2>
<div class="row">
	<div class="col-md-7">		
		<div class="textbox">
			{PAGE_TEXT}
		</div>
	</div>
	<div class="col-md-5">
			{PAGE_GITHUB|github_commits($this, '', 1)}
			{PAGE_GITHUB|github_issues($this, '', 3)}
	</div>
</div>
<!-- END: MAIN -->