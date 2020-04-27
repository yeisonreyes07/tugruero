<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
} // Exit if accessed directly

$desc_tip = sprintf( '%s <ul><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s</li><li>%s </li></ul>',
	__( 'You can use these placehoders', 'yith-woocommerce-sequential-order-number' ),
	__( '[D] Day without leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[DD] Day with leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[M] Month without leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[MM] Month with leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[YY] two-digit year', 'yith-woocommerce-sequential-order-number' ),
	__( '[YYYY] Full year', 'yith-woocommerce-sequential-order-number' ),
	__( '[h] 24-hour format of an hour without leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[hh] 24-hour format of an hour with leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[m] Minutes with leading zeros', 'yith-woocommerce-sequential-order-number' ),
	__( '[s] Seconds, with leading zeros', 'yith-woocommerce-sequential-order-number' )
);

$desc_quote = sprintf( '<span class="description">%s<br/>%s <a href="%s" target="_blank">%s</a> %s </span>',
	__( 'If you enable this option, you can use a different numeration for your quotes.', 'yith-woocommerce-sequential-order-number' ),
	_x( 'This option is available if', 'This option is available if YITH WooCommerce Request a Quote Premium version 1.5.6 or later is activated', 'yith-woocommerce-sequential-order-number' ),
	'://yithemes.com/themes/plugins/yith-woocommerce-request-a-quote/',
	__( 'YITH WooCommerce Request a Quote Premium', 'yith-woocommerce-sequential-order-number' ),
	__( '(version 1.5.7 or later) is activated', 'yith-woocommerce-sequential-order-number' ) );
