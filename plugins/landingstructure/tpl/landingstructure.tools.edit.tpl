<!-- BEGIN: MAIN -->
<div> 
    <h2>#{ID}</h2>
    <form action="{EDIT_ACTION}" method="POST">
    <table class="table table-striped table-bordered">
        <tr>
            <td class="col-xs-3">{PHP.L.Key}</td>
            <td class="col-xs-9">{PHP.L.Value}</td>
        </tr>	
	<tr>
            <td class="">{PHP.L.Order}</td>
	    <td>{ORDER_INP}</td>
        </tr>	
	<tr>
            <td class="">{PHP.L.MenuTitle}</td><td>{MENUTITLE_INP}</td>
        </tr>	
	<tr>
	    <td class="">{PHP.L.MenuHref}</td><td>{MENULINK_INP}</td>
        </tr>	
	<tr>
            <td class="">{PHP.L.ClassesMain}</td><td>{CLASSES_MAIN_INP}</td>
        </tr>	
	<tr>
	    <td class="">{PHP.L.ClassesAdd}</td><td>{CLASSES_ADD_INP}</td>
        </tr>	
	<tr>	    
            <td class="">{PHP.L.FunctionName}</td><td>{CALLBACK_INP}</td>
        </tr>	
	<tr>
	    <td class="">{PHP.L.FunctionParam}</td><td>{PARAMS_TEXT}</td>
            
        </tr>	
    </table>
    <div class="text-right">
        <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
    </div>
    <div class="clearfix"></div>
    </form>     
</div>

<!-- END: MAIN -->