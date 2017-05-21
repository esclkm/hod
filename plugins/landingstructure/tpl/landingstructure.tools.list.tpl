<!-- BEGIN: MAIN -->
<div> 
    <h2>{PHP.L.lstr_title}</h2>
    <form action="{EDIT_ACTION}" method="POST">
    <table class="table table-striped table-bordered">
        <tr>
            <td class="col-xs-1">{PHP.L.Order}</td>
            <td class="col-xs-3">{PHP.L.MenuTitle} / {PHP.L.MenuHref}</td>
            <td class="col-xs-3">{PHP.L.ClassesMain} / {PHP.L.ClassesAdd}</td>
            <td class="col-xs-3">{PHP.L.FunctionName} / {PHP.L.FunctionParam}</td>
            <td class="col-xs-2">{PHP.L.Action}</td>
        </tr>
    <!-- BEGIN: ROW -->
        <tr>
            <td class="col-xs-1">{ORDER_INP}</td>
            <td class="col-xs-3">{MENUTITLE_INP} {MENULINK_INP}</td>
            <td class="col-xs-3">{CLASSES_MAIN_INP} {CLASSES_ADD_INP}</td>
            <td class="col-xs-3">{CALLBACK_INP} {PARAMS_TEXT}</td>
            <td class="col-xs-2">
                <a href="{EDIT}" class="btn btn-default">{PHP.L.Edit}</a>
                <a class="btn btn-danger" href="{DELETE}">{PHP.L.Delete}</a>
            </td>
        </tr>
    <!-- END: ROW -->	
    </table>
    <div class="text-right">
        <button type="submit" class="btn btn-primary">{PHP.L.Submit}</button>
    </div>
    <div class="clearfix marginbottom20"></div>
    </form>
    <h2>{PHP.L.Add}</h2>
    <form action="{ADD_ACTION}" method="POST">
    <table class="table table-striped  table-bordered">
        <tr>
            <td class="col-xs-1">{PHP.L.Order}</td>
            <td class="col-xs-3">{PHP.L.MenuTitle} / {PHP.L.MenuHref}</td>
            <td class="col-xs-3">{PHP.L.ClassesMain} / {PHP.L.ClassesAdd}</td>
            <td class="col-xs-3">{PHP.L.FunctionName} / {PHP.L.FunctionParam}</td>
            <td class="col-xs-2">{PHP.L.Action}</td>
        </tr>
        <tr>
            <td class="col-xs-1">{ORDER_INP}</td>
            <td class="col-xs-3">{MENUTITLE_INP} {MENULINK_INP}</td>
            <td class="col-xs-3">{CLASSES_MAIN_INP} {CLASSES_ADD_INP}</td>
            <td class="col-xs-3">{CALLBACK_INP} {PARAMS_TEXT}</td>
            <td class="col-xs-2">

            </td>
        </tr>	
    </table>
    <div class="text-right">
        <button type="submit" class="btn btn-primary">{PHP.L.Add}</button>
    </div>
    <div class="clearfix marginbottom20"></div>
    </form>

    
</div>
<!-- END: MAIN -->