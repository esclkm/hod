<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="ru">
	<head>
		<title>{HEADER_TITLE}</title> 
		<meta property="og:title" content="{HEADER_TITLE}" />
		<!-- IF {HEADER_META_DESCRIPTION} -->
		<meta name="description" content="{HEADER_META_DESCRIPTION}" />
		<meta property="og:description" content="{HEADER_META_DESCRIPTION}" />
		<!-- ENDIF -->
		<!-- IF {HEADER_META_KEYWORDS} -->
		<meta name="keywords" content="{HEADER_META_KEYWORDS}" />
		<!-- ENDIF -->
		<meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
		
		<link rel="canonical" href="{HEADER_CANONICAL_URL}" />
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&amp;subset=cyrillic" rel="stylesheet">
		{HEADER_BASEHREF}
		{HEADER_HEAD}

		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="apple-touch-icon" href="apple-touch-icon.png" />
		<link rel="image_src" href="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo.png" />
	<!--	<meta property="og:image" content="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logoBig.jpg" />-->

		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		{PHP.cfg.customjs_head}
	</head>

	<body class="<!-- IF {PHP.env.location} != 'home'-->notindexpage<!-- ELSE -->indexpage<!-- ENDIF -->">
		{PHP.cfg.customjs_body}
			
			
	<a name="toTop" id="toTop" title="наверх"><i class="fa fa-arrow-up"></i></a>
	
	
	<img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logoBig.jpg" alt="{HEADER_TITLE}" style="display:none;">
<!-- ENDIF -->
		<div id="{PHP.env.location}-page">
			
			<nav id="mainNav" class="navbar navbar-custom navbar-static-top <!-- IF {PHP.env.location} == 'home' --> navbar-home<!-- ELSE--> navbar-not-home<!-- ENDIF-->">
				<div class="container">
					<div class="navbar-header page-scroll">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="sr-only">Toggle navigation</span>
						</button>
						<a class="navbar-brand page-scroll <!-- IF {PHP.env.location} == 'home' -->visible-xs<!-- ENDIF-->" href="{PHP.cfg.mainurl}"><img class="img-responsive" src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo-min.png" alt=""></a>
					</div>
					<div class="collapse navbar-collapse" id="navbar-collapse-1">
						<ul class="nav navbar-nav navbar-center">
							<li><a class="page-scroll" href="{PHP|cot_url('page', 'c=system&al=kompaniya')}">Компания</a></li>
							<li><a class="page-scroll" href="{PHP|cot_url('page', 'c=projects')}"><!-- IF {PHP.usr.isadmin} -->Проекты<!-- ELSE -->Реализованные проекты<!-- ENDIF --></a></li>
							<li><a class="page-scroll" href="{PHP|cot_url('page', 'c=zapchasti')}">Запчасти</a></li>
							<li><a class="page-scroll" href="{PHP|cot_url('page', 'c=system&al=arenda')}">Аренда</a></li>
							<li><a class="page-scroll" href="{PHP|cot_url('page', 'c=system&al=kontakty')}">Контакты</a></li>
							<!-- IF {PHP.usr.isadmin} -->
							<li><a href="{PHP|cot_url('admin')}" class="external" title="Админ-панель"><span class="glyphicon glyphicon-cog"></span> </a></li>
							<li><a href="{PHP|cot_url('page', 'm=add')}" class="external" title="Добавить страницу"><span class="glyphicon glyphicon-plus-sign"></span></a></li>
							<li><a href="{PHP.out.loginout_url}" class="external" title="{PHP.L.Logout}"><span class="glyphicon glyphicon-log-out"></span></a></li>
							<!-- ENDIF -->
						</ul>
						<ul class="nav navbar-nav navbar-number">
							<li>{PHP.cfg.head_phone}</li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- IF {PHP.env.location} == 'home' -->
			<!-- Header -->
			<header id="page-top" style="background-image:{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo.png; {PHP.cfg.ind_sl0_img}">
				<div class="container text-center">
					<div class="row">
						<div class="intro-logo">
							<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo.png" alt="" class="img-responsive">
						</div>
					</div>
					<div class="row">
						<div class="intro-text">
							<p>{PHP.cfg.subtitle}</p>
							<button class="btn intro-btn white-btn">Оставить заявку</button>
							<a href=""><i class="small-icon white-arrow"></i></a>
						</div> 
					</div>

				</div>
			</header>
			<!-- ENDIF -->				
<!-- END: HEADER -->