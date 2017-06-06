$(window).on('load', function() {
    $('header').height($(window).height());
    console.log( $(window).height()-540);
    $('.intro-text').css('top', $(window).height()-540);
    $('#portfolio .image-col img').height(function(){
        return $('#portfolio .text-col').height()+40;
    })
//    $('#contacts .feedback-col').height(function(){
//        return $('#contacts .contacts-col').height();
//    })
});
$(document).ready(function(){
    var offset_stuck = 100;
    $(window).scroll(function () {
        if ($(this).scrollTop() > offset_stuck) {
            $('#mainNav').removeClass('navbar-static-top');
            $('#mainNav').addClass('navbar-fixed-top');
            $('#mainNav').css('position', 'fixed');
        } else {  
            $('#mainNav').removeClass('navbar-fixed-top');
            $('#mainNav').addClass('navbar-static-top');
            $('#mainNav').css('position', 'absolute');
        }
    });
	
	$('#specs table').addClass('table table-hover').attr('border', 0);

});
$('.showMap').click(function(){
    //console.log($(this).parent().attr('id'));
    var mapId = '#' + $(this).parent().attr('id') + 'Map';
    $('.map').hide();
    $(mapId).show();
    return false;
})
$('.close-icon').click(function(){
    $(this).parent().hide();
})
