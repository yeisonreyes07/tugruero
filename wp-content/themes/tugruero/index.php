<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package tugruero
 */

get_header();
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="section-banner">
				<?php $query= new WP_Query('post_type=banner');
				if ($query->have_posts()) {
				# code...
					while($query->have_posts()){
						$query->the_post();
						$query->the_content();
				?>
					<div class="banner" style="background-image: url(<?php the_post_thumbnail_url();?>);">
						<div class="content-banner">
							<?php the_content();?>
							<a href="#" class="boton">Llámanos</a>
						</div>
					</div>
				<?php }} wp_reset_query();?>
			</div>
			<div class="liston">
				<div class="kpi">
					<div class="izq"><span class="bold">+7000</span></div>
					<div class="der"><p>Servicios</p><p>realizados</p></div>
				</div>
				
				<div class="kpi">
					<div class="izq"><span class="bold">+20</span></div>
					<div class="der"><p>Mil</p><p>afiliados</p></div>
				</div>
				<div class="kpi">
					<div class="izq"><span class="bold">90%</span></div>
					<div class="der"><p>Clientes nos</p><p>recomiendan</p></div>
				</div>
			</div>
			<div class="planes" id="planes">
				<h1>Nuestros planes</h1>
				<p class="subt">Si compras en nuestra página web tienes un 15% de descuento en todos nuestros planes.</p>
				<div class="elige-moneda">
					<label>Ver precios en</label>
					<?php dynamic_sidebar('sidebar-2'); ?>
				</div>
				<div class="container-planes">
					
					<?php #$query= new WP_Query('post_type=product&order=ASC');
						$query = new WC_Product_Query( array(
							'limit' => 10,
							'orderby' => 'date',
							'order' => 'ASC',
						));
						$products = $query->get_products();
						#if ($products->have_posts()) {
						 #code...
						foreach($products as $product){
							#print_r($product->get_short_description());
						?>
					<div class="product">
						<div class="body-product">
							<div class="image">
								<img src="<?php $image_size = apply_filters( 'single_product_archive_thumbnail_size', 'shop_catalog' ); echo get_the_post_thumbnail_url( $product->id, $image_size); ?>" />
							</div>
							<div class="short-description">
								<h1><?php echo $product->name; ?></h1>
								<div class="desc">
									<p><?php echo $product->get_short_description(); ?></p>
								</div>
								<div class="tachado">
									<span class="dolar">$ <?php echo get_field("precio_anterior_dolar", $product->id);?></span>
									<span class="vef">Bs. S <?php echo get_field("precio_anterior_bs", $product->id);?></span>
								</div>
								<div class="price">
									<?php #print_r($product);?>
									<?php echo get_woocommerce_currency_symbol()." ".$product->get_price(); ?>
									<?php //echo get_woocommerce_currency_symbol()." ".money_format('%i',$product->get_price()); ?>
 								</div>
							</div>
							<div class="description">
								<p><?php echo $product->get_description();?></p>
							</div>
							<a href="<?php echo get_home_url();?>/plan">
								<div class="afiliate">
									Afíliate
								</div>
							</a>
						</div>
					</div>
					<?php }#}?>
				</div>
			</div>
			<div class="services">
				<h1>Nuestros servicios</h1>
				<div class="content-services">
					<?php $query= new WP_Query('post_type=servicios&order=ASC');
					if ($query->have_posts()) {
					# code...
						while($query->have_posts()){
							$query->the_post();
							$query->the_content();
					?>
					<div class="service">
						<img src="<?php the_post_thumbnail_url(); ?>" />
						<?php the_content(); ?>
					</div>
				<?php }} wp_reset_query();?>
				</div>
				<div class="cards">
					<?php $query= new WP_Query('post_type=informacion&order=ASC');
					if ($query->have_posts()) {
					# code...
						while($query->have_posts()){
							$query->the_post();
							$query->the_content();
					?>
					<div class="card">
						<div class="content-card">
							<div class="icon">
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/PLANES.png" />
							</div>
							<div class="text">
								<h3>Planes TU/GRUERO</h3>
								<p><?php the_field("planes_tu_gruero");?></p>
							</div>
							<div class="boton">
								<a href="#planes" id="viewPlan">Ver Planes</a>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="content-card">
							<div class="icon">
								<img src="<?php echo get_stylesheet_directory_uri(); ?>/images/SERVICIOS.png" />
							</div>
							<div class="text">
								<h3>Servicios particulares:</h3>
								<p><?php the_field("servicios_particulares");?></p>
							</div>
							<div class="boton">
								<a href="#">Llamar</a>
							</div>
						</div>
					</div>
					<?php }} wp_reset_query();?>
				</div>
			</div>
			<div class="testimonials">
				<div class="content-testimonial">
					<?php $query= new WP_Query('post_type=testimonios');
					if ($query->have_posts()) {
					# code...
						while($query->have_posts()){
							$query->the_post();
							$query->the_content();
					?>
						<div class="testimonial">
							<div class="image">
								<img src="<?php the_post_thumbnail_url(); ?>" />
							</div>
							<div class="text">
								<h1>Testimonios</h1>
								<div class="texto">
									<?php echo get_the_content(); ?>
								</div>
								<div class="cargo">
									<?php the_field("cargo"); ?>
								</div>
							</div>
						</div>
					<?php }} wp_reset_query();?>
				</div>
			</div>
			<div class="clients">
				<h1>Ellos han hablado</h1>
				<h1>de nosotros</h1>
				<div class="content-clients">
					<?php $query= new WP_Query('post_type=referencia');
					if ($query->have_posts()) {
					# code...
						while($query->have_posts()){
							$query->the_post();
							$query->the_content();
					?>
					<div class="client">
						<img src="<?php the_post_thumbnail_url();?>" />
					</div>
					<?php }} wp_reset_query();?>
				</div>
			</div>
			<div class="galerias" id="galeria">
				<h1>Galería</h1>
				<div class="content-galeria">
					<?php $query= new WP_Query('post_type=galeria');
					if ($query->have_posts()) {
						# code...
						while($query->have_posts()){
							$query->the_post();
							$query->the_content();
					?>
					<div class="galeria">
						<div class="image">
							<img src="<?php the_post_thumbnail_url();?>" />
						</div>
					</div>
					<?php }} wp_reset_query(); ?>
				</div>
			</div>
			<div class="contacto" id="contacto">
				<h1>TU/Gruero Corporativo</h1>
				<p class="subt">No trabajamos con otras compañías de asistencia, pero en comparación de otro servicios ustedes son más atentos y responsables</p>
				<?php echo do_shortcode('[contact-form-7 id="5" title="Formulario de contacto 1"]'); ?>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();
