<?php
/**
 * WMSC_Compatibilities. Compatibilities with other themes or plugins.
 *
 * @package WPMultiStepCheckout
 */

defined( 'ABSPATH' ) || exit;


/**
 * WMSC_Compatibilities class.
 */
class WMSC_Compatibilities {
	/**
	 * Initiate the class.
	 */
	public static function init() {
		add_action( 'wp_enqueue_scripts', 'WMSC_Compatibilities::wp_enqueue_scripts', 40 );
		add_action( 'after_setup_theme', 'WMSC_Compatibilities::after_setup_theme' );

		self::adjust_hooks();
	}

	/**
	 * CSS adjustments to themes and plugins.
	 */
	public static function wp_enqueue_scripts() {
		if ( ! is_checkout() ) {
			return;
		}

		$theme = strtolower( get_template() );

		$style = '';

		/*
		 * Avada theme.
		 */
		if ( strpos( $theme, 'avada' ) !== false ) {
			$style .= '.wpmc-nav-wrapper { float: left; margin-top: 10px; }';
			$style .= '.woocommerce-checkout a.continue-checkout{display: none;}';
			$style .= '.woocommerce-error,.woocommerce-info,.woocommerce-message{padding:1em 2em 1em 3.5em;margin:0 0 2em;position:relative;background-color:#f7f6f7;color:#515151;border-top:3px solid #a46497;list-style:none outside;width:auto;word-wrap:break-word}.woocommerce-error::after,.woocommerce-error::before,.woocommerce-info::after,.woocommerce-info::before,.woocommerce-message::after,.woocommerce-message::before{content:" ";display:table}.woocommerce-error::after,.woocommerce-info::after,.woocommerce-message::after{clear:both}.woocommerce-error .button,.woocommerce-info .button,.woocommerce-message .button{float:right}.woocommerce-error li,.woocommerce-info li,.woocommerce-message li{list-style:none outside!important;padding-left:0!important;margin-left:0!important}.rtl.woocommerce .price_label,.rtl.woocommerce .price_label span{direction:ltr;unicode-bidi:embed}.woocommerce-message{border-top-color:#8fae1b}.woocommerce-info{border-top-color:#1e85be}.woocommerce-info::before{color:#1e85be}.woocommerce-error{border-top-color:#b81c23}.woocommerce-checkout .shop_table td, .woocommerce-checkout .shop_table th {padding: 10px}.woocommerce .single_add_to_cart_button, .woocommerce button.button {margin-top: 10px}';
			$style .= '.woocommerce .woocommerce-form-coupon-toggle { display: none; }';
			$style .= '.woocommerce form.checkout #order_review, .woocommerce form.checkout #order_review_heading, .woocommerce form.checkout .col-2 {display:block!important;}';
			$style .= '.woocommerce .checkout_coupon { display: flex !important; }';
		}

		/*
		 * The Retailer theme.
		 */
		if ( strpos( $theme, 'theretailer' ) !== false ) {
			$style .= '.woocommerce .wpmc-nav-buttons button.button { display: none !important; }';
			$style .= '.woocommerce .wpmc-nav-buttons button.button.current { display: inline-block !important; }';
		}

		/*
		 * Divi theme.
		 */
		if ( strpos( $theme, 'divi' ) !== false ) {
			$style .= '#wpmc-back-to-cart:after, #wpmc-prev:after { display: none; }';
			$style .= '#wpmc-back-to-cart:before, #wpmc-prev:before{ position: absolute; left: 1em; margin-left: 0em; opacity: 0; font-family: "ETmodules"; font-size: 32px; line-height: 1em; content: "\34"; -webkit-transition: all 0.2s; -moz-transition: all 0.2s; transition: all 0.2s; }';
			$style .= '#wpmc-back-to-cart:hover, #wpmc-prev:hover { padding-right: 0.7em; padding-left: 2em; left: 0.15em; }';
			$style .= '#wpmc-back-to-cart:hover:before, #wpmc-prev:hover:before { left: 0.2em; opacity: 1;}';
		}

		/*
		 * Enfold theme.
		 */
		if ( strpos( $theme, 'enfold' ) !== false ) {
			$style .= '.wpmc-footer-right { width: auto; }';
		}

		/*
		 * Flatsome theme.
		 */
		if ( strpos( $theme, 'flatsome' ) !== false ) {
			$style .= '.processing::before, .loading-spin { content: none !important; }';
			$style .= '.wpmc-footer-right button.button { margin-right: 0; }';
		}

		/*
		 * Bridge theme.
		 */
		if ( strpos( $theme, 'bridge' ) !== false ) {
			$style .= '.woocommerce input[type="text"]:not(.qode_search_field), .woocommerce input[type="password"], .woocommerce input[type="email"], .woocommerce textarea, .woocommerce-page input[type="tel"], .woocommerce-page input[type="text"]:not(.qode_search_field), .woocommerce-page input[type="password"], .woocommerce-page input[type="email"], .woocommerce-page textarea, .woocommerce-page select { width: 100%; }';
			$style .= '.woocommerce-checkout table.shop_table { width: 100% !important; }';
		}

		/*
		 * Zass theme.
		 */
		if ( strpos( $theme, 'zass' ) !== false ) {
			$style .= 'form.checkout.woocommerce-checkout.processing:after {content: "";}.woocommerce form.checkout.woocommerce-checkout.processing:before {display: none;}';
		}

		/*
		 * Flatsome theme.
		 */
		add_filter( 'wmsc_js_variables', 'WMSC_Compatibilities::flatsome_scroll_top' );

		/*
		 * Astra theme.
		 */
		if ( strpos( $theme, 'astra' ) !== false ) {
			$style .= '.woocommerce.woocommerce-checkout form #order_review, .woocommerce.woocommerce-checkout form #order_review_heading, .woocommerce-page.woocommerce-checkout form #order_review, .woocommerce-page.woocommerce-checkout form #order_review_heading {width: auto; float:none}';
			$style .= '.woocommerce.woocommerce-checkout form #order_review_heading, .woocommerce-page.woocommerce-checkout form #order_review_heading { border:none; margin:0; padding:0; font-size:1.6rem; }';
			$style .= '.woocommerce.woocommerce-checkout form #order_review, .woocommerce-page.woocommerce-checkout form #order_review { border:none; padding:0; }';
		}

		/*
		 * WPBakery (former Visual Composer) plugin.
		 */
		if ( defined( 'WPB_VC_VERSION' ) ) {
			$style .= '.woocommerce-checkout .wpb_column .vc_column-inner::after{clear:none !important; content: none !important;}';
			$style .= '.woocommerce-checkout .wpb_column .vc_column-inner::before{content: none !important;}';
		}

		/*
		 * Germanized for WooCommerce plugin.
		 */
		if ( class_exists( 'WooCommerce_Germanized' ) ) {
			$style .= '#order_review_heading {display: block !important;} h3#order_payment_heading { display: none !important; }';
		}

		wp_add_inline_style( 'wpmc', $style );
	}

