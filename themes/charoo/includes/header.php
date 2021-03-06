<!doctype html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title><?php echo page_title('Page can’t be found'); ?> - <?php echo site_name(); ?></title>

		<meta name="description" content="<?php echo site_description(); ?>">

		<link rel="stylesheet" href="<?php echo theme_url('/css/reset.css'); ?>">
		<link rel="stylesheet" href="<?php echo theme_url('/css/prettify.css'); ?>">
		<link rel="stylesheet" href="<?php echo theme_url('/css/style.css'); ?>">
		<link href="http://fonts.googleapis.com/css?family=Quicksand:400,700,300|Titillium+Web:400,200,300,600,700,900,200italic,300italic,400italic,600italic,700italic&amp;subset=latin,latin-ext" rel="stylesheet" type="text/css">
		
		<link rel="alternate" type="application/rss+xml" title="RSS" href="<?php echo rss_url(); ?>">
		<link rel="shortcut icon" href="<?php echo theme_url('img/favicon.png'); ?>">

		<!--[if lt IE 9]>
			<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->

		<script>var base = '<?php echo theme_url(); ?>';</script>
		
		<meta name="viewport" content="width=device-width">
		<meta name="generator" content="Anchor CMS <?php echo ANCHOR_VERSION; ?>">
		
		<meta property="og:title" content="<?php echo site_name(); ?>">
		<meta property="og:type" content="website">
		<meta property="og:url" content="<?php echo absolute_url(); ?>">
		<meta property="og:image" content="<?php echo absolute_url(theme_url('img/og_image.gif')); ?>">
		<meta property="og:site_name" content="<?php echo site_name(); ?>">
		<meta property="og:description" content="<?php echo site_description(); ?>">
		
	<?php if(customised()): ?>
		<!-- Custom CSS -->
		<style><?php echo article_css(); ?></style>
		<!--  Custom Javascript -->
		<script><?php echo article_js(); ?></script>
	<?php endif; ?>

		<script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', 'UA-7422463-10']);
			_gaq.push(['_trackPageview']);

			(function() {
				var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
				ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
				var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
		</script>
	</head>
	
	<body onload="prettyPrint()" class="red">

		<header id="main-header">
		
			
		
		
			<hgroup>
				<a class="logoLink" href="<?php echo base_url(); ?>">
					<h1 id="logo"><?php echo site_name(); ?></h1>					
				</a>
				<div class="glyphs">
					<h2 id="description"><?php echo site_description(); ?></h2>				
					<a href="http://twitter.com/jelmarbosscher" class="twitter" data-icon="&#x54;"></a>
					<a href="http://github.com/jelmarbosscher" class="github" data-icon="&#x47;"></a>
					<a href="mailto:hello@jelmarbosscher.nl" class="email" data-icon="&#x45;"></a>
				</div>

			</hgroup>
		<?php if(has_menu_items()): ?>
			<nav role="navigation">
				<ul>
					<?php while(menu_items()): ?>
					<li <?php echo (menu_active() ? 'class="active"' : ''); ?>>
						<a href="<?php echo menu_url(); ?>" title="<?php echo menu_title(); ?>">
							<?php echo menu_name(); ?>
						</a>
					</li>
					<?php endwhile; ?>
				</ul>
			</nav>
		<?php endif; ?>

					

		</header>
