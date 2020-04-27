<?php
/**
 * This file belongs to the YIT Plugin Framework.
 *
 * This source file is subject to the GNU GENERAL PUBLIC LICENSE (GPL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://www.gnu.org/licenses/gpl-3.0.txt
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit;
} // Exit if accessed directly

$general_options = array(

	'general' => array(

		'section_general_settings'       => array(
			'name' => __( 'General settings', 'yith-woocommerce-additional-uploads' ),
			'type' => 'title',
			'id'   => 'ywau_section_general',
		),
		'ywau_thumbnail_width'           => array(
			'name'              => __( 'Thumbnail width', 'yith-woocommerce-additional-uploads' ),
			'type'              => 'number',
			'desc'              => __( 'Set the width of the thumbnails in pixel.', 'yith-woocommerce-additional-uploads' ),
			'id'                => 'ywau_thumbnail_width',
			'default'           => '100',
			'custom_attributes' => array(
				'min'      => 10,
				'step'     => 1,
				'required' => 'required',
			),
		),
		'ywau_thumbnail_height'          => array(
			'name'              => __( 'Thumbnail height', 'yith-woocommerce-additional-uploads' ),
			'type'              => 'number',
			'desc'              => __( 'Set the height of the thumbnails in pixel.', 'yith-woocommerce-additional-uploads' ),
			'id'                => 'ywau_thumbnail_height',
			'default'           => '100',
			'custom_attributes' => array(
				'min'      => 10,
				'step'     => 1,
				'required' => 'required',
			),
		),
		'ywau_thumbnail_quality'         => array(
			'name'              => __( 'Thumbnail quality', 'yith-woocommerce-additional-uploads' ),
			'type'              => 'number',
			'desc'              => __( 'Set the quality (in %) of the thumbnails.', 'yith-woocommerce-additional-uploads' ),
			'id'                => 'ywau_thumbnail_quality',
			'default'           => '100',
			'custom_attributes' => array(
				'min'      => 1,
				'max'      => 100,
				'step'     => 1,
				'required' => 'required',
			),
		),
		'ywau_allow_upload_on_cart'      => array(
			'name'    => __( 'Allow on cart', 'yith-woocommerce-additional-uploads' ),
			'desc'    => __( 'Use this option to allow users to attach a file even from the cart', 'yith-woocommerce-additional-uploads' ),
			'id'      => 'ywau_allow_upload_on_cart',
			'default' => 'no',
			'type'    => 'checkbox',
		),
		'ywau_allow_upload_on_checkout'  => array(
			'name'    => __( 'Allow on checkout page', 'yith-woocommerce-additional-uploads' ),
			'desc'    => __( 'Use this option to allow users to attach a file from the checkout page', 'yith-woocommerce-additional-uploads' ),
			'id'      => 'ywau_allow_upload_on_checkout',
			'default' => 'no',
			'type'    => 'checkbox',
		),
		'ywau_allow_upload_on_thankyou'  => array(
			'name'    => __( 'Allow on thank you page', 'yith-woocommerce-additional-uploads' ),
			'desc'    => __( 'Use this option to allow users to attach a file from the thankyou page', 'yith-woocommerce-additional-uploads' ),
			'id'      => 'ywau_allow_upload_on_thankyou',
			'default' => 'no',
			'type'    => 'checkbox',
		),
		'ywau_allow_upload_on_myaccount' => array(
			'name'    => __( 'Allow on myaccount', 'yith-woocommerce-additional-uploads' ),
			'desc'    => __( 'Use this option to allow users to attach a file to an order from myaccount page', 'yith-woocommerce-additional-uploads' ),
			'id'      => 'ywau_allow_upload_on_myaccount',
			'default' => 'no',
			'type'    => 'checkbox',
		),

	),
);

$statuses = wc_get_order_statuses();
/**
 * List the order status where the upload feature is enabled
 */
$i = 0;
foreach ( $statuses as $status => $status_name ) {

	$general_options['general']["ywau_allowed_order_status_{$status}"] = array(
		"desc"          => $status_name,
		"id"            => "ywau_allow_upload_{$status}",
		"type"          => "checkbox",
		'default'       => 'yes',
		'checkboxgroup' => '',
	);

	if ( 0 == $i ) {
		$general_options['general']["ywau_allowed_order_status_{$status}"]["checkboxgroup"] = 'start';
		$general_options['general']["ywau_allowed_order_status_{$status}"]["name"]          = __( 'Allow the file upload when the order status is:', 'yith-woocommerce-additional-uploads' );
	} else if ( ( count( $statuses ) - 1 ) == $i ) {
		$general_options['general']["ywau_allowed_order_status_{$status}"]["checkboxgroup"] = 'end';
	}

	$i ++;
}

/**
 * List the order status in which the uploaded file can be deleted
 */
$i = 0;
foreach ( $statuses as $status => $status_name ) {

	$general_options['general']["ywau_allow_file_deletion_{$status}"] = array(
		"desc"          => $status_name,
		"id"            => "ywau_allow_file_deletion_{$status}",
		"type"          => "checkbox",
		'default'       => 'yes',
		'checkboxgroup' => '',
	);

	if ( 0 == $i ) {
		$general_options['general']["ywau_allow_file_deletion_{$status}"]["checkboxgroup"] = 'start';
		$general_options['general']["ywau_allow_file_deletion_{$status}"]["name"]          = __( 'Allow the file deleting when the order status is:', 'yith-woocommerce-additional-uploads' );
	} else if ( ( count( $statuses ) - 1 ) == $i ) {
		$general_options['general']["ywau_allow_file_deletion_{$status}"]["checkboxgroup"] = 'end';
	}

	$i ++;
}


