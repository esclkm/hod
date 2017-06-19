<!-- BEGIN: MAIN -->
<div id="project-page">    
    <section class="page-content">
        <div class="container">
            <div class="row">
                <p class="h1">
					{PAGE_SHORTTITLE} 
					<!-- IF {PHP.usr.isadmin} -->
						&nbsp;<a  class="small" href="{PAGE_ADMIN_EDIT_URL}">
							<span class="glyphicon glyphicon-edit"></span>
						</a>
					<!-- ENDIF -->	
				</p>
            </div>
            <a href="{PAGE_CAT|cot_url('page','c=$this')}" class="back-link">← <span>Назад к категориям</span></a>
            <div class="row">
                <div class="col-xs-12 col-sm-12 text-col">
					{PAGE_TEXT}
                </div>
                <!-- <div class="col-xs-12 col-sm-4 image-col">
                    <figure class="img">
                        <img alt="" src="<!- IF {PAGE_MAVATAR} ->{PHP.cfg.testurl}{PAGE_MAVATAR.1|cot_mav_thumb($this, 380, 243, crop)}<!- ELSE ->{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png<!- ENDIF ->" class="img-responsive">
                        <figcaption class="text-center">{PAGE_MAVATAR.1.DESC}</figcaption>
                    </figure>
                </div> -->           
            </div>
        </div>
    </section>
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
                    <img src="{PHP.cfg.testurl}{VALUE|cot_mav_thumb($this, 1200, 675, crop)}" alt="" class="img-responsive">
                </div>
				<!-- ENDFOR -->
            </div>
        </div>
    </section>
    <!-- ENDIF -->	

    <section id="specs">
        <div class="container">
            <div class="row">
                <p class="h2">Технические характеристики {PAGE_SHORTTITLE} </p>
            </div>
            <div class="col-xs-12 col-sm-12 table-col left-col">
				{PAGE_HARAKTERISTIKI}
            </div>
        </div>
    </section>
    <!-- IF {PAGE_3D|mb_strlen} > 10 OR {PAGE_YOUTUBE|mb_strlen} >10 -->
    <section id="gallery-video" class="clearfix">
		<!-- IF {PAGE_3D|mb_strlen} > 10 -->
        <div class="col-xs-12 <!-- IF {PAGE_YOUTUBE|mb_strlen} >10 -->col-sm-6<!-- ENDIF --> left-col">
			
			<div class="iframe-container1 embed-responsive embed-responsive-4by3">
                <iframe class="embed-responsive-item" src="{PAGE_3D}/embed" frameborder="0" allowfullscreen></iframe>
            </div>		
        </div>
		<!-- ENDIF -->
		<!-- IF {PAGE_YOUTUBE|mb_strlen} >10 -->
        <div class="col-xs-12 <!-- IF {PAGE_3D|mb_strlen} >10 -->col-sm-6<!-- ENDIF --> right-col">
			
			<div class="iframe-container1 embed-responsive embed-responsive-4by3">
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
</div>
<!-- END: MAIN -->