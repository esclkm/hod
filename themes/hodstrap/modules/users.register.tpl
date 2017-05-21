<!-- BEGIN: MAIN -->
<div class="page-header">
	<div class="container container-fluid">	
			<h1>{USERS_REGISTER_TITLE}</h1>	
	</div>
</div>		
<div class="container container-fluid">
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" >
			<div class="form-group">
				<label>{PHP.L.Username} *:</label>
				{USERS_REGISTER_USER}
			</div>
			<div class="form-group">
				<label>{PHP.L.users_validemail} *:</label>
				{USERS_REGISTER_EMAIL}
				<p class="small">{PHP.L.users_validemailhint}</p>
			</div>
			<div class="form-group">
				<label>{PHP.L.Password} *:</label>
				{USERS_REGISTER_PASSWORD}
			</div>
			<div class="form-group">
				<label>{PHP.L.users_confirmpass} *:</label>
				{USERS_REGISTER_PASSWORDREPEAT}
			</div>
			<div class="form-group">
				<label>{USERS_REGISTER_VERIFYIMG} *</label>
				{USERS_REGISTER_VERIFYINPUT}
			</div>
			<div class="publish margintop10 marginbottom10">
				<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
			</div>
	</form>
</div>

<!-- END: MAIN -->