<!-- BEGIN: MAIN -->

<div class="image-container col-sm-5 pull-left wow fadeInLeft sameh2" data-wow-delay="0" >
	<div class="" style="background-size: cover!important;  height: 100%; background: url('<!-- IF {PAGE_MAVATAR} -->{PAGE_MAVATAR.1.FILE}<!-- ELSE -->{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png<!-- ENDIF -->') center;"></div>
</div>
						
<div class="container sameh2 ">
	<div class="row section">
		<div class="inner-padding">
			<div class="col-sm-6 col-sm-offset-6 wow fadeInRight" data-wow-delay="0.2s">
				<h3>
					{PAGE_SHORTTITLE|page_color_header}
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
					<!-- ENDIF -->
				</h3>
				<div class="textbox">
					<strong>{PAGE_DESC}</strong>
				</div>
				<div class="textbox">
					{PAGE_TEXT}
				</div>

			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<div class="clearfix"></div>
<!-- END: MAIN -->