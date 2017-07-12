<!-- BEGIN: MAIN -->

    <section id="company">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 text-center">
                    <div class="company-logo">
                        <img src="themes/hodstrap/images/logo-min.png" alt="">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xs-12 text-center">
                    <p>{PHP.cfg.ind_sl1_text}</p>
                </div>
                <div class="col-xs-12 text-center">
                    <a href="{PHP|cot_url('page', 'c=system&al=kompaniya')}">{PHP.cfg.ind_sl1_but}</a>
                </div>
            </div>
            <div class="row features">
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon tools"></i>
                    <p class="h2 company-heading">{PHP.cfg.ind_sl1_img1}</p>
                </div>
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon medal"></i>
                    <p class="h2 company-heading">{PHP.cfg.ind_sl1_img2}</p>
                </div>
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon repairs"></i>
                    <p class="h2 company-heading">{PHP.cfg.ind_sl1_img3}</p>
                </div>
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon bus"></i>
                    <p class="h2 company-heading">{PHP.cfg.ind_sl1_img4}</p>
                </div>
            </div>
        </div>
    </section>
    <section id="portfolio" class="clearfix">
		{PHP|pp_list('projects', 1, 'RAND()', '', 'projects')}
    </section>
    {PHP|pagefullbyid('index_slider', 'index_slider')}

    
    <section id="video">
			

<script>
(function(){
    // Your base, I'm in it!
    var originalAddClassMethod = jQuery.fn.addClass;

    jQuery.fn.addClass = function(){
        // Execute the original method.
        var result = originalAddClassMethod.apply( this, arguments );

        // trigger a custom event
        jQuery(this).trigger('cssClassChanged');

        // return the original result
        return result;
    }
})();
$(function() {
	$('#videoCarousel').on('slid.bs.carousel', function () {
		
		$( "#videoCarousel .item" ).each(function() {

				var iframe = $(this).find('iframe')[0].contentWindow;
				var func = $( this ).hasClass( "active" )  ? 'playVideo' :'pauseVideo';
				
				iframe.postMessage('{"event":"command","func":"' + func + '","args":""}','*');
			
		});
		
		//return false;
	});
});

</script>

        <div id="videoCarousel" class="carousel slide clearfix" data-ride="carousel" data-interval="false">
            <p class="h1 text-center">{PHP.cfg.ind_sl4_title}</p>
            <div class="carousel-inner" role="listbox">
				<!-- FOR {KEY}, {VALUE} IN {PHP.cfg.ind_sl4_youtube|string_split} -->
                <div class="item <!--IF {KEY} == 0 -->active<!-- ENDIF -->">
                    <div class="iframe-container">
						<!-- IF {VALUE|youtube_id_from_url} -->
						<!-- &mute=1 -->
                        <iframe src="https://www.youtube.com/embed/{VALUE|youtube_id_from_url}?enablejsapi=1&theme=dark&showinfo=0" frameborder="0" allowfullscreen></iframe>
						
						<!-- ELSE -->
						<iframe class="embed-responsive-item" src="https://player.vimeo.com/video/{VALUE|vimeo_id_from_url}?title=0&byline=0&portrait=0" frameborder="0" allowfullscreen></iframe>
						<!-- ENDIF -->
                    </div>
                </div>
				<!-- ENDFOR -->
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#videoCarousel" role="button" data-slide="prev">
                <span class="small-icon white-arrow" aria-hidden="true"></span>
                <span class="sr-only">Предыдущий</span>
            </a>
            <a class="right carousel-control" href="#videoCarousel" role="button" data-slide="next">
                <span class="small-icon white-arrow" aria-hidden="true"></span></span>
                <span class="sr-only">Следующий</span>
            </a>
            <div class="container text-center">
                <div class="row read-more">
                    <i class="small-icon youtube-big"></i>
                    <a href="{PHP.cfg.ind_sl4_text}" target="_blank"><span>{PHP.cfg.ind_sl4_link_title}</span> →</a>
                </div>
            </div>            
        </div>
    </section>
					
					
<!-- END: MAIN -->
<!-- BEGIN: OLD -->
<div id="slide-5" class="section light ">
		{PHP|pagefullbyid('num3', 'simple')}
</div>

<div  class="video_overlay">
	<div id="slide-7" class="section overlaydark">
		{PHP|pagefullbyid('num5', 'simple')}
	</div>		
</div>
<div class="clearfix"></div>	

<div id="slide-9" class="section light">
	{PHP|pp_list('command', 9, 'page_date DESC', '', 'command')}
</div>	
<div id="slide-10" class="section overlay">
		{PHP|contact_bottom()}
</div>	
<div class="clearfix"></div>
<!-- END: OLD -->