;
(function ($) {

    // Add Color Picker to all inputs that have 'color-field' class
    $(function () {
        $('.color-field').wpColorPicker();

        jQuery('#wpobp-settings-form').on('submit', function (e) {
            e.preventDefault();
            var form_data = $("#wpobp-settings-form").serialize();
            $.ajax({
                url: WPSTT_Vars.ajaxurl,
                type: 'post',
                data: {
                    action: 'wpobp_settings_save',
                    security: WPOBP_Vars.nonce,
                    form_data: form_data,
                },
                success: function (response) {

                    $(".update-status").html(response); 
                    $('.update-status').show(500).delay(5000).hide(500);


                }
            });
        });

    });

})(jQuery);