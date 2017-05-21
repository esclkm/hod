<!-- BEGIN: FOOTER -->

<footer>
	<div class="container container-fluid">
		<div class="row">
			<div class="col-md-8 text-center  wow fadeInLeft">

				<div class="foot_text">{PHP.cfg.foot_text}</div>
				<div class="foot_text_small">{PHP.cfg.foot_text_small}</div>
			</div>
			<div class="col-md-4 text-right text-center  wow fadeInRight">
				<div class="foot_phone" title="Телефон"><i class="fa fa-phone"></i> {PHP.cfg.foot_phone}</div>
				<div class="foot_skype" title="Skype"><i class="fa fa-skype"></i> <a href="skype:{PHP.cfg.foot_skype}?call">{PHP.cfg.foot_skype}</a></div>
				<div class="foot_email" title="E-mail"><i class="fa fa-envelope-o"></i> <a href="mailto:{PHP.cfg.foot_email}">{PHP.cfg.foot_email}</a></div>
			</div>
		</div>	
	</div>
	<div class="afterfooter">
		<div class="container container-fluid">
			<div class="row">
				<div class="col-md-3">
					<div  class="foot_customjs_end">
						{PHP.cfg.customjs_end}
					</div>
				</div>
				<div class="col-md-6 text-center">
					<div  class="foot_copyright">
						{PHP.cfg.foot_copyright}
					</div>				
				</div>
				<div class="col-md-3 text-right">

				</div>
			</div>
		</div>
	</div>				
</footer>
{PHP|contact_bottom('ajax')}
{FOOTER_RC}

</body>
</html>
<!-- END: FOOTER -->