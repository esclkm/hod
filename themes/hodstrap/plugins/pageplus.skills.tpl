<!-- BEGIN: MAIN -->
	<h2>Наши навыки</h2>
	<div class="row">
<!-- BEGIN: PAGE_ROW -->
	<div class="col-md-4">
		<div class="skill {PAGE_ROW_ALIAS}">

			<h4 class="hidden-xs hidden-sm">
				<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
				<!-- IF {PHP.usr.isadmin} -->
				<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
					<span class="glyphicon glyphicon-edit"></span>
				</a>
				<!-- ENDIF -->
			</h4>
			<div class="textbox">
				{PAGE_ROW_TEXT}
			</div>
		</div>
	</div>
	<!-- IF {PAGE_ROW_NUM} % 3 == 0 -->
	<div class="clearfix"></div>
	<!-- ENDIF -->	
<!-- END: PAGE_ROW -->
</div>
<div class="clearfix"></div>


<!-- END: MAIN -->