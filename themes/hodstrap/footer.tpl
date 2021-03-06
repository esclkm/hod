<!-- BEGIN: FOOTER -->

<section id="contacts" class="clearfix">
	<div class="container container-fluid">
		<div class="row">
			<div class="col-xs-12 col-sm-6 col-lg-4 feedback-col text-col left-col">
				{PHP|contact_bottom}

			</div>
			<div class="col-md-4 visible-lg">
				<script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A10cd58c430a5916c576db2934ef3afd4fa31488e3ab38d16a6af3e3bace94b46&amp;width=100%&amp;height=380&amp;lang=ru_RU&amp;scroll=true"></script>
			</div>
			<div class="col-xs-12 col-sm-6 col-lg-4 contacts-col text-col right-col">
				<p class="h1">КОНТАКТЫ</p>
				<div class="address">
					<ul class="nav nav-pills">
						<li class="active"><a data-toggle="pill" href="#spb">В Санкт-Петербурге</a></li>
						<li><a data-toggle="pill" href="#msk">В Москве</a></li>
					</ul>
					<div class="tab-content">
						<div id="spb" class="tab-pane fade in active">
							<p>{PHP.cfg.footer_spb_phone}</p>
							<p>{PHP.cfg.footer_spb_addr}</p>
							<p><a class="email" href="mailto:{PHP.cfg.footer_spb_email}">{PHP.cfg.footer_spb_email}</a></p>
							<a href="{PHP.cfg.footer_spb_map_link}" class="showMap hidden-lg"><span>Посмотреть на карте</span> →</a>
						</div>
						<div id="msk" class="tab-pane fade">
							<p>{PHP.cfg.footer_msk_phone}</p>
							<p>{PHP.cfg.footer_msk_addr}</p>
							<p><a class="email" href="mailto:{PHP.cfg.footer_msk_email}">{PHP.cfg.footer_msk_email}</a></p>
							<a href="{PHP.cfg.footer_msk_map_link}" class="showMap hidden-lg"><span>Посмотреть на карте</span> →</a>
						</div>
					</div>
				</div>     

				<div class="links">
					<!-- IF {PHP.cfg.footer_social_vk} -->
					<a href="{PHP.cfg.footer_social_vk}" target="_blank">
						<i class="fa-vk fa"></i>
						<span>Вконтакте</span> →
					</a>
					<!-- ENDIF -->
					<!-- IF {PHP.cfg.footer_social_instagram} -->
					<a href="{PHP.cfg.footer_social_instagram}" target="_blank">
						<i class="fa fa-instagram"></i>
						<span>Инстаграм</span> →
					</a>
					<!-- ENDIF -->
					<!-- IF {PHP.cfg.footer_social_drive2} -->
					<a href="{PHP.cfg.footer_social_drive2}" target="_blank">
						<i class=" small-icon drive2"></i>
						<span>Drive2</span> →
					</a>
					<!-- ENDIF -->
					<!-- IF {PHP.cfg.footer_social_youtube} -->
					<a href="{PHP.cfg.footer_social_youtube}" target="_blank">
						<i class="fa fa-youtube"></i>
						<span>Youtube</span> →
					</a>
					<!-- ENDIF -->

				</div>
				<div class="rights">{PHP.cfg.footercopy}</div> 
			</div>
		</div>
	</div>
	<div class="col-xs-12 col-sm-6 map" id="spbMap">
		<img src="themes/hodstrap/images/map.jpg" alt="" class="img-responsive">
		<!--<i class="circle-icon marker"></i>-->
		<i class="small-icon close-icon"></i>
	</div>
	<div class="col-xs-12 col-sm-6 map" id="mskMap">
		<img src="themes/hodstrap/images/kv.jpg" alt="" class="img-responsive">
		<!--<i class="circle-icon marker"></i>-->
		<i class="small-icon close-icon"></i>
	</div>

</section>
</div>							


{PHP|contact_bottom('ajax')}
	{FOOTER_RC}
	{PHP.cfg.counter_bottom}
	</body>
</html>
<!-- END: FOOTER -->