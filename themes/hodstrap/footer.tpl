
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
							
			

<!-- BEGIN: FOOTER -->
				
<section id="contacts" class="clearfix">
        <div class="col-xs-12 col-sm-6 contacts-col text-col left-col">
            <div class="container">
                <h1>КОНТАКТЫ</h1>
                <div class="col-xs-12 col-md-9 col-lg-7 address">
                    <ul class="nav nav-pills">
                        <li class="active"><a data-toggle="pill" href="#spb">В Санкт-Петербурге</a></li>
                        <li><a data-toggle="pill" href="#msk">В Москве</a></li>
                    </ul>
                    <div class="tab-content">
                        <div id="spb" class="tab-pane fade in active">
                            <p>+7 (812) 915-44-22</p>
                            <p>Санкт-Петербург, Ольгино, ул. Граничная, д. 14.</p>
                            <p>snegobolotohod@list.ru</p>
                            <a href="#" class="showMap"><span>Посмотреть на карте</span> →</a>
                        </div>
                        <div id="msk" class="tab-pane fade">
                            <p>+7 (812) 915-44-22</p>
                            <p>Санкт-Петербург, Ольгино, ул. Граничная, д. 14.</p>
                            <p>snegobolotohod@list.ru</p>
                            <a href="" class="showMap"><span>Посмотреть на карте</span> →</a>
                        </div>
                    </div>
                </div>     
                <span class="rights">© Все права защищены</span> 
                <div class="col-xs-12 links clearfix">
                        <a href="">
                            <i class="small-icon vk"></i>
                            <span>Вконтакте</span> →
                        </a>
                        <a href="">
                            <i class="small-icon instagram"></i>
                            <span>Инстаграм</span> →
                        </a>
                        <a href="">
                            <i class="small-icon drive2"></i>
                            <span>Drive2</span> →
                        </a>
                        <a href="">
                            <i class="small-icon youtube-small"></i>
                            <span>Youtube</span> →
                        </a>
                </div>
            </div>
        </div> 
        <div class="col-xs-12 col-sm-6 feedback-col text-col right-col">
            <div class="container">
                <h1>Оставить заявку</h1>
                <form>
                    <div class="group">      
                        <input type="text" required>
                        <span class="bar"></span>
                        <label>Имя</label>
                    </div>
                    <div class="group">      
                        <input type="text" required>
                        <span class="bar"></span>
                        <label>Телефон</label>
                    </div>
                    <div class="group">      
                        <input type="email" required>
                        <span class="bar"></span>
                        <label>Электронная почта</label>
                    </div>
                    <div class="group">      
                        <input type="text" required>
                        <span class="bar"></span>
                        <label>Сообщение</label>
                    </div>
                </form>
                <button class="btn white-btn">Отправить заявку</button>
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

</body>
</html>
<!-- END: FOOTER -->