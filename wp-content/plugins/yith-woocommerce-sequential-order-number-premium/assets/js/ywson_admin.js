/**
 * Created by Your Inspiration on 29/04/2015.
 */
jQuery(document).ready(function ($) {

    var module_container = $('#yith_wc_sequential_order_number_panel_general'),
        all_modules_row = module_container.find('.yith-plugin-fw-panel-wc-row.onoff'),
        button_expand_module = $('<button>'),
        span_icon = $('<span>');

    button_expand_module.addClass('expand-module');
    span_icon.addClass('dashicons').addClass('dashicons-arrow-up-alt2');
    button_expand_module.append(span_icon);


    all_modules_row.append(button_expand_module);

    $('button.expand-module').on('click', function (e) {
        e.preventDefault();
        $(this).closest('.yith-plugin-fw-panel-wc-row.onoff').toggleClass('closed').nextUntil('.yith-plugin-fw-panel-wc-row.onoff').slideToggle('slow');
    });


    /**IMPORT , SEE TAB TOOLS**/

    $('#ywson_import_order_numbers').on('click', function (e) {
        e.preventDefault();

        var data = {

                action: yith_son_params.actions.import_old_order_number,
                security: $('#ywson_nonce').val()

            },
            button = $(this),
            block_params = {
                message: null,
                overlayCSS: {
                    background: '#fff',
                    opacity: 0.6
                },
                ignoreIfBlocked: true
            };

        $('.ywson_imported').remove();
        button.attr('disabled', 'disabled');

        $.ajax({
            type: 'POST',
            url: yith_son_params.ajax_url,
            data: data,
            success: function (response) {

                button.attr('disabled', false);
                button.after('<span class="ywson_imported">'+response.message+'</span>');
            }
        });


    });

});

