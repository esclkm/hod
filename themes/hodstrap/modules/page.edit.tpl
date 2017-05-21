<!-- BEGIN: MAIN -->

<div class="page-header">
	<div class="container container-fluid">	
		<div class="pull-right">
			<span class="label label-default">{PAGEEDIT_FORM_LOCALSTATUS}</span>
		</div>
		<h1>{PAGEEDIT_PAGETITLE}: <small>{PHP.pag.page_title}</small></h1>	
	</div>
</div>		
<div class="container container-fluid">

	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

	<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">

		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#mainform" role="tab" data-toggle="tab">Основные настройки</a></li>
			<li><a href="#attachform" role="tab" data-toggle="tab">Прикрепленные файлы</a></li>
			<li><a href="#optionsform" role="tab" data-toggle="tab">Персональные данные</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="mainform">

				<div class="row">
					<div class="col-md-8">
						<h4>{PHP.L.Main}</h4>
						<div class="form-group">
							<label>{PHP.L.Title}</label>
							{PAGEEDIT_FORM_TITLE}
						</div>
						<div class="form-group">
							<label>{PHP.L.Description}</label>
							{PAGEEDIT_FORM_DESC}
						</div>
						<div class="form-group">
							<label>{PHP.L.Category}</label>
							{PAGEEDIT_FORM_CAT}
						</div>
						<div class="form-group">
							<label>{PHP.L.Parser}</label>
							<div>{PAGEEDIT_FORM_PARSER}</div>
						</div>
						{PAGEEDIT_FORM_TEXT}
						<!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
						<!-- IF {PAGEEDIT_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
						<div class="form-group">
							<label>{PAGEEDIT_FORM_ICO_CLASS_TITLE}</label>
							<div>{PAGEEDIT_FORM_ICO_CLASS}</div>
							<div class="small">Можно использовать классы:
								<ul>
									<li><a href="http://getbootstrap.com/components/#glyphicons" target="_blank">Glyphicons</a></li>
									<li><a href="https://fortawesome.github.io/Font-Awesome/icons/" target="_blank">Font Awesome</a></li>
									<li><a href="http://rhythm.nikadevs.com/content/icons-et-line" target="_blank">ET-Line Icons</a></li>
								</ul>
							</div>
						</div>

					</div>
					<div class="col-md-4">
						<h4>{PHP.L.SEO}</h4>
						<div class="form-group">
							<label>{PHP.L.Alias}</label>
							{PAGEEDIT_FORM_ALIAS}
						</div>					
			
						<div class="form-group">
							<label>{PHP.L.page_metakeywords}</label>
							{PAGEEDIT_FORM_KEYWORDS}
						</div>	
						<div class="form-group">
							<label>{PHP.L.page_metatitle}</label>
							{PAGEEDIT_FORM_METATITLE}
						</div>	
						<div class="form-group">
							<label>{PHP.L.page_metadesc}</label>
							{PAGEEDIT_FORM_METADESC}
						</div>	
						<h4>{PHP.L.Other}</h4>
						<div class="form-group">
							<label>{PAGEEDIT_FORM_CONTACT_TEXT_TITLE}</label>
							{PAGEEDIT_FORM_CONTACT_TEXT}
						</div>
						<div class="form-group">
							<label>{PAGEEDIT_FORM_LINK_TITLE}</label>
							{PAGEEDIT_FORM_LINK}
						</div>						
						<div class="form-group">
							<label>{PHP.L.Date}:</label>
							<div>{PAGEEDIT_FORM_DATE}</div>
							<small>{PAGEEDIT_FORM_DATENOW} {PHP.L.page_date_now}</small>
						</div>
						<div class="form-group">
							<label>{PHP.L.Begin}</label>
							<div>{PAGEEDIT_FORM_BEGIN}</div>
						</div>
						<div class="form-group">
							<label>{PHP.L.Expire}</label>
							<div>{PAGEEDIT_FORM_EXPIRE}</div>
						</div>			
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="tab-pane" id="attachform">
				<h4>Прикрепленные файлы</h4>
				{PAGEEDIT_FORM_MAVATAR}
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							<label>{PAGEEDIT_FORM_YOUTUBE_TITLE}</label>
							{PAGEEDIT_FORM_YOUTUBE|cot_rc_modify('$this', 'class="form-control"')}
						</div>
					</div>
				</div>
			</div>
			<div class="tab-pane" id="optionsform">
			{LANDINGINDEXPAGE}
			</div>	
		</div>			
		<div class="publish margintop10 marginbottom10">
		<!-- IF {PHP.usr_can_publish} -->
			<button type="submit" name="rpagestate" value="0" class="btn btn-primary">{PHP.L.Publish}</button>
			<!-- ENDIF -->
			<button type="submit" name="rpagestate" value="2" class="submit btn btn-default">{PHP.L.Saveasdraft}</button>
			<button type="submit" name="rpagestate" value="1"  class="btn btn-default">{PHP.L.Submitforapproval}</button>
			<a href="{PAGEEDIT_FORM_ID|page_delete_url}" class="btn btn-danger confirmLink" >{PHP.L.Delete}</a>
		</div>
	</form>

	<div class="alert alert-info">{PHP.L.page_formhint}</div>			
</div>


<!-- END: MAIN -->
