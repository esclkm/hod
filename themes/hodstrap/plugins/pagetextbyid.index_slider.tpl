<!-- BEGIN: MAIN -->
    <section id="gallery">
        <div id="galleryCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
				<!-- FOR {KEY}, {VALUE} IN {PHP.cfg.ind_sl3_images|string_split} -->
                <li data-target="#galleryCarousel" data-slide-to="{KEY}" class="<!--IF {KEY} == 0 -->active<!-- ENDIF -->"></li>
				<!-- ENDFOR -->
				<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
				<li data-target="#galleryCarousel" data-slide-to="{KEY|get_ind_img_ingex}" class="<!--IF {KEY|get_ind_img_ingex} == 0 -->active<!-- ENDIF -->"></li>
				<!-- ENDFOR -->
            </ol> 
            <div class="carousel-inner" role="listbox">
				<!-- FOR {KEY}, {VALUE} IN {PHP.cfg.ind_sl3_images|string_split} -->
                <div class="item <!--IF {KEY} == 0 -->active<!-- ENDIF -->">
                    <img src="{VALUE}" alt="" class="img-responsive">
                </div>
				
				<!-- ENDFOR -->
				<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
                <div class="item <!--IF {KEY|get_ind_img_ingex} == 0 -->active<!-- ENDIF -->">
                    <img src="{VALUE|cot_mav_thumb($this, 1200, 675, crop, filter_wmark)}" alt="" class="img-responsive">
                </div>				
				<!-- ENDFOR -->
				
            </div>
			<a class="left carousel-control" href="#galleryCarousel" role="button" data-slide="prev">
                <span class="small-icon white-arrow" aria-hidden="true"></span>
                <span class="sr-only">Предыдущий</span>
            </a>
            <a class="right carousel-control" href="#galleryCarousel" role="button" data-slide="next">
                <span class="small-icon white-arrow" aria-hidden="true"></span></span>
                <span class="sr-only">Следующий</span>
            </a>
        </div>
    </section>

<!-- END: MAIN -->