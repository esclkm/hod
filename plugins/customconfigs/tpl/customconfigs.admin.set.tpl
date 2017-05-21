<!-- BEGIN: MAIN -->
<div class="block">
	<h3>{CAT_TITLE}</h3>
	{CAT_DESC}
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="block">
	<form action="{FORM_UPDATE_URL}" method="POST">

	<h3>{PHP.L.Custom_configs}</h3>
		<table class="cells">
			<!-- BEGIN: ROW -->
			<tr>
			<!-- IF !{FORM_UPDATE_SEPARATOR} -->		
			<td>{FORM_UPDATE_TITLE}<br/>{FORM_UPDATE_TAG}</td>
				<td>
					{FORM_UPDATE_INPUT}
					<div>{FORM_UPDATE_DESC}</div>
				</td>
				<td><a class="button" href="{FORM_UPDATE_DEFAULT_URL}">{PHP.L.Default}</a></td>
			<!-- ELSE -->
				<td colspan="3"><h4>{FORM_UPDATE_TITLE}</h4></tr>
			<!-- ENDIF -->
			</tr>
			<!-- END: ROW -->
			<!-- BEGIN: NOROW -->
			<tr>
				<td>
					{PHP.L.None}
				</td>
			</tr>
			<!-- END: NOROW -->
		</table>
		<div class="action_bar valid">
			<input type="submit" class="button confirm" value="{PHP.L.Update}" /><a class="button" href="{EDITHREF}">{PHP.L.edit_cat}</a>
		</div>
	</form>
</div>
<!-- END: MAIN -->