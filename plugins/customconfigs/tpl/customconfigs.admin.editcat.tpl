<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="block">
<h3>{PHP.L.edit_cats}</h3>
	<form action="{FORM_EDIT_URL}" method="POST">
        <table class="cells">
			<tr>
                <td class="width20">{PHP.L.Name}</td>
                <td class="width30">{PHP.L.Title}</td>
				<td class="width40">{PHP.L.Description}</td>
				<td class="width10">{PHP.L.Delete}</td>
            </tr>			
			<!-- BEGIN: ROW -->
            <tr>
				<td>{FORM_EDIT_NAME}</td>
				<td>{FORM_EDIT_TITLE}</td>
				<td>{FORM_EDIT_DESC}</td>
                <td>
					<a class="negative button trash icon" href="{FORM_EDIT_DELETE_URL}">{PHP.L.Delete}</a>
					<div>{DESC}</div>
				</td>
            </tr>
			<!-- END: ROW -->
			<!-- BEGIN: NOROW -->
            <tr>
                <td colspan="4">
					{PHP.L.None}
				</td>
            </tr>
			<!-- END: NOROW -->
        </table>
        <div class="action_bar valid">
			<input type="submit" class="button confirm" value="{PHP.L.Update}" />
        </div>
    </form>
</div>
		
<div class="block">
<h3>{PHP.L.add_cat}</h3>
	<form action="{FORM_ADD_URL}" method="POST">
        <table class="cells">
			<tr>
                <td class="width20">{PHP.L.Name}</td>
                <td class="width30">{PHP.L.Title}</td>
				<td class="width40">{PHP.L.Description}</td>
				<td class="width10"></td>
            </tr>			

            <tr>
				<td>{FORM_ADD_NAME}</td>
				<td>{FORM_ADD_TITLE}</td>
				<td>{FORM_ADD_DESC}</td>
                <td></td>
            </tr>
        </table>
        <div class="action_bar valid">
			<input type="submit" class="button confirm" value="{PHP.L.Add}" />
        </div>
    </form>
</div>		
<!-- END: MAIN -->