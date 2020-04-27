<?php
/**
 * Plugin Name: Multi Currency for WooCommerce
 * Plugin URI: http://villatheme.com
 * Description: Allows display prices and accepts payments in multiple currencies. Working only with WooCommerce.
 * Version: 2.1.3.3
 * Author: VillaTheme
 * Author URI: http://villatheme.com
 * Copyright 2016-2018 VillaTheme.com. All rights reserved.
 * Text-domain: woo-multi-currency
 * Tested up to: 5.1.1
 * WC requires at least: 3.0.0
 * WC tested up to: 3.5.7
 */
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
define( 'WOOMULTI_CURRENCY_F_VERSION', '2.1.3.3' );
/**
 * Detect plugin. For use on Front End only.
 */

include_once( ABSPATH . 'wp-admin/includes/plugin.php' );
if ( is_plugin_active( 'woocommerce-multi-currency/woocommerce-multi-currency.php' ) ) {
	return;
}
if ( is_plugin_active( 'woocommerce/woocommerce.php' ) ) {
	$init_file = WP_PLUGIN_DIR . DIRECTORY_SEPARATOR . 'woo-multi-currency' . DIRECTORY_SEPARATOR . "includes" . DIRECTORY_SEPARATOR . "define.php";
	require_once $init_file;
}

/**
 * Class WOOMULTI_CURRENCY_F
 */
class WOOMULTI_CURRENCY_F {
	public function __construct() {

		register_activation_hook( __FILE__, array( $this, 'install' ) );
		register_deactivation_hook( __FILE__, array( $this, 'uninstall' ) );
		add_action( 'admin_notices', array( $this, 'global_note' ) );

	}

	/**
	 * Notify if WooCommerce is not activated
	 */
	function global_note() {
		if ( ! is_plugin_active( 'woocommerce/woocommerce.php' ) ) {
			?>
            <div id="message" class="error">
                <p><?php _e( 'Please install and active WooCommerce. WooCommerce Multi Currency is going to working.', 'woo-multi-currency' ); ?></p>
            </div>
			<?php
		}
		if ( is_plugin_active( 'woo-multi-currency-pro/woo-multi-currency-pro.php' ) ) {
			deactivate_plugins( 'woo-multi-currency-pro/woo-multi-currency-pro.php' );
			unset( $_GET['activate'] );
		}

	}

	/**
	 * When active plugin Function will be call
	 */
	public function install() {
		global $wp_version;
		if ( version_compare( $wp_version, "4.4", "<" ) ) {
			deactivate_plugins( basename( __FILE__ ) ); // Deactivate our plugin
			wp_die( "This plugin requires WordPress version 2.9 or higher." );
		}

		$data_init = array(
			"auto_detect"          => "0",
			"enable_design"        => "1",
			"design_title"         => "Select your currency",
			"design_position"      => "1",
			"text_color"           => "#ffffff",
			"main_color"           => "#f78080",
			"background_color"     => "#212121",
			"is_checkout"          => "1",
			"is_cart"              => "1",
			"conditional_tags"     => "",
			"flag_custom"          => "",
			"custom_css"           => "",
			"enable_multi_payment" => "1",
			"update_exchange_rate" => "0",
			"finance_api"          => "0",
			"rate_decimals"        => "3",
			"key"                  => "",
		);
		if ( ! get_option( 'woo_multi_currency_params', '' ) ) {
			update_option( 'woo_multi_currency_params', $data_init );
		}
	}

	/**
	 * When deactive function will be call
	 */
	public function uninstall() {

	}
}

new WOOMULTI_CURRENCY_F();