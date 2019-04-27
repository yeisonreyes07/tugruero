<?php
/**
 * Template Name: Plan
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package dev_theme
 */
get_header();
?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post();?>	
    <h1 class="title"><?php echo get_the_content(); ?></h1>

	<div class="form-cart">
		<div class="form-row">
			<label>Escoja el plan de su preferencia</label>
			<select id="plan">
            <?php #$query= new WP_Query('post_type=product&order=ASC');
			$query = new WC_Product_Query( array(
				'limit' => 10,
				'orderby' => 'date',
				'order' => 'ASC',
			));
			$products = $query->get_products();
			foreach($products as $product){
			?>
                <option value="<?php echo $product->id; ?>"><?php echo $product->name; ?></option>
		    <?php }#}?>
            </select>
		</div>
		<div class="form-row">
			<label>Escoja la cantidad de carros que desea afiliar</label>
			<input type="number" id="cantidad" value="1"/>					
        </div>
        <div class="form-row">
        	<label>¿En cuál moneda deseas pagar tu plan?</label>
      	    <?php dynamic_sidebar('sidebar-2'); ?>

        </div>
        <div class="btns-cart">
            <div class="izq">
                <a href="<?php echo get_home_url();?>">Regresar</a>
            </div>
            <div class="der">
                <a href="#">Continuar</a>
            </div>
        </div>
	</div>
	
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
 
<?php endif; ?>
<?php get_footer(); ?>