<!-- BEGIN: MAIN -->
<div class="callForMeasure">
	<div class="contactResult">
		<p class="h1">Оставить заявку</p>
	</div>
	<form action="{CONTACT_FORM_SEND}" method="POST" class="callForMeasureForm">
			<div class="group">      
				{CONTACT_FORM_NAME|cot_rc_modify('$this', 'class="", placeholder="" required="required"')}
				<span class="bar"></span>
				<label>Имя</label>
			</div>
			<div class="group">      
				{CONTACT_FORM_PHONE|cot_rc_modify('$this', 'class="", placeholder="" required="required"')}
				<span class="bar"></span>
				<label>Телефон</label>
			</div>
			<div class="group">      
				{CONTACT_FORM_ADDR|cot_rc_modify('$this', 'class="", placeholder="" required="required" type="email"')}
				<span class="bar"></span>
				<label>Электронная почта</label>
			</div>
			<div class="group">      
				{CONTACT_FORM_TEXT|cot_rc_modify('$this', 'class="", placeholder="" required="required" rows="2"')}	
				<span class="bar"></span>
				<label>Сообщение</label>
			</div>
			<div class="text-right">
				<button class="btn btn-default">Отправить заявку</button>	
			</div>		
	</form>
	

	
</div>
				
<!-- END: MAIN -->