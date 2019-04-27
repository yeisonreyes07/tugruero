<?php
/**
 * Template Name: FAQ
 * Template part for displaying posts
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package dev_theme
 */
get_header();
?>
<?php if ( have_posts() ) : while ( have_posts() ) : the_post();?>	
    <h1 class="title">Preguntas frecuentes</h1>
    <div class="content-faqs">
    <?php $query= new WP_Query('post_type=preguntas&order=ASC');
        if ($query->have_posts()) {
		# code...
            $i=0;
            while($query->have_posts()){
				$query->the_post();
				$query->the_content();
        ?>
        <div class="faq">
            <p><a class="title-faq" data-toggle="collapse" href="#a<?php echo $i;?>" role="button" aria-expanded="false" aria-controls="a<?php echo $i; ?>">
                <?php echo get_the_title();?>
            </a></p>
            <div class="collapse" id="a<?php echo $i;?>">
                <div class="card card-body">
                    <?php the_content();?>
                </div>
            </div>
        </div>
    <?php $i++; } } wp_reset_query();?>
    </div>	
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>
 
<?php endif; ?>
<?php get_footer(); ?>