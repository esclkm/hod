<!-- BEGIN: MAIN -->
<div class="row tovarslides futures">
    <!-- BEGIN: ROW -->

    <div class="<!-- IF {ROW_COUNT} == 4 -->col-lg-3 col-md-6<!-- ENDIF --><!-- IF {ROW_COUNT} == 3 -->col-lg-4 col-md-4<!-- ENDIF --><!-- IF {ROW_COUNT} == 2 -->col-lg-6 col-md-6<!-- ENDIF -->  col-sm-12 col-xs-12">
	<div class=" futurebox indexplus sameh wow fadeInUpBig" data-wow-offset="60" data-wow-duration="1.5s" <!-- IF {PAGE_ROW_NUM} % 3 == 2 -->data-wow-delay="0.4s"<!-- ENDIF--><!-- IF {PAGE_ROW_NUM} % 3 == 0 -->data-wow-delay="0.8s"<!-- ENDIF-->>
	    <!-- IF {IMG_TYPE} == 'icon' -->
	    <i class="{IMG}"></i>
	    <div class="text">
		<h4 class="text-cursive">{TITLE|page_color_header}</h4>
		<div class="desc">{TEXT}</div>
	    </div>
	    <!-- ELSE -->
	    <h4 class="text-cursive">{TITLE|page_color_header}</h4>
	    <div class="pull-left col-xs-4 hidden-xs">
		<span class="i_text">
		    <img src="{IMG}" alt="" class="img-responsive list-thumb" title=""/>
		</span>
	    </div>
	    <div class="desc">{TEXT}</div>		
	    <!-- ENDIF -->
	    <div class="clearfix"></div>
	</div>
    </div>	
    <!-- END: ROW -->
</div>

<div class="clearfix"></div>
<!-- END: MAIN -->