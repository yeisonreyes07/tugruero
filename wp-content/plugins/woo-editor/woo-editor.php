<?php
/**
 * Plugin Name: Editar woo
 * Plugin URI: https://osba.com.ve
 * Description: Editar elementos de woo
 * Version: 0.3
 * Author: Leonardo Hernandez
 * Author URI: https://osba.com.ve
 * Copyright 2019-2020. All rights reserved.
 */

if(!function_exists("lw_editor")){
    function lw_editor(){
        add_options_page("Editor de billing WooCommerce","Editor de billing WooCommerce","manage_options","lwedit","lwc_get_editor");
    }
}
add_action("admin_menu","lw_editor");

if(!function_exists("lwc_get_editor")){
    function lwc_get_editor(){
        $query = new WC_Order_Query(array(
            'limit' => 1000,
        ));
        if(isset($_GET['id'])){
            if(isset($_GET['data'])){
                foreach($_POST as $i => $val){
                    update_post_meta( $_GET['id'], $i, $val );
                }
                echo '<h2>Cambios realizados con exito</h2>';
                echo '<a href="?page=lwedit" class="button">Volver</a>';
            }else{
                $data = get_post_meta($_GET['id']);
				/*echo '<pre>';
				print_r($data);
				echo '</pre>';*/
				echo '<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"> ';
				echo '<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">';
                echo '<form action="?page=lwedit&data=true&id='.$_GET['id'].'" method="post">';
				echo '<div class="col-lg-6">';
                foreach($data as $i => $val){
                    if($i!='_order_key' && $i!='_customer_user' && $i!='_payment_method' && $i!='_payment_method_title' && $i!='_customer_ip_address' && $i!='_customer_user_agent' && $i!='_created_via' && $i!='_cart_hash' && $i!='_order_total' && $i!='_ywau_order_uploads' && $i!='wmc_order_info' && $i!='_edit_lock' && $i!='_order_stock_reduced'){
                        ?>
							<div class="form-group">
								<label for="<?= $i ?>"><?= $i ?></label> 
								<input id="<?= $i ?>" name="<?= $i ?>" type="text" value="<?php echo $val[0] ?>" class="form-control">
							</div> 
                            <!--<input type="text" value="<?php echo $val[0] ?>" name="<?php echo $i ?>">-->
                        <?php
                    }
                }
                    echo '<div class="form-group">
    <button name="submit" type="submit" class="btn btn-primary button">Submit</button>
  </div>';
					echo '</div>';
                echo '</form>';
            }
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
                            <td><?= $val->get_order_number(); ?></td>
                            <td><?= $val->data['date_created'] ?></td>
                            <td><?= $val->data['status'] ?></td>
                            <td><a href="?page=lwedit&id=<?= $val->id ?>" class="button">Editar</a></td>
                        </tr>
                        <?php
                    }
                ?>
            </table>
        <?php
        }
    }
}

function registrar_campos_edit() {
    if ( ! current_user_can( 'manage_options' ) && ( ! wp_doing_ajax() ) ) {
        wp_die( __( 'You are not allowed to access this part of the site' ) );
    }
}
add_action( 'admin_init', 'registrar_campos_edit', 1 );

 
?>
