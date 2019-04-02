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
	  
})