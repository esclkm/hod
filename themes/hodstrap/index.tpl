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
                    <h2 class="company-heading">{PHP.cfg.ind_sl1_img1}</h2>
                </div>
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon medal"></i>
                    <h2 class="company-heading">{PHP.cfg.ind_sl1_img2}</h2>
                </div>
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon repairs"></i>
                    <h2 class="company-heading">{PHP.cfg.ind_sl1_img3}</h2>
                </div>
                <div class="col-xs-12 col-sm-3 text-center">
                    <i class="circle-icon bus"></i>
                    <h2 class="company-heading">{PHP.cfg.ind_sl1_img4}</h2>
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
                <li data-target="#galleryCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#galleryCarousel" data-slide-to="1"></li>
                <li data-target="#galleryCarousel" data-slide-to="2"></li>
                <li data-target="#galleryCarousel" data-slide-to="3"></li>
                <li data-target="#galleryCarousel" data-slide-to="4"></li>
                <li data-target="#galleryCarousel" data-slide-to="5"></li>
            </ol> 
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="themes/hodstrap/images/pic2.jpg" alt="" class="img-responsive">
                </div>
                <div class="item">
                    <img src="themes/hodstrap/images/pic2.jpg" alt="" class="img-responsive">
                </div>
                <div class="item">
                    <img src="themes/hodstrap/images/pic2.jpg" alt="" class="img-responsive">
                </div>
                <div class="item">
                    <img src="themes/hodstrap/images/pic2.jpg" alt="" class="img-responsive">
                </div>
                <div class="item">
                    <img src="themes/hodstrap/images/pic2.jpg" alt="" class="img-responsive">
                </div>
                <div class="item">
                    <img src="themes/hodstrap/images/pic2.jpg" alt="" class="img-responsive">
                </div>
            </div>
        </div>
    </section>
    
    <section id="video">
        <div id="videoCarousel" class="carousel slide clearfix" data-ride="carousel" data-interval="false">
            <h1 class="text-center">Последние видео</h1>
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <div class="iframe-container">
                        <iframe src="https://www.youtube.com/embed/xzTuMqODyd0" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>

                <div class="item">
                    <div class="iframe-container">
                        <iframe src="https://www.youtube.com/embed/xzTuMqODyd0" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>

                <div class="item">
                    <div class="iframe-container">
                        <iframe src="https://www.youtube.com/embed/xzTuMqODyd0" frameborder="0" allowfullscreen></iframe>
                    </div>
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#videoCarousel" role="button" data-slide="prev">
                <span class="small-icon white-arrow" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#videoCarousel" role="button" data-slide="next">
                <span class="small-icon white-arrow" aria-hidden="true"></span></span>
                <span class="sr-only">Next</span>
            </a>
            <div class="container text-center">
                <div class="row read-more">
                    <i class="small-icon youtube-big"></i>
                    <a href=""><span>Наш канал на Youtube</span> →</a>
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