$(document).ready(function() {
	// body...
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

		// Add smooth scrolling to all links
		$(".site-branding .menu-head ul li a").on('click', function(event) {
	  
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
		
		$('.woocommerce-billing-fields h3').addClass('hide');
		$('<div class="btn-conductor"><div class="izq"><a href="#">Anterior</a></div><div class="der"><a href="#">Siguiente</a></div></div>').insertAfter('#billing_myfield27_field');
		$('<div class="btn-carro"><div class="izq"><a href="#">Anterior</a></div><div class="der"><a href="#">Siguiente</a></div></div>').insertAfter('#billing_myfield18_field');
		$($('.woocommerce-checkout .wpmc-footer-left button')).insertAfter('.btn-conductor .izq a');
		$('.woocommerce-checkout .wpmc-footer-left').append($('.btn-conductor .izq a'));

		$('.woocommerce-billing-fields #billing_myfield12_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield13_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield14_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield15_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield16_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield17_field').addClass('hide');
		$('.woocommerce-billing-fields #billing_myfield18_field').addClass('hide');
		$('.woocommerce-checkout .btn-carro').addClass('hide');

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
		if($('.wpmc-step-login').hasClass('previus')){
			$('.woocommerce-checkout .wpmc-nav-wrapper').addClass('hide');
		}
		$('button#wpmc-skip-login').on('click', function(){
			$('.woocommerce-checkout .wpmc-nav-wrapper').addClass('hide');
		})
		$('.btn-carro .der a').on('click', function(){
			$('.woocommerce-billing-fields #billing_myfield12_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield13_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield14_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield15_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield16_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield17_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield18_field').addClass('hide');
			$('.woocommerce-checkout .btn-carro').addClass('hide');

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
			$('.woocommerce-checkout .wpmc-nav-wrapper').removeClass('hide');
	
		});

		$('.btn-conductor .der a').on('click', function(){
			$('.woocommerce-billing-fields #billing_myfield19_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield20_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield21_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield22_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield23_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield24_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield25_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield26_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield27_field').addClass('hide');
			$('.woocommerce-checkout .btn-conductor').addClass('hide');

			$('.woocommerce-billing-fields #billing_myfield12_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield13_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield14_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield15_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield16_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield17_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield18_field').removeClass('hide');
			$('.woocommerce-checkout .btn-carro').removeClass('hide');

			
	
		});

		$('.woocommerce-checkout .btn-carro .izq a').on('click', function(){
			$('.woocommerce-billing-fields #billing_myfield19_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield20_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield21_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield22_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield23_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield24_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield25_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield26_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield27_field').removeClass('hide');
			$('.woocommerce-checkout .btn-conductor').removeClass('hide');

			$('.woocommerce-billing-fields #billing_myfield12_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield13_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield14_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield15_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield16_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield17_field').addClass('hide');
			$('.woocommerce-billing-fields #billing_myfield18_field').addClass('hide');
			$('.woocommerce-checkout .btn-carro').addClass('hide');
		});
		$('.woocommerce-checkout .wpmc-footer-left a').on('click', function(){
			$('.woocommerce-billing-fields #billing_myfield12_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield13_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield14_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield15_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield16_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield17_field').removeClass('hide');
			$('.woocommerce-billing-fields #billing_myfield18_field').removeClass('hide');
			$('.woocommerce-checkout .btn-carro').removeClass('hide');

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
			$('.woocommerce-checkout .wpmc-nav-wrapper').addClass('hide');
	
		});

	})
	