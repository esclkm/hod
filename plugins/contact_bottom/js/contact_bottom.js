$(document).ready(function(){
    $('.callForMeasureForm').submit(function(){
		var form = $(this);
		var modalForm = $(this).attr("data-modal") == 'modal' ? true : false;
 
        $.post('index.php?r=contact_bottom', $(this).serialize(), function(data){
             
			var obj = jQuery.parseJSON(data);
		//	alert(data);
			if(obj.status == 'OK')
			{
				$(form).find('.contactResult').html('<div class="alert alert-success" role="alert"><p>' + obj.message + '</p></div>');
				
				if(modalForm)
				{
					setTimeout(function(){
						$(form).find('.contactResult').html('');
						$(form).closest('.modal').modal('hide');
					}, 1500);
				}
				else
				{
					$(form).find('.contactForm').hide();
				}
			}
			else
			{
				$(form).find('.contactResult').html('<div class="alert alert-danger" role="alert"><p>' + obj.message + '</p></div>');
			}
			
             
        }).fail(function() {
         
            // just in case posting your form failed
			return true;
             
        });
 
        // to prevent refreshing the whole page page
        return false;
 
    });
});