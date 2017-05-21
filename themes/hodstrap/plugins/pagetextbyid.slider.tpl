<!-- BEGIN: MAIN -->
<div class="bs-example">
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">

        <!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
        <li data-target="#carousel-example-generic" data-slide-to="{KEY|minusone}" class="<!-- IF {KEY} == 1 -->active<!-- ENDIF -->"></li>
		<!-- ENDFOR -->
      </ol>
      <div class="carousel-inner" role="listbox">
		<!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
		<div class="item <!-- IF {KEY} == 1 -->active<!-- ENDIF -->">
          <img alt="{VALUE.DESC}" src="{VALUE|cot_mav_thumb($this, 1140, 750, crop)}">
        </div>
		<!-- ENDFOR -->


      </div>
      <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </div>

<div class="clear"></div>
<!-- IF {PHP.usr.isadmin} -->

		<a href="{PAGE_ADMIN_EDIT_URL}" class=""><span class="glyphicon glyphicon-edit"></span> Редактировать слайдер</a>

<!-- ENDIF -->	

<!-- END: MAIN -->