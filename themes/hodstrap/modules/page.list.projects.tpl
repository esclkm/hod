<!-- BEGIN: MAIN -->

<section class="page-content">

	<div class="container">
		<div id="portfolio-page">

			<div class="row">
				<p class="h1">{LIST_CATTITLE}</p>
			</div>
			<!-- IF {PHP.c} != 'projects' -->
			<a href="{PHP|cot_url('page', 'c=projects')}" class="back-link">← <span>Назад к категориям</span></a>
			<!-- ENDIF -->
			<!-- IF {LIST_ROWCAT_URL} -->

			<div class="text-justify textbox">{LIST_TEXT}</div>
			<!-- BEGIN: LIST_ROWCAT -->

			<article>
				<div class="row">
					<div class="col-xs-12">
						<p class="h2">{LIST_ROWCAT_TITLE} <!-- IF {PHP.usr.isadmin} -->({LIST_ROWCAT_COUNT})<!-- ENDIF --></p>
					</div>
					<div class="col-xs-12 col-sm-8 text-col">
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

							<img alt="" src="datas/exflds/{LIST_ROWCAT_AVATAR}" class="img-responsive">
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
					<a href="{LIST_ROW_URL}"><img src="{LIST_ROW_MAVATAR.1|cot_mav_thumb($this, 366, 234, auto)}" alt="{LIST_ROW_MAVATAR.1.DESC}" class="img-responsive" title="{LIST_ROW_MAVATAR.1.DESC}"/></a>
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
				</div>
			</div>
			<!-- END: LIST_ROW -->

			<!-- IF {LIST_ROW_NUM} % 2 == 0 -->
			<div class="clearfix hidden-md hidden-lg"></div>
			<!-- ENDIF -->	
			<!-- IF {LIST_ROW_NUM} % 3 == 0 -->
			<div class="clearfix hidden-xs hidden-sm"></div>
			<!-- ENDIF -->	

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
			<!-- Split button -->
			<div class="btn-group">
				<a href="{PHP|cot_url('admin')}" class="btn btn-default"><span class="glyphicon glyphicon-cog"></span> Админ-панель</a>
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<span class="caret"></span>
					<span class="sr-only">Toggle Dropdown</span>&thinsp;
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="{PHP|cot_url('admin', 'm=structure&n=page')}"><span class="glyphicon glyphicon-folder-open"></span>  Структура</a></li>
					<li><a href="{PHP|cot_url('admin', 'm=other&p=menugenerator')}"><span class="glyphicon glyphicon-list-alt"></span> Редактор меню</a> </li>
				</ul>
			</div>

			<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-default"><span class="glyphicon glyphicon-user"></span> {PHP.L.Profile}</a>
			<a href="{PHP.c|cot_url('page', 'm=add&c=$this')}" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span> Добавить страницу</a> 
			<a href="{LIST_TEXTEDIT_URL}" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span> {PHP.L.catdesc_edit}</a> 
			<a href="{PHP.out.loginout_url}" class="btn btn-default"><span class="glyphicon glyphicon-log-out"></span> {PHP.L.Logout}</a> 
		</div>

		<!-- ENDIF -->	

	</div>
</section>
<!-- END: MAIN -->