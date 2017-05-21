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
	<span class="small-border wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s" data-animation="fadeInUp"></span>
	<!-- IF {LIST_TEXT|strlen} > 10 -->
	<div class="catdesc text-center wow fadeInUpBig lead" data-wow-offset="20" data-wow-duration="1.5s">{LIST_TEXT}</div>
	<!-- ENDIF -->
</div>
<div class="portfolio fadeInUpBig wow">
	<div class="container container-fluid">
		<div class="row">
<!-- BEGIN: PAGE_ROW -->
		<div class="portfolio-card wow fadeIn"  data-wow-offset="20" data-wow-duration="1.1s">
			<div class="card">

				<img class="img-responsive" src="<!-- IF {PAGE_ROW_MAVATAR} -->{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 400, 900, width)}<!-- ELSE -->{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png<!-- ENDIF -->"/>
				<span class="hover-overlay"></span>
				<div class="card-desc">
					<h4>
						{PAGE_ROW_SHORTTITLE|page_color_header}
						<!-- IF {PHP.usr.isadmin} -->
						<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
							<span class="glyphicon glyphicon-edit"></span>
						</a>					
						<!-- ENDIF -->
					</h4>
					<div class="viewhref">		
					<!-- IF {PAGE_ROW_MAVATAR} -->
						<!-- IF {PAGE_ROW_MAVATAR.2} -->
						<a class="fancybox" href="{PAGE_ROW_MAVATAR.2.thumb_1600_1600_width}"><i class="fa fa-search "></i></a>
						<!-- ELSE -->
						<a  class="fancybox" href="{PAGE_ROW_MAVATAR.1.thumb_1600_1600_width}"><i class="fa fa-search "></i></a>
						<!-- ENDIF -->
					<!-- ENDIF -->
					<!-- IF {PAGE_ROW_LINK} -->
						<a href="{PAGE_ROW_LINK}" target="_blank" title="{PHP.L.Open}"><i class="fa fa-align-justify fa-external-link-square "></i></a>	
					<!-- ENDIF -->				
					</div>
					<div class="desc">{PAGE_ROW_TEXT}</div>
				</div>
			</div>
			
		</div>
		
<!-- END: PAGE_ROW -->
		<div class="clearfix"></div>
		</div>
	</div>
</div>
			
<div class="clearfix"></div>
<!-- IF {LIST_TEXT_AFTER|strlen} > 10 -->
<div class="container container-fluid">
	<div class="catdesc wow fadeInUpBig lead" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TEXT_AFTER}</div>
	<div class="clearfix"></div>
</div>
<!-- ENDIF -->	
<!-- END: MAIN -->