	/**
	 * Hook adjustments to themes and plugins.
	 */
	public static function after_setup_theme() {

		$theme = strtolower( get_template() );

		/*
		 * Avada theme.
		 */
		if ( strpos( $theme, 'avada' ) !== false ) {
			if ( function_exists( 'avada_woocommerce_before_checkout_form' ) ) {
				remove_action( 'woocommerce_before_checkout_form', 'avada_woocommerce_before_checkout_form' );
			}

			if ( function_exists( 'avada_woocommerce_checkout_after_customer_details' ) ) {
				remove_action( 'woocommerce_checkout_after_customer_details', 'avada_woocommerce_checkout_after_customer_details' );
			}

			if ( function_exists( 'avada_woocommerce_checkout_before_customer_details' ) ) {
				remove_action( 'woocommerce_checkout_before_customer_details', 'avada_woocommerce_checkout_before_customer_details' );
			}
			global $avada_woocommerce;

			if ( ! empty( $avada_woocommerce ) ) {
				remove_action( 'woocommerce_before_checkout_form', array( $avada_woocommerce, 'avada_top_user_container' ), 1 );
				remove_action( 'woocommerce_before_checkout_form', array( $avada_woocommerce, 'checkout_coupon_form' ), 10 );
				remove_action( 'woocommerce_before_checkout_form', array( $avada_woocommerce, 'before_checkout_form' ) );
				remove_action( 'woocommerce_after_checkout_form', array( $avada_woocommerce, 'after_checkout_form' ) );
			}
		}

		/*
		 * Hestia Pro theme.
		 */
		if ( strpos( $theme, 'hestia-pro' ) !== false ) {
			remove_action( 'woocommerce_before_checkout_form', 'hestia_coupon_after_order_table_js' );
		}

		/*
		 * Astra theme.
		 */
		if ( strpos( $theme, 'astra' ) !== false ) {
			add_filter( 'astra_woo_shop_product_structure_override', '__return_true' );
			add_action( 'woocommerce_checkout_shipping', array( WC()->checkout(), 'checkout_form_shipping' ), 20 );
			remove_action( 'woocommerce_after_shop_loop_item', 'woocommerce_template_loop_add_to_cart', 10 );
			add_action( 'woocommerce_after_shop_loop_item', 'astra_woo_woocommerce_shop_product_content' );
		}

		/*
		 * Germanized for WooCommerce plugin.
		 */
		if ( class_exists( 'WooCommerce_Germanized' ) ) {
			remove_action( 'woocommerce_review_order_after_payment', 'woocommerce_gzd_template_render_checkout_checkboxes', 10 );
		}

	}

