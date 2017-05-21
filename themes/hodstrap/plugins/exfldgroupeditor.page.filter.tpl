<!-- BEGIN: MAIN -->
<!-- IF {LIST_FILTERS_COUNT} -->
<div class="girlfilter">
	<form action="{LIST_FILTERS_URL}" method="get" name="general">
		{LIST_FILTERS_HIDDEN}
		{LIST_FILTERS_ORDER}{LIST_FILTERS_WAY}
		<h3>Фильтр:</h3>
		<div>
			<!-- BEGIN: EXTRAFLD -->
				<!-- IF {EXTRAFLD_TYPE} == 'separator' -->
			<h5>
				{EXTRAFLD_TITLE}
			</h5>
			<!-- ELSE -->

<!-- IF {EXTRAFLD_TYPE} == 'checkbox' -->
			<div class="form-group">

				{EXTRAFLD}
			</div>
			<!-- ELSE -->
			<div class="form-group">
				<label>{EXTRAFLD_TITLE}:</label>
				<div class="optiongroup">{EXTRAFLD}</div>
			</div>
			<div class="clearfix"></div>
			<!-- ENDIF -->

			<!-- ENDIF -->

			<!-- END: EXTRAFLD -->
		</div>
		<div class="text-right">
			<input type="submit" class="btn btn-primary" value="{PHP.L.Submit}" />
		</div>
	</form>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->