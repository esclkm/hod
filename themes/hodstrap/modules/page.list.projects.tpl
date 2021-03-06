<!-- BEGIN: MAIN -->

<section class="page-content">

	<div class="container">
		
		<div id="portfolio-page">

			<p class="h1">
				{LIST_CATTITLE}
				<!-- IF {PHP.c} != 'projects' -->
				<a href="{PHP|cot_url('page', 'c=projects')}" class="back-link">← <span>Назад к категориям</span></a>
				<!-- ENDIF -->
			</p>
			<div class="text-justify textbox">{LIST_TEXT}</div>
			<!-- IF {LIST_ROWCAT_URL} -->

			
			<!-- BEGIN: LIST_ROWCAT -->

			<article>
				<div class="row">
					<div class="col-xs-12">
						<p class="h2">{LIST_ROWCAT_TITLE} <!-- IF {PHP.usr.isadmin} -->({LIST_ROWCAT_COUNT})<!-- ENDIF --></p>
					</div>
					<div class="col-xs-12 col-sm-8">
						<!-- IF {LIST_ROWCAT_DESC} -->
						<p class="small">{LIST_ROWCAT_DESC}</p>
						<!-- ENDIF -->
						{LIST_ROWCAT_DESCTEXT}

						<div class="links">
							<a href="{LIST_ROWCAT_URL}"><span>Посмотреть проекты</span> →</a>
						</div>  
					</div>
					<div class="col-xs-12 col-sm-4 image-col">
						<figure class="img">

							<img alt="" src="{PHP.cfg.testurl}datas/exflds/{LIST_ROWCAT_AVATAR}" class="img-responsive">
							<figcaption class="text-center">{LIST_ROWCAT_UNDAVATAR}</figcaption>
						</figure>
					</div>            
				</div>
			</article>

			<!-- END: LIST_ROWCAT -->


			<!-- ENDIF -->	

		</div>

		<!-- IF {LIST_ROW_URL} -->
		<div class="row">
			<!-- BEGIN: LIST_ROW -->
			<div class="col-md-4 col-sm-6 col-xs-12 list-project">
				<!-- IF {LIST_ROW_MAVATARCOUNT} -->
					<a href="{LIST_ROW_URL}"><img src="{PHP.cfg.testurl}{LIST_ROW_MAVATAR.1|cot_mav_thumb($this, 370, 208, crop)}" alt="{LIST_ROW_MAVATAR.1.DESC}" class="img-responsive" title="{LIST_ROW_MAVATAR.1.DESC}"/></a>
				<!-- ELSE -->
					<a href="{LIST_ROW_URL}"><img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" class="img-responsive"/></a>
				<!-- ENDIF -->
				
				<div class="text-center">
					<a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a>
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{LIST_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span> 
					</a>

					<!-- ENDIF -->
					<!-- IF {LIST_ROW_PRICE} -->
					<div>
						<a href="{LIST_ROW_URL}">Цена: <!-- IF {LIST_ROW_PRICE_PLUS} --> от <!-- ENDIF --> {LIST_ROW_PRICE} млн. руб.</a>
					</div>
					<!-- ENDIF -->

				</div>
			</div>
			<!-- IF {LIST_ROW_NUM} % 2 == 0 -->
			<div class="clearfix hidden-md hidden-lg"></div>
			<!-- ENDIF -->	
			<!-- IF {LIST_ROW_NUM} % 3 == 0 -->
			<div class="clearfix hidden-xs hidden-sm"></div>
			<!-- ENDIF -->							
			<!-- END: LIST_ROW -->



		</div>
		<div class="clearfix"></div>
		<!-- ENDIF -->

	</div>




	<div class="container container-fluid">



		<!-- IF {LIST_TOP_PAGINATION} -->
		<div class="text-center">
			<ul class="pagination">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</ul>
		</div>
		<!-- ENDIF -->	
		<div class="text-justify textbox">{LIST_TEXT_AFTER}</div>
		<!-- IF {PHP.usr.isadmin} -->
		<div class="paddingtop10 paddingbottom10">
			<a href="{PHP|cot_url('admin')}" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span> Админ-панель</a>


			<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-default"><span class="glyphicon glyphicon-user"></span> {PHP.L.Profile}</a>
			<a href="{PHP.c|cot_url('page', 'm=add&c=$this')}" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span> Добавить страницу</a> 
			<a href="{LIST_TEXTEDIT_URL}" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span> {PHP.L.catdesc_edit}</a> 
			<a href="{EDIT_MODE}" class="btn btn-default"><span class="glyphicon glyphicon-resize-vertical"></span> Изменить порядок</a>
			<a href="{PHP.out.loginout_url}" class="btn btn-default"><span class="glyphicon glyphicon-log-out"></span> {PHP.L.Logout}</a> 
		</div>

		<!-- ENDIF -->	

	</div>
</section>
<!-- END: MAIN -->