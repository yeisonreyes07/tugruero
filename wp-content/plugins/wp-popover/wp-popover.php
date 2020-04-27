<?php

/*
 * Plugin Name: WP Popover 
 * Version: 1.0.0
 * Plugin URI:
 * Description: Add popover anywhere in yoursite. 
 * Author: Nurul Amin 
 * Author URI: http://nurul.ninja
 * Requires at least: 4.0
 * Tested up to:
 * License: GPL2
 * Text Domain: wpobp  
 * Domain Path: /lang/
 *
 */

class WPOBPopover {

    public $version = '1.0.0';
    public $text_domain = 'wpobp';
    public $db_version = '1.0.0';
    public $custom_post_name = 'wpob-popover';
    public $setting_options_name = 'wpobp_global_settings';
    public $global_setting = null;
    protected static $_instance = null;

    public static function instance() {
        if (is_null(self::$_instance)) {
            self::$_instance = new self();
        }
        return self::$_instance;
    }

    public function __construct() {
        $this->init_actions();
        $this->define_constants();
        add_action('wp_enqueue_scripts', array($this, 'enqueue'));
        add_action('wp_head', array($this, 'render_global_style'));
        add_action('admin_enqueue_scripts', array($this, 'admin_enqueue'));

        register_activation_hook(__FILE__, array($this, 'activate'));
        register_deactivation_hook(__FILE__, array($this, 'deactivate'));

        $settings = get_option($this->setting_options_name);

        $this->global_setting = unserialize($settings);
    }

    function init_actions() {

        add_action('plugins_loaded', array($this, 'load_textdomain'));
        add_action('admin_menu', array($this, 'wpobp_admin_menu'));

        add_action('init', array($this, 'wpobp_register_post_type'));
        add_shortcode('wpob-popover', array($this, 'render_wpobp_short_code'));
        add_filter("manage_{$this->custom_post_name}_posts_columns", array($this, 'manage_custom_columns'));
        add_action("manage_{$this->custom_post_name}_posts_custom_column", array($this, 'manage_custom_columns_value'));
        add_action('wp_ajax_wpobp_settings_save', array($this, 'wpobp_settings_save'));
    }

    public function define_constants() {
        $this->define('WPOBP_VERSION', $this->version);
        $this->define('WPOBP_DB_VERSION', $this->db_version);
        $this->define('WPOBP_PATH', plugin_dir_path(__FILE__));
        $this->define('WPOBP_URL', plugins_url('', __FILE__));
    }

    public function define($name, $value) {
        if (!defined($name)) {
            define($name, $value);
        }
    }

    function load_textdomain() {
        load_plugin_textdomain($this->text_domain, false, dirname(plugin_basename(__FILE__)) . '/lang/');
    }

    function wpobp_admin_menu() {
        $capability = 'read'; //minimum level: subscriber 
        add_submenu_page('edit.php?post_type=' . $this->custom_post_name, __('How To USE', $this->text_domain), __('How to Use', $this->text_domain), $capability, __('how_to_use', $this->text_domain), array($this, 'manage_submenu_pages'));
        add_submenu_page('edit.php?post_type=' . $this->custom_post_name, __('WPOBP Settings', $this->text_domain), __('Setting', $this->text_domain), $capability, __('global_settings', $this->text_domain), array($this, 'manage_submenu_pages'));
    }

    public function activate() {
        flush_rewrite_rules();
        $init_data = array(
            'title_text_color' => '',
            'body_text_color' => '',
            'width' => '100%',
            'height' => '500px',
            'position' => 'top', 
            'support_html' => 'true'
        ); 
        $init_data = serialize($init_data) ; 
        update_option($this->setting_options_name, $init_data);
    }

    public function deactivate() {
        flush_rewrite_rules();
    }

    public function uninstall() {
        
    }

    function wpobp_register_post_type() {
        $name = "WP Popover";
        $labels = array(
            'name' => __($name, 'post type general name', $this->text_domain),
            'singular_name' => __($name, 'post type singular name', $this->text_domain),
            'add_new' => __('Add New', $name, $this->text_domain),
            'add_new_item' => __('Add New ' . $name, $this->text_domain),
            'edit_item' => __('Edit ' . $name, $this->text_domain),
            'new_item' => __('New ' . $name, $this->text_domain),
            'view_item' => __('View ' . $name, $this->text_domain),
            'search_items' => __('Search ' . $name, $this->text_domain),
            'not_found' => __('Nothing found', $this->text_domain),
            'not_found_in_trash' => __('Nothing found in Trash', $this->text_domain),
            'parent_item_colon' => __($name, $this->text_domain),
        );
        $post_type_agr = array(
            'labels' => $labels,
            'public' => true,
            'publicly_queryable' => true,
            'show_ui' => true,
            'capability_type' => 'post',
            'menu_position' => false,
            'show_in_menu' => true,
            'supports' => array('title', 'editor'),
            'hierarchical' => false,
            'rewrite' => false,
            'query_var' => false,
            'show_in_nav_menus' => false,
        );
        register_post_type($this->custom_post_name, $post_type_agr);
    }