$general_options['general']["ywau_upload_folder"] = array(
	'name'    => __( 'Upload folder', 'yith-woocommerce-additional-uploads' ),
	'type'    => 'text',
	'desc'    => __( 'Set a folder in which saving the files that are uploaded by users. The folder will be create in wp-content/uploads/yith-additional-uploads.', 'yith-woocommerce-additional-uploads' ),
	'id'      => 'ywau_upload_folder',
	'default' => '',
);

$general_options['general']["ywau_folder_by_order_type"] = array(
	'name'    => __( 'Storing mode', 'yith-woocommerce-additional-uploads' ),
	'type'    => 'radio',
	'desc'    => __( 'Choose whether to use the ID or the order number as name of the folder where you want to store the files linked to a specific order.', 'yith-woocommerce-additional-uploads' ),
	'id'      => 'ywau_folder_by_order_type',
	'options' => array(
		'order_id'     => __( 'Order ID', 'yith-woocommerce-additional-uploads' ),
		'order_number' => __( 'Order number', 'yith-woocommerce-additional-uploads' ),
	),
	'default' => 'order_id',
);

$general_options['general']["ywau_split_products_on_cart"] = array(
	'name'    => __( 'Split products on cart', 'yith-woocommerce-additional-uploads' ),
	'type'    => 'checkbox',
	'desc'    => __( 'Choose whether to use standard WooCommerce behaviour that groups more items of the same products in one line, giving users the possibility to  upload the same files for all the items (e.g. 3 exact copies of the same "Fashion Calendar") or to add to cart one item for each line and allow users to upload different files for each item (e.g. 3 items of "Fashion Calendar" with different pictures each). <a href="http://yithemes.com/docs-plugins/yith-woocommerce-uploads/04-uploads-rules.html" title="' . __( "Learn more", 'yith-woocommerce-additional-uploads' ) . '">' . __( "Learn more", 'yith-woocommerce-additional-uploads' ) . '</a>', 'yith-woocommerce-additional-uploads' ),
	'id'      => 'ywau_split_products_on_cart',
	'default' => 'no',
);

$general_options['general']["ywau_multi_upload_settings"] = array(
	'name' => __( 'Main upload rules', 'yith-woocommerce-additional-uploads' ),
	'type' => 'ywau_multi_upload_settings',
	'id'   => 'ywau_multi_upload_settings',
);

$general_options['general']['ywau_enable_product_upload'] = array(
	'name'    => __( 'Enable uploads for products', 'yith-woocommerce-additional-uploads' ),
	'desc'    => __( 'Enable the upload rules for products, the customer could attach files to the products, according to the upload rules', 'yith-woocommerce-additional-uploads' ),
	'id'      => 'ywau_enable_product_upload',
	'default' => 'yes',
	'type'    => 'checkbox',
);

$general_options['general']['ywau_enable_product_variations_upload'] = array(
    'name'    => __( 'Enable uploads for products variations', 'yith-woocommerce-additional-uploads' ),
    'desc'    => __( 'Enable the upload rules for products variations by default, the customer could attach files to the products variations, according to the upload rules', 'yith-woocommerce-additional-uploads' ),
    'id'      => 'ywau_enable_product_variations_upload',
    'default' => 'no',
    'type'    => 'checkbox',
);


$general_options['general']['ywau_enable_order_upload'] = array(
	'name'    => __( 'Enable uploads for orders', 'yith-woocommerce-additional-uploads' ),
	'desc'    => __( 'Enable the upload rules for orders, the customer could attach files to the while order, according to the upload rules', 'yith-woocommerce-additional-uploads' ),
	'id'      => 'ywau_enable_order_upload',
	'default' => 'no',
	'type'    => 'checkbox',
);

$general_options['general']['ywau_order_upload_text']       = array(
	'name'    => __( 'Order upload text', 'yith-woocommerce-additional-uploads' ),
	'desc'    => __( 'Set the message to show on cart and checkout pages for uploads attached to the whole order.', 'yith-woocommerce-additional-uploads' ),
	'id'      => 'ywau_order_upload_text',
	'default' => __( "You can customize your order attaching files to the current order.", 'yith-woocommerce-additional-uploads' ),
	'type'    => 'textarea',
	'css'     => 'width:100%',

);

$general_options['general']['ywau_accept_product_file_automatically'] = array(
    'name'    => __( 'Accept upload product automatically', 'yith-woocommerce-additional-uploads' ),
    'desc'    => __( 'Enable this option to automatically accept the uploaded file of the product on the order created after purchasing', 'yith-woocommerce-additional-uploads' ),
    'id'      => 'ywau_accept_product_file_automatically',
    'default' => 'no',
    'type'    => 'checkbox',
);

$general_options['general']['ywau_accept_order_file_automatically'] = array(
    'name'    => __( 'Accept upload order automatically', 'yith-woocommerce-additional-uploads' ),
    'desc'    => __( 'Enable this option to automatically accept the uploaded file of the order created after purchasing', 'yith-woocommerce-additional-uploads' ),
    'id'      => 'ywau_accept_order_file_automatically',
    'default' => 'no',
    'type'    => 'checkbox',
);

$general_options['general']["section_general_settings_end"] = array(
	'type' => 'sectionend',
	'id'   => 'ywau_section_general_end',
);

return $general_options;