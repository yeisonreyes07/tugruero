<?php
/*
Plugin Name: Multi Currency for WooCommerce
Plugin URI: http://villatheme.com
Description: Allows display prices and accepts payments in multiple currencies. Working only with WooCommerce.
Version: 2.1.3.1
Author: VillaTheme
Author URI: http://villatheme.com
Copyright 2016-2018 VillaTheme.com. All rights reserved.
Text-domain: woo-multi-currency
Tested up to: 5.0.2
WC requires at least: 3.0.0
WC tested up to: 3.5.3
*/
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}
define( 'WOOMULTI_CURRENCY_F_VERSION', '2.1.3.1' );
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

		$data_init = 'eyJhdXRvX2RldGVjdCI6IjAiLCJlbmFibGVfZGVzaWduIjoiMSIsImRlc2lnbl90aXRsZSI6IlNlbGVjdCB5b3VyIGN1cnJlbmN5IiwiZGVzaWduX3Bvc2l0aW9uIjoiMSIsInRleHRfY29sb3IiOiIjZmZmZmZmIiwibWFpbl9jb2xvciI6IiNmNzgwODAiLCJiYWNrZ3JvdW5kX2NvbG9yIjoiIzIxMjEyMSIsImlzX2NoZWNrb3V0IjoiMSIsImlzX2NhcnQiOiIxIiwiY29uZGl0aW9uYWxfdGFncyI6IiIsImZsYWdfY3VzdG9tIjoiIiwiY3VzdG9tX2NzcyI6IiIsImVuYWJsZV9tdWx0aV9wYXltZW50IjoiMSIsInVwZGF0ZV9leGNoYW5nZV9yYXRlIjoiMCIsImZpbmFuY2VfYXBpIjoiMCIsInJhdGVfZGVjaW1hbHMiOiIzIiwia2V5IjoiIn0=';
		if ( ! get_option( 'woo_multi_currency_params', '' ) ) {
			update_option( 'woo_multi_currency_params', json_decode( base64_decode( $data_init ), true ) );
		}
	}

	/**
	 * When deactive function will be call
	 */
	public function uninstall() {

	}
}

new WOOMULTI_CURRENCY_F();