<!-- BEGIN: MAIN -->
<h2 class="text-center fadeInUpBig wow" data-wow-offset="120" data-wow-duration="1500">{LIST_TITLE|page_color_header}
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
<span class="small-border wow fadeInUpBig" data-wow-offset="120" data-wow-duration="1500" data-animation="fadeInUp"></span>
<div class="catdesc text-center wow fadeInUpBig lead" data-wow-offset="120" data-wow-duration="1500">{LIST_TEXT}</div>
<div class="row tovarslides futures">
<!-- BEGIN: PAGE_ROW -->
	<div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 marginbottom20 whyiguana">
		<div class=" futurebox indexplus sameh">
			<!-- IF {PAGE_ROW_ICO_CLASS} -->
				<i class="{PAGE_ROW_ICO_CLASS}"></i>
				<div class="text">
					<h4 class="text-cursive">
						<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE|page_color_header}</a>
						<!-- IF {PHP.usr.isadmin} -->
						<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
							<span class="glyphicon glyphicon-edit"></span>
						</a>					
						<!-- ENDIF -->
					</h4>


					<div class="desc">{PAGE_ROW_TEXT}</div>
					<div class="text-right"><a href="{PAGE_ROW_URL}">подробнее...</a></div>
				</div>
			<!-- ELSE -->
				<h4 class="text-cursive">
					<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE|page_color_header}</a>
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>					
					<!-- ENDIF -->
				</h4>

				<div class="pull-left col-xs-4 hidden-xs">
						<a href="{PAGE_ROW_URL}" class="i_text">
						<!-- IF {PAGE_ROW_MAVATAR} -->
						<img src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 200, 270, width)}" alt="{PAGE_ROW_MAVATAR.1.DESC}" class="img-responsive list-thumb" title="{PAGE_ROW_MAVATAR.1.DESC}"/>
						<!-- ELSE -->
						<img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" alt="Нет изображения" class="img-responsive list-thumb" title=""/>
						<!-- ENDIF -->
						</a>
				</div>

				<div class="desc">{PAGE_ROW_TEXT}</div>
				<div class="text-right"><a href="{PAGE_ROW_URL}">подробнее...</a></div>			
			<!-- ENDIF -->
			

			<div class="clearfix"></div>
		</div>
	</div>	
<!-- END: PAGE_ROW -->
</div>
			
<div class="clearfix"></div>
<div class="catdesc wow fadeInUpBig lead" data-wow-offset="120" data-wow-duration="1500">{LIST_TEXT_AFTER}</div>
<div class="clearfix"></div>
<!-- END: MAIN -->