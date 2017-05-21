<!-- BEGIN: MAIN -->
<h4>Смотрите также:</h4>

<div class="row seealso">
<!-- BEGIN: PAGE_ROW -->
	<div class="col-md-6">
		<div class="row">

			<div class="col-xs-3 marginbottom20 tovar text-center">
				<!-- IF {PAGE_ROW_DEMO} -->
					<img class="img-responsive list-thumb" src="{PAGE_ROW_DEMO|sshort_download($this, 300)}" />
				<!-- ENDIF -->
				<!-- IF {PAGE_ROW_MAVATAR} AND !{PAGE_ROW_DEMO} -->
					<img src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 294, 220, auto)}" alt="{PAGE_ROW_MAVATAR.1.DESC}" class="img-responsive list-thumb" title="{PAGE_ROW_MAVATAR.1.DESC}"/>
				<!-- ENDIF -->
				<!-- IF {PAGE_ROW_GITHUB|github_screenshots($this, '', 1, 1)}} AND !{PAGE_ROW_MAVATAR} AND !{PAGE_ROW_DEMO} -->
					<img src="{PAGE_ROW_GITHUB|github_screenshots($this, '', 1, 1)}"  class="img-responsive list-thumb" />	
				<!-- ENDIF -->
				<!-- IF !{PAGE_ROW_GITHUB|github_screenshots} AND !{PAGE_ROW_MAVATAR} AND !{PAGE_ROW_DEMO} -->
					<img src="{PHP.cfg.mainurl}/themes/{PHP.usr.theme}/images/no-image.png" alt="Нет изображения" class="img-responsive list-thumb" title=""/>
				<!-- ENDIF -->


			</div>
			<div class="col-xs-9">
				<h4 class="">
					<a href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
					<!-- IF {PHP.usr.isadmin} -->
					<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
					<!-- ENDIF -->
				</h4>
				<div class="textbox text-justify">
					{PAGE_ROW_DESC}
				</div>
			</div>
		</div>
		
	</div>
	<!-- IF {PAGE_ROW_NUM} % 2 == 0 -->
		<div class="clearfix"></div>
	<!-- ENDIF -->	
<!-- END: PAGE_ROW -->						
</div>
<!-- END: MAIN -->