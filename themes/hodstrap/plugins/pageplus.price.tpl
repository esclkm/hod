<!-- BEGIN: MAIN --><div class="container container-fluid">	<h2 class="text-center fadeInUpBig wow" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TITLE|page_color_header}		<!-- IF {PHP.usr.isadmin} -->		<div class="pull-right">		<a class="small " href="{LIST_TEXTEDIT_URL}" title="{PHP.L.Edit}">			<span class="glyphicon glyphicon-edit"></span></a>&nbsp;		<a class="small" href="{LIST_ADD_URL}" title="{PHP.L.Add}">			<span class="glyphicon glyphicon-plus-sign"></span>		</a>		</div>		<!-- ENDIF -->	</h2>	<span class="small-border wow fadeInUpBig" data-wow-offset="40" data-wow-duration="1.5s" data-animation="fadeInUp"></span>	<!-- IF {LIST_TEXT|strlen} > 10 -->	<div class="catdesc text-center wow fadeInUpBig lead" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TEXT}</div>	<!-- ENDIF --></div><div class="container container-fluid fadeInUpBig wow" data-wow-offset="40" data-wow-duration="1.5s">	<div class="row">	<!-- BEGIN: PAGE_ROW -->		<div class="col-md-3 col-xs-6 price ">			<div class="sameh2 marginbottom20">			<div class="price-comment ">					<div class="price-title">							<strong>{PAGE_ROW_SHORTTITLE|page_color_header}</strong>						<!-- IF {PHP.usr.isadmin} -->						<a class="small pull-right" href="{PAGE_ROW_ADMIN_EDIT_URL}" title="{PHP.L.Edit}">							<span class="glyphicon glyphicon-edit"></span>						</a>						<!-- ENDIF -->							</div>				</div>							<div class="price-text sameh">{PAGE_ROW_TEXT}</div>				<!-- IF {PAGE_ROW_DESC} --><div class="price-price">{PAGE_ROW_DESC}</div><!-- ENDIF -->				<div class="price-order wow fadeInUpBig" data-wow-offset="20" data-wow-duration="1.5s">					<button class="contact-button" data-toggle="modal" data-tarif="{PAGE_ROW_SHORTTITLE}" data-target="#myModal">Заказать</button>				</div>			</div>		</div>		<!-- END: PAGE_ROW -->	</div></div><div class="clearfix"></div><script type="text/javascript">	$(function(){		$('.price-order .contact-button').click(function(){			var textinfo = $(this).attr('data-tarif');			$('#myModal textarea').text('Заказать "'+textinfo+'"');		})	})</script>			<div class="clearfix"></div><!-- IF {LIST_TEXT_AFTER|strlen} > 10 --><div class="container container-fluid">	<div class="catdesc wow fadeInUpBig lead" data-wow-offset="40" data-wow-duration="1.5s">{LIST_TEXT_AFTER}</div>	<div class="clearfix"></div></div><!-- ENDIF -->	<!-- END: MAIN -->