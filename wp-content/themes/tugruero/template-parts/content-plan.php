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
        <div class="form-row" id="moneda-con">
        	<label>Meneda seleccionada</label>
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
	<div class="modal fade" id="ModalChange" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h4 class="modal-title" id="myModalLabel">Canjea tu tarjeta</h4>
			</div>
			<div class="modal-body">
				<p>Al final del proceso de registro podrás canjear el código de tu tarjeta.</p>
				<div class="footer-in-body">
					<button type="button" class="btn btn-default pull-right" data-dismiss="modal">OK</button>
				</div>
			</div>
			</div>
		</div>
	</div>
<?php endwhile; else: ?>
<p>Sorry, no posts matched your criteria.</p>

<?php endif; ?>
<?php get_footer(); ?>

<script>
	$(document).ready(function(){
		var pathname = window.location.search;
		if(pathname=='?canjear=true'){
			$('#ModalChange').modal('show');
			$("#cantidad").prop("disabled",true);
			$("#moneda-con input").val("Canjear Tarjeta");
			sessionStorage.setItem("cupon", "true");
		}else{
			sessionStorage.setItem("cupon", "false");
		}
		var variables = pathname.split("?");
		var varT;
		varT = variables[1].split("&");
		for(var i=0; i<varT.length; i++){
			var id=varT[i].split("=");
			if(id[0]=='id'){
				$("#plan option[value="+id[1]+"]").prop("selected",true);
				break;
			}
		}

		var mostrar = $("#wmc_widget-2 select option:selected").html();
		if(sessionStorage.getItem("cupon")=="true"){
			mostrar="Canjear Tarjeta";
		}

		$("#wmc_widget-2").hide();
		$("#wmc_widget-2").before('<input type="text" value="'+mostrar+'" disabled class="input-text" style="width:100%;border-radius: 10px;padding: 8px 10px 8px 20px;background:#ccc">');
		$("#wmc_widget-2").after('<small>Si deseas cambiar la moneda, <a href="../" class="atr">haz click aquí</a></small>');
	})
</script>