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
</div>
<div class="container container-fluid fadeInUpBig wow" data-wow-offset="40" data-wow-duration="1.5s">
	<div class="row indexslider">
	<!-- BEGIN: PAGE_ROW -->
		<div class="col-xs-4 otzyvy">
			
			<div class="otzyvy-text sameh"><i class="fa fa-quote-left"></i>{PAGE_ROW_TEXT}</div>
			<div class="otzyvy-comment">
				<div class="otzyvy-avatar-img" style="background: url('<!-- IF {PAGE_ROW_MAVATAR} -->{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 64, 64, crop)}<!-- ELSE -->{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png<!-- ENDIF -->') center;"></div>
				<div class="otzyvy-author">	
					<strong>{PAGE_ROW_SHORTTITLE}</strong><!-- IF {PAGE_ROW_DESC} -->, {PAGE_ROW_DESC}<!-- ENDIF -->
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
					<!-- ENDIF -->		
				</div>
			</div>
		</div>	
	<!-- END: PAGE_ROW -->
	</div>
</div>
<div class="clearfix"></div>
			
<div class="clearfix"></div>
<!-- IF {LIST_TEXT_AFTER|strlen} > 10 -->
<div class="container container-fluid">
	<div class="catdesc wow fadeInUpBig lead" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TEXT_AFTER}</div>
	<div class="clearfix"></div>
</div>
<!-- ENDIF -->	
<!-- END: MAIN -->