<!-- BEGIN: MAIN -->
<div class="page-header">
		<div class="container container-fluid">		
		<h1>
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
</div>
<div class="container container-fluid">
	<!-- IF {PAGE_MAVATAR} -->
	<div class="row maansorygal">
		<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
		<div class="col-md-4 col-lg-3 col-xs-6 grid-sizer">
			<a href="{VALUE.check_thumb_1140_755_width}"  class="fancybox gal i_text" rel="gallery1" >	
				<img src="{VALUE|cot_mav_thumb($this, 350, 300, width)}" class="img-responsive" alt="{VALUE.DESC}" title="{VALUE.DESC}"/>
			</a>
		</div>
		<!-- ENDFOR -->
	</div>	
	<div class="clearfix"></div>		
	<!-- ENDIF -->	
	<div class="row">
		<div class="col-md-12">		
			<div class="text-justify textbox">{PAGE_TEXT}</div>
			{PAGE_COMMENTS_DISPLAY}       
		</div>

	</div>	
	<div class="clearfix"></div>		
	
		

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
				<li><a href="{PHP|cot_url('index', 'e=shop&m=tools')}" class=""><span class="glyphicon glyphicon-cog"></span> Админ магазин</a> </li>
		  </ul>
		</div>

		<a href="{PHP|cot_url('users','m=profile')}" class="btn btn-default"><span class="glyphicon glyphicon-user"></span> {PHP.L.Profile}</a> 
		<a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}" class="btn btn-default"><span class="glyphicon glyphicon-plus-sign"></span> Добавить страницу</a>
		{PAGE_ADMIN_CLONE|cot_rc_modify('$this', 'class="btn btn-default"')}

		<a href="{PAGE_ADMIN_EDIT_URL}" class="btn btn-default"><span class="glyphicon glyphicon-edit"></span> Правка</a>
		<a href="{PAGE_ADMIN_DELETE_URL}" class="confirmLink btn btn-default"><span class="glyphicon glyphicon-trash"></span> Удалить</a> 
		<a href="{PHP.out.loginout_url}" class="btn btn-default"><span class="glyphicon glyphicon-log-out"></span> {PHP.L.Logout}</a> 
	</div>
		
<!-- ENDIF -->	
	
</div>


<!-- END: MAIN -->