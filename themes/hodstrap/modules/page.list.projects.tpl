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


			<!-- BEGIN: LIST_ROWCAT -->
			
			<article>
				<div class="row">
					<div class="col-xs-12">
						<p class="h2">{LIST_ROWCAT_TITLE} ({LIST_ROWCAT_COUNT})</p>
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

		<div id="gallery-page">
			<div class="row">
                <p class="h1">гусеничные</p>
            </div>
            <a href="" class="back-link">← <span>Назад к категориям</span></a>
            <div class="row gallery-row">
                <div class="gallery-img">
                    <figure class="img">
                        <img alt="" src="themes/hodstrap/sources/assets/images/kv.jpg" class="img-responsive">
                        <figcaption class="text-center">Погрузка снегоболотохода на поезд</figcaption>
                    </figure>
                </div>
                <div class="gallery-img">
                    <figure class="img">
                        <img alt="" src="themes/hodstrap/sources/assets/images/kv.jpg" class="img-responsive">
                        <figcaption class="text-center">Погрузка снегоболотохода на поезд</figcaption>
                    </figure>
                </div>
                <div class="gallery-img">
                    <figure class="img">
                        <img alt="" src="themes/hodstrap/sources/assets/images/kv.jpg" class="img-responsive">
                        <figcaption class="text-center">Погрузка снегоболотохода на поезд</figcaption>
                    </figure>
                </div>
            </div>
            <div class="row gallery-row">
                <div class="gallery-img">
                    <figure class="img">
                        <img alt="" src="themes/hodstrap/sources/assets/images/kv.jpg" class="img-responsive">
                        <figcaption class="text-center">Погрузка снегоболотохода на поезд</figcaption>
                    </figure>
                </div>
                <div class="gallery-img">
                    <figure class="img">
                        <img alt="" src="themes/hodstrap/sources/assets/images/kv.jpg" class="img-responsive">
                        <figcaption class="text-center">Погрузка снегоболотохода на поезд</figcaption>
                    </figure>
                </div>
                <div class="gallery-img">
                    <figure class="img">
                        <img alt="" src="themes/hodstrap/sources/assets/images/kv.jpg" class="img-responsive">
                        <figcaption class="text-center">Погрузка снегоболотохода на поезд</figcaption>
                    </figure>
                </div>
            </div>
		</div>
	</div>
</section>



<!-- IF {PHP.c} == 'projects' -->
<!-- ELSE -->
<!-- ENDIF -->
<section class="page-content">
	<div class="container container-fluid">	
		<h1>
			{LIST_CATTITLE}
		</h1>

	</div>	
</section>
<div class="container container-fluid">

	<div class="text-justify textbox">{LIST_TEXT}</div>

	<div class="row">
	
		<div class="col-md-12">
			<div class="row">
				<!-- BEGIN: LIST_ROW -->

				<div class="col-xs-12 col-sm-12">
					<h4>
						<a href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a>

						<!-- IF {PHP.usr.isadmin} -->
						<a class="small pull-right" href="{LIST_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
							<span class="glyphicon glyphicon-edit"></span> 
						</a>

						<!-- ENDIF -->

					</h4>
					<div class="">					
						{PHP.L.Category}: {LIST_ROW_CATPATH_SHORT} 
							<div class="pull-right">
								<span class="fa fa-clock-o" title="{PHP.L.Date}"></span>&nbsp; {LIST_ROW_DATE_STAMP|cot_date('date_text', $this)} 
								<!-- IF {LIST_ROW_MAVATARCOUNT} -->
								&nbsp;<span class="fa fa-picture-o"  title="Скриншоты"></span> {LIST_ROW_MAVATARCOUNT}
								<!-- ENDIF -->	

								<!-- IF {LIST_ROW_MAVATARFILES} -->
								&nbsp;<span class="fa fa-download" title="Файлы длязагрузки"></span> {LIST_ROW_MAVATARFILESCOUNT}
								<!-- ENDIF -->
								<!-- IF {LIST_ROW_COMMENTS_COUNT} -->
								&nbsp;<span class="fa fa-comments-o" title="Комментарии"></span> {LIST_ROW_COMMENTS_COUNT}
								<!-- ENDIF -->
							</div>
						</div>


						<div class="textbox text-justify">
							{LIST_ROW_DESC}
						</div>
						<div class="textbox text-justify">
							{LIST_ROW_TEXT}
						</div>
						<hr/>
					</div>

					<!-- END: LIST_ROW -->
				</div>
			</div>
		</div>
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

	<!-- END: MAIN -->