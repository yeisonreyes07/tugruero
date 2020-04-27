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
if(!isset($_SESSION['currency'])){
	$_SESSION['currency'] = "USD";
}else{
	if(isset($_GET['wmc-currency'])){
		$_SESSION['currency'] = $_GET['wmc-currency'];
	}
}
?>

	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="section-banner">
				<?php $query= new WP_Query(array('post_type'=>'banner','orderby'=>array('menu_order'=>'ASC')));
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
					<div class="izq"><span class="bold">+7.000</span></div>
					<div class="der"><p>Servicios</p><p>realizados</p></div>
				</div>
				
				<div class="kpi">
					<div class="izq"><span class="bold">+20.000</span></div>
					<div class="der"><p>Afiliados</p><p></p></div>
				</div>
				<div class="kpi">
					<div class="izq"><span class="bold">+95%</span></div>
					<div class="der"><p>Clientes nos</p><p>recomiendan</p></div>
				</div>
			</div>
<!-- AQUI COMIENZA LA SECCION DE NUESTROS PLANES -->
			
			<div class="planes" id="planes">
				<h1>Nuestros planes</h1>
				<hr>
				<!-- <p class="subt">Si compras en nuestra página web tienes un 15% de descuento en todos nuestros planes.</p> -->
				<div class="elige-moneda">
					<label>Ver precios en</label>
					<?php dynamic_sidebar('sidebar-2'); ?>
				</div>
				<div class="container-planes">
					
					<?php #$query= new WP_Query('post_type=product&order=ASC');
						$query = new WC_Product_Query( array(
							'limit' => 10,
							'orderby' => 'price',
							'order' => 'DESC',
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
						 
									<span class="dolar">$<?php echo $product->regular_price; ?>
</span>
									
						 
									<span class="vef">Bs. S <?php echo $product->regular_price; ?>
								</span>
									
								</div>
								<div class="price">
									<?php #print_r($product);?>
									<?php echo get_woocommerce_currency_symbol()." ".number_format($product->get_price(), 2, ',', '.'); ?>
									<?php //echo get_woocommerce_currency_symbol()." ".money_format('%i',$product->get_price()); ?>
 								</div>
							</div>
							<div class="description">
								<p><?php echo $product->get_description();?></p>
							</div>
							<a href="<?php echo get_home_url();?>/plan?id=<?php echo $product->id; ?>">
								<div class="afiliate">
									Afíliate
								</div>
							</a>
						</div>
					</div>
					<?php }#}?>
				</div>
<!-- AQUI COMIENZA EL ACORDEON DE PREGUNTAS BASICAS -->
<div id="accordion">
	<h1 class="title-home-faqs">Información Relevante</h1>
<?php $query= new WP_Query('post_type=preguntas_basicas&order=ASC');
        if ($query->have_posts()) {
		# code...
            $i=0;
            while($query->have_posts()){
				$query->the_post();
				$query->the_content();
        ?>
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
       <button class="btn btn-link" data-toggle="collapse" data-target="#<?php echo $i;?>" aria-expanded="true" aria-controls="<?php echo $i; ?>">
			<i class="fa fa-chevron-down"></i><?php echo get_the_title();?>
        </button>
      </h5>
    </div>

    <div id="<?php echo $i;?>" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
		  <p><?php the_content();?></p>
      </div>
	
    </div>
	  
  </div>
  <?php $i++; } } wp_reset_query();?>
<div class="boton">
	<a href="#planes" id="viewPlan">Ver Planes</a>
	<br>
	<br>
</div>
</div>
				
			</div>
<!-- AQUI COMIENZA EL CONTENEDOR DE PREGUNTAS BASICAS // GUARDADO PARA DESPUES 
<div class="faqs">
<h1 class="title-home-faqs">Preguntas Frecuentes</h1>
	<hr>

</div>					
	-->
<!-- AQUI COMIENZA CONTENEDOR DE SERVICIOS ANCLADO A CPT SERVICIOS -->	
<div class="services">
	<h1>Nuestros servicios</h1>
	<hr>
		<p class="subt-2">(Incluídos en <b>todos</b> nuestros planes)</p>
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
				
<div class="boton">
	<a href="#planes" id="viewPlan">Ver Planes</a>
</div>
				</div>
<!-- Video -->
			
			
<div class="container video">
  <div id="como-canjear-tu-tarjeta" class="row">
    <div class="col-md-6">
     <h1 class="video-letra">¿Como Canjear tu tarjeta Tu Gruero?</h1>
		<hr class="video-hr">
<p><span style="color: #ffffff;">Canjear tu tarjeta Tu Gruero es muy sencillo! Sigue los pasos en este video para activar tu plan anual en minutos.</span></p>
    </div>
    <div class="col-md-6">
      <iframe class="video-home" width="560" height="315" src="https://www.youtube.com/embed/EvS9QZn2Y7o" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	  </div>
    </div>
  </div>
		
			
			
<!-- AQUI COMIENZAN LOS TESTIMONIALES CTP TESTIMONIALES -->
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
					<div class="galeria" >
						<div class="image">
						<a href="<?php the_post_thumbnail_url();?>" target="_blank">
							<img src="<?php the_post_thumbnail_url();?>" />
							</a>
						</div>
					</div>
					<?php }} wp_reset_query(); ?>
				</div>
			</div>
		<!-- SECCION DE CONTACTO -->
			<div class="contacto" id="contacto">
				<h1>Tu Gruero Corporativo</h1>
				<p class="subt">Ofrecemos excelentes descuentos y beneficios para planes corporativos (flotas) y así los colaboradores de tu empresa u organización pueden disfrutar de nuestros servicios. Déjanos tus datos y te contactaremos.</p>
				<?php echo do_shortcode('[contact-form-7 id="5" title="Formulario de contacto 1"]'); ?>
			</div>
		</main><!-- #main -->
	</div><!-- #primary -->

<?php
get_footer();


