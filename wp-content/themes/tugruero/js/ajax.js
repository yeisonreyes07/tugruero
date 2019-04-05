(function($){
    $('.planes .container-planes .product .body-product .afiliate a').click(function(e) {
        console.log(this.id);
        jQuery.ajax({
            url : dcms_vars.ajaxurl,
            type : 'post',
            data : {
                action : 'bbloomer_add_product_to_cart',
                id: this.id
            },
            success : function( response ) {
                setTimeout(window.location="/carrito", 1000);	
            }
        });
    });
    
    $('.form-cart .btns .izq a').click(function(e) {
        jQuery.ajax({
            url : dcms_vars.ajaxurl,
            type : 'post',
            data : {
                action : 'bbloomer_empty_products_to_cart',
            },
            success : function( response ) {
                setTimeout(window.location="/", 1000);	
            }
        });
    });
})(jQuery);