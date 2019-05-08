(function($){
    $('.page-template-content-plan #content .form-cart .btns-cart .der a').click(function(e) {
        console.log($('input#cantidad').val());
        jQuery.ajax({
            url : dcms_vars.ajaxurl,
            type : 'post',
            data : {
                action : 'bbloomer_add_product_to_cart',
                id: $('select#plan').children("option:selected").val(),
                quantity: $('input#cantidad').val()
            },
            success : function( response ) {
                setTimeout(window.location="/tugruero/finalizar-compra", 1000);	
                // setTimeout(window.location="/finalizar-compra", 1000);	
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