<!-- BEGIN: MAIN -->
<script src="{PHP.cfg.plugins_dir}/landingextrapage/js/landingextrapage.edit.js" type="text/javascript"></script>	
<table class="table table-bordered">
    <tr>
	<td class="col-xs-3">{PHP.L.Image}</td>
	<td class="col-xs-3">{PHP.L.Title}</td>
	<td class="col-xs-4">{PHP.L.Text}</td>
	<td class="col-xs-2">{PHP.L.Action}</td>
    </tr>
    <!-- BEGIN: ROW -->
    <tr class="landingexptrapage" id="landingexptrapage-{NUM}"<!-- IF {NUM} == 'new' --> style="display:none;"<!-- ENDIF -->>
	<td class="landingexptrapage-img">
	    {IMG_INP}
	</td>
	<td class="landingexptrapage-title">
	    {TITLE_INP}
	</td>
	<td class="landingexptrapage-text">
	    {TEXT_INP}
	</td>
	<td class="landingexptrapage-action">
	    <button class="btn btn-danger landingexptrapagedelete">{PHP.L.Delete}</button>
	</td>
    </tr>    
    <!-- END: ROW -->
</table>
<button id="landingexptrapageadd" class="btn btn-default">{PHP.L.Add}</button>

<div class="clearfix"></div>
<!-- END: MAIN -->