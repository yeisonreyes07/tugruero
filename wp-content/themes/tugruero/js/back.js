$(document).ready(function() {
	$("#wmc_widget-2 select option").each(function(i,v){
		if($(this).html()=="Bolívar soberano"){
			$(this).html("Bolívar soberano (Bs.S)")
		}
	})
	$("#billing_myfield18_field select").prepend("<option selected disabled value='0'>-</option>");
	$("#billing_myfield19_field select").prepend("<option selected disabled value='0'>-</option>");
	$("#billing_myfield20_field select").prepend("<option selected disabled value='0'>-</option>");
	$("#billing_myfield24_field select").prepend("<option selected disabled value='0'>-</option>");

	$(".resumen-cart .pago").each(function(i,v){
		var valor_ofice = $(this).html()
		var valor = valor_ofice.split("Bs.S ");
		if(valor.length>1){
			var precio = parseInt(valor[1]).toLocaleString();
			$(this).html(valor[0]+"Bs.S "+precio);
		}
	})

	
	// body...
	$('article .entry-header .entry-title').text("");
			
	$('.section-banner').slick({
		slidesToShow: 1,
		slidesToSlide: 1,
		arrows: true,
		autoplay: true,
	  	autoplaySpeed: 3000,
	});
	$('.testimonials .content-testimonial').slick({
		slidesToShow: 1,
		slidesToSlide: 1,
		arrows: true,
		autoplay: true,
	  	autoplaySpeed: 3000,
	});
	$('.galerias .content-galeria').slick({
		slidesToShow: 4,
		slidesToSlide: 1,
		arrows: true,
		autoplay: true,
			autoplaySpeed: 3000,
			responsive: [
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1,
						infinite: true,
					}
				}]
	});
	if($('body').hasClass('home')){
		if($('.wmc-list-currencies .wmc-currency.wmc-active span:nth-child(1)').text() == "VEF"){
			$('.tachado span.dolar').addClass('hide');
		}else if($('.wmc-list-currencies .wmc-currency.wmc-active span:nth-child(1)').text() == "USD"){
			$('.tachado span.vef').addClass('hide');
		}
	}
		// Add smooth scrolling to all links
		$(".site-branding .menu-head ul li a, #viewPlan").on('click', function(event) {
	  
		  // Make sure this.hash has a value before overriding default behavior
		  if (this.hash !== "") {
			// Prevent default anchor click behavior
			event.preventDefault();
	  
			// Store hash
			var hash = this.hash;
	  
			// Using jQuery's animate() method to add smooth page scroll
			// The optional number (800) specifies the number of milliseconds it takes to scroll to the specified area
			$('html, body').animate({
			  scrollTop: $(hash).offset().top
			}, 800, function(){
		 
			  // Add hash (#) to URL when done scrolling (default click behavior)
			  window.location.hash = hash;
			});
		  } // End if
		});	
		$('<div class="msg-error"></div>').insertBefore('.woocommerce-checkout #content #primary');
		$('#wpmc-next').text("Siguente");
		$('#wpmc-prev').text("Anterior");
		$("#billing_postcode_field").hide();
		$("#billing_postcode").val("0000");
		$('.woocommerce-account-fields p label input').attr("checked", "checked");
		$('.woocommerce-billing-fields h3').addClass('hide');
		$("#checkout_coupon").addClass('hide');
		if (!$('body').hasClass('logged-in')) {		
			$('<div class="btn-conductor"><div class="izq"><a href="/tugruero/plan">Anterior</a></div><div class="der"><a href="#">Siguiente</a></div></div>').insertAfter('#billing_myfield17_field');
			$('<div class="btn-carro"><div class="izq"><a href="#">Anterior</a></div><div class="der"><a href="#">Siguiente</a></div></div>').insertAfter('#billing_myfield25_field');
			//$($('.woocommerce-checkout .wpmc-footer-left button')).insertAfter('.btn-conductor .izq a');
			//$('.woocommerce-checkout .wpmc-footer-left').append($('.btn-conductor .izq a'));
		}else{
			$('<div class="btn-conductor"><div class="izq"><a href="#">Anterior</a></div><div class="der"><a href="#">Siguiente</a></div></div>').insertAfter('#billing_myfield25_field');
			$($('.woocommerce-checkout .wpmc-footer-left button')).insertAfter('.btn-conductor .izq a');
			$('.woocommerce-checkout .wpmc-footer-left').append($('.btn-conductor .izq a'));	
		}
		$("#billing_myfield17_field").after('<p class="form-row form-row-wide validate-required validate-required" id="billing_myfield16_field"><label for="billing_myfield16" class="">¿Cómo te enteraste de nosotros?&nbsp;<abbr class="required" title="obligatorio">*</abbr></label>'+
			'<select class="" data-placeholder="" name="billing_como_te_enterastes" id="billing_como_te_enterastes" onchange="cambiarComo()">'+
				'<option>Stands de venta</option><option>Instagram</option><option>Facebook</option><option>Familiar o Amigo</option><option>Busqueda en Google</option><option>Mercadolibre</option><option>Volanteo (calle)</option>'+
			'</select>'+
		'</p>');
		$("#billing_myfield25").val($("#billing_como_te_enterastes option:selected").html());
		//$('.btn-carro .der').append($('.woocommerce-checkout .wpmc-nav-buttons button#wpmc-next'));
		//$('.btn-carro .der button').text("Siguiente")
		$('.woocommerce-checkout .btn-carro').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield18_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield19_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield20_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield21_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield22_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield23_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield24_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield25_field').addClass('hide');
		$("#billing_address_1_field label").empty();
		$("#billing_address_1_field label").append('Dirección de Domicilio&nbsp;<abbr class="required" title="obligatorio">*</abbr>');
		$("#billing_city_field label").empty();
		$("#billing_city_field label").append('Ciudad&nbsp;<abbr class="required" title="obligatorio">*</abbr>');
		$("#billing_state_field label").empty();
		$("#billing_state_field label").append('Estado&nbsp;<abbr class="required" title="obligatorio">*</abbr>');
		
		if($('body').hasClass('woocommerce-checkout')){
			if($('.wpmc-step-login').hasClass('current')){
				$('article .entry-header .entry-title').text("Inicio de sesión");
			}else{
				$('article .entry-header .entry-title').text("Datos del propietario");
			}
		}
		if($('.wpmc-step-login').hasClass('previus')){
			$('.woocommerce-checkout .wpmc-nav-wrapper').addClass('hide');
		}
		$('button#wpmc-skip-login').on('click', function(){
			$('.woocommerce-checkout .wpmc-nav-wrapper').addClass('hide');
		})
		//$('.woocommerce-checkout #payment ul.payment_methods li input ~ label').empty();
		//$('.woocommerce-checkout #payment ul.payment_methods li input ~ label').append('<div class="cuadro"><img src="/wp-content/themes/tugruero/images/money-transfer.svg"/></div><p>Transferencia Bancaria</p>');
		
		$('.woocommerce-checkout .wpmc-nav-wrapper').css('display','none');
		$('.btn-conductor .der a').on('click', function(){
			$('.msg-error').empty();
			$("#checkout_coupon").addClass('hide');
			var items = '';
			var valid=true;
			console.log($('.woocommerce-billing-fields #billing_first_name').val());
			if($('.woocommerce-billing-fields #billing_first_name').val()==''){
				$('.woocommerce-billing-fields #billing_first_name').addClass("invalido");
				$('.woocommerce-billing-fields #billing_first_name').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Nombres es requerido.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_last_name').val()==''){
				$('.woocommerce-billing-fields #billing_last_name').addClass("invalido");
				$('.woocommerce-billing-fields #billing_last_name').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Apellidos es requerido.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_myfield11').val()==''){
				$('.woocommerce-billing-fields #billing_myfield11').addClass("invalido");
				$('.woocommerce-billing-fields #billing_myfield11').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Sexo es requerido.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_phone').val()==''){
				$('.woocommerce-billing-fields #billing_myfield12').addClass("invalido");
				$('.woocommerce-billing-fields #billing_phone').addClass("invalido");
				$('.woocommerce-billing-fields #billing_phone').focus(function(){
					$(this).removeClass('invalido');
					$('.woocommerce-billing-fields #billing_myfield12').removeClass("invalido");
				})
				items+="<li>El campo Celular es requerido.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_phone').val().length!=7){
				$('.woocommerce-billing-fields #billing_phone').addClass("invalido");
				$('.woocommerce-billing-fields #billing_phone').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Celular debe tener 7 dígitos.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_myfield14').val()==''){
				$('.woocommerce-billing-fields #billing_myfield13').addClass("invalido");
				$('.woocommerce-billing-fields #billing_myfield14').addClass("invalido");
				$('.woocommerce-billing-fields #billing_myfield14').focus(function(){
					$(this).removeClass('invalido');
					$('.woocommerce-billing-fields #billing_myfield13').removeClass("invalido");
				})
				items+="<li>El campo Cédula/RIF es requerido.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_myfield14').val().length<6 || $('.woocommerce-billing-fields #billing_myfield14').val().length>8){
				$('.woocommerce-billing-fields #billing_myfield14').addClass("invalido");
				$('.woocommerce-billing-fields #billing_myfield14').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Cédula/RIF debe tener entre 6 y 8 dígitos.";
				valid=false;
			}
			if($('.woocommerce-billing-fields #billing_email').val()==''){
				$('.woocommerce-billing-fields #billing_email').addClass("invalido");
				$('.woocommerce-billing-fields #billing_email').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Correo Electrónico es requerido.";
				valid=false;
			}

			campo = $('.woocommerce-billing-fields #billing_email');
				
			emailRegex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
			//Se muestra un texto a modo de ejemplo, luego va a ser un icono
			if (!emailRegex.test(campo.val())) {
				$('.woocommerce-billing-fields #billing_email').addClass("invalido");
				$('.woocommerce-billing-fields #billing_email').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Correo Electrónico no es valido..";
				valid=false;
			}
			
			if($('.woocommerce-billing-fields #billing_myfield15').val()==''){
				$('.woocommerce-billing-fields #billing_myfield15').addClass("invalido");
				$('.woocommerce-billing-fields #billing_myfield15').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Fecha de Nacimiento es requerido.";
				valid=false;
			}
			
			if($('.woocommerce-billing-fields #billing_address_1').val()==''){
				$('.woocommerce-billing-fields #billing_address_1').addClass("invalido");
				$('.woocommerce-billing-fields #billing_address_1').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Dirección es requerido.";
				valid=false;
			}

			if($('.woocommerce-billing-fields #billing_address_2').val()==''){
				$('.woocommerce-billing-fields #billing_address_2').val(".");
			}
			
			if($('.woocommerce-billing-fields #billing_city').val()==''){
				$('.woocommerce-billing-fields #billing_city').addClass("invalido");
				$('.woocommerce-billing-fields #billing_city').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Cíudad es requerido.";
				valid=false;
			
			}
			
			if($('.woocommerce-billing-fields #billing_state').val()==''){
				$('.woocommerce-billing-fields #billing_state').addClass("invalido");
				$('.woocommerce-billing-fields #billing_state').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Estado es requerido.";
				valid=false;
			}
			
			// if($('.woocommerce-billing-fields #billing_postcode').val()==''){
			// 	$('.woocommerce-billing-fields #billing_postcode').addClass("invalido");
			// 	$('.woocommerce-billing-fields #billing_postcode').focus(function(){
			// 		$(this).removeClass('invalido');
			// 	})
			// 	items+="<li>El campo Código Postal es requerido.";
			// 	valid=false;
			// }
			if($('.woocommerce-billing-fields #billing_myfield16').val()==''){
				$('.woocommerce-billing-fields #billing_myfield16').addClass("invalido");
				$('.woocommerce-billing-fields #billing_myfield16').focus(function(){
					$(this).removeClass('invalido');
				})
				items+="<li>El campo Estado Civil es requerido.";
				valid=false;
			}
			if($("input:radio[name ='billing_myfield17']:checked").val()=='' || $("input:radio[name ='billing_myfield17']:checked").val()==null){
				items+="<li>El campo RCV es requerido.";
				valid=false;
			}
			
			if(valid==true){
				$('.woocommerce-billing-fields #billing_first_name_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_last_name_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_email_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_company_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_country_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_address_1_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_address_2_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_city_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_state_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_postcode_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_phone_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield11_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield12_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield13_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield14_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield15_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield16_field').addClass('hide');
				$('.woocommerce-billing-fields #billing_myfield17_field').addClass('hide');
				
				
				$('.woocommerce-checkout .btn-conductor').addClass('hide');

				$('.woocommerce-billing-fields #billing_myfield18_field').removeClass('hide');
				$('.woocommerce-billing-fields #billing_myfield19_field').removeClass('hide');
				$('.woocommerce-billing-fields #billing_myfield20_field').removeClass('hide');
				$('.woocommerce-billing-fields #billing_myfield21_field').removeClass('hide');
				$('.woocommerce-billing-fields #billing_myfield22_field').removeClass('hide');
				$('.woocommerce-billing-fields #billing_myfield23_field').removeClass('hide');
				$('.woocommerce-billing-fields #billing_myfield24_field').removeClass('hide');
				// $('.woocommerce-billing-fields #billing_myfield25_field').removeClass('hide');
				$('.woocommerce-checkout .btn-carro').removeClass('hide');

				$('article .entry-header .entry-title').text("Datos del vehículo");
				$('.resumen-cart .paso .pas').text("2");
			}else{
				$(".msg-error").append(items);
			}
		});

		$('.woocommerce-checkout .btn-carro .izq a').on('click', function(){
			$(".msg-error").empty();
			$("#checkout_coupon").addClass('hide');
			$('.woocommerce-billing-fields #billing_first_name_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_last_name_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_email_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_company_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_country_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_address_1_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_address_2_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_city_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_state_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_postcode_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_phone_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield11_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield12_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield13_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield14_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield15_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield16_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield17_field').removeClass('hide');
			
			
			$('.woocommerce-checkout .btn-conductor').removeClass('hide');

			$('.woocommerce-billing-fields #billing_myfield18_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield19_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield20_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield21_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield22_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield23_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield24_field').addClass('hide');
			// $('.woocommerce-billing-fields #billing_myfield25_field').addClass('hide');
			$('.woocommerce-checkout .btn-carro').addClass('hide');
			$('article .entry-header .entry-title').text("Datos del propietario");
			$('.resumen-cart .paso .pas').text("1");
	});
	$('.woocommerce-checkout .btn-carro .der a').on('click', function(){
		$("#checkout_coupon").addClass('hide');
		$('.msg-error').empty();
		var items = '';
		var valid=true;
		if($("#billing_myfield18_field select").val()==null){
			items+="<li>El campo Clase es requerido.";
			valid=false;
		}
		if($("#billing_myfield19_field select").val()==null){
			items+="<li>El campo Año es requerido.";
			valid=false;
		}
		if($("#billing_myfield20_field select").val()==null){
			items+="<li>El campo Marca es requerido.";
			valid=false;
		}
		if($('.woocommerce-billing-fields #billing_myfield21').val()==''){
			items+="<li>El campo Placa es requerido.";
			valid=false;	
		}
		if($('.woocommerce-billing-fields #billing_myfield21').val().length < 6 || $('.woocommerce-billing-fields #billing_myfield21').val().length > 7){
			items+="<li>El campo Placa deber ser de 6 o 7 dígitos.";
			valid=false;	
		}
		if($('.woocommerce-billing-fields #billing_myfield23').val()==''){
			items+="<li>El campo Color es requerido.";
			valid=false;	
		}
		if($("#billing_myfield24_field select").val()==null){
			items+="<li>El campo Tipo es requerido.";
			valid=false;
		}
		if(valid==true){
			$(".wpmc-step-item.wpmc-step-billing").removeClass("current");
			$("#order_review").addClass("current");
			$('article .entry-header .entry-title').text("Resumen de Compra");
			$('.woocommerce-checkout .wpmc-nav-wrapper').css('display','block');
			$('.resumen-cart .paso .pas').text("3");
		}else{
			$(".msg-error").append(items);
		}
	});

	$('.woocommerce-checkout .wpmc-footer-left a').on('click', function(){
		$("#checkout_coupon").addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield12_field').removeClass('hide');
		$('.woocommerce-billing-fields #billing_myfield13_field').removeClass('hide');
		$('.woocommerce-billing-fields #billing_myfield14_field').removeClass('hide');
		$('.woocommerce-billing-fields #billing_myfield15_field').removeClass('hide');
		$('.woocommerce-billing-fields #billing_myfield16_field').removeClass('hide');
		$('.woocommerce-billing-fields #billing_myfield17_field').removeClass('hide');
		$('.woocommerce-billing-fields #billing_myfield18_field').removeClass('hide');
		$('.woocommerce-checkout .btn-carro').removeClass('hide');
		$('.woocommerce-checkout .wpmc-nav-wrapper').addClass('hide');
		$('article .entry-header .entry-title').text("Datos del vehículo");
		$('.woocommerce-checkout .wpmc-nav-wrapper').css('display','none');
		$('.resumen-cart .paso .pas').text("2");
		
	});
	$('.woocommerce-checkout .wpmc-nav-buttons #wpmc-next').on('click', function(){
		$('article .entry-header .entry-title').text("Pago");
		$('.woocommerce-checkout .wpmc-nav-wrapper').css('display','block');
		$("#checkout_coupon").removeClass('hide');
		$('#wpmc-next').remove();
		$("#place_order").html("Procesar pago");
	});
	$("#wpmc-prev").on('click', function(){
		$("#checkout_coupon").addClass('hide');
		$('article .entry-header .entry-title').text("Datos del Vehículo");
		$('.woocommerce-checkout .wpmc-nav-wrapper').css('display','none');
	});
	$(document).on('change', function(){
		if($('.wpmc-step-login').hasClass('current')){
			$('article .entry-header .entry-title').text("Inicio de sesion");
		}
		
	});
	if($(window).scrollTop()>0){
		$('header.site-header').addClass('scrolling');
	}
	$(window).scroll(function(){
		if($(window).scrollTop()>0){
			$('header.site-header').addClass('scrolling');
		}else{
			$('header.site-header').removeClass('scrolling');	
		}
	});
	console.log(window.location.pathname);
})
	/*
	1- Colocar nombre y apellido en el registro
	1- Detalle del pedido en el titulo
	*/
function cambiarComo(){
	$("#billing_myfield25").val($("#billing_como_te_enterastes option:selected").html());
}