<!-- BEGIN: MAIN -->

<section class="page-content">
	<div class="container container-fluid">	
		<h1>{PAGEADD_PAGETITLE}</h1>
	</div>
</section>
<div class="container container-fluid">

	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

	<form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<ul class="nav nav-tabs" role="tablist">
			<li class="active"><a href="#mainform" role="tab" data-toggle="tab">Основные настройки</a></li>
			<li><a href="#attachform" role="tab" data-toggle="tab">Прикрепленные файлы</a></li>
			<li><a href="#optionsform" role="tab" data-toggle="tab">Параметры страницы</a></li>
			<li><a href="#harform" role="tab" data-toggle="tab">Технические характеристики</a></li>
			
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<div class="tab-pane active" id="mainform">

				<div class="row">
					<div class="col-md-8">
						<h4>{PHP.L.Main}</h4>
						<div class="form-group">
							<label>{PHP.L.Title}</label>
							{PAGEADD_FORM_TITLE}
						</div>
						<div class="form-group">
							<label>{PHP.L.Description}</label>
							{PAGEADD_FORM_DESC}
						</div>
						<div class="form-group">
							<label>{PHP.L.Category}</label>
							{PAGEADD_FORM_CAT}
						</div>
						<div class="form-group">
							<label>{PHP.L.Parser}</label>
							<div>{PAGEADD_FORM_PARSER}</div>
						</div>			
						{PAGEADD_FORM_TEXT}
						<!-- IF {PAGEADD_FORM_PFS} -->{PAGEADD_FORM_PFS}<!-- ENDIF -->
						<!-- IF {PAGEADD_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEADD_FORM_SFS}<!-- ENDIF -->
						<div class="form-group">
							<label>{PAGEADD_FORM_ICO_CLASS_TITLE}</label>
							<div>{PAGEADD_FORM_ICO_CLASS}</div>
						</div>						

					</div>
					<div class="col-md-4">
						<h4>{PHP.L.SEO}</h4>
						<div class="form-group">
							<label>{PHP.L.Alias}</label>
							{PAGEADD_FORM_ALIAS}
						</div>						
						<div class="form-group">
							<label>{PHP.L.page_metakeywords}</label>
							{PAGEADD_FORM_KEYWORDS}
						</div>	
						<div class="form-group">
							<label>{PHP.L.page_metatitle}</label>
							{PAGEADD_FORM_METATITLE}
						</div>	
						<div class="form-group">
							<label>{PHP.L.page_metadesc}</label>
							{PAGEADD_FORM_METADESC}
						</div>	
						<h4>{PHP.L.Other}</h4>

						<div class="form-group">
							<label>{PAGEADD_FORM_PRICE_TITLE}</label>
							{PAGEADD_FORM_PRICE}
							{PAGEADD_FORM_PRICE_PLUS}
						</div>		
						
						<div class="form-group">
							<label>{PAGEADD_FORM_LINK_TITLE}</label>
							{PAGEADD_FORM_LINK}
						</div>
						<div class="form-group">
							<label>{PHP.L.Begin}</label>
							<div>{PAGEADD_FORM_BEGIN}</div>
						</div>
						<div class="form-group">
							<label>{PHP.L.Expire}</label>
							<div>{PAGEADD_FORM_EXPIRE}</div>
						</div>			
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="tab-pane" id="attachform">
				<h4>Прикрепленные файлы</h4>
				{PAGEADD_FORM_MAVATAR}
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							<label>{PAGEADD_FORM_3D_TITLE}</label>
							{PAGEADD_FORM_3D|cot_rc_modify('$this', 'class="form-control"')}
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							<label>{PAGEADD_FORM_YOUTUBE_TITLE}</label>
							{PAGEADD_FORM_YOUTUBE|cot_rc_modify('$this', 'class="form-control"')}
						</div>
					</div>
					
				</div>
			</div>
			<div class="tab-pane" id="optionsform">	

			    <div class="form-group">
					<label>{PAGEADD_FORM_TEXT_BEFORE_TITLE}</label>
					<div>{PAGEADD_FORM_TEXT_BEFORE}</div>
				</div>
			    <div class="form-group">
					<label>{PAGEADD_FORM_HARAKTERISTIKI_SHORT_TITLE}</label>
					<div>{PAGEADD_FORM_HARAKTERISTIKI_SHORT}</div>
				</div>
				<div class="form-group">
					<label>{PAGEADD_FORM_TEXT_SHORT_TITLE}</label>
					<div>{PAGEADD_FORM_TEXT_SHORT}</div>
				</div>
				
			</div>
			<div class="tab-pane" id="harform">
				{PAGEADD_EXFLDGROUPEDITOR}
			</div>
		</div>
		<div class="publish margintop10 marginbottom10">
		<!-- IF {PHP.usr_can_publish} -->
			<button type="submit" name="rpagestate" value="0" class="btn btn-primary">{PHP.L.Publish}</button>
			<!-- ENDIF -->
			<button type="submit" name="rpagestate" value="2" class="submit btn btn-default">{PHP.L.Saveasdraft}</button>
			<button type="submit" name="rpagestate" value="1"  class="btn btn-default">{PHP.L.Submitforapproval}</button>
		</div>
	</form>

	<div class="alert alert-info">{PHP.L.page_formhint}</div>			
</div>


<!-- END: MAIN -->