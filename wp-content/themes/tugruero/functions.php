<?php
/**
 * tugruero functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package tugruero
 */

if ( ! function_exists( 'tugruero_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function tugruero_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on tugruero, use a find and replace
		 * to change 'tugruero' to the name of your theme in all the template files.
		 */
		load_theme_textdomain( 'tugruero', get_template_directory() . '/languages' );

		// Add default posts and comments RSS feed links to head.
		add_theme_support( 'automatic-feed-links' );

		/*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
		add_theme_support( 'title-tag' );

		/*
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
		add_theme_support( 'post-thumbnails' );

		// This theme uses wp_nav_menu() in one location.
		register_nav_menus( array(
			'menu-1' => esc_html__( 'Primary', 'tugruero' ),
		) );

		/*
		 * Switch default core markup for search form, comment form, and comments
		 * to output valid HTML5.
		 */
		add_theme_support( 'html5', array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
		) );

		// Set up the WordPress core custom background feature.
		add_theme_support( 'custom-background', apply_filters( 'tugruero_custom_background_args', array(
			'default-color' => 'ffffff',
			'default-image' => '',
		) ) );

		// Add theme support for selective refresh for widgets.
		add_theme_support( 'customize-selective-refresh-widgets' );

		/**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		) );
	}
endif;
add_action( 'after_setup_theme', 'tugruero_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function tugruero_content_width() {
	// This variable is intended to be overruled from themes.
	// Open WPCS issue: {@link https://github.com/WordPress-Coding-Standards/WordPress-Coding-Standards/issues/1043}.
	// phpcs:ignore WordPress.NamingConventions.PrefixAllGlobals.NonPrefixedVariableFound
	$GLOBALS['content_width'] = apply_filters( 'tugruero_content_width', 640 );
}
add_action( 'after_setup_theme', 'tugruero_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function tugruero_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'tugruero' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'tugruero' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar Currency', 'tugruero' ),
		'id'            => 'sidebar-2',
		'description'   => esc_html__( 'Add widgets here.', 'tugruero' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h2 class="widget-title">',
		'after_title'   => '</h2>',
	) );
}
add_action( 'widgets_init', 'tugruero_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function tugruero_scripts() {
	wp_enqueue_style( 'tugruero-style', get_stylesheet_uri() );

	wp_enqueue_script( 'tugruero-navigation', get_template_directory_uri() . '/js/navigation.js', array(), '20151215', true );

	wp_enqueue_script( 'tugruero-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'tugruero_scripts' );

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Load Jetpack compatibility file.
 */
if ( defined( 'JETPACK__VERSION' ) ) {
	require get_template_directory() . '/inc/jetpack.php';
}

//Insertar Javascript js y enviar ruta admin-ajax.php
add_action('wp_enqueue_scripts', 'dcms_insertar_js');

function dcms_insertar_js(){
	wp_register_script('dcms_miscript', get_template_directory_uri(). '/js/ajax.js', array('jquery'), '1', true );
	wp_enqueue_script('dcms_miscript');

	wp_localize_script('dcms_miscript','dcms_vars',['ajaxurl'=>admin_url('admin-ajax.php')]);
}


add_action( 'wp_ajax_nopriv_bbloomer_add_product_to_cart', 'bbloomer_add_product_to_cart' );
add_action( 'wp_ajax_bbloomer_add_product_to_cart', 'bbloomer_add_product_to_cart' );

function bbloomer_add_product_to_cart() {
          
	// select ID
	          
	//check if product already in cart
	global $woocommerce;
	$woocommerce->cart->empty_cart(); 
	
	if ( WC()->cart->get_cart_contents_count() == 0 ) {
	 
		// if no products in cart, add it
		WC()->cart->add_to_cart( $_POST['id'], $_POST['quantity'] );
	          
	}
  
}


add_action( 'wp_ajax_nopriv_bbloomer_empty_products_to_cart', 'bbloomer_empty_products_to_cart' );
add_action( 'wp_ajax_bbloomer_empty_products_to_cart', 'bbloomer_empty_products_to_cart' );

function bbloomer_empty_products_to_cart() {
          
	// select ID
	          
	//check if product already in cart
	
	global $woocommerce;
	$woocommerce->cart->empty_cart();
     
}

function woocommerce_button_proceed_to_checkout() {
	$checkout_url = WC()->cart->get_checkout_url();
	?>
	<a href="<?php echo $checkout_url; ?>" class="checkout-button button alt wc-forward"><?php _e( 'Siguiente', 'woocommerce' ); ?></a>
	<?php
  }

  add_filter( 'woocommerce_billing_fields', 'bbloomer_move_checkout_email_field', 10, 1 );
 
  function bbloomer_move_checkout_email_field( $address_fields ) {
	  #print_r($address_fields);
	  $address_fields['billing_first_name']['priority'] = 1;
	  $address_fields['billing_last_name']['priority'] = 2;
		$address_fields['billing_myfield11']['priority'] = 3;
		$address_fields['billing_myfield12']['priority'] = 4;
	  $address_fields['billing_phone']['priority'] = 6;
	  $address_fields['billing_myfield13']['priority'] = 6;
	  $address_fields['billing_myfield14']['priority'] = 7;
	  $address_fields['billing_email']['priority'] = 8;
		$address_fields['billing_myfield15']['priority'] = 9;
		$address_fields['billing_address_1']['priority'] = 10;
	  $address_fields['billing_address_2']['priority'] = 11;
	  $address_fields['billing_state']['priority'] = 12;
	  $address_fields['billing_city']['priority'] = 13;
	  $address_fields['billing_postcode']['priority'] = 14;
	  $address_fields['billing_myfield16']['priority'] = 15;
	  $address_fields['billing_myfield17']['priority'] = 16;
	  #$address_fields['billing_myfield26']['priority'] = 8;
	  #$address_fields['billing_myfield27']['priority'] = 9;
	  
	  $address_fields['billing_myfield18']['priority'] = 17;
	  $address_fields['billing_myfield19']['priority'] = 18;
	  $address_fields['billing_myfield20']['priority'] = 19;
	  $address_fields['billing_myfield21']['priority'] = 20;
	  $address_fields['billing_myfield22']['priority'] = 21;
	  $address_fields['billing_myfield23']['priority'] = 22;
	  $address_fields['billing_myfield24']['priority'] = 23;
	  /*global $woocommerce;
		
		$items = $woocommerce->cart->get_cart();
		foreach($items as $item => $values) {
			$i=0;
			for($ii= 0; $ii< $values['quantity']; $ii++){
				$address_fields['billing_options'.$i] = array(
					'label' => __('NIF'.$i, 'woocommerce'), // Add custom field label
					'placeholder' => _x('Your NIF here....', 'placeholder', 'woocommerce'), // Add custom field placeholder
					'required' => false, // if field is required or not
					'clear' => false, // add clear or not
					'type' => 'text', // add field type
					'class' => array('form-row-first'),
					'required'=> true,    // add class name
				);
				$address_fields['billing_options'.$i]['priority'] = 100+$i;
				$i++;
			}
		}*/
		return $address_fields;
  }
  function cosas($id = "")
	{
		global $woocommerce;
		$items = $woocommerce->cart->get_cart();
		echo '<div class="resumen-cart '.$id.'">';
		foreach($items as $item => $values) { 
			echo "<div class='paso'>Paso <span class='pas'>1</span><span class='pastotal'>/3</span></div>";
			echo "<h6>Resumen de compra</h6>";
			$_product =  wc_get_product( $values['data']->get_id()); 
			echo "<div class='producto'>".$_product->get_title().' (incluye RCV)</div>'; 
			// $price = get_woocommerce_currency_symbol()." ".money_format('%i',$values['quantity']*$_product->get_price());
			$price = get_woocommerce_currency_symbol()." ".$values['quantity']*$_product->get_price();
			// $price = number_format($price, 2, ',', '.');
			$axu=explode(" ",$price);
			$prece2= number_format($axu[1], 2, ',', '.');
			echo "<div class='pago'>Total a pagar: ".$prece2." ".$axu[0]."</div>";
		}
		echo "</div>"; 
	}
	function cosas3()
	{
		global $woocommerce;
		$items = $woocommerce->cart->get_cart();
		echo '<div class="resumen-cart">';
		foreach($items as $item => $values) { 
			echo "<h6>Resumen de compra</h6>";
			echo "<div class='paso'>Paso <span class='pas'>3</span><span class='pastotal'>/3</span></div>";
			$_product =  wc_get_product( $values['data']->get_id()); 
			echo "<div class='producto'>".$_product->get_title().'</div>'; 
			// $price = get_woocommerce_currency_symbol()." ".money_format('%i',$values['quantity']*$_product->get_price());
			$price = get_woocommerce_currency_symbol()." ".$values['quantity']*$_product->get_price();
			echo "<div class='pago'>Total a pagar: ".$price."</div>";
		}
		echo "</div>"; 
	}
	
#add_filter('wp_nav_menu_items', 'add_login_logout_link', 10, 2);
/*function add_login_logout_link($items, $args) {
        ob_start();
        wp_loginout('/');
        $loginoutlink = ob_get_contents();
        ob_end_clean();
        $items .= '<li>'. $loginoutlink .'</li>';
    return $items;
}*/


