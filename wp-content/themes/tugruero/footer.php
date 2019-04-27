<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package tugruero
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer">
		<div class="site-info">
			<?php $query= new WP_Query('post_type=informacion&order=ASC');
			if ($query->have_posts()) {
			# code...
				while($query->have_posts()){
					$query->the_post();
					$query->the_content();
			?>
			<div class="logo">
				<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/logo.png" />
			</div>
			<div class="line line1">
				<p><?php echo get_the_content(); ?></p>
				<div class="redes">
					<a href="<?php the_field("facebook"); ?>" target="_blank" class="fb"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/facebook.png" /></a>
					<a href="<?php the_field("twitter"); ?>" target="_blank"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/twitter.png" /></a>
					<a href="<?php the_field("instagram"); ?>" target="_blank"><img src="<?php echo get_stylesheet_directory_uri(); ?>/images/instagram.png" /></a>
				</div>
			</div>
			<div class="line line2">
				<p><?php the_field("ciudad"); ?></p>
				<p><?php the_field("email"); ?></p>
				<p><?php the_field("telefonos"); ?></p>
				<p><?php the_field("numero_de_contingencia"); ?></p>
			</div>
			<div class="line line3">
				<nav>
					<ul>
						<li>
							<a href="#">Términos y condiciones</a>
						</li>
						<li>
							<a href="#">Políticas de privacidad</a>
						</li>
						<li>
							<a href="#">Políticas de uso</a>
						</li>
						<li>
							<a href="#">Zonas Peligrosas</a>
						</li>
						<li>
							<a href="#">Clasificación de vehiculos por peso</a>
						</li>
						<li>
							<a href="#">Preguntas frecuentes</a>
						</li>
					</ul>
				</nav>
			</div>
			<?php }}?>
		</div><!-- .site-info -->
		<div class="copyright">
			Copyright 2016 © - Soluciones Tu Gruero, C.A.
		</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/js/slick/slick.min.js"></script>
<script type="text/javascript" src="<?php echo get_stylesheet_directory_uri(); ?>/js/back.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
