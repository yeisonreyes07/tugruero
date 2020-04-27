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
        $query = new WC_Order_Query(array(
            'limit' => 1000,
        ));
        if(isset($_GET['id'])){
	    $issues=0;
            foreach($query->get_orders() as $i => $val){
                if($val->get_order_number()==$_GET['id']){
		    $query2 = new WC_Order($val->id);
                    $id_yi=$query2->get_order_number();
                    $_SESSION['data_wc_lwc']=json_decode($query2);
                    if($_SESSION['data_wc_lwc']->meta_data[16]->key!='_billing_tipovental'){
                        $_SESSION['data_wc_lwc']->tipoventa = ""; 
                        $_SESSION['data_wc_lwc']->canal = ""; 
                    }else{
                        $_SESSION['data_wc_lwc']->tipoventa = $_SESSION['data_wc_lwc']->meta_data[16]->value; 
                        $_SESSION['data_wc_lwc']->canal = $_SESSION['data_wc_lwc']->meta_data[15]->value; 
                    }
                    $_SESSION['data_wc_lwc']->id_yi=$id_yi;
                    $items = $query2->get_items();
                    foreach ( $items as $item ) {
                        $product_name = $item['name'];
                    }
                    $_SESSION['data_wc_lwc']->producto = $product_name;
                    echo '<br><a href="./../enviarpdf.php" class="button">Enviar Correo</a>';
                    echo '<a href="./../generarpdf.php" class="button">Generar PDF - Cuadro Producto</a>';
                    echo '<a href="./../generarpdfrcv.php" class="button">Generar PDF - RCV</a>';
		    $issues=0;
                    break;
                }else{
		    $issues++;
		}
	    }
	    if($issues>0){
	    	$query = new WC_Order($_GET['id']);
                $id_yi=$query->get_order_number();
                $_SESSION['data_wc_lwc']=json_decode($query);
               if($_SESSION['data_wc_lwc']->meta_data[16]->key!='_billing_tipovental'){
                    $_SESSION['data_wc_lwc']->tipoventa = ""; 
                    $_SESSION['data_wc_lwc']->canal = ""; 
               }else{
                    $_SESSION['data_wc_lwc']->tipoventa = $_SESSION['data_wc_lwc']->meta_data[16]->value; 
                    $_SESSION['data_wc_lwc']->canal = $_SESSION['data_wc_lwc']->meta_data[15]->value; 
               }
               $_SESSION['data_wc_lwc']->id_yi=$id_yi;
               $items = $query->get_items();
               foreach ( $items as $item ) {
                    $product_name = $item['name'];
               }
               $_SESSION['data_wc_lwc']->producto = $product_name;
               echo '<br><a href="./../enviarpdf.php" class="button">Enviar Correo</a>';
               echo '<a href="./../generarpdf.php" class="button">Generar PDF - Cuadro Producto</a>';
               echo '<a href="./../generarpdfrcv.php" class="button">Generar PDF - RCV</a>';
	    }
        }else{
        ?>
		<form method='get'>
			<label for='buscar'>Buscar Pedido</label>
			<input type='hidden' name='page' value='lwc'>
			<input type='text' value='' name='id' id='buscar'>
			<button class='button'>Buscar</button>
		</form>
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
                            <td><?= $val->get_order_number(); ?></td>
                            <td><?= $val->data['date_created'] ?></td>
                            <td><?= $val->data['status'] ?></td>
                            <td><a href="?page=lwc&id=<?= $val->id ?>" class="button">Generar PDF</a></td>
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
