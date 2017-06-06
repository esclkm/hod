<!-- BEGIN: MAIN -->
<section class="page-content">
	<div class="container container-fluid">		
		<h1>
			{PHP.L.Users}	
		</h1>						
	</div>
</section>
<div class="container container-fluid">
			{USERS_TITLE}
			<div class="table-responsive">
			<table class="table table-bordered">
				<tr>
					<td class="coltop" class="width5">{USERS_TOP_PM}</td>
					<td class="coltop" class="width20">{USERS_TOP_NAME}</td>
					<td class="coltop" class="width20">{USERS_TOP_GRPTITLE}</td>
					<td class="coltop" class="width15">{USERS_TOP_GRPLEVEL}</td>
					<td class="coltop" class="width15">{USERS_TOP_COUNTRY}</td>
					<td class="coltop" class="width25">{USERS_TOP_REGDATE}</td>
				</tr>
<!-- BEGIN: USERS_ROW -->
				<tr>
					<td class="centerall">{USERS_ROW_PM}</td>
					<td>{USERS_ROW_NAME}&nbsp;{USERS_ROW_TAG}</td>
					<td>{USERS_ROW_MAINGRP}</td>
					<td class="centerall">{USERS_ROW_MAINGRPSTARS}</td>
					<td class="centerall">{USERS_ROW_COUNTRYFLAG} {USERS_ROW_COUNTRY}</td>
					<td class="centerall">{USERS_ROW_REGDATE}</td>
				</tr>
<!-- END: USERS_ROW -->
			</table>
			</div>
</div>
<div class="container container-fluid">
			<h2 class="prefs">{PHP.L.Filters}</h2>
			<form action="{USERS_TOP_FILTER_ACTION}" method="post">
				<div class="row">
					<div class="col-sm-3">{USERS_TOP_FILTERS_COUNTRY}</div>
					<div class="col-sm-3">{USERS_TOP_FILTERS_MAINGROUP}</div>
					<div class="col-sm-3">{USERS_TOP_FILTERS_GROUP}</div>
					<div class="col-sm-3">{USERS_TOP_FILTERS_SEARCH}</div>
				</div>
				<div class="text-right margintop10">
					<button type="submit" class="btn btn-default">{PHP.L.Submit}</button>
				</div>
			</form>
		
		<p class="text-center"><span>{PHP.L.users_usersperpage}: {USERS_TOP_MAXPERPAGE}</span> <span>{PHP.L.users_usersinthissection}: {USERS_TOP_TOTALUSERS}</span></p>
	<div class="text-center">
		<ul class="pagination">
			{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}
		</ul>
	</div>
</div>
<!-- END: MAIN -->