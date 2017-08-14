<!-- BEGIN: MAIN -->
<script>
	jQuery(function ($) {
		$('head').append('<style type="text/css">.drag{cursor:move;}</style>');
		$(".pageitems").find('.pageitem [name^="rpageorder"]')
		$(".pageitems").sortable({
			handle: ".drag",
			onSort: function (evt) {
				//$(evt.item).find('[name^="mavatar_order"]').val((evt.newIndex +1));
				$(".pageitems").find('.pageitem [name^="rpageorder"]').each(function (index) {
					$(this).val((index + 1))
				});
			}
		});
	});
</script>	
<form action="{FORM}" enctype="multipart/form-data" method="post" name="pageform">
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
			<div class="row pageitems">
				<!-- BEGIN: LIST_ROW -->
				<div class="col-md-4 col-sm-6 col-xs-12 list-project pageitem">
					<!-- IF {LIST_ROW_MAVATARCOUNT} -->
					<img src="{PHP.cfg.testurl}{LIST_ROW_MAVATAR.1|cot_mav_thumb($this, 360, 270, crop)}" alt="{LIST_ROW_MAVATAR.1.DESC}" class="img-responsive drag" title="{LIST_ROW_MAVATAR.1.DESC}"/>
					<!-- ELSE -->
					<img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" width="360" height="270" class="img-responsive drag"/>
					<!-- ENDIF -->

					<div class="text-center">
						{LIST_ROW_TITLE|cot_rc_modify('$this', 'class="form-control"')}
						<div class="order input-group">
							<span class="input-group-addon">

								Порядок

							</span>

							{LIST_ROW_ORDER|cot_rc_modify('$this', 'class="form-control"')}

						</div>
					</div>
				</div>

				<!-- END: LIST_ROW -->



			</div>
			<div class="clearfix"></div>

			<p class="paging clear">
				<button type="submit" name="rpagestate" value="0" class="btn btn-default">{PHP.L.Submit}</button>
			</p>
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
</form>
<!-- END: MAIN -->
