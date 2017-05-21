<!-- BEGIN: MAIN -->
<div class="container container-fluid">
<h2 class="text-center fadeInUpBig wow" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TITLE|page_color_header}
	<!-- IF {PHP.usr.isadmin} -->
	<div class="pull-right">
	<a class="small " href="{LIST_TEXTEDIT_URL}" title="{PHP.L.Edit}">
		<span class="glyphicon glyphicon-edit"></span></a>&nbsp;
	<a class="small" href="{LIST_ADD_URL}" title="{PHP.L.Add}">
		<span class="glyphicon glyphicon-plus-sign"></span>
	</a>
	</div>
	<!-- ENDIF -->
</h2>
<span class="small-border wow fadeInUpBig" data-wow-offset="40" data-wow-duration="1.5s" data-animation="fadeInUp"></span>
<!-- IF {LIST_TEXT|strlen} > 10 -->
<div class="catdesc text-center wow fadeInUpBig lead" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TEXT}</div>
<!-- ENDIF -->
<div class="row tovarslides futures">
<!-- BEGIN: PAGE_ROW -->
	<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
		<div class=" futurebox indexplus sameh wow fadeInUpBig" data-wow-offset="60" data-wow-duration="1.5s" <!-- IF {PAGE_ROW_NUM} % 3 == 2 -->data-wow-delay="0.4s"<!-- ENDIF--><!-- IF {PAGE_ROW_NUM} % 3 == 0 -->data-wow-delay="0.8s"<!-- ENDIF-->>
			<!-- IF {PAGE_ROW_ICO_CLASS} -->
				<i class="{PAGE_ROW_ICO_CLASS}"></i>
				<div class="text">
					<h4 class="text-cursive">
						{PAGE_ROW_SHORTTITLE|page_color_header}
						<!-- IF {PHP.usr.isadmin} -->
						<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
							<span class="glyphicon glyphicon-edit"></span>
						</a>					
						<!-- ENDIF -->
					</h4>


					<div class="desc">{PAGE_ROW_TEXT}</div>
				</div>
			<!-- ELSE -->
				<h4 class="text-cursive">
					{PAGE_ROW_SHORTTITLE|page_color_header}
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>					
					<!-- ENDIF -->
				</h4>

				<div class="pull-left col-xs-4 hidden-xs">
						<span class="i_text">
						<!-- IF {PAGE_ROW_MAVATAR} -->
						<img src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 200, 270, width)}" alt="{PAGE_ROW_MAVATAR.1.DESC}" class="img-responsive list-thumb" title="{PAGE_ROW_MAVATAR.1.DESC}"/>
						<!-- ELSE -->
						<img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" alt="Нет изображения" class="img-responsive list-thumb" title=""/>
						<!-- ENDIF -->
						</span>
				</div>

				<div class="desc">{PAGE_ROW_TEXT}</div>		
			<!-- ENDIF -->
			

			<div class="clearfix"></div>
		</div>
	</div>	
<!-- END: PAGE_ROW -->
</div>
			
<div class="clearfix"></div>
<!-- IF {LIST_TEXT_AFTER|strlen} > 10 -->
<div class="catdesc wow fadeInUpBig lead" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TEXT_AFTER}</div>
<div class="clearfix"></div>
<!-- ENDIF -->
</div>
<!-- END: MAIN -->