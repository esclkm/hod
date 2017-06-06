<!-- BEGIN: MAIN -->
<section class="page-content">
	<div class="container container-fluid">		
		<h1>Контакты</h1>
	</div>
</section>
	
	

<div class="container container-fluid">

	<div class="row">

		<div class="col-md-9 col-md-push-3">
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<!-- IF {PHP.cfg.plugin.contact.about} -->
			<p>{PHP.cfg.plugin.contact.about}</p>
			<!-- ENDIF -->
			<!-- IF {PHP.cfg.plugin.contact.map} -->
			<p>{PHP.cfg.plugin.contact.map}</p>
			<!-- ENDIF -->
			<!-- BEGIN: FORM -->
			<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form">			
				<div class="margintop10 row form-horizontal">
					<label class="col-md-2 control-label">{PHP.L.Username}</label>
					<div class="col-md-10">
						{CONTACT_FORM_AUTHOR|cot_rc_modify('$this', 'class="form-control"')}
					</div>
				</div>
				<div class="clearfix"></div>	
				<div class="margintop10 row form-horizontal">
					<label class="col-md-2 control-label">{PHP.L.Email}</label>
					<div class="col-md-10">
							{CONTACT_FORM_EMAIL|cot_rc_modify('$this', 'class="form-control"')}
					</div>
				</div>
				<!-- BEGIN: EXTRAFLD -->
				<div class="clearfix"></div>	
				<div class="margintop10 row form-horizontal">
					<label class="col-md-2 control-label">{CONTACT_FORM_EXTRAFLD_TITLE}</label>
					<div class="col-md-10">
						{CONTACT_FORM_EXTRAFLD}
					</div>
									
				</div>
				<!-- END: EXTRAFLD -->
				<input type="hidden" name="rsubject" value="Обратная связь" />		
				<div class="clearfix"></div>
				<div class="margintop10 row  form-horizontal">
					<label class="col-md-2 control-label">{PHP.L.Text}</label>
					<div class="col-md-10">
						{CONTACT_FORM_TEXT|cot_rc_modify('$this', 'class="form-control" style=""')}
					</div>
				</div>
				<div class="clearfix"></div>
				<!-- BEGIN: CAPTCHA -->
				<div class="margintop10 row form-horizontal">
					<label class="col-md-2 control-label">{CONTACT_FORM_VERIFY_IMG}</label>
					<div class="col-md-10">
							{CONTACT_FORM_VERIFY|cot_rc_modify('$this', 'class="form-control"')}
					</div>						
				</div>
				<div class="clearfix"></div>		
				<!-- END: CAPTCHA -->
				
				<div class="margin10 text-center">
					<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
				</div>		
			</form>
			<!-- END: FORM -->
		</div>
		<div class="col-md-3 col-md-pull-9">
			<div class="alert alert-info" role="alert">
				<strong>Внимательно заполните</strong> форму обратной связи<br/>
				И наши менеджеры свяжутся с Вами в ближайшее время!
			</div>
       
		</div>
	</div>	
	<div class="clearfix"></div>	

</div>
<!-- END: MAIN -->