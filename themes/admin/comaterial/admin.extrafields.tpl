<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/admin/{PHP.cfg.admintheme}/warnings.tpl"}

<!-- BEGIN: TABLELIST -->
<div class="list-group">
	<!-- BEGIN: ROW -->
	<a href="{ADMIN_EXTRAFIELDS_ROW_TABLEURL}" class="list-group-item list-img-title-desc">
			<!-- IF {ADMIN_EXTRAFIELDS_ROW_ICO} -->
			<img src="{ADMIN_EXTRAFIELDS_ROW_ICO}" />
			<!-- ELSE -->
			<img src="{PHP.cfg.system_dir}/admin/img/plugins32.png" />
			<!-- ENDIF -->	
			{ADMIN_EXTRAFIELDS_ROW_TABLENAME}
	</a>
	<!-- END: ROW -->
</div>
<ul class="nav nav-pills">
	<li><a href="{ADMIN_EXTRAFIELDS_ALLTABLES}" title="{PHP.L.adm_extrafields_all}"><i class="fa fa-refresh"></i> {PHP.L.adm_extrafields_all}</a></li>
</ul>
<!-- END: TABLELIST -->
<script type="text/javascript">
//<![CDATA[
	var exFLDHELPERS = "{ADMIN_EXTRAFIELDS_TAGS}";
	var exnovars = "{PHP.L.adm_extrafields_help_notused}";
	var exvariants = "{PHP.L.adm_extrafields_help_variants}";
	var exrange = "{PHP.L.adm_extrafields_help_range}";
	var exdata = "{PHP.L.adm_extrafields_help_data}";
	var exregex = "{PHP.L.adm_extrafields_help_regex}";
	var exfile = "{PHP.L.adm_extrafields_help_file}";
	var exseparator = "{PHP.L.adm_extrafields_help_separator}";

	$(document).ready(function(){
		$('body').on("change", '.exfldtype', function(){
			var exParent = $(this).closest('tr');
			var exvalid =  $(this).attr('value');
			if(exvalid == 'select' || exvalid == 'radio' || exvalid == 'checklistbox' || exvalid == 'file')
			{
				if (exvalid == 'file') {
					$(exParent).find('.exfldvariants').attr('title', 'jpg, png, pdf, zip,..');
				} else {
					$(exParent).find('.exfldvariants').attr('title',exvariants);
				}
				$(exParent).find('.exfldvariants').removeAttr("disabled");
			}
			else
			{
				$(exParent).find('.exfldvariants').attr('title', exnovars);
				$(exParent).find('.exfldvariants').attr('disabled', 'disabled');

			}
			switch(exvalid)
			{
				case 'input':
					$(exParent).find('.exfldparams').attr('title',exregex);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'inputint':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'currency':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'double':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'textarea':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'select':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'checkbox':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'radio':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'datetime':
					$(exParent).find('.exfldparams').attr('title',exdata);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'file':
					$(exParent).find('.exfldparams').attr('title',exfile);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'country':
					$(exParent).find('.exfldparams').attr('title',exnovars);
					$(exParent).find('.exfldparams').attr('disabled', 'disabled');
					break;
				case 'range':
					$(exParent).find('.exfldparams').attr('title',exrange);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
				case 'checklistbox':
					$(exParent).find('.exfldparams').attr('title',exseparator);
					$(exParent).find('.exfldparams').removeAttr("disabled");
					break;
			}
			if($(exParent).find('.exfldname').attr('value') != '')
			{
				var exhelper = $(exParent).find('.exfldname').attr('value').toUpperCase();
				exhelper = exFLDHELPERS.replace(/XXXXX/g, exhelper);
				$(exParent).find('.exfldname').attr('title',exhelper);
				$(exParent).find('.exflddesc').attr('title',exhelper);
			}
			else
			{
				$(exParent).find('.exfldname').removeAttr("title");
				$(exParent).find('.exflddesc').removeAttr("title");
			}
		});
		 $(".exfldtype").change();
	});

