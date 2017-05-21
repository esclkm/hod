<!-- BEGIN: MAIN -->
		<h2 class="text-center htop marginbottom20">{PAGE_SHORTTITLE}</h2>
		<div class="row">

			<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
			<!-- IF {KEY} < 7 -->
			<div class="col-xs-4 marginbottom20">
				<a href="{VALUE.check_thumb_1140_755_width}"  class="fancybox" rel="gallery1" >	
					<img src="{VALUE|cot_mav_thumb($this, 350, 300, width)}" class="img-responsive" alt="{VALUE.DESC}" title="{VALUE.DESC}"/>
				</a>
			</div>
			<!-- ENDIF -->
			<!-- IF {KEY} == 3 -->
			<div class="clearfix"></div>
			<!-- ENDIF -->
			<!-- ENDFOR -->
		</div>


<div class="clearfix"></div>
<div class="text-right">
	<a class="moregal" href="{PAGE_URL}">Больше фотографий сауны <span class="glyphicon glyphicon-chevron-right"></span></a>
</div>
<!-- IF {PHP.usr.isadmin} -->

		<a href="{PAGE_ADMIN_EDIT_URL}" class=""><span class="glyphicon glyphicon-edit"></span> Редактировать слайдер</a>

<!-- ENDIF -->	

<!-- END: MAIN -->