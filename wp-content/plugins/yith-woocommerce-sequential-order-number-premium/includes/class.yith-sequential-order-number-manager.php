<?php
if ( ! defined( 'ABSPATH' ) ) {
	exit;
}

if ( ! class_exists( 'YWSON_Manager' ) ) {

	class YWSON_Manager {

		protected static $instance;

		protected $plugin_meta;

		public function __construct() {

			$this->plugin_meta = array(
				'basic' => '_ywson_custom_number_order_complete',
				'free'  => '_ywson_custom_number_order_complete',
				'quote' => 'ywson_custom_quote_number_order'
			);

			//create the sequential order number from admin
			add_action( 'woocommerce_process_shop_order_meta', array(
				$this,
				'save_sequential_order_number'
			), 10, 2 );

			add_action( 'woocommerce_checkout_update_order_meta', array(
				$this,
				'save_sequential_order_number_on_checkout'
			), 10, 1 );

			/**REST API*/
			add_action( 'woocommerce_api_create_order', array( $this, 'save_sequential_order_number' ), 10, 1 );
			add_action( 'woocommerce_new_order', array( $this, 'save_sequential_order_number' ), 10, 1 );

			/*order tracking page*/
			add_filter( 'woocommerce_shortcode_order_tracking_order_id', array(
				$this,
				'get_order_by_custom_order_number'
			) );
			/*print custom order number*/
			add_filter( 'woocommerce_order_number', array( $this, 'get_custom_order_number' ), 10, 1 );

			/**YITH WooCommerce Request a Quote Integration*/
			add_action( 'ywraq_after_create_order', array( $this, 'save_sequential_order_number' ), 10, 1 );
			add_filter( 'ywraq_quote_number', array( $this, 'get_custom_order_number' ), 10, 1 );

			/**YITH WooCommerce Multi Vendor compatibility*/
			add_action( 'yith_wcmv_suborder_created', array( $this, 'save_sequential_order_number' ), 10, 1 );

		}

		/**
		 * @return YWSON_Manager
		 */
		public static function get_instance() {
			if ( is_null( self::$instance ) ) {
				self::$instance = new self();
			}

			return self::$instance;
		}

		/**
		 * check if current module is active
		 * @author Salvatore Strano
		 * @since  1.1.0
		 * @return bool
		 */
		public function is_basic_module_active() {

			$is_active = get_option( 'ywson_enable_base_module', 'yes' );

			return 'yes' == $is_active;
		}

		/**
		 * check if current module is active
		 * @author Salvatore Strano
		 * @since  1.1.0
		 * @return bool
		 */
		public function is_free_module_active() {

			$is_active = get_option( 'ywson_check_custom_free_order', 'no' );

			return 'yes' == $is_active;
		}

		/**
		 * check if current module is active
		 * @author Salvatore Strano
		 * @since  1.1.0
		 * @return bool
		 */
		public function is_quote_module_active() {

			$is_active = get_option( 'ywson_check_custom_quote_order', 'no' );

			return 'yes' == $is_active && ywson_is_raq_active();
		}

		/**
		 * get the right prefix
		 * @author Salvatore Strano
		 * @since  1.1.0
		 *
		 * @param string $type ( basic|free|quote )
		 *
		 * @return string
		 */
		public function get_prefix( $type = 'basic' ) {


			switch ( $type ) {
				case 'free':
					$option_name = 'ywson_free_order_prefix';
					break;
				case 'quote':
					$option_name = 'ywson_quote_order_prefix';
					break;
				default:
					$option_name = 'ywson_order_prefix';
					break;
			}

			return get_option( $option_name, '' );
		}

		/**
		 * get the right suffix
		 * @author Salvatore Strano
		 * @since  1.1.0
		 *
		 * @param string $type ( basic|free|quote )
		 *
		 * @return string
		 */
		public function get_suffix( $type = 'basic' ) {

			switch ( $type ) {
				case 'free':
					$option_name = 'ywson_free_order_suffix';
					break;
				case 'quote':
					$option_name = 'ywson_quote_order_suffix';
					break;
				default:
					$option_name = 'ywson_order_suffix';
					break;
			}

			return get_option( $option_name, '' );
		}

		/**
		 * get the next order number
		 *
		 * @param string $type
		 *
		 * @return int
		 */
		public function get_next_number( $type = 'basic' ) {
			switch ( $type ) {
				case 'free':
					$option_name = 'ywson_start_free_order_number';
					break;
				case 'quote':
					$option_name = 'ywson_start_quote_order_number';
					break;
				default:
					$option_name = 'ywson_start_order_number';
					break;
			}

			global $wpdb;

			$query = $wpdb->prepare( "SELECT option_value AS next_number FROM {$wpdb->options} WHERE option_name = %s ", $option_name );

			$value = absint( $wpdb->get_var( $query ) );

			$this->update_next_number( $value, $option_name );

			return $value;
		}

		/**
		 * update the next number option
		 *
		 * @param int    $current_number
		 * @param string $option_name
		 *
		 * @return false|int
		 */
		public function update_next_number( $current_number, $option_name ) {

			$current_number += 1;

			global $wpdb;

			$update_args = array(
				'option_value' => $current_number,
			);

			return $wpdb->update( $wpdb->options, $update_args, array( 'option_name' => $option_name ) );
		}

		/**
		 * return the sequential order number formatted
		 * @author Salvatore Strano
		 * @since  1.1.0
		 *
		 * @param WC_Order $order
		 * @param string   $type
		 *
		 * @return string
		 */
		public function get_formatted_sequential_order_number( $order, $type = 'basic' ) {

			$order_date = apply_filters( 'ywson_order_date', current_time( 'timestamp', 0 ), $order->get_id() );

			$prefix = apply_filters( 'yith_sequential_order_number_prefix', $this->format_string_with_date( $this->get_prefix( $type ), $order_date ), $this->get_prefix( $type ), $order_date ) ;
			$suffix = apply_filters( 'yith_sequential_order_number_suffix', $this->format_string_with_date( $this->get_suffix( $type ), $order_date  ), $this->get_suffix( $type ), $order_date );
			$number = apply_filters( 'ywson_next_number_order', $this->get_next_number( $type ) );

			$order_number = $prefix . $number . $suffix;

			return apply_filters( 'ywson_get_formatted_sequential_order_number', $order_number, $order, $type );

		}

		/**
		 * replace in prefix or suffix the placeholder
		 * @author Salvatore Strano
		 * @since  1.1.0
		 *
		 * @param string $string
		 * @param int    $date ( timestamp )
		 *
		 * @return string
		 */
		public function format_string_with_date( $string, $date ) {

			$string = str_replace(
				array( '[D]', '[DD]', '[M]', '[MM]', '[YY]', '[YYYY]', '[h]', '[hh]', '[m]', '[s]' ),
				array(
					date( 'j', $date ),
					date( 'd', $date ),
					date( 'n', $date ),
					date( 'm', $date ),
					date( 'y', $date ),
					date( 'Y', $date ),
					date( 'G', $date ),
					date( 'H', $date ),
					date( 'i', $date ),
					date( 's', $date )
				),
				$string
			);

			return $string;
		}

		/**check if this order is free
		 * @author YITH
		 * @since  1.1.0
		 *
		 * @param WC_Order $order
		 *
		 * @return bool
		 */
		private function is_order_free( $order ) {

			$type_free = get_option( 'ywson_free_order_type' );
			$free      = true;
			switch ( $type_free ) {

				case 'order_tot' :
					$total = floatval( preg_replace( '#[^\d.]#', '', $order->get_total() ) );
					if ( $total != 0 ) {
						$free = false;
					}
					break;

				case 'product_ord' :

					$product_in_order = $order->get_items();
					$free             = true;
					foreach ( $product_in_order as $product ) {
						if ( $product['line_total'] > 0 ) {
							$free = false;
							break;
						}
					}
					break;
			}

			return $free;
		}

		/**
		 * generate a new sequential when create a order from backend
		 * @author Salvatore Strano
		 * @since  1.1.0
		 * @see    woocommerce_process_shop_order_meta
		 *
		 * @param int           $post_id
		 * @param WP_Post|array $post
		 *
		 */
		public function save_sequential_order_number( $post_id, $post = array() ) {

			$order = wc_get_order( $post_id );

			$this->generate_sequential_order_number( $order );

		}

		/**
		 * generate a new sequential on checkout page
		 * @author Salvatore Strano
		 * @since  1.1.0
		 * @see    woocommerce_checkout_update_order_meta
		 *
		 * @param int $order_id
		 */
		public function save_sequential_order_number_on_checkout( $order_id ) {

			$order = wc_get_order( $order_id );

			$this->generate_sequential_order_number( $order );
		}

		/**
		 * generate a new sequential order number
		 * @author Salvatore Strano
		 * @since  1.1.0
		 *
		 * @param WC_Order $order
		 */
		public function generate_sequential_order_number( $order ) {
			$order_status = $order->get_status();

			if ( ( ( 'draft' == $order_status && isset( $_REQUEST['yit_metaboxes']['ywraq_raq'] ) ) || ( 'ywraq-new' == $order_status ) ) && $this->is_quote_module_active() ) {
				$this->create_order_number( $order, 'quote' );
			} elseif ( $this->is_free_module_active() && $this->is_order_free( $order ) ) {
				$this->create_order_number( $order, 'free' );
			} elseif ( $this->is_basic_module_active() ) {
				$this->create_order_number( $order );
			}
		}


		/**
		 * @param WC_Order $order
		 * @param string   $type
		 */
		public function create_order_number( $order, $type = 'basic' ) {

			$number_meta_key = $this->plugin_meta[ $type ];

			$number_meta = $order->get_meta( $number_meta_key );

			if ( empty( $number_meta ) ) {

				$number_meta = $this->get_formatted_sequential_order_number( $order, $type );

				$order->update_meta_data( $number_meta_key, $number_meta );
				$order->save();
			}
		}

		/**
		 * @param int $order_id
		 * return string
		 */
		public function get_custom_order_number( $order_id ) {

			$order = wc_get_order( $order_id );

			if ( ! $order ) {
				return $order_id;
			}

			$order_status = $order->get_status();
			$quote_status = function_exists( 'YITH_YWRAQ_Order_Request' ) ? YITH_YWRAQ_Order_Request()->get_quote_order_status() : array();
			$quote_status = array_keys( $quote_status );

			$type = 'basic';


			if ( 'ywraq_quote_number' === current_filter() || ( count( $quote_status ) > 0 && in_array( 'wc-' . $order_status, $quote_status ) ) ) {
				$type = 'quote';
			}

			$number_meta_key = $this->plugin_meta[ $type ];
			$number_meta     = $order->get_meta( $number_meta_key );

			$custom_order_number = empty( $number_meta ) ? $order_id : $number_meta;
			return apply_filters( 'yith_son_get_order_number', $custom_order_number, $order_id, $number_meta );
		}

		/**
		 * return the right order id
		 * @author Salvatore Strano
		 * @since  1.1.0
		 *
		 * @param int $order_id
		 *
		 * @return int
		 */
		public function get_order_by_custom_order_number( $order_id ) {

			global $wpdb;

			$meta_key = $this->plugin_meta['basic'];

			$query  = $wpdb->prepare( "SELECT post_id FROM {$wpdb->postmeta} 
										  WHERE {$wpdb->postmeta}.meta_key = %s AND {$wpdb->postmeta}.meta_value = %s LIMIT 1", $meta_key, $_REQUEST['orderid'] );
			$result = $wpdb->get_var( $query );

			return empty( $result ) ? $order_id : $result;
		}

	}
}

/**
 * @return YWSON_Manager
 */
function YWSON_Manager() {
	return YWSON_Manager::get_instance();
}