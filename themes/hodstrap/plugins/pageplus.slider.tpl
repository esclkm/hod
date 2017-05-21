<!-- BEGIN: MAIN -->
<div class="mainslider">
	<!-- BEGIN: PAGE_ROW -->
	<div class="slide {PAGE_ROW_ALIAS}">
		<div class="row">
			<div class="col-md-7">
				<div class="slidetext">

					<div class="sliderheader">
						{PAGE_ROW_SHORTTITLE}
						<!-- IF {PHP.usr.isadmin} -->
						<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
							<span class="glyphicon glyphicon-edit"></span>
						</a>
						<!-- ENDIF -->
					</div>
					<div class="sliderdesc">
						{PAGE_ROW_TEXT}
					</div>
				</div>
			</div>
			<div class="col-md-5 hidden-xs hidden-sm">
				<div class="slideimg">
					<!-- IF {PAGE_ROW_MAVATAR} -->	
						<img src="{PAGE_ROW_MAVATAR.1.FILE}" alt="{PAGE_ROW_MAVATAR.1.DESC}" class="img-responsive" title=""/>
					<!-- ELSE -->
						<img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" alt="Нет изображения" class="img-responsive" title=""/>
					<!-- ENDIF -->			
				</div>
			</div>
		</div>
		<div class="clearfix"></div>			
	</div>
	<!-- END: PAGE_ROW -->
</div>
<div class="clearfix"></div>
<!-- END: MAIN -->