<!-- BEGIN: MAIN -->
<div class="callForMeasure">
	<div class="container">
		<h2 class="wow fadeInUpBig" data-wow-offset="30" data-wow-duration="1.5s">{PHP.cfg.cf_bot_header|page_color_header}</h2>
		<span class="small-border wow fadeInUpBig" data-wow-offset="30" data-wow-duration="1.5s" data-animation="fadeInUp"></span>
		<form action="{CONTACT_FORM_SEND}" method="POST" class="callForMeasureForm">
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<div class="contactResult">

					</div>
				</div>
			</div>
			<div class="contactForm">
				<div class="row">
					<div class="col-md-5 col-md-offset-1 sameh">
						<div class="input wow fadeInLeft">
							{CONTACT_FORM_PHONE}
						</div>
						<div class="input wow fadeInLeft">
							{CONTACT_FORM_NAME}	
						</div>
						<div class="input wow fadeInLeft">
							{CONTACT_FORM_ADDR}	
						</div>			
					</div>
					<div class="col-md-5  wow fadeInRight sameh">
						{CONTACT_FORM_TEXT}	
					</div>
				</div>
				<div class="row">
					<div class="col-md-2 col-md-offset-9 text-right wow fadeInUp">
						<button type="submit" name="rpagestate" value="0" class="btn btn-primary">Отправить заявку</button>
					</div>
				</div>
			</div>		
		</form>				
	</div>
</div>
				
<!-- END: MAIN -->