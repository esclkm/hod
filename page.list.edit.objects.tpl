<!-- BEGIN: MAIN -->

<script>
	jQuery(function ($){
		$('head').append('<style type="text/css">.drag{cursor:move;}</style>');
		$(".pageitems").find('.pageitem [name^="rpage_eo_order"]' )
		$(".pageitems").sortable({
			handle: ".drag",
			onSort: function (evt) {
				//$(evt.item).find('[name^="mavatar_order"]').val((evt.newIndex +1));
				$(".pageitems").find('.pageitem [name^="rpage_eo_order"]' ).each(function(index) {
					$(this).val((index+1))
				});
			}
		});
	});
</script>	
<form action="{FORM}" enctype="multipart/form-data" method="post" name="pageform">
	<div class="page-header">
		<ol class="breadcrumb">{LIST_CATPATH}</ol>
		<h1>{LIST_CATTITLE}</h1>
	</div>
	{PHP|cot_catlist('portfolio', 'inline')}
	<div class="row pageitems">
		<!-- BEGIN: LIST_ROW -->
		<div class="col-md-3 marginbottom10 pageitem">
			<div  class="text-center">
				<!-- IF {LIST_ROW_MAVATARCOUNT} -->
				<img src="{LIST_ROW_MAVATAR.1|cot_mav_thumb($this, 294, 220, auto)}" alt="{LIST_ROW_MAVATAR.1.DESC}" class="img-thumbnail drag" title="{LIST_ROW_MAVATAR.1.DESC}"/>
				<!-- ELSE -->
				<img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" alt="{LIST_ROW_MAVATAR.1.DESC}" class="img-thumbnail drag" title="{LIST_ROW_MAVATAR.1.DESC}"/>
				<!-- ENDIF -->
			</div>
			<div  class="text-center">
				{LIST_ROW_TITLE|cot_rc_modify('$this', 'class="form-control"')}
				<div class="order input-group">
					<span class="input-group-addon">

						Порядок

					</span>

					{LIST_ROW_EO_ORDER|cot_rc_modify('$this', 'class="form-control"')}

				</div>
			</div>
		</div>
		<!-- END: LIST_ROW -->

	</div>
	<div class="clearfix"></div>
	<p class="paging clear">
		<button type="submit" name="rpagestate" value="0" class="btn btn-default">{PHP.L.Submit}</button>
	</p>
	<!-- IF {LIST_TOP_PAGINATION} -->
	<div class="text-center">
		<ul class="pagination">{LIST_TOP_PAGEPREV}{LIST_TOP_PAGINATION}{LIST_TOP_PAGENEXT}</ul>
	</div>
		<!-- ENDIF -->
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
			<div class="btn-group">
				<a href="{PHP|cot_url('page', 'm=add')}" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span> Добавить страницу</a> 
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
					<span class="caret"></span>
					<span class="sr-only">Toggle Dropdown</span>&thinsp;
				</button>
				<ul class="dropdown-menu" role="menu">
					<li><a href="{PHP|cot_url('page', 'm=add&c=objects')}"><span class="glyphicon glyphicon-plus-sign"></span> Добавить квартиру / дом</a></li>
					<li><a href="{PHP|cot_url('page', 'm=add&c=portfolio')}"><span class="glyphicon glyphicon-plus-sign"></span> Добавить в Наши работы</a></li>
				</ul>
			</div>
			<a href="{EDIT_MODE}" class="btn btn-default"><span class="glyphicon glyphicon-resize-vertical"></span> Изменить порядок</a>
			<a href="{PHP.out.loginout_url}" class="btn btn-default"><span class="glyphicon glyphicon-log-out"></span> {PHP.L.Logout}</a> 
		</div>

	<!-- ENDIF -->
</form>
<!-- END: MAIN -->