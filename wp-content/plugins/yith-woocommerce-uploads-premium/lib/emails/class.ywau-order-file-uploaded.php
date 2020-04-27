<?php
if ( ! defined ( 'ABSPATH' ) ) {
	exit;
} // Exit if accessed directly

if ( ! class_exists ( "WC_Email" ) ) {
	require_once ( WC ()->plugin_path () . '/includes/emails/class-wc-email.php' );
}

if ( ! class_exists ( "YWAU_Order_File_Uploaded" ) ) {
	/**
	 * A custom Order Email class
	 *
	 * @since 0.1
	 * @extends \WC_Email
	 */
	class YWAU_Order_File_Uploaded extends WC_Email {
		/**
		 * Message sent by admin from the order page
		 *
		 * @var string
		 */
		public $admin_message = '';
		
		/**
		 * @var array elements uploaded that should be notified
		 */
		public $uploaded_elements;
		
		/**
		 * Set email defaults
		 *
		 * @since 0.1
		 */
		public function __construct() {
			$this->id          = 'ywau_order_file_uploaded';
			$this->title       = 'YITH Uploads File Uploaded';
			$this->description = __ ( 'Be notified when the customer upload a file for the order', 'yith-woocommerce-additional-uploads' );
			
			$this->heading = __ ( 'A file has been uploaded by the customer', 'yith-woocommerce-additional-uploads' );
			$this->subject = __ ( '[{site_title}] - Order {order_number}, a new file has been uploaded', 'yith-woocommerce-additional-uploads' );
			
			$this->template_html  = 'emails/ywau-order-file-uploaded.php';
			$this->template_plain = 'emails/plain/ywau-order-file-uploaded.php';
			
			// Trigger on specific action call
			add_action ( 'ywau_email_order_file_uploaded_notification', array( $this, 'trigger' ), 10, 2 );
			
			// Call parent constructor to load any other defaults not explicity defined here
			parent::__construct ();
			
			// this sets the recipient to the settings defined below in init_form_fields()
			$this->recipient = $this->get_option ( 'recipient' );
			
			// if none was entered, just use the WP admin email as a fallback
			if ( ! $this->recipient ) {
				$this->recipient = get_option ( 'admin_email' );
			}
		}
		
		/**
		 * Determine if the email should actually be sent and setup email merge variables
		 *
		 * @param int $order_id
		 */
		public function trigger( $order_id, $uploaded_elements ) {
			
			//  Check if email notification is enabled...
			if ( ! $this->is_enabled () || ! $this->get_recipient () ) {
				return;
			}
			
			//  Check if order id is valid...
			if ( ! $order_id ) {
				return;
			}
			
			// setup order object
			$this->object = wc_get_order ( $order_id );
			$this->uploaded_elements = $uploaded_elements;
			$this->find['order-date'] = '{order_date}';
			$this->find['order-number'] = '{order_number}';
			$this->replace['order-date'] = date_i18n ( wc_date_format (), strtotime ( yit_get_prop ( $this->object, 'order_date' ) ) );
			$this->replace['order-number'] = $this->object->get_order_number ();
			
			// $this->send ( $this->get_recipient (), $this->get_subject (), $this->get_content (), $this->get_headers (), $this->get_attachments () );
			
		}

		/**
		 * get_content_html function.
		 *
		 * @since 0.1
		 * @return string
		 */
		public function get_content_html() {
			ob_start ();
			wc_get_template ( $this->template_html, array(
				'order'             => $this->object,
				'uploaded_elements' => $this->uploaded_elements,
				'email_heading'     => $this->get_heading (),
				'message'           => $this->admin_message,
				'email_type'        => $this->email_type,
				'sent_to_admin'     => false,
				'plain_text'        => false,
			),
				'',
				YITH_YWAU_TEMPLATES_DIR . '/' );
			
			return ob_get_clean ();
		}
		
		/**
		 * get_content_plain function.
		 *
		 * @since 0.1
		 * @return string
		 */
		public function get_content_plain() {
			ob_start ();
			wc_get_template ( $this->template_plain, array(
				'order'         => $this->object,
				'email_heading' => $this->get_heading (),
				'message'       => $this->admin_message,
				'email_type'    => $this->email_type,
				'sent_to_admin' => false,
				'plain_text'    => true,
			) );
			
			return ob_get_clean ();
		}
		
		
		/**
		 * Initialize Settings Form Fields
		 *
		 * @since 0.1
		 */
		public function init_form_fields() {
			$this->form_fields = array(
				'enabled'    => array(
					'title'   => __ ( 'Enable/Disable', 'yith-woocommerce-additional-uploads' ),
					'type'    => 'checkbox',
					'label'   => __ ( 'Enable this email notification', 'yith-woocommerce-additional-uploads' ),
					'default' => 'yes',
				),
				'recipient'  => array(
					'title'       => __ ( 'Recipient(s)', 'yith-woocommerce-additional-uploads' ),
					'type'        => 'text',
					'description' => sprintf ( __ ( 'Enter recipients (comma separated) for this email. Defaults to <code>%s</code>.', 'yith-woocommerce-additional-uploads' ), esc_attr ( get_option ( 'admin_email' ) ) ),
					'placeholder' => '',
					'default'     => '',
				),
				'subject'    => array(
					'title'       => __ ( 'Subject', 'yith-woocommerce-additional-uploads' ),
					'type'        => 'text',
					'description' => sprintf ( __ ( 'Defaults to <code>%s</code>', 'yith-woocommerce-additional-uploads' ), $this->subject ),
					'placeholder' => '',
					'default'     => '',
				),
				'heading'    => array(
					'title'       => __ ( 'Email Heading', 'yith-woocommerce-additional-uploads' ),
					'type'        => 'text',
					'description' => sprintf ( __ ( 'Defaults to <code>%s</code>', 'yith-woocommerce-additional-uploads' ), $this->heading ),
					'placeholder' => '',
					'default'     => '',
				),
				'email_type' => array(
					'title'       => __ ( 'Email type', 'yith-woocommerce-additional-uploads' ),
					'type'        => 'select',
					'description' => __ ( 'Choose which format of email to send.', 'yith-woocommerce-additional-uploads' ),
					'default'     => 'html',
					'class'       => 'email_type wc-enhanced-select',
					'options'     => $this->get_email_type_options (),
				),
			);
		}
	} // end \YWAU_Order_File_Uploaded class
}

return new YWAU_Order_File_Uploaded();
