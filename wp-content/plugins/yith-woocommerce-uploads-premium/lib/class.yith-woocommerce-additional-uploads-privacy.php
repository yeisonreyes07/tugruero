<?php
if ( ! defined( 'ABSPATH' ) ) {
    exit; // Exit if accessed directly
}

/**
 * Implements features of PREMIUM version of YWAU plugin
 *
 * @class   YITH_WooCommerce_Additional_Uploads_Privacy
 * @package Yithemes
 * @since   1.2.2
 * @author  Daniel Sanchez Saez
 */
if ( ! class_exists( 'YITH_WooCommerce_Additional_Uploads_Privacy' ) ) {

    class YITH_WooCommerce_Additional_Uploads_Privacy extends YITH_Privacy_Plugin_Abstract
    {

        /**
         * Init - hook into events.
         */
        public function __construct()
        {

            /**
             * GDRP privacy policy content
             */
            parent::__construct( _x( 'YITH Additional Uploads for WooCommerce premium', 'Privacy Policy Content', 'yith-woocommerce-additional-uploads' ) );

            /**
             * GDRP to export order personal data
             */

            add_filter( 'woocommerce_privacy_export_order_personal_data_props', array( $this, 'woocommerce_privacy_export_order_personal_data_props_call_back' ), 10, 1 );

            add_filter( 'woocommerce_privacy_export_order_personal_data_prop', array( $this, 'woocommerce_privacy_export_order_personal_data_prop_call_back' ), 10, 3 );


            /**
             * GDRP to erase order personal data
             */

            add_filter( 'woocommerce_privacy_erase_order_personal_data', array( $this, 'woocommerce_privacy_erase_order_personal_data_call_back' ), 10, 2 );

        }

        /**
         * Add privacy policy content for the privacy policy page.
         *
         * @since 1.2.2
         */
        public function get_privacy_message( $section ) {

            $privacy_content_path = YITH_YWAU_VIEWS_PATH . '/privacy/html-policy-content-' . $section . '.php';

            if ( file_exists( $privacy_content_path ) ) {

                ob_start();

                include $privacy_content_path;

                return ob_get_clean();

            }

            return '';

        }

        /**
         * GDPR erase order_metas to the filter hook of WooCommerce to erase personal order data associated with an email address.
         *
         * @since 1.2.2
         *
         * @param  boolean $erasure_enabled.
         * @param  object $order.
         * @return boolean
         */
        function woocommerce_privacy_erase_order_personal_data_call_back( $erasure_enabled, $order )
        {

            if ( $erasure_enabled ){

                $order_additional_uploads = yit_get_prop( $order, YWAU_METAKEY_ORDER_ITEM_FILES, true );

                if ( $order_additional_uploads ){

                    update_post_meta( $order->get_id(), YWAU_METAKEY_ORDER_ITEM_FILES, '' );

                }

                foreach ( $order->get_items ( 'line_item' ) as $order_item_id => $order_item_data ) {

                    $order_additional_uploads = wc_get_order_item_meta( $order_item_id, YWAU_METAKEY_ORDER_ITEM_FILES );

                    if ( ! $order_additional_uploads )
                        continue;

                    wc_update_order_item_meta ( $order_item_id, YWAU_METAKEY_ORDER_ITEM_FILES, '' );

                }

            }

            return $erasure_enabled;

        }

        /**
         * GDPR add order_meta to the filter hook of WooCommerce to export personal order data associated with an email address.
         *
         * @since 1.2.2
         *
         * @param  array $array_meta_to_export meta_orders.
         * @return array
         */
        function woocommerce_privacy_export_order_personal_data_props_call_back( $array_meta_to_export )
        {

            $array_meta_to_export[ YWAU_METAKEY_ORDER_ITEM_FILES ] = __( 'Additional uploads', 'yith-woocommerce-additional-uploads' );

            return $array_meta_to_export;

        }

        /**
         * GDPR retrieve the value order_meta to add to the filer hook of WooCommerce to export personal order data associated with an email address.
         *
         * @since 1.2.2
         *
         * @param  string $value value of meta_order.
         * @param  string $prop meta_order
         * @param  object $order
         * @return string
         */
        function woocommerce_privacy_export_order_personal_data_prop_call_back( $value, $prop, $order )
        {

            $array_props = array(
                YWAU_METAKEY_ORDER_ITEM_FILES,
            );

            if ( in_array( $prop, $array_props ) ){

                $order_additional_uploads = yit_get_prop( $order, $prop, true );

                if ( $order_additional_uploads ){

                    $already_added_to_value = false;

                    foreach ( $order_additional_uploads as $order_additional_upload ){

                        $array_order_additional_upload = explode("/", $order_additional_upload[1][ 'upload_filepath' ] );
                        $file_name = $array_order_additional_upload[ count( $array_order_additional_upload ) -1 ];

                        if ( $already_added_to_value )
                            $value .= "<br>";

                        $value .= _x( 'Additional Order Upload: ', 'Privacy Policy Content', 'yith-woocommerce-additional-uploads' ) . $file_name ;

                        $already_added_to_value = true;

                    }

                }

                foreach ( $order->get_items ( 'line_item' ) as $order_item_id => $order_item_data ) {

                    $order_additional_uploads = wc_get_order_item_meta( $order_item_id, YWAU_METAKEY_ORDER_ITEM_FILES );

                    if ( ! $order_additional_uploads )
                        continue;

                    foreach ( $order_additional_uploads as $order_additional_upload ) {

                        $array_order_additional_upload = explode("/", $order_additional_upload[1][ 'upload_filepath' ] );
                        $file_name = $array_order_additional_upload[ count( $array_order_additional_upload ) -1 ];

                        if ( $already_added_to_value )
                            $value .= "<br>";

                            $value .= _x( 'Additional Product Upload: ', 'Privacy Policy Content', 'yith-woocommerce-additional-uploads' ) . $file_name ;

                        $already_added_to_value = true;
                    }

                }

            }

            return $value;

        }

    }

}

new YITH_WooCommerce_Additional_Uploads_Privacy();
