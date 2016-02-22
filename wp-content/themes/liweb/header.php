<!DOCTYPE html>
<html class="no-js" <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php wp_title( '|', true, 'right' ); ?></title>
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">


    <!--CODE CSS PITTHEME-->
    <link rel="shortcut icon" href="favicon.ico">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/global.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/google-maps.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/typo.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/colorbox/colorbox.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/page-nav.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/slider.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/tooltips.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/counters.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/social.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/css/portfolio.min.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/liweb/wp-content/themes/liweb/settings/settings-panel.css">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&amp;subset=latin,cyrillic" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="http://localhost:8080/liweb/wp-content/themes/liweb/3dParty/fontello/css/fontello.css">
    <!--END-->
<?php wp_head(); ?>
</head>
<script>
        (function(i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function() {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '../www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-52250813-1', 'pi-themes.com');
        ga('send', 'pageview');
    </script>
<body <?php body_class(); ?>>

<div id="page" class="hfeed site">

	<?php get_template_part( 'menu', 'primary' ); // Loads the menu-primary.php template. ?>

	<header id="header" class="site-header" role="banner">

		<div class="container">
			<div class="row">

				<div class="site-branding col-md-4">
					<?php gomedia_site_branding(); // Custom function to display site title or logo. ?>
				</div>
				
				<?php gomedia_header_ad(); // Get the header ad. ?>

			</div><!-- .row -->
		</div><!-- .container -->

	</header><!-- #header -->

	<?php get_template_part( 'menu', 'secondary' ); // Loads the menu-secondary.php template. ?>

	<div id="main">
    
    <div class="pi-scroll-top-arrow" data-scroll-to="0"></div>
    