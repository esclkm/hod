<!-- BEGIN: MAIN -->

<div class="modal fade callForMeasureDialog" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
	<form action="{CONTACT_FORM_SEND}" method="POST" class="callForMeasureForm" data-modal='modal'>  
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">{PHP.cfg.cf_header}</h4>
      </div>
      <div class="modal-body">
			<div>{PHP.cfg.cf_text}</div>		
			<div class="contactResult">

			</div>
			<div class="contactForm">
				<div class="row-">
					<div class="marginbottom10">
						{CONTACT_FORM_PHONE}	
					</div>
					<div class="marginbottom10">
						{CONTACT_FORM_NAME}	
					</div>
					<div class="marginbottom10">
						{CONTACT_FORM_ADDR}	
					</div>
					<div class="marginbottom10">
						{CONTACT_FORM_TEXT}	
					</div>
				</div>
			</div>		
					
	  
		  
      </div>
      <div class="modal-footer">	
        <button type="button" class="btn btn-default" data-dismiss="modal">Закрыть</button>
		<button type="submit" name="rpagestate" value="0" class="btn btn-primary">Отправить заявку</button>
      </div>
    </div>
	</form>					
  </div>
</div>



				
<!-- END: MAIN -->