<!-- BEGIN: MAIN -->
<div class="page-header">
	<div class="container container-fluid">		
		<h1>
			{PASSRECOVER_TITLE}	
		</h1>						
	</div>
</div>
<div class="container container-fluid">
	<!-- IF {PHP.msg} == 'request' --><p>{PHP.L.pasrec_mailsent}</p><!-- ENDIF -->
	<!-- IF {PHP.msg} == 'auth' --><p>{PHP.L.pasrec_mailsent2}</p><!-- ENDIF -->
	<!-- IF !{PHP.msg} -->
	<ol>
		<li>{PHP.L.pasrec_explain1}</li>
		<li>{PHP.L.pasrec_explain2}</li>
		<li>{PHP.L.pasrec_explain3}</li>
	</ol>
	<form name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post">
		{PHP.L.pasrec_youremail} <input type="text" class="text form-control" name="email" value="" size="20" maxlength="64" />
		<div><button type="submit">{PHP.L.pasrec_request}</button></div>
	</form>
	<p>{PHP.L.pasrec_explain4}</p>
	<!-- ENDIF -->
</div>
<!-- END: MAIN -->