	/**
	 * Add the content functions to the Payment and Order Review steps.
	 */
	public static function adjust_hooks() {

		if ( class_exists( 'WooCommerce_Germanized' ) ) {
			/*
			 * Germanized for WooCommerce plugin.
			 */
			add_action( 'wmsc_step_content_review', 'wmsc_step_content_review_germanized', 10 );
			add_action( 'wmsc_step_content_payment', 'wmsc_step_content_payment_germanized', 10 );
			add_action( 'wpmc-woocommerce_order_review', 'woocommerce_gzd_template_render_checkout_checkboxes', 10 );
			add_filter( 'wc_gzd_checkout_params', 'WMSC_Compatibilities::wc_gzd_checkout_params' );
			add_filter( 'wp_loaded', 'WMSC_Compatibilities::woocommerce_review_order_after_payment' );
		} elseif ( class_exists( 'Woocommerce_German_Market' ) ) {
			/*
			 * WooCommerce German Market plugin.
			 */
			add_action( 'wmsc_step_content_review', 'wmsc_step_content_review_german_market', 10 );
			add_action( 'wmsc_step_content_payment', 'wmsc_step_content_payment', 10 );
		} else {
			/*
			 * default.
			*/
			add_action( 'wmsc_step_content_review', 'wmsc_step_content_review', 10 );
			add_action( 'wmsc_step_content_payment', 'wmsc_step_content_payment', 10 );
		}
	}

	/**
	 * Override parameters for the Germanized for WooCommerce plugin.
	 *
	 * @param array $params The parameters to be overriden.
	 */
	public static function wc_gzd_checkout_params( $params ) {
		$params['adjust_heading'] = false;
		return $params;
	}

	/**
	 * Remove Terms and Conditions checkboxes from the Payment step for the Germanized for WooCommerce plugin.
	 */
	public static function woocommerce_review_order_after_payment() {
		remove_action( 'woocommerce_review_order_after_payment', 'woocommerce_gzd_template_render_checkout_checkboxes', 10 );
	}

	/**
	 * Scroll to top on Flatsome theme with sticky header.
	 *
	 * @param array $vars Options array.
	 */
	public static function flatsome_scroll_top( $vars ) {
		$vars['scroll_top'] = 120;
		return $vars;
	}
}

WMSC_Compatibilities::init();
