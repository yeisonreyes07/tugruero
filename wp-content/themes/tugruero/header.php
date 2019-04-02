<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tugruero
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/js/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/js/slick/slick-theme.css">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'tugruero' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="site-branding">
			<div class="logo">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png" />
			</div>
			<div class="menu-head">
				<nav id="site-navigation" class="main-navigation">
					<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/menu.png" /></button>
					<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-1',
						'menu_id'        => 'primary-menu',
					) );
					?>
				</nav>
				<!-- #site-navigation -->
			</div>
			<div class="head-phone">
			<?php $query= new WP_Query('post_type=informacion');
			if ($query->have_posts()) {
			# code...
				while($query->have_posts()){
					$query->the_post();
					$query->the_content();
			?>
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/TELEFONO.png" />
				<span><?php the_field("telefono"); ?></span>
			<?php }}?>
			</div>
		</div><!-- .site-branding -->

		
	</header><!-- #masthead -->

	<div id="content" class="site-content">
