<?php
/**
 * Plugin Name: Migrar cupones
 * Plugin URI: https://osba.com.ve
 * Description: migrar cupones.
 * Version: 0.1
 * Author: Leonardo Hernandez
 * Author URI: https://osba.com.ve
 * Copyright 2019-2020. All rights reserved.
 */
set_time_limit(16200);

use PhpOffice\PhpSpreadsheet\IOFactory;

if(!function_exists("lwc_cupon")){
    function lwc_cupon(){
        add_options_page("Migrar cupones","Migrar cupones","manage_options","lwcupon","lwcupon_migrate");
    }
}
add_action("admin_menu","lwc_cupon");

if(!function_exists("lwcupon_migrate")){
    function lwcupon_migrate(){
        if(isset($_GET['file'])){
            $inputFileType = 'Xlsx';
            $inputFileName = __DIR__.'/files/'.$_GET['file'];

            $id = $_GET['id_products'];

            $spreadsheet = \PhpOffice\PhpSpreadsheet\IOFactory::load($inputFileName);
            $sheetData = $spreadsheet->getActiveSheet()->toArray(null, true, true, true);

            foreach($sheetData as $i => $val){
                $codigo_privado = $val['A'];
                $codigo_publico = $val['B'];
                $amount = '100';                                // Amount
                $discount_type = 'percent';                     // Type: fixed_cart, percent, fixed_product, percent_product
                $coupon = array(
                    'post_title'    => $codigo_privado,         //el codigo del cupon
                    'post_content'  => $codigo_publico,         //Codigo publico
                    'post_excerpt'  => $codigo_publico,         //Codigo publico
                    'post_status'   => 'publish',
                    'post_author'   => 1,
                    'post_type'     => 'shop_coupon'
                );

                $new_coupon_id = wp_insert_post( $coupon );

                update_post_meta( $new_coupon_id, 'discount_type', $discount_type );
                update_post_meta( $new_coupon_id, 'coupon_amount', $amount );
                update_post_meta( $new_coupon_id, 'individual_use', 'no' );
                update_post_meta( $new_coupon_id, 'product_ids', $id );
                update_post_meta( $new_coupon_id, 'exclude_product_ids', '' );
                update_post_meta( $new_coupon_id, 'usage_limit', '1' );
                update_post_meta( $new_coupon_id, 'expiry_date', '2025-12-31' );
                update_post_meta( $new_coupon_id, 'apply_before_tax', 'yes' );
                update_post_meta( $new_coupon_id, 'free_shipping', 'no' );
            }

            unlink($inputFileName);

            echo '<h3>Migrado con exito</h3>';
        }
        $query = new WC_Product_Query( array(
            'limit' => 10,
            'orderby' => 'date',
            'order' => 'ASC',
        ));
        $products = $query->get_products();
        ?>
            <form action="subir_archivo.php" method="post" enctype="multipart/form-data">
                Seleccione el Producto
                <select name="id_products">
                    <?php
                        foreach($products as $product){
                            ?>
                                <option value="<?php echo $product->id; ?>"><?php echo $product->name; ?></option>
                            <?php
                        }
                    ?>
                </select><br>
                <input type="file" name="archivo"><br>
                <button class="button">Subir</button>
            </form>
        <?php
    }
}

function nosequehace() {
    if ( ! current_user_can( 'manage_options' ) && ( ! wp_doing_ajax() ) ) {
        wp_die( __( 'You are not allowed to access this part of the site' ) );
    }
}
add_action( 'admin_init', 'nosequehace', 1 );

 
?>
