<?php
/**
 * Checkout Payment Section
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/checkout/payment.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce/Templates
 * @version 3.5.3
 */

defined( 'ABSPATH' ) || exit;

if ( ! is_ajax() ) {
	do_action( 'woocommerce_review_order_before_payment' );
}
$woo_multi = get_option("woo_multi_currency_params");
if($woo_multi['currency_rate'][0]>1){
	$rate = $woo_multi['currency_rate'][0];
}else{
	$rate = $woo_multi['currency_rate'][1];
}
?>
<?php cosas(3);?>
<div id="payment" class="woocommerce-checkout-payment">
	<div class="row" id="shownotarjeta">
		<div class="col l12">
			<table>
				<tr>
					<td>Bolívar soberano (Bs.S)</td>
					<td>Dólar de los Estados Unidos (USD)</td>
				</tr>
				<?php
					foreach ( WC()->cart->get_cart() as $cart_item_key => $cart_item ) {
						$_product     = apply_filters( 'woocommerce_cart_item_product', $cart_item['data'], $cart_item, $cart_item_key );
						$query = new WC_Product($_product->id);
						$bss=0;
						$usd=0;
						if($_SESSION['currency']=="VES"){
							$bss= $query->get_price();
							$usd= $query->get_price()/$rate;
						}else{
							$bss= $rate*$query->get_price();
							$usd= $query->get_price();
						}
						?>
							<tr>
								<td><?= "Bs.S ".number_format($bss, 2, ',', '.'); ?></td>
								<td><?= "$ ".number_format($usd, 2, ',', '.'); ?></td>
							</tr>
						<?php
					}
				?>
			</table>
		</div>
	</div>
	<div class="row">
		<div class="col l3 no-cupon">
			<div class="col l12 logo-payment select" onclick="transferencia();select(this)">
				<img src="../wp-content/themes/tugruero/images/Trans_icon_negro.png" alt="">
			</div>
			<div class="col l12">
				<br>
				<p class="align-center"><b>Transferencia Bancaria</b><br><small>Para pagos en Bs.S y $</small></p>
			</div>
		</div>
		<div class="col l3 no-cupon">
			<div class="col l12 logo-payment disabled">
				<img src="../wp-content/themes/tugruero/images/Tarjeta_Credito-02.png" alt="">
			</div>
			<div class="col l12">
				<br>
				<p class="align-center"><b>Tarjeta de crédito venezolana</b><br>
				<!-- <small>Para pagos en Bs.S</small> -->
				<small>¡Muy pronto!</small>
				</p>
			</div>
		</div>
		<div class="col l3 no-cupon">
			<div class="col l12 logo-payment disabled">
				<img src="../wp-content/themes/tugruero/images/brand2.svg" alt="">
			</div>
			<div class="col l12">
				<br>
				<p class="align-center"><b>PayPal</b><br>
				<!-- <small>Para pagos en $</small> -->
				<small>¡Muy pronto!</small>
				</p>
			</div>
		</div>
		<div class="col l3 cupon hide">
			<!-- <a href="#" class="showcoupon"> -->
				<div class="col l12 logo-payment" id="containercoupon" onclick="cupon();select(this);">
					<img src="../wp-content/themes/tugruero/images/TDC_iCON_NEGRO.png" alt="" style="height: 80px !important;">
					<p style="color:#000; font-size:12px"><b>Haz click aquí para usar tu Tarjeta</b></p>
				</div>
			<!-- </a> -->
			<div class="col l12">
				<br>
				<p class="align-center" style="margin-bottom: 5px;"><b>Tarjeta TuGruero</b></p>
			</div>
		</div>
	</div>
	<div class="row" id="tarjetatugruero" style="display:none;">
		<div class="col l12">
			<div class="col l4 offset-l4">
				<p class="form-row form-row-first validate-required validate-required" style="width:100%;">
					<label for="cuponid" class="">Raspa e ingresa el código de tu Tarjeta</label>
					<input type="text" class="input-text " name="cuponid" id="cuponid" placeholder="">
				</p>
				<p>
					<button class="button alt button-tg" id="tarjetaTugrueroBtn">Canjear Tarjeta TuGruero</button>
				</p>
			</div>
		</div>
	</div>
	<?php if ( WC()->cart->needs_payment() ) : ?>
		<ul id="metodos" class="wc_payment_methods payment_methods methods">
			<?php
			if ( ! empty( $available_gateways ) ) {
				foreach ( $available_gateways as $gateway ) {
					wc_get_template( 'checkout/payment-method.php', array( 'gateway' => $gateway ) );
				}
			} else {
				echo '<li class="woocommerce-notice woocommerce-notice--info woocommerce-info">' . apply_filters( 'woocommerce_no_available_payment_methods_message', WC()->customer->get_billing_country() ? esc_html__( 'Sorry, it seems that there are no available payment methods for your state. Please contact us if you require assistance or wish to make alternate arrangements.', 'woocommerce' ) : esc_html__( 'Please fill in your details above to see available payment methods.', 'woocommerce' ) ) . '</li>'; // @codingStandardsIgnoreLine
			}
			?>
		</ul>
	<?php endif; ?>
	<div class="form-row place-order">
		<noscript>
			<?php
			/* translators: $1 and $2 opening and closing emphasis tags respectively */
			printf( esc_html__( 'Since your browser does not support JavaScript, or it is disabled, please ensure you click the %1$sUpdate Totals%2$s button before placing your order. You may be charged more than the amount stated above if you fail to do so.', 'woocommerce' ), '<em>', '</em>' );
			?>
			<br/><button type="submit" class="button alt" name="woocommerce_checkout_update_totals" value="<?php esc_attr_e( 'Update totals', 'woocommerce' ); ?>"><?php esc_html_e( 'Update totals', 'woocommerce' ); ?></button>
		</noscript>

		<?php wc_get_template( 'checkout/terms.php' ); ?>

		<?php do_action( 'woocommerce_review_order_before_submit' ); ?>

		<?php echo apply_filters( 'woocommerce_order_button_html', '<button type="submit" class="button alt" name="woocommerce_checkout_place_order" id="place_order" value="' . esc_attr( $order_button_text ) . '" data-value="' . esc_attr( $order_button_text ) . '">' . esc_html( $order_button_text ) . '</button>' ); // @codingStandardsIgnoreLine ?>

		<?php do_action( 'woocommerce_review_order_after_submit' ); ?>

		<?php wp_nonce_field( 'woocommerce-process_checkout', 'woocommerce-process-checkout-nonce' ); ?>
	</div>
