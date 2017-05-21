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
		
		{HEADER_BASEHREF}
		{HEADER_HEAD}

		<link rel="shortcut icon" href="favicon.ico" />
		<link rel="apple-touch-icon" href="apple-touch-icon.png" />
		<link rel="image_src" href="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo.png" />
		<meta property="og:image" content="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logoBig.jpg" />

		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		{PHP.cfg.customjs_head}
	</head>

	<body class="<!-- IF {PHP.env.location} != 'home'-->notindexpage<!-- ELSE -->indexpage<!-- ENDIF -->">
		{PHP.cfg.customjs_body}
	<a name="toTop" id="toTop" title="наверх"><i class="fa fa-arrow-up"></i></a>
	<img src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logoBig.jpg" alt="{HEADER_TITLE}" style="display:none;">
<!-- ENDIF -->
		<header>
			<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
				<div class="container container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}">
							<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo.svg" class="logo-full">
							<img src="{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/images/logo_small.svg" class="logo-short">
						</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul id="nav" class="nav navbar-nav  navbar-right">				
							<li class="active"><a href='#slide-1'>Главная</a></li>
							<li><a href='#slide-6'>Портфолио</a></li>
							<li><a href='#slide-6x'>Стоимость</a></li>
							<li><a href='#slide-8'>Отзывы</a></li>
							<li><a href='#slide-9'>Контакты</a></li>
							<!-- IF {PHP.usr.isadmin} -->
							<li><a href="{PHP|cot_url('admin')}" class="external" title="Админ-панель"><span class="glyphicon glyphicon-cog"></span> </a></li>
							<li><a href="{PHP|cot_url('page', 'm=add')}" class="external" title="Добавить страницу"><span class="glyphicon glyphicon-plus-sign"></span></a></li>
							<li><a href="{PHP.out.loginout_url}" class="external" title="{PHP.L.Logout}"><span class="glyphicon glyphicon-log-out"></span></a></li>
							<!-- ENDIF -->
						</ul>

					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
			<div class="clearfix"></div>
		</header>
		




<!-- END: HEADER -->