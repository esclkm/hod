<!-- BEGIN: MAIN -->
<script>
$(document).ready(function(){
    $('#callForMeasureForm').submit(function(){

        $.post('index.php?r=contact_bottom', $(this).serialize(), function(data){
             
            // show the response
			var obj = jQuery.parseJSON(data);
		//	alert(data);
			if(obj.status == 'OK')
			{
				$('#contactResult').html('<div class="alert alert-success" role="alert"><p>' + obj.message + '</p></div>');
				$('#contactForm').hide();
			}
			else
			{
				$('#contactResult').html('<div class="alert alert-danger" role="alert"><p>' + obj.message + '</p></div>');
			}
			
             
        }).fail(function() {
         
            // just in case posting your form failed
			return true;
             
        });
 
        // to prevent refreshing the whole page page
        return false;
 
    });
});
</script>
<h3>Отправьте нам сообщение</h3>
<div id="callForMeasure">
	<div class="">
		<form action="{CONTACT_FORM_SEND}" method="POST" id="callForMeasureForm">
			
			<p>{PHP.cfg.menu4}</p>
			<div id="contactResult">
				<!-- BEGIN: SUCCESS -->
				<div class="alert alert-success" role="alert"><p>{TEXT}</p></div>
				<!-- END: SUCCESS -->
				<!-- BEGIN: ERROR -->
				<div class="alert alert-danger" role="alert"><p>{TEXT}</p></div>
				<!-- END: ERROR -->
			</div>
			<div id="contactForm">
				<div class="row">
					<div class="col-md-12">
						{CONTACT_FORM_NAME}	
					</div>
					<div class="col-md-6">
						{CONTACT_FORM_ADDR}	
					</div>
					<div class="col-md-6">
						{CONTACT_FORM_PHONE}	
					</div>
					<div class="col-md-12">
						{CONTACT_FORM_TEXT}	
					</div>
					<div class="col-md-12 text-right">
						<button type="submit" name="rpagestate" value="0" class="btn btn-primary">Отправить заявку</button>
					</div>
				</div>
			</div>		
		</form>				
	</div>
</div>
				
<!-- END: MAIN -->