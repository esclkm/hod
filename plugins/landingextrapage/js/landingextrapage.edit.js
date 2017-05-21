$(".landingexptrapagedelete").live("click", function () {
    $(this).closest('tr').remove();
    changecats();
    return false;
});

$('#landingexptrapageadd').live("click", function () {
    var milliseconds = (new Date).getTime();
    var object = $('#landingexptrapage-new').last().clone().attr('id', 'landingexptrapage-' + milliseconds);
    $(object).find('.landingexptrapagedelete').show();
    $(object).find('.landingexptrapage-img input').val('').attr('name', 'ximg['+milliseconds+']');
    $(object).find('.landingexptrapage-title input').val('').attr('name', 'xtitle['+milliseconds+']');
    $(object).find('.landingexptrapage-text textarea').text('').attr('name', 'xtext['+milliseconds+']');
    
    $(object).insertBefore('#landingexptrapage-new').show();
    return false;
});

$(document).ready(function () {
//    $('#catgenerator').show().prependTo($('form#saveconfig'));
});