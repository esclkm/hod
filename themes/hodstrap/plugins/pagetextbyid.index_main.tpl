<!-- BEGIN: MAIN -->
<div class="slider_images hidden">
	<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
    <img src="{VALUE.FILE}" />
	<!-- ENDFOR -->
</div>
<div class="container container-fluid">
	<div class="textdesc">	
		{PAGE_DESC}
	</div>
	<h1 class="">
		{PAGE_SHORTTITLE|page_color_header}
		<!-- IF {PHP.usr.isadmin} -->
		<a class="small pull-right" href="{PAGE_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
			<span class="glyphicon glyphicon-edit"></span>
		</a>
		<!-- ENDIF -->
	</h1>
	<div class="textmore">
		{PAGE_TEXT}
	</div>	
	
	<!-- IF {PAGE_CONTACT_TEXT}-->
	<div class="textbutton" data-wow-offset="0" data-wow-duration=".5s">
		<button class="contact-button black" data-toggle="modal" data-target="#myModal">{PAGE_CONTACT_TEXT}</button>
	</div>	
	<!-- ENDIF -->
	
	<script type="text/javascript" src="//yastatic.net/share/share.js" charset="utf-8"></script>
	<div class="counters">			
		<div class="yashare-auto-init wow fadeInUpBig " data-yashareL10n="ru" data-yashareType="big" data-yashareQuickServices="vkontakte,facebook,twitter,gplus" data-yashareTheme="counter"></div>
	</div>
</div>

<!-- END: MAIN -->