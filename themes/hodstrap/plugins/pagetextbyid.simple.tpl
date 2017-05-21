<!-- BEGIN: MAIN -->
<div class="container container-fluid text-center">
	<!-- IF {PAGE_DESC|strlen} > 5 -->
	<div class="textdesc lead wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s">	
		{PAGE_DESC}
	</div>
	<!-- ENDIF -->
	<h2 class=" wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s">
		{PAGE_SHORTTITLE|page_color_header}
		<!-- IF {PHP.usr.isadmin} -->
		<a class="small pull-right" href="{PAGE_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
			<span class="glyphicon glyphicon-edit"></span>
		</a>
		<!-- ENDIF -->
	</h2>
	<!-- IF {PAGE_TEXT|strlen} > 10 -->
	<span class="small-border wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s" data-animation="fadeInUp"></span>		
	<div class="textmore wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s">
		{PAGE_TEXT}
	</div>
	<!-- ENDIF -->
	
	<!-- IF {PAGE_CONTACT_TEXT}-->
	<div class=" wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s">
		<button class="contact-button" data-toggle="modal" data-target="#myModal">{PAGE_CONTACT_TEXT}</button>
	</div>	
	<!-- ENDIF -->	
	
	<!-- IF {PAGE_MAVATAR} -->	
	<div class="slideimg videoimg">			
		<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
		<img alt="{VALUE.DESC}"  class="img-responsive wow fadeInUpBig" data-wow-offset="30" data-wow-duration="1.5s" title="{VALUE.DESC}" src="{VALUE.FILE}">
		<!-- ENDFOR -->	
	</div>
	<!-- ENDIF -->
	

</div>

<!-- END: MAIN -->