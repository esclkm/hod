<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: IMPORT -->
<div class="block">
	<h3>{PHP.L.importfile}</h3>
	<form  action="{FORM_URL}" method="post" enctype="multipart/form-data">
		<table class="cells">
			<tr>
				<td class="width20">{PHP.L.Configuration}:</td>
				<td class="width80">{CONFIGS}</td>
			</tr>
			<tr>
				<td>{PHP.L.File}:</td>
				<td>{INPUT}</td>
			</tr>			
		</table>
		<div class="action_bar valid">
			<input type="submit" class="submit" value="{PHP.L.import}" />
		</div>
	</form>
</div>
<!-- END: IMPORT -->

<!-- BEGIN: EXPORT -->
<div class="block">
	<h3>{PHP.L.exportfile}</h3>
	<form  action="{FORM_URL}" method="post" enctype="multipart/form-data">
		<table class="cells">
			<tr>
				<td class="width20">{PHP.L.Configuration}:</td>
				<td class="width80">{CONFIGS}</td>
			</tr>

			<tr>
				<td>{PHP.L.Category}:</td>
				<td>{CAT}{CAT_IN}{PHP.L.includesub}</td>
			</tr>	
			<tr>
				<td>{PHP.L.Title}:</td>
				<td>{TITLE}</td>
			</tr>	
			<tr>
				<td>{PHP.L.Order}:</td>
				<td>{ORDER} {WAY}</td>
			</tr>
			<tr>
				<td>{PHP.L.Filter}:</td>
				<td>{FILTER}</td>
			</tr>			
		</table>
		<div class="action_bar valid">
			<input type="submit" class="submit" value="{PHP.L.export}" />
		</div>
	</form>
</div>
<!-- END: EXPORT -->

<!-- END: MAIN -->