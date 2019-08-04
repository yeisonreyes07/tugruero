<?php
    $id_products=$_POST['id_products'];
    $ext = explode(".",$_FILES['archivo']['name']);
    $name = date("Ymdhis").rand(0,100).".".$ext[(count($ext)-1)];
    copy($_FILES['archivo']['tmp_name'],"../wp-content/plugins/migrarcupon/files/".$name);
    header("location: options-general.php?page=lwcupon&file=".$name."&id_products=".$id_products);
?>