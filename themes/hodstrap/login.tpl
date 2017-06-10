<!-- BEGIN: MAIN -->
<section class="page-content">
	<div class="container container-fluid">	
		<h1 class="h1">{USERS_AUTH_TITLE}</h1>	
	</div>
<br/><br/><br/><br/>
	<div class="container container-fluid">
		<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
		<div class="error clear">
			<h4 class="h4">{PHP.L.users_maintenance1}</h4>
			<p>{PHP.L.users_maintenance2}</p>
		</div>
		<!-- END: USERS_AUTH_MAINTENANCE -->		
		<!-- IF {PHP.usr.id} -->
		<p>{PHP.L.users_loggedinas} <strong>{PHP.usr.name}</strong>.<br/>{PHP.L.users_logoutfirst}</p>
		<p><a class="button" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a></p>
		<!-- ELSE -->
		<form name="login" action="{USERS_AUTH_SEND}" method="post" class="form-horizontal col-md-offset-3 col-md-6">
			<div class="form-group">
				<label class="col-sm-4 control-label">{PHP.L.users_nameormail}:</label>
				<div class="col-sm-8">
					{USERS_AUTH_USER}
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-4 control-label">{PHP.L.Password}:</label>
				<div class="col-sm-8">
					{USERS_AUTH_PASSWORD}
				</div>
			</div>
			<div class="form-group">

				<div class="col-sm-offset-4 col-sm-8">
					{USERS_AUTH_REMEMBER}&nbsp; {PHP.L.users_rememberme}
					</div>
				</div>						
				<div class="col-sm-offset-4 col-sm-8 publish margintop10 marginbottom10">
					<button type="submit" name="rlogin" value="0" class="btn white-btn">{PHP.L.Login}</button>

				</div>
			</form>
			<!-- ENDIF -->
		</div>
	</section>

	<!-- END: MAIN -->