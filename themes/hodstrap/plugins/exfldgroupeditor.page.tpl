<!-- BEGIN: MAIN -->
<div class="col-md-6">
	<table class="table table-hover">

		<!-- BEGIN: EXTRAFLD -->

	<!-- IF {EXTRAFLD_TYPE} == 'separator' -->
	</table>
</div>
<div class="col-md-6">
	<table class="table table-hover">
		<!-- ELSE -->

	<!-- IF {EXTRAFLD_TYPE} != 'checkbox' -->
		<tr>
			<td>{EXTRAFLD_TITLE}:</td>
			<td>{EXTRAFLD}</td>
		</tr>
		<!-- ELSE -->
		<tr>
			<td></td>
			<td>{EXTRAFLD}</td>
		</tr>		
		<!-- ENDIF -->
		<!-- ENDIF -->

		<!-- END: EXTRAFLD -->
	</table>
</div>
<!-- END: MAIN -->