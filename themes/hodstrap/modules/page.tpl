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
		<div class="row">
			<div class="<!-- IF {PAGE_MAVATAR} -->col-md-8<!-- ELSE --> col-md-12<!-- ENDIF -->">		
				<div class="text-justify textbox">{PAGE_TEXT}</div>
				{PAGE_COMMENTS_DISPLAY}       
			</div>

			<!-- IF {PAGE_MAVATAR} -->
			<div class="col-md-4">
				<div class="row maansorygal1">
					<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
					<div class="<!-- IF {KEY} > 1 -->col-sm-6<!-- ELSE -->col-sm-12<!-- ENDIF--> grid-sizer1">
						<a href="{VALUE.check_thumb_1140_755_width}"  class="fancybox gal i_text" rel="gallery1" >	
							<figure class="img">
								<img src="{VALUE|cot_mav_thumb($this, 370, 300, width)}" class="img-responsive" alt="{VALUE.DESC}" title="{VALUE.TEXT}"/>
								<figcaption class="text-center">{VALUE.TEXT}</figcaption>
							</figure>

						</a>
					</div>
					<!-- ENDFOR -->
				</div>
				<div class="clearfix"></div>	
			</div>
			<!-- ENDIF -->	
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