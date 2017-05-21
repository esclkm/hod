<!-- BEGIN: MAIN -->
<div class="page-header">
	<div class="container container-fluid">
		
		<h1>Правка отзыва: 
<!-- BEGIN: COMMENTS_TITLE -->
			<a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a>
<!-- END: COMMENTS_TITLE -->
		</h1>
	</div>
</div>
<div class="container container-fluid">
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: COMMENTS_FORM_EDIT -->
			<form id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
				<div class="form-group">
					<label>{COMMENTS_POSTER_TITLE}</label>
					{COMMENTS_POSTER}
				</div>
				<div class="form-group">
					<label>{COMMENTS_IP_TITLE}</label>
					{COMMENTS_IP}
				</div>
				<div class="form-group">
					<label>{COMMENTS_DATE_TITLE}</label>
					{COMMENTS_DATE}
				</div>
				<div class="form-group">
					{COMMENTS_FORM_TEXT}
					<!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
					<!-- IF {COMMENTS_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{COMMENTS_FORM_SFS}<!-- ENDIF -->
				</div>	
				<div class="publish margintop10 marginbottom10">
					<input type="submit" class="btn btn-primary" value="{COMMENTS_FORM_UPDATE_BUTTON}">	
				</div>
			</form>
<!-- END: COMMENTS_FORM_EDIT -->
</div>
<!-- END: MAIN -->

<!-- BEGIN: COMMENTS -->
<hr/>
<div class="">
	<div class="">	
	<a name="comments"></a>
		<h4>Отзывы</h4>
		<div class="commentsblock">
<!-- BEGIN: COMMENTS_ROW -->
<div class="panel panel-info">

    <div class="panel-body">
		<div class="comments_author">
			<a href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}">{COMMENTS_ROW_ORDER}.</a> 
			<strong>{COMMENTS_ROW_AUTHOR_NICKNAME}</strong> {COMMENTS_ROW_ADMIN} {COMMENTS_ROW_EDIT}
			<div class="pull-right small">{COMMENTS_ROW_DATE_STAMP|cot_date('date_text', $this)}</div>
		</div>
		<div class="comments_text">
			{COMMENTS_ROW_TEXT}			
		</div>
    </div>
</div>

<!-- END: COMMENTS_ROW -->

<!-- BEGIN: PAGNAVIGATOR -->
				<!-- IF {COMMENTS_PAGES_PAGNAV} -->
				<div class="text-center">
					<ul class="pagination">{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</ul>
				</div>
				<!-- ENDIF -->
<!-- END: PAGNAVIGATOR -->



<!-- BEGIN: COMMENTS_EMPTY -->
				<div class="alert alert-warning">
					Отзывы отстутствуют
				</div>
<!-- END: COMMENTS_EMPTY -->
		</div>
	</div>
	<div class="">
<!-- BEGIN: COMMENTS_NEWCOMMENT -->
		<h4 class="comments">Новый отзыв</h4>
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{COMMENTS_FORM_SEND}" method="post" name="newcomment">
			<!-- BEGIN: GUEST -->
			<div>{PHP.L.Name}: {COMMENTS_FORM_AUTHOR}</div>
			<!-- END: GUEST -->
			<div>
				{COMMENTS_FORM_TEXT}
				<!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
				<!-- IF {COMMENTS_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{COMMENTS_FORM_SFS}<!-- ENDIF -->
			</div>

			<!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
			<div>{COMMENTS_FORM_VERIFYIMG}: {COMMENTS_FORM_VERIFY}</div>
			<!-- ENDIF -->
			<div class="margintop20 marginbottom20 text-right">
				<button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
			</div>
		</form>

<!-- END: COMMENTS_NEWCOMMENT -->
<!-- BEGIN: COMMENTS_CLOSED -->
				<div class="error">{COMMENTS_CLOSED}</div>
<!-- END: COMMENTS_CLOSED -->

	</div>
</div>
<!-- END: COMMENTS -->