$settings   = array(

	'general' => array(
		'section_general_settings' => array(
			'name' => __( 'Plugin Modules', 'yith-woocommerce-sequential-order-number' ),
			'type' => 'title'
		),
		'enable_base_module'       => array(
			'name'      => __( 'Base Module', 'yith-woocommerce-sequential-order-number' ),
			'type'      => 'yith-field',
			'yith-type' => 'onoff',
			'default'   => 'yes',
			'id'        => 'ywson_enable_base_module'
		),
		'start_order_number'       => array(
			'name'              => __( 'Numeration starting from', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'number',
			'desc_tip'          => __( 'Set the starting number for order numeration', 'yith-woocommerce-sequential-order-number' ),
			'id'                => 'ywson_start_order_number',
			'default'           => 1,
			'custom_attributes' => "min=1 step=1 required",
			'deps'              => array(
				'id'    => 'ywson_enable_base_module',
				'value' => 'yes',
				'type'  => 'disable'
			)
		),
		'order_prefix'             => array(
			'name'              => __( 'Order prefix', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'text',
			'desc'              => sprintf( '%s <br> %s', __( 'Set a text to be used as prefix for order numbers.', 'yith-woocommerce-sequential-order-number' ), $desc_tip ),
			'id'                => 'ywson_order_prefix',
			'custom_attributes' => 'placeholder="Ex: YWSON-"',
			'default'           => '',
			'deps'              => array(
				'id'    => 'ywson_enable_base_module',
				'value' => 'yes',
				'type'  => 'disable'
			)

		),
		'order_suffix'             => array(
			'name'              => __( 'Order suffix', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'text',
			'desc'              => sprintf( '%s <br> %s', __( 'Set a text to be used as suffix for order numbers.', 'yith-woocommerce-sequential-order-number' ), $desc_tip ),
			'id'                => 'ywson_order_suffix',
			'custom_attributes' => 'placeholder="Ex: YWSON-"',
			'default'           => '',
			'deps'              => array(
				'id'    => 'ywson_enable_base_module',
				'value' => 'yes',
				'type'  => 'disable'
			)

		),
		'general_settings_end'     => array(
			'type' => 'sectionend'
		),
		'section_free_settings'    => array(
			'name' => '',
			'type' => 'title'
		),
		'custom_check_free_order'  => array(
			'name'      => __( 'Free Order Module', 'yith-woocommerce-sequential-order-number' ),
			'type'      => 'yith-field',
			'yith-type' => 'onoff',
			'desc'      => __( 'If this option has been activated, you can use a different numeration for your free orders.', 'yith-woocommerce-sequential-order-number' ),
			'id'        => 'ywson_check_custom_free_order',
			'default'   => 'no',

		),

		'custom_numeration_free_order'  => array(
			'name'              => __( 'Numeration starting from:', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'number',
			'desc_tip'          => __( 'Set the starting number for free order numeration', 'yith-woocommerce-sequential-order-number' ),
			'id'                => 'ywson_start_free_order_number',
			'default'           => 1,
			'custom_attributes' => "min=1 step=1 required",
			'deps'              => array(
				'id'    => 'ywson_check_custom_free_order',
				'value' => 'yes',
				'type'  => 'disable'
			)
		),
		'order_free_prefix'             => array(
			'name'              => __( 'Free order prefix', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'text',
			'id'                => 'ywson_free_order_prefix',
			'desc'              => sprintf('%s <br> %s',__( 'Set a text to be used as prefix for free order numbers.', 'yith-woocommerce-sequential-order-number' ), $desc_tip ),
			'custom_attributes' => 'placeholder="Ex: YWSON-"',
			'default'           => '',
			'deps'              => array(
				'id'    => 'ywson_check_custom_free_order',
				'value' => 'yes',
				'type'  => 'disable'
			)


		),
		'order_free_suffix'             => array(
			'name'              => __( 'Free order suffix', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'text',
			'id'                => 'ywson_free_order_suffix',
			'desc'              => sprintf( '%s <br> %s',__( 'Set a text to be used as suffix for free order numbers.', 'yith-woocommerce-sequential-order-number' ), $desc_tip ),
			'custom_attributes' => 'placeholder="Ex: YWSON-"',
			'default'           => '',
			'deps'              => array(
				'id'    => 'ywson_check_custom_free_order',
				'value' => 'yes',
				'type'  => 'disable'
			)


		),
		'type_order_free'               => array(
			'name'      => __( 'Set your free order type', 'yith-woocommerce-sequential-order-number' ),
			'type'      => 'yith-field',
			'yith-type' => 'select',
			'id'        => 'ywson_free_order_type',
			'desc'  => sprintf( '%s<br/><b>%s<br/>%s<b/>',
				__( 'With this option, you can choose in which way orders have to be recognized as free.', 'yith-woocommerce-sequential-order-number' ),
				__( 'Order total: your order is free if the total is 0 (coupon and shipping included).', 'yith-woocommerce-sequential-order-number' ),
				__( 'Order products: your order is free only if all products it contains are free (coupon and shipping excluded).', 'yith-woocommerce-sequential-order-number' ) ),

			'options' => array(
				'order_tot'   => __( 'Order Total', 'yith-woocommerce-sequential-order-number' ),
				'product_ord' => __( 'Products in Order', 'yith-woocommerce-sequential-order-number' )
			),
			'default' => 'order_tot',
			'deps'    => array(
				'id'    => 'ywson_check_custom_free_order',
				'value' => 'yes',
				'type'  => 'disable'
			)

		),
		'free_settings_end'             => array(
			'type' => 'sectionend',

		),
		'section_quote_settings'        => array(
			'name' => '',
			'type' => 'title'
		),
		'hidden_raq_is_active' => array(

		),
		'custom_check_quote_order'      => array(
			'name'              => __( 'Quote Module', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'onoff',
			'desc'              => $desc_quote,
			'id'                => 'ywson_check_custom_quote_order',
			'default'           => 'no',
		),
		'custom_numeration_quote_order' => array(
			'name'              => __( 'Numeration starting from:', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'number',
			'desc_tip'          => __( 'Set the starting number for quote numeration', 'yith-woocommerce-sequential-order-number' ),
			'id'                => 'ywson_start_quote_order_number',
			'default'           => 1,
			'custom_attributes' => "min=1 step=1 required",
			'deps'    => array(
				'id'    => 'ywson_check_custom_quote_order',
				'value' => 'yes',
				'type'  => 'disable'
			)

		),
		'order_quote_prefix'            => array(
			'name'        => __( 'Quote prefix', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'text',
			'id'          => 'ywson_quote_order_prefix',
			'desc'        => sprintf('%s <br> %s',__( 'Set a text to be used as prefix for quote numbers.', 'yith-woocommerce-sequential-order-number' ), $desc_tip ),
			'custom_attributes' =>'placeholder ="Ex: YWSON_QUOTE-"',
			'default'     => '',
			'deps'    => array(
				'id'    => 'ywson_check_custom_quote_order',
				'value' => 'yes',
				'type'  => 'disable'
			)

		),
		'order_quote_suffix'            => array(
			'name'        => __( 'Quote suffix', 'yith-woocommerce-sequential-order-number' ),
			'type'              => 'yith-field',
			'yith-type'         => 'text',
			'id'          => 'ywson_quote_order_suffix',
			'desc'        => sprintf('%s <br> %s',__( 'Set a text to be used as suffix for quote numbers.', 'yith-woocommerce-sequential-order-number' ), $desc_tip ),
			'custom_attributes' => 'placeholder="Ex: -YWSON_QUOTE"',
			'default'     => '',
			'deps'    => array(
				'id'    => 'ywson_check_custom_quote_order',
				'value' => 'yes',
				'type'  => 'disable'
			)
		),
		'end_quote_settings'            => array(
			'type' => 'sectionend',

		),

	)

);

return apply_filters( 'ywson_general_options', $settings );