</div>
<?php
if ( ! is_ajax() ) {
	do_action( 'woocommerce_review_order_after_payment' );
}
?>
<script>
	var cuponseleccionado=0;
	function paypal(){
		$("#metodos").css(
			"padding-bottom","1em"
		)
		$("#payment_method_paypal").click();
		$('#wpmc-next').text("Ir a PayPal");
		$("#tarjetatugruero").toggle(false);
		$('#wpmc-next').prop("disabled",false);
		cuponseleccionado=0;
	}

	function transferencia(){
		$("#metodos").css(
			"padding-bottom","32em"
		)
		$("#payment_method_bacs").click();
		var file2 = $("input[type=file]");
		if(file2.length==0){
			$('#wpmc-next').text("Realizar pedido");
			$('#wpmc-next').prop("disabled",false);
		}else{
			$('#wpmc-next').text("Adjunte soporte de transferencia para continuar");
			$('#wpmc-next').prop("disabled",true);
		}
		$("#tarjetatugruero").toggle(false);
		cuponseleccionado=0;
	}

	function cupon(){
		$("#metodos").css(
			"padding-bottom","1em"
		)
		$("#tarjetatugruero").toggle();
		$("div.payment_method_paypal").css("display","none");
		$("div.payment_method_bacs").css("display","none");
		$('#wpmc-next').text("Realizar pedido");
		if($(".cart-discount").length>0){
			$('#wpmc-next').prop("disabled",false);
		}else{
			$('#wpmc-next').prop("disabled",true);
		}
		cuponseleccionado=1;
	}

	function select(obj){
		$(".logo-payment").each(function(e,v){
			$(this).removeClass("select");
		})
		$(obj).addClass("select");
	}

	$(document).ready(function(){
		var file2 = $("input[type=file]");
		if(file2.length==0){
			$('#wpmc-next').text("Realizar pedido");
			$('#wpmc-next').prop("disabled",false);
		}
		// else{
		// 	$('#wpmc-next').prop("disabled",true);
		// 	$('#wpmc-next').text("Adjunte soporte de transferencia para continuar");
		// }
		
		$("div.payment_method_bacs").html('');
		$("div.payment_method_bacs").append('<div class="row">'+
				'<div class="col l6"><p><b>Para transferencia en Bolívares (BsS):</b><br><br>'+
				'Soluciones Tu Gruero, C.A.<br>'+
				'Rif: J-40680605-6<br><br>'+
				'Cuentas Bancarias: <br><br>'+
				'BANESCO: 0134 0371 6837 1103 9012<br>'+
				'MERCANTIL: 0105 0277 2012 7707 6227<br>'+
				'PROVINCIAL: 0108 0001 3101 0055 0488<br>'+
				'VENEZOLANO DE CREDITO: 0104 0043 1104 3006 6994</p></div>'+

				'<div class="col l6"><p><b>Para transferencia en Dólares (USD):</b><br><br>'+
				'Nombre: TAKO LLC<br>'+
				'Num cuenta: 229054907969 <br><br>'+
				'Zelle: pagostugruero@gmail.com</p></div>'+
			'</div>');
		$("div.payment_method_bacs").append('<hr><p style="text-align: center;" class="form-row form-row-wide validate-required validate-required" id="billing_myfield41_field"><label for="billing_myfield16" class="">Soporte de transferencia &nbsp;<abbr class="required" title="obligatorio">*</abbr></label><a href="#!" class="btn" onclick="adjuntar(1)">Adjuntar Soporte de transferencia</a></p>');
		var file2 = $("input[type=file]");

		if(file2.length==0){
			$("#billing_myfield41_field a").after(' <i class="fas fa-check" style="color: rgb(250, 105, 60);border: 1px solid rgb(250, 105, 60);border-radius: 50%;padding: 5px;""></i>');
		}
		$("#place_order").hide();
		$("#place_order").html("Realizar pedido");
		if($(".cart-discount").length>0){
			$('#wpmc-next').prop("disabled",false);
			select($("#containercoupon"));
		}
		$("#coupon_code").val("");
		// $(".woocommerce-error li").html("Por favor, introduce un código de Tarjeta");
		$(".woocommerce-privacy-policy-text").hide();
		$("#tarjetaTugrueroBtn").click(function(event){
			event.preventDefault();
			$("#tarjetaTugrueroBtn").prop("disable",true);
			$("#tarjetaTugrueroBtn").html("Cargando...");
			$("#coupon_code").val($("#cuponid").val());
			$("button[name=apply_coupon]").click();
		});
		if(sessionStorage.getItem("cupon")=="true"){
			$(".cupon").removeClass('hide');
			$("#shownotarjeta").remove();
			cuponseleccionado=1;
			$("#payment_heading").hide();
			$(".pago").html("Tarjeta TuGruero");
			$(".no-cupon").each(function(){
				$(this).remove();
			});
			$("#containercoupon").css({
				"width": "33%",
				"margin": "auto"
			});
			$("#payment").prepend("<ul class='wc_payment_methods payment_methods method' style=\"margin-bottom: 80px;\">"+
				"<li><div class='payment_box' style='margin:0px;'>"+
					"<p>Finalmente para canjear tu tarjeta haz click en el cuadro de abajo, raspa e ingresa el código. Luego recibirás nuestro correo de confirmación.</p>"+
				"</div></li>"+
			"</ul>");
			$("#metodos").hide();
		}else{
			$("#metodos").css(
				"padding-bottom","32em"
			)
			$(".cupon").removeClass('hide');
			$(".cupon").remove();
		}
	})
</script>