;
//]]>
</script>
<!-- BEGIN: TABLE -->
<h3>{PHP.L.editdeleteentries}:</h3>
<div class="panel panel-default">

    <div class="panel-body">
        <form action="{ADMIN_EXTRAFIELDS_URL_FORM_EDIT}" method="post">
            <table class="table table-striped">
                <!--<thead>-->
                    <!--<tr>-->
                        <!--<th class="coltop"></th>-->
                        <!--<th class="coltop">{PHP.L.extf_Name}</th>-->
                        <!--<th class="coltop">{PHP.L.extf_Type}</th>-->
                        <!--<th class="coltop">{PHP.L.adm_extrafield_params}</th>-->
                        <!--<th class="coltop"></th>-->
                    <!--</tr>-->
                <!--</thead>-->
                <!-- BEGIN: EXTRAFIELDS_ROW -->
                <tr id="ex{ADMIN_EXTRAFIELDS_ROW_ID}">
                    <td>
                        <div class="row">
                            <div class="col-xs-1 col-sm-1">
                                {ADMIN_EXTRAFIELDS_ROW_ENABLED}
                            </div>

                            <div class="col-xs-11 col-sm-4">
                                <div class="form-group">
                                    <label for="">{PHP.L.extf_Name}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_NAME}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.extf_Description}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_DESCRIPTION}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.extf_Base_HTML}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_HTML}
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-2">
                                <div class="form-group">
                                    <label for="">{PHP.L.extf_Type}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_SELECT}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_parse}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_PARSE}
                                </div>

                                <div class="checkbox">{ADMIN_EXTRAFIELDS_ROW_REQUIRED}</div>
                            </div>

                            <div class="col-xs-8 col-sm-4">
                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_params}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_PARAMS}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_selectable_values}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_VARIANTS}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_default}</label>
                                    {ADMIN_EXTRAFIELDS_ROW_DEFAULT}
                                </div>
                            </div>

                            <div class="col-xs-4 col-sm-1">
                                <a title="{PHP.L.Delete}" href="{ADMIN_EXTRAFIELDS_ROW_DEL_URL}" class="ajax btn btn-danger"><span
                                        class="fa fa-trash-o"></span> {PHP.L.Delete}</a>
                            </div>
                        </div>
                    </td>
                </tr>
                <!-- END: EXTRAFIELDS_ROW -->
                <!-- IF {ADMIN_EXTRAFIELDS_TOTALITEMS} > 0 -->
                <tr>
                    <td colspan="5">
                        
                    </td>
                </tr>
                <!-- ENDIF -->
            </table>
        </form>
        <!-- IF {ADMIN_EXTRAFIELDS_PAGNAV} -->
        <div class="text-right">
            <nav>
                <ul class="pagination" style="margin-bottom: 0">
                    {ADMIN_EXTRAFIELDS_PAGINATION_PREV}{ADMIN_EXTRAFIELDS_PAGNAV}{ADMIN_EXTRAFIELDS_PAGINATION_NEXT}
                </ul>
            </nav>
            <span class="help-block">{PHP.L.Total}: {ADMIN_EXTRAFIELDS_TOTALITEMS}, {PHP.L.Onpage}: {ADMIN_EXTRAFIELDS_COUNTER_ROW}</span>
        </div>
        <!-- ENDIF -->
    </div>
</div>
<div class="marginbottom20 text-left">		
	<button type="submit" class="btn btn-primary" onclick="location.href='{ADMIN_EXTRAFIELDS_ROW_FORM_URL}'">
		<span class="fa fa-refresh"></span> {PHP.L.Update}</button>
</div>
<h3>{PHP.L.adm_extrafield_new}</h3>
<form action="{ADMIN_EXTRAFIELDS_URL_FORM_ADD}" method="post">
<div class="panel panel-default">
    <div class="panel-body">

        

            <table class="width100">
                <tr id="exnew">
                    <td>
                        <div class="row">
                            <div class="col-xs-12 col-sm-4">
                               <div class="form-group">
                                    <label for="">{PHP.L.extf_Name}</label>
                                    {ADMIN_EXTRAFIELDS_NAME}
                               </div>

                               <div class="form-group">
                                    <label for="">{PHP.L.extf_Description}</label>
                                    {ADMIN_EXTRAFIELDS_DESCRIPTION}
                               </div>

                               <div class="form-group">
                                    <label for="">{PHP.L.extf_Base_HTML}</label>
                                    {ADMIN_EXTRAFIELDS_HTML}
                               </div>
                            </div>

                            <div class="col-xs-12 col-sm-3">
                                <div class="form-group">
                                    <label for="">{PHP.L.extf_Type}</label>
                                    {ADMIN_EXTRAFIELDS_SELECT}
                               </div>

                               <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_parse}</label>
                                    {ADMIN_EXTRAFIELDS_PARSE}
                               </div>

                                <div class="checkbox">{ADMIN_EXTRAFIELDS_REQUIRED}</div>
                           </div>
                           <div class="col-xs-12 col-sm-5">
                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_params}</label>
                                    {ADMIN_EXTRAFIELDS_PARAMS}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_selectable_values}</label>
                                    {ADMIN_EXTRAFIELDS_VARIANTS}
                                </div>

                                <div class="form-group">
                                    <label for="">{PHP.L.adm_extrafield_default}</label>
                                    {ADMIN_EXTRAFIELDS_DEFAULT}
                                </div>
                           </div>
                        </div>

                        <div class="row">
                            <div class="col-xs-12">
                                <div class="checkbox" style="margin-top: 0">{ADMIN_EXTRAFIELDS_NOALTER}</div>
                                
                            </div>
                        </div>
                    </td>
                </tr>
            </table>
       

    </div>
</div>
<div class="marginbottom20 text-left">							
	<button type="submit" class="btn btn-primary"><span class="fa fa-plus"></span> {PHP.L.Add}</button>
</div>
 </form>
<!-- END: TABLE -->
<!-- END: MAIN -->