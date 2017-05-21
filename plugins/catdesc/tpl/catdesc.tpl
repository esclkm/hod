<!-- BEGIN: MAIN -->
<div class="page-header">
	<div class="container container-fluid">
		
		<h1>
			{PHP.L.Category}: <a href="{CATDESC_CATURL}">{CATDESC_CATTITLE}</a>
		</h1>
	</div>
</div>
<div class="container container-fluid">

	<form name="catdescform" id="catdescform" action="{CATDESC_ACTION}" method="POST" enctype="multipart/form-data">
		<div class="form-group">
			<label>{PHP.L.Title}</label>
			{CATDESC_EDIT_TITLE}
		</div>
		<div class="form-group">
			<label>{PHP.L.Description}</label>
			{CATDESC_EDIT_DESC}
		</div>	
		<div class="form-group">
			{CATDESC_EDIT_LOCKED} {PHP.L.Locked}
		</div>	
		<div class="form-group">
			<label>{PHP.L.Text} 1:</label>
			{CATDESC_EDIT_TEXT}
		</div>	
		<div class="form-group">
			<label>{PHP.L.Text} 2:</label>
			{CATDESC_EDIT_TEXT_AFTER}
		</div>		
		<!-- BEGIN: EXTRAFLD -->
		<div class="form-group">
			<label>{CATDESC_EDIT_EXTRAFLD_TITLE}:</label>
			{CATDESC_EDIT_EXTRAFLD}
		</div>	
		<!-- END: EXTRAFLD -->
		<div class="publish margintop10 marginbottom10">
			<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
			<a href="{CATDESC_EDIT_CONFIG_URL}" class="btn btn-default pull-right">{PHP.L.Configuration}</a>
			<a href="{CATDESC_EDIT_RIGHTS_URL}" class="btn btn-default pull-right">{PHP.L.Rights}</a>
		</div>
	</form>
</div>

<!-- END: MAIN -->