<!-- BEGIN: MAIN -->

<div class="news">
<!-- BEGIN: PAGE_ROW -->
	<div class="marginbottom20">
		<div class="indexplus sameh">
			<h4 class="text-cursive">
				<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
				<!-- IF {PHP.usr.isadmin} -->
				<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
					<span class="glyphicon glyphicon-edit"></span>
				</a>
				<!-- ENDIF -->
			</h4>
			
			<hr/>		
			<!-- IF {PAGE_ROW_MAVATAR} -->		
			<div class="pull-left col-xs-4">
				
					<a href="{PAGE_ROW_URL}" class="i_text">
						
					
					<img src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 200, 270, width)}" alt="{PAGE_ROW_MAVATAR.1.DESC}" class="img-responsive list-thumb" title="{PAGE_ROW_MAVATAR.1.DESC}"/>
					

					</a>
			</div>
			<!-- ENDIF -->	
			
			<div class="desc">{PAGE_ROW_DESC}</div>
			<div class="text-right"><a href="{PAGE_ROW_URL}">подробнее...</a></div>
			<div class="clearfix"></div>
		</div>
	</div>	
<!-- END: PAGE_ROW -->
</div>
<div class="clearfix"></div>


<!-- END: MAIN -->