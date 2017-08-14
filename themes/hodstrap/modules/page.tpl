<!-- BEGIN: MAIN -->
<section class="page-content">
	<div class="container container-fluid">		
		<h1 class="h1">
			{PAGE_SHORTTITLE}
			<div class="small pull-right">
				<!-- IF {PHP.usr.isadmin} -->
				&nbsp;<a href="{PAGE_ADMIN_EDIT_URL}">
					<span class="glyphicon glyphicon-edit"></span>
				</a>
				<!-- ENDIF -->			
			</div>
		</h1>		

	</div>



	<div class="container container-fluid">
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
							<img src="{VALUE|cot_mav_thumb($this, 370, 208, crop)}" class="img-responsive" data-test="1" alt="{VALUE.DESC}" title="{VALUE.TEXT}"/>
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
		
		<div class="clearfix"></div>		


		<!-- IF {PHP.usr.isadmin} -->

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

		<!-- ENDIF -->	

	</div>
</section>

<!-- END: MAIN -->