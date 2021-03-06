<!-- BEGIN: MAIN -->
<div id="project-page">    
    <section class="page-content">
        <div class="container">

			<p class="h1">
				{PAGE_SHORTTITLE} 
				<!-- IF {PHP.usr.isadmin} -->
				&nbsp;<a  class="small" href="{PAGE_ADMIN_EDIT_URL}">
					<span class="glyphicon glyphicon-edit"></span>
				</a>
				<!-- ENDIF -->	
				<a href="{PAGE_CAT|cot_url('page','c=$this')}" class="pull-right back-link">← <span>Назад к категориям</span></a>
			</p>

			<!-- IF {PAGE_TEXT_BEFORE} -->
					<div class="row">
						<div class="col-xs-12 col-sm-12">
							{PAGE_TEXT_BEFORE}
						</div>

					</div>
			<!-- ENDIF -->
			<!-- IF {PAGE_MAVATAR|count} > 0 -->
			<div class="row">
				<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
				<!-- IF {KEY} == 9 -->
				<div class="hiddenports" style="display: none;">
				<!-- ENDIF -->
				<div class="col-lg-3 col-md-3 col-xs-6 paddingbottom10 paddingtop10">

					<a href="{VALUE|cot_mav_thumb($this, 1200, 1200, auto, filter_wmark)}"  class="fancybox i_text" rel="gallery1" >	
						<figure class="img img-white">
							<img src="{VALUE|cot_mav_thumb($this, 370, 208, crop)}" class="img-responsive" data-test="1" alt="{VALUE.DESC|htmlspecialchars}" title="{VALUE.TEXT|htmlspecialchars}"/>
							<figcaption class="text-center hidden-md">{VALUE.TEXT}</figcaption>
						</figure>

					</a>
				</div>
				<!-- IF {KEY} % 2 == 0 -->
				<div class="clearfix hidden-lg hidden-md"></div>
				<!-- ENDIF -->	
				<!-- IF {KEY} % 4 == 0 -->
				<div class="clearfix visible-lg visible-md"></div>
				<!-- ENDIF -->
				<!-- ENDFOR -->
				<!-- IF {PAGE_MAVATAR|count} > 8 -->
				</div>
				
				<!-- ENDIF -->
				<div class="clearfix"></div>
				<!-- IF {PAGE_MAVATAR|count} > 8 -->
				<div class="text-center"><button class="hiddenports_ btn  intro-btn white-btn">Показать больше</button></div>
				<!-- ENDIF -->
			</div>
			<!-- ENDIF -->
			<div class="row">
                <div class="col-xs-12 col-sm-12">
					{PAGE_TEXT}
                </div>
          
            </div>
        </div>
    </section>

    <!-- IF {PAGE_3D|mb_strlen} > 10 OR {PAGE_YOUTUBE|mb_strlen} > 10 -->
    <section id="gallery-video" class="clearfix">
		<!-- IF {PAGE_3D|mb_strlen} > 10 -->
        <div class="col-xs-12 <!-- IF {PAGE_YOUTUBE|mb_strlen} > 10 -->col-sm-6<!-- ENDIF --> left-col">

			<div class="iframe-container1 embed-responsive embed-responsive-16by9">
                <iframe class="embed-responsive-item" src="{PAGE_3D}/embed" frameborder="0" allowfullscreen></iframe>
            </div>		
        </div>
		<!-- ENDIF -->
		<!-- IF {PAGE_YOUTUBE|mb_strlen} > 10 -->
        <div class="col-xs-12 <!-- IF {PAGE_3D|mb_strlen} > 10 -->col-sm-6<!-- ENDIF --> right-col">

			<div class="iframe-container1 embed-responsive embed-responsive-16by9">
				<!-- IF {PAGE_YOUTUBE|youtube_id_from_url} -->
                <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/{PAGE_YOUTUBE|youtube_id_from_url}" frameborder="0" allowfullscreen></iframe>
				<!-- ELSE -->
				<iframe class="embed-responsive-item" src="https://player.vimeo.com/video/{PAGE_YOUTUBE|vimeo_id_from_url}?title=0&byline=0&portrait=0" frameborder="0" allowfullscreen></iframe>
				<!-- ENDIF -->
            </div>
        </div>
		<!-- ENDIF -->
    </section>
    <!-- ENDIF -->

    <section id="specs">
        <div class="container">
            <div class="">
                <p class="h2">Технические характеристики {PAGE_SHORTTITLE} </p>
            </div>
            <div class="table-col">
				{PAGE_EXFLDGROUPEDITOR}	
            </div>
			<!-- IF {PAGE_PRICE} -->
			<div class="text-right h1">
				Цена: 
				<!-- IF {PAGE_PRICE_PLUS} --> от <!-- ENDIF --> {PAGE_PRICE} млн. руб.
				
			</div>
			<!-- ENDIF -->
        </div>
    </section>

		<!-- IF {PHP.usr.isadmin} -->
		<div class="container container-fluid">
			<div class="paddingtop10 paddingbottom10">
				<!-- Split button -->

				<a href="{PHP|cot_url('admin')}" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span> Админ-панель</a>

				<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-default"><span class="glyphicon glyphicon-user"></span> {PHP.L.Profile}</a> 
				<a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span> Добавить страницу</a>
				{PAGE_ADMIN_CLONE|cot_rc_modify('$this', 'class="btn btn-default"')}

				<a href="{PAGE_ADMIN_EDIT_URL}" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span> Правка</a>
				<a href="{PAGE_ADMIN_DELETE_URL}" class="confirmLink btn btn-default"><span class="glyphicon glyphicon-trash"></span> Удалить</a> 
				<a href="{PHP.out.loginout_url}" class="btn btn-default"><span class="glyphicon glyphicon-log-out"></span> {PHP.L.Logout}</a> 
			</div>
		</div>
		<!-- ENDIF -->	

    <!-- IF {PAGE_MAVATAR} -->
    <section id="gallery">
        <div id="galleryCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
				<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
                <li data-target="#galleryCarousel" data-slide-to="{KEY|minus_one}" <!--IF {KEY|minus_one} == 0 -->class="active"<!-- ENDIF -->></li>
				<!-- ENDFOR -->
            </ol> 
            <div class="carousel-inner" role="listbox">
				<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
                <div class="item <!--IF {KEY|minus_one} == 0 -->active<!-- ENDIF -->">
                    <img src="{PHP.cfg.testurl}{VALUE|cot_mav_thumb($this, 1200, 675, crop, filter_wmark)}" alt="" class="img-responsive">
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
    <!-- ENDIF -->	


	
</div>
<!-- END: MAIN -->