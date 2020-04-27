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
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);

if(!function_exists("lwc_opciones_admin")){
    function lwc_opciones_admin(){
        add_options_page("Documentos de WooCommerce","Documentos de WooCommerce","manage_options","lwc","lwc_get_opciones_de_admin");
    }
}
add_action("admin_menu","lwc_opciones_admin");

if(!function_exists("lwc_get_opciones_de_admin")){
    function lwc_get_opciones_de_admin(){
       $query = new WC_Order_Query(array(
            'limit' => 300,
        ));
		/*echo '<pre>';
			print_r($query);
			echo '</pre>';*/
        if(isset($_GET['id'])){
	    $issues=0;
            foreach($query->get_orders() as $i => $val){
				foreach($val->data['meta_data'] as $meta)
							{
								$meta_data[$meta->key] = $meta->value;
							}
							$__order_number = $meta_data['_ywson_custom_number_order_complete'];
                //if($val->get_order_number()==$_GET['id']){
					if($__order_number==$_GET['id']){
					echo "por aqui<br>";
		    $query2 = new WC_Order($val->id);
			
                    $id_yi=$__order_number;//$query2->get_order_number();
                    $_SESSION['data_wc_lwc']=json_decode($query2);
                    if($_SESSION['data_wc_lwc']->meta_data[16]->key!='_billing_tipovental'){
                        $_SESSION['data_wc_lwc']->tipoventa = ""; 
                        $_SESSION['data_wc_lwc']->canal = ""; 
                    }else{
                        $_SESSION['data_wc_lwc']->tipoventa = $_SESSION['data_wc_lwc']->meta_data[16]->value; 
                        $_SESSION['data_wc_lwc']->canal = $_SESSION['data_wc_lwc']->meta_data[15]->value; 
                    }
                    //$_SESSION['data_wc_lwc']->id_yi=$id_yi;
					$_SESSION['data_wc_lwc']->id_yi=$__order_number;
                    $items = $query2->get_items();
                    foreach ( $items as $item ) {
                        $product_name = $item['name'];
                    }
                    $_SESSION['data_wc_lwc']->producto = $product_name;
                    echo '<br><a href="./../enviarpdf.php" class="button">Enviar Correo</a>';
                    echo '<a href="./../generarpdf.php" class="button">Generar PDF - Cuadro Producto</a>';
                    echo '<a href="./../generarpdfrcv.php" class="button">Generar PDF - RCV</a>';
					include "./../reshtmldoc/template_vp.php";
					/*echo'<pre>';
					print_r($_SESSION['data_wc_lwc']);
					echo'</pre>';*/
		    $issues=0;
                    break;
                }else{
		    $issues++;
		}
	    }
	    if($issues>0){
		global $wpdb;
			echo "por aqui errores $issues<br>";
			$select_query = "SELECT *
FROM `wp_postmeta`
WHERE `meta_key` = '_ywson_custom_number_order_complete' AND `meta_value` = '".$_GET['id']."'";
$result = $wpdb->get_results($select_query);
//echo '<pre>';
			$__post_id = $result[0]->post_id;
			//print_r($result);
			//die();
			//echo '</pre>';
	    	$query = new WC_Order($__post_id);
			/*echo '<pre>';
			print_r($query);
			echo '</pre>';
			die();*/
                $id_yi=$_GET['id'];//$query->get_order_number();
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
			   include "./../reshtmldoc/template_vp.php";
			  /* echo'<pre>';
			   echo "issues + ".$issues;
					print_r($_SESSION['data_wc_lwc']);
					echo'</pre>';*/
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
                    <td><b>#</b></td>
					<td><b>Pedido</b></td>
                    <td><b>Fecha</b></td>
					<td><b>Cliente</b></td>
                    <td><b>Estado</b></td>
                    <td><b>Opciones</b></td>
                </tr>
                <?php
				$cont=1;
                    foreach($query->get_orders() as $i => $val){
						
					foreach($val->data['meta_data'] as $meta)
							{
								$meta_data[$meta->key] = $meta->value;
							}
							/*echo'<pre>';
					print_r($meta_data);
					echo'</pre>';
					die();*/
					$__order_number = $meta_data['_ywson_custom_number_order_complete'];
					//$val->get_order_number();
                        ?>
                        <tr>
							<td><?=$cont++;?></td>
                            <td><?= $__order_number ?></td>
                            <td><?= $val->data['date_created'] ?></td>
							<td><?= $val->data['billing']['first_name'] ?> <?= $val->data['billing']['last_name'] ?></td>
                            <td><?= $val->data['status'] ?></td>
                            <td><a href="?page=lwc&id=<?= $__order_number ?>" class="button">Generar PDF</a>
							<?php
							
							?>
							</td>
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