    function enqueue() {
        wp_enqueue_script('jquery');
        wp_enqueue_style('bootstrap_css', 'https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css');
        wp_enqueue_script('jquery-p-js', "https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js");
        wp_enqueue_script('jquery_ui', "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js");
        wp_enqueue_script('wpb_popover_front', plugins_url('assets/js/script.js', __FILE__), '', false, true);
        wp_enqueue_style('wpb_popover_front', plugins_url('/assets/css/style.css', __FILE__));
    }

    function admin_enqueue() {
        wp_enqueue_style('wp-color-picker');
        wp_enqueue_style('wpb_popover_backend', plugins_url('/assets/css/admin_style.css', __FILE__));
        wp_enqueue_script('wpb_popover_backend', plugins_url('/assets/js/admin-script.js', __FILE__), array('wp-color-picker'), false, true);
        wp_localize_script('wpb_popover_backend', 'WPOBP_Vars', array(
            'ajaxurl' => admin_url('admin-ajax.php'),
            'nonce' => wp_create_nonce('wpobp_nonce'),
        ));
    }

    function manage_submenu_pages() {
        $page = $_GET['page'];
        $view_page = 'dehult.php';
        switch ($page) {

            case "how_to_use" :
                $view_page = "how_to_use.php";
                break;

            case "global_settings" :
                $view_page = "settings.php";
                break;

            default:
        }
        require ( WPOBP_PATH . '/view/' . $view_page );
    }

    function manage_custom_columns($columns) {

        $new_columns['wpobp_sc'] = "Short Code";
        $filtered_columns = array_merge($columns, $new_columns);


        return $filtered_columns;
    }

    function manage_custom_columns_value($column) {
        global $post;
        switch ($column) {
            case 'wpobp_sc' :
                echo "[wpob-popover id='{$post->ID}']";
                break;

            default :
                break;
        }
    }

    /**
     * Save settings
     */
    function wpobp_settings_save() {
        $post = $_POST;
        //check_ajax_referer('wpobp_nonce', $post['nonce']);
        parse_str($post['form_data'], $form_data);

        $form_data = serialize($form_data);

        update_option($this->setting_options_name, $form_data);

        echo "Save Success!!";

        die();
    }

    function render_wpobp_short_code($atts, $content = null) {

        $atts = array_change_key_case((array) $atts, CASE_LOWER);


        $a = shortcode_atts(array(
            'id' => '',
            'title' => '',
                ), $atts);

        extract($a);


        if ($id) {
            $post = get_post((int) $id);
            if (!$post) {
                return;
            }
            if ($this->custom_post_name !== $post->post_type) {
                return;
            }
            $title = $post->post_title;
            $content = $post->post_content;
        } else if ($title != '') {
            $title = $title;
            $content = $content;
        } 
        
        $data = "<span class='wpobp' data-placement='{$this->global_setting['position']}' data-html='{$this->global_setting['support_html']}' data-toggle='wpob-popover'  title='{$title}' data-content='{$content}'> {$title}</span>";
        return $data;
    }

    function render_global_style() {
        ?> 
        <style>
            /* Popover */
            .wpob-popover {
                border: 1px solid #ccc;
                max-width:<?php echo $this->global_setting['width']?>;
                max-height:<?php echo $this->global_setting['height']?>;
                
            }
            /* Popover Header */
            .wpob-popover .popover-header {
                color: <?php echo $this->global_setting['title_text_color'] ?>;
                

            }
            /* Popover Body */
            .wpob-popover .popover-body {
                 color: <?php echo $this->global_setting['body_text_color'] ?> ;
                  
            }
            /* Popover Arrow */
             
        </style> 
        <?php

    }

}

function WPOBPInit() {
    return WPOBPopover::instance();
}

//Class  instance.
$WPOBPopover = WPOBPInit();

