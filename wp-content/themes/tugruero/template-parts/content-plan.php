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
        	<label>Modo de pago seleccionado</label>
      	    <?php dynamic_sidebar('sidebar-2'); ?>

        </div> 	
		<div class="form-row">
			<label>Canal de venta</label>
			<select id="canal" onchange="changeCanal()">
				<option value="PAG">Página Web</option>
				<option value="CP">Centro Plaza</option>
				<option value="CCCT">Centro Ciudad Comercial Tamanaco</option>
				<option value="FM">Francisco de Miranda</option>
				<option value="OFIC">Oficina</option>
				<option value="CCLP">Centro Comercial Los Proceres</option>
				<option value="Corp">Corporativo</option>
				<option value="AV01">Agente de venta 01</option>
				<option value="AV02">Agente de venta 02</option>
				<option value="AV03">Agente de venta 03</option>
				<option value="AV04">Agente de venta 04</option>
				<option value="AV05">Agente de venta 05</option>
				<option value="AV06">Agente de venta 06</option>
				<option value="AV07">Agente de venta 07</option>
				<option value="AV08">Agente de venta 08</option>
				<option value="AV09">Agente de venta 09</option>
				<option value="AV010">Agente de venta 010</option>
				<option value="AV011">Agente de venta 011</option>
				<option value="AV012">Agente de venta 012</option>
				<option value="AV013">Agente de venta 013</option>
				<option value="AV014">Agente de venta 014</option>
				<option value="AV015">Agente de venta 015</option>
				<option value="AV016">Agente de venta 016</option>
				<option value="AV017">Agente de venta 017</option>
				<option value="AV018">Agente de venta 018</option>
				<option value="AV019">Agente de venta 019</option>
				<option value="AV020">Agente de venta 020</option>
			</select>
		</div>
		<div class="form-row">
			<label>Tipo de venta</label>
			<select id="tipoventa" onchange="changeTipo()">
				<option value="Nuevo">Nuevo</option>
				<option value="Renovación">Renovación</option>
			</select>
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
	sessionStorage.setItem("canal", "PAG");
	sessionStorage.setItem("tipo", "Nuevo");
	$(document).ready(function(){
		var pathname = window.location.search;
		if(pathname=='?canjear=true'){
			$('#ModalChange').modal('show');
			$("#cantidad").prop("disabled",true);
			$("#moneda-con input").val("Tarjeta TuGruero");
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
			mostrar="Tarjeta TuGruero";
		}

		$("#wmc_widget-2").hide();
		$("#wmc_widget-2").before('<input type="text" value="'+mostrar+'" disabled class="input-text" style="width:100%;border-radius: 10px;padding: 8px 10px 8px 20px;background:#ccc">');
		if(sessionStorage.getItem("cupon")=="false"){
			$("#wmc_widget-2").after('<small>Si deseas cambiar la moneda, <a href="../" class="atr">haz click aquí</a></small>');
		}
	})

	function changeCanal(){
		sessionStorage.setItem("canal", $("#canal").val());
	}

	function changeTipo(){
		sessionStorage.setItem("tipo", $("#tipoventa").val());
	}
</script>