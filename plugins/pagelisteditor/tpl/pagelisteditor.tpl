<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="block">
	<h3 class="page">{PHP.L.Filter}</h3>
	<div class="button-toolbar">
		<form action="{PAGEEDIT_FORMFILRER_ACTION}" enctype="multipart/form-data" method="GET" name="pageform">{PAGEEDIT_FORMFILRER_HIDDEN}
			{PAGEEDIT_FORMFILRER_CAT} {PAGEEDIT_FORMFILRER_IN}{PHP.L.includesub} {PAGEEDIT_FORMFILRER_TITLE}
			<p>
				{PHP.L.adm_sort} {PAGEEDIT_FORMFILRER_ORDER} {PAGEEDIT_FORMFILRER_WAY}; 
				{PHP.L.Show} {PAGEEDIT_FORMFILRER_FILTER}
			</p>
			<button type="submit" value="0">{PHP.L.Filter}</button> 
		</form>
	</div>
</div>
<style type="text/css">
  .cats *{
    max-width: 100%; }
  .full *{
    width: 100%; }    
</style>
<div class="block">
	<h3>{PHP.L.editdeleteentries}:</h3>
	<form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
		<table class="cells">

			<tr>
				<td class="coltop width5">#</td>
				<td class="coltop width20">Параметр</td>
				<td class="coltop width750">Значение</td>

			</tr>
			<!-- BEGIN: ROW -->
			<tr>
				<td><a href="{PAGEEDIT_FORM_OPEN_HREF}" class="button special positive">{PAGEEDIT_FORM_ID}</a></td>
				<td>{PHP.L.Title}</td>
				<td>
				<div class="cats">{PAGEEDIT_FORM_TITLE}
				<a href="{PAGEEDIT_FORM_DELETE_HREF}" class="negative button">{PHP.L.Delete}</a>
				<a href="{PAGEEDIT_FORM_EDIT_HREF}" class="button">{PHP.L.Edit}</a>
				{PAGEEDIT_FORM_EDITSTATE}{PAGEEDIT_FORM_DELETE}
				</div>
				</td>
			</tr>
			<tr>
				<td></td>
				<td>{PHP.L.Category} / {PHP.L.Title}</td>
				<td><div class="cats">{PAGEEDIT_FORM_CAT}</div></td>
			</tr>
			<tr>
				<td></td>
				<td>{PHP.L.Description}</td>
				<td><div class="full">{PAGEEDIT_FORM_DESC}</div></td>
			</tr>
			<tr>
				<td></td>
				<td>{PHP.L.Keywords}</td>
				<td><div class="full">{PAGEEDIT_FORM_KEYWORDS}</div></td>
			</tr>
			<tr>
				<td></td>
				<td>Адрес</td>
				<td><div class="full">{PAGEEDIT_FORM_ADDRESS}</div></td>
			</tr>
			<tr>
				<td></td>
				<td>Телефон</td>
				<td><div class="full">{PAGEEDIT_FORM_PHONE1}</div></td>
			</tr>
			<tr>
				<td></td>
				<td>WWW</td>
				<td><div class="full">{PAGEEDIT_FORM_WWW}</div></td>
			</tr>	
			<tr>
				<td></td>
				<td>Порядок</td>
				<td><div class="full">{PAGEEDIT_FORM_SIZE}</div></td>
			</tr>
			<tr>
				<td colspan="3"></td>
			</tr>
			<!-- END: ROW -->
			<tr>
				<td colspan="3" class="valid">
					<button type="submit" class="submit" value="0">{PHP.L.Update}</button> 
				</td>
			</tr>
		</table>
		<!-- IF {PAGEEDIT_PAGNAV} -->
		<p class="paging clear">{PAGEEDIT_PAGEPREV}{PAGEEDIT_PAGNAV}{PAGEEDIT_PAGENEXT}</p>
		<!-- ENDIF -->
	</form>
</div>

<!-- END: MAIN -->