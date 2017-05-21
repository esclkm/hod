<!-- BEGIN: MAIN -->
<h4>Основное</h4>
<div class="form-horizontal">
<!-- BEGIN: EXTRAFLD -->
	<!-- IF {FORM_EXTRAFLD_TYPE} == 'separator' -->
	<h4>{FORM_EXTRAFLD_TITLE}</h4>

	<!-- ELSE -->
	
		<!-- IF {FORM_EXTRAFLD_TYPE} != 'checkbox' -->
		<div class="form-group">
		  <label class="col-sm-3 control-label">{FORM_EXTRAFLD_TITLE}</label>
		  <div class="col-sm-9">
			  
			{FORM_EXTRAFLD}
		  </div>
		</div>
		<div class="clearfix"></div>  
		<!-- ELSE -->
		<div class="col-sm-offset-3 col-sm-9">
			<div class="checkbox">
				{FORM_EXTRAFLD}
			</div>
		</div>	
		<div class="clearfix"></div> 	
		<!-- ENDIF -->
	<!-- ENDIF -->
	
<!-- END: EXTRAFLD -->
</div>
<div class="clearfix"></div> 
<!-- END: MAIN -->