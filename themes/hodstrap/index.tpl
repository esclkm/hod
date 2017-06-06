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
    
    <section id="gallery">
        <div id="galleryCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
				<!-- FOR {KEY}, {VALUE} IN {PHP.cfg.ind_sl3_images|string_split} -->
                <li data-target="#galleryCarousel" data-slide-to="{KEY}" class="<!--IF {KEY} == 0 -->active<!-- ENDIF -->"></li>
				<!-- ENDFOR -->
            </ol> 
            <div class="carousel-inner" role="listbox">
				<!-- FOR {KEY}, {VALUE} IN {PHP.cfg.ind_sl3_images|string_split} -->
                <div class="item <!--IF {KEY} == 0 -->active<!-- ENDIF -->">
                    <img src="{VALUE}" alt="" class="img-responsive">
                </div>
				<!-- ENDFOR -->
            </div>
        </div>
    </section>
    
    <section id="video">
        <div id="videoCarousel" class="carousel slide clearfix" data-ride="carousel" data-interval="false">
            <p class="h1 text-center">{PHP.cfg.ind_sl4_title}</p>
            <div class="carousel-inner" role="listbox">
				<!-- FOR {KEY}, {VALUE} IN {PHP.cfg.ind_sl4_youtube|string_split} -->
                <div class="item <!--IF {KEY} == 0 -->active<!-- ENDIF -->">
                    <div class="iframe-container">
                        <iframe src="https://www.youtube.com/embed/{VALUE|youtube_id_from_url}" frameborder="0" allowfullscreen></iframe>
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
                    <a href="{PHP.cfg.ind_sl4_text}"><span>{PHP.cfg.ind_sl4_link_title}</span> →</a>
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