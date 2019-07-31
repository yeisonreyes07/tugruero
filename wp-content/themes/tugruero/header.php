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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/js/slick/slick.css">
	<link rel="stylesheet" type="text/css" href="<?php echo get_stylesheet_directory_uri(); ?>/js/slick/slick-theme.css">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<div id="page" class="site">
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'tugruero' ); ?></a>

	<header id="masthead" class="site-header">
		<div class="site-branding">
			<div class="logo">
				<a href="<?php echo site_url();?>"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png" /></a>
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
			<!-- <div class="head-phone"> -->
			<?php $query= new WP_Query('post_type=informacion');
			if ($query->have_posts()) {
			# code...
				while($query->have_posts()){
					$query->the_post();
					$query->the_content();
			?>
				<!-- <img src="<?php echo get_stylesheet_directory_uri(); ?>/images/TELEFONO.png" />
				<span><a href="tel:<?php the_field("telefono"); ?>" style="color:#fff;"><?php the_field("telefono"); ?></a></span> -->
			<?php }}?>
			<!-- </div> -->
		</div><!-- .site-branding -->

		
	</header><!-- #masthead -->
	<a href="https://api.whatsapp.com/send?phone=584241391462" target="_blank">
		<div class="wasa">
			<img src="<?php echo site_url();?>/wp-content/uploads/2019/05/Logo-WhatsApp.png" alt="">
		</div>
	</a>
	<div id="content" class="site-content">
