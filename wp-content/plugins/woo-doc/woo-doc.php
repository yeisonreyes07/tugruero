<?php
/**
 * Plugin Name: Created PDF of WOO
 * Plugin URI: https://osba.com.ve
 * Description: Crear archivos pdf de woo.
 * Version: 0.3
 * Author: Leonardo Hernandez
 * Author URI: https://osba.com.ve
 * Copyright 2019-2020. All rights reserved.
 */

if(!function_exists("lwc_opciones_admin")){
    function lwc_opciones_admin(){
        add_options_page("Documentos de WooCommerce","Documentos de WooCommerce","manage_options","lwc","lwc_get_opciones_de_admin");
    }
}
add_action("admin_menu","lwc_opciones_admin");

if(!function_exists("lwc_get_opciones_de_admin")){
    function lwc_get_opciones_de_admin(){
        $query = new WC_Order_Query();
        if(isset($_GET['id'])){
            $query = new WC_Order($_GET['id']);
            $_SESSION['data_wc_lwc']=json_decode($query);
            if($_SESSION['data_wc_lwc']->meta_data[15]->value){
                $_SESSION['data_wc_lwc']->meta_data[15]->value = null; 
            }
            if($_SESSION['data_wc_lwc']->meta_data[16]->value){
                $_SESSION['data_wc_lwc']->meta_data[16]->value = null; 
            }
            $items = $query->get_items();
            foreach ( $items as $item ) {
                $product_name = $item['name'];
            }
            $_SESSION['data_wc_lwc']->producto = $product_name;
            echo '<br><a href="./../enviarpdf.php" class="button">Enviar Correo</a>';
            echo '<a href="./../generarpdf.php" class="button">Generar PDF - Cuadro Producto</a>';
            echo '<a href="./../generarpdfrcv.php" class="button">Generar PDF - RCV</a>';
        }else{
        ?>
            <table width=100%>
                <tr>
                    <td><b>Pedido</b></td>
                    <td><b>Fecha</b></td>
                    <td><b>Estado</b></td>
                    <td><b>Opciones</b></td>
                </tr>
                <?php
                    foreach($query->get_orders() as $i => $val){
                        ?>
                        <tr>
                            <td><?= $val->id ?></td>
                            <td><?= $val->data['date_created'] ?></td>
                            <td><?= $val->data['status'] ?></td>
                            <td><a href="?page=lwc&id=<?= $val->id ?>" target="_blank" class="button">Generar PDF</a></td>
                        </tr>
                        <?php
                    }
                ?>
            </table>
        <?php
        }
    }
}

function registrar_campos_admin() {
    if ( ! current_user_can( 'manage_options' ) && ( ! wp_doing_ajax() ) ) {
        wp_die( __( 'You are not allowed to access this part of the site' ) );
    }
}
add_action( 'admin_init', 'registrar_campos_admin', 1 );

 
?>