<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    // var_dump($_SESSION['data_wc_lwc']);
    $fecha_inicio = $_SESSION['data_wc_lwc']->date_created->date;

    $fecha_ini = strtotime ( '+20 day' , strtotime ( $fecha_inicio ) ) ;
    $fecha_ini = date ( 'd-m-Y' , $fecha_ini );

    $fecha_fin = strtotime ( '+1 year' , strtotime ( $fecha_ini ) ) ;
    $fecha_fin = date ( 'd-m-Y' , $fecha_fin );
?>
<style type="text/css">
    table.page_header {width: 100%; border: none; background-color: #333; border-bottom: solid 1mm #222; padding: 2mm; color:#fff }
    table.page_header img {height: 60px; float: left; margin-right: 10px}
    table.page_footer {width: 100%; border: none; background-color: #333; border-top: solid 1mm #222; padding: 2mm; color:#fff}
    div.note {border: solid 1mm #DDDDDD;background-color: #EEEEEE; padding: 2mm; border-radius: 2mm; width: 100%; }
    ul.main { width: 95%; list-style-type: square; }
    ul.main li { padding-bottom: 2mm; }
    h1 { text-align: center; font-size: 20mm}
    h3 { text-align: center; font-size: 14mm}
    table.info{width: 100%;padding: 2mm; color:#fff; border-color: #fff; border:1px solid #fff;}
    table.bordertitulo{border: solid 1px #222;}
    bordertitulo{border: solid 1px #222;}
    .grey{background: #ddd}
    table.border tr td{border:1px solid #000;}
    table.border {border-collapse: collapse;}
    table.no-border tr td{border:0px solid #000;}
</style>
<page backtop="10mm" backbottom="10mm" backleft="10mm" backright="10mm" style="font-size: 11px">
    <table style="width: 100%">
        <tr style="vertical-align: top">
            <td style="width: 30%; text-align:center">
                <img src="wp-content/themes/tugruero/images/logo2.png" alt="">
            </td>
            <td style="width: 70%; text-align:center; font-size: 16px;">
                <b>
                CUADRO RECIBO DE LA PÓLIZA DE VEHÍCULOS AUTOMÓVILES
                </b>
            </td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 100%;"><b>Tipo de Movimiento:</b> Nuevo </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000" class="border">
        <tr style="vertical-align: top">
            <td style="width: 20%"><b>N° de Poliza</b><br><?= $_SESSION['data_wc_lwc']->id; ?></td>
            <td style="width: 40%"><b>Vigencia de la Póliza</b><br>
                <table style="width: 100%" class="no-border">
                    <tr>
                        <td style="width: 50%">Desde: <?= date("d/m/Y", strtotime($fecha_ini)); ?></td>
                        <td style="width: 50%">Hasta: <?= date("d/m/Y", strtotime($fecha_fin)); ?></td>
                    </tr>
                </table>
            </td>
            <td style="width: 20%"><b>Frecuencia de Pago</b><br>Anual</td>
            <td style="width: 20%"><b>Sucursal Suscriptora</b><br>UniCaracas</td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 100%;"><b>TOMADOR</b></td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000" class="border">
        <tr style="vertical-align: top">
            <td style="width: 26%"><b>Apellidos y Nombres / Razón Social:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->first_name." ".$_SESSION['data_wc_lwc']->billing->last_name; ?>
            </td>
            <td style="width: 12%"><b>C.I. / R.I.F:</b><br><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[2]->value.$_SESSION['data_wc_lwc']->meta_data[3]->value; ?>
            </td>
            <td style="width: 14%"><b>Nacionalidad:</b><br><br>
                Venezolano (a)            
            </td>
            <td style="width: 16%"><b>Fecha de Nacimiento:</b><br>
                <?php
                    echo date("d/m/Y", strtotime($_SESSION['data_wc_lwc']->meta_data[4]->value));
                ?>             
            </td>
            <td style="width: 16%"><b>Estado Civil:</b><br><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[5]->value; ?>               
            </td>
            <td style="width: 16%"><b>Sexo:</b><br><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[0]->value; ?>              
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000">
        <tr style="vertical-align: top">
            <td style="width: 52%" colspan="2"><b>Dirección de Cobro:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?>
            </td>
            <td style="width: 16%"><b>Ciudad:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->city; ?>            
            </td>
            <td style="width: 16%"><b>Estado:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->state; ?>               
            </td>
            <td style="width: 16%"><b>Teléfono:</b><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[1]->value.$_SESSION['data_wc_lwc']->billing->phone; ?>              
            </td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 100%;"><b>ASEGURADO</b></td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000" class="border">
        <tr style="vertical-align: top">
            <td style="width: 26%"><b>Apellidos y Nombres / Razón Social:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->first_name." ".$_SESSION['data_wc_lwc']->billing->last_name; ?>
            </td>
            <td style="width: 12%"><b>C.I. / R.I.F:</b><br><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[2]->value.$_SESSION['data_wc_lwc']->meta_data[3]->value; ?>
            </td>
            <td style="width: 14%"><b>Nacionalidad:</b><br><br>
                Venezolano (a)            
            </td>
            <td style="width: 16%"><b>Fecha de Nacimiento:</b><br>
                <?php
                    echo date("d/m/Y", strtotime($_SESSION['data_wc_lwc']->meta_data[4]->value));
                ?>             
            </td>
            <td style="width: 16%"><b>Estado Civil:</b><br><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[5]->value; ?>               
            </td>
            <td style="width: 16%"><b>Sexo:</b><br><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[0]->value; ?>              
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000">
        <tr style="vertical-align: top">
            <td style="width: 52%" colspan="2"><b>Dirección de Cobro:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?>
            </td>
            <td style="width: 16%"><b>Ciudad:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->city; ?>            
            </td>
            <td style="width: 16%"><b>Estado:</b><br>
                <?= $_SESSION['data_wc_lwc']->billing->state; ?>               
            </td>
            <td style="width: 16%"><b>Teléfono:</b><br>
                <?= $_SESSION['data_wc_lwc']->meta_data[1]->value.$_SESSION['data_wc_lwc']->billing->phone; ?>              
            </td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 100%;"><b>AUTOMÓVIL</b></td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000">
        <tr>
            <td colspan="3"><b>Vehículo</b></td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 34%">Marca: <?= $_SESSION['data_wc_lwc']->meta_data[9]->value; ?></td>
            <td style="width: 33%">Modelo: <?= $_SESSION['data_wc_lwc']->meta_data[9]->value; ?></td>
            <td style="width: 33%">Año: <?= $_SESSION['data_wc_lwc']->meta_data[8]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 34%">Clase: <?= $_SESSION['data_wc_lwc']->meta_data[7]->value; ?></td>
            <td style="width: 33%">Placa: <?= $_SESSION['data_wc_lwc']->meta_data[10]->value; ?></td>
            <td style="width: 33%">Tipo: <?= $_SESSION['data_wc_lwc']->meta_data[13]->value; ?></td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 34%">Color: <?= $_SESSION['data_wc_lwc']->meta_data[12]->value; ?></td>
            <td style="width: 33%">Nro. de puestos: 5</td>
            <td style="width: 33%">Uso: Particular</td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 36%;"><b>COBERTURAS</b></td>
            <td style="width: 16%;"><b>Deducible % Monto</b></td>
            <td style="width: 16%;"><b>Sumas Aseguradas</b></td>
            <td style="width: 16%;"><b>Primas</b></td>
            <td style="width: 16%;"><b>Primas Prorrata</b></td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 100%;" colspan="5"><b>Responsabilidad Civil de Vehículos</b></td>
        </tr>
        <tr>
            <td style="width: 36%;">RCV Básico - Daños a Cosas</td>
            <td style="width: 16%;"></td>
            <td style="width: 16%;">15.625,00</td>
            <td style="width: 16%;"></td>
            <td style="width: 16%;"></td>
        </tr>
        <tr>
            <td style="width: 36%;">RCV Básico - Daños a Personas</td>
            <td style="width: 16%;"></td>
            <td style="width: 16%;">20.850,00</td>
            <td style="width: 16%;">375,00</td>
            <td style="width: 16%;">375,00</td>
        </tr>
        <tr>
            <td style="width: 36%;">Exceso de Límite</td>
            <td style="width: 16%;"></td>
            <td style="width: 16%;">1.500.000,00</td>
            <td style="width: 16%;">8.887,50</td>
            <td style="width: 16%;">8.887,50</td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 52%; text-align: center;"><b>s/frec/pago y/o Período de Cobertura: 1 año</b></td>
            <td style="width: 32%;"><b>Total Prima Bs:  9.262,50</b></td>
            <td style="width: 16%;"><b>9.262,50</b></td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 100%;"><b>PRODUCTORES</b></td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 50%;"><b>Nombres y Apellidos</b><br>UNIVERSAL DE SEGUROS</td>
            <td style="width: 25%;"><b>Código Nro.</b><br>0</td>
            <td style="width: 25%;"><b>% de Participación</b><br>100</td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 100%;"><b>DECLARACIONES</b></td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 100%; font-size: 10px">El TOMADOR y el ASEGURADO declaran que han recibido en este acto las Condiciones Generales y Particulares de la Póliza, el CUADRO RECIBO DE LA PÓLIZA, así como los Anexos emitidos hasta este momento debidamente firmados por las partes.</td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo grey">
        <tr>
            <td style="width: 100%;"><b>AUTORIZACIÓN Y COMPROMISO</b></td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 100%; font-size: 10px">Autorizo a las Compañías o Instituciones, para suministrar a Universal De Seguros C.A. , todos los datos que posean antes o despues del siniestro, asimismo autorizo a Universal De Seguros C.A. ,a rechazar cualquier información relacionada con el riesgo y verificar los datos de este CUADRO RECIBO DE LA PÓLIZA</td>
        </tr>
    </table>
    <table style="width: 100%" class="bordertitulo">
        <tr>
            <td style="width: 100%;">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 40%">
                            Lugar y Fecha:<br>
                            Caracas. <?= strtotime ( '+20 day' , strtotime ( $_SESSION['data_wc_lwc']->date_created->date ) ) ; ?>
                        </td>
                        <td style="width: 60%">
                            EL TOMADOR<br>
                            NOMBRE Y APELLIDO: <?= $_SESSION['data_wc_lwc']->billing->first_name." ".$_SESSION['data_wc_lwc']->billing->last_name; ?><br>
                            C.I./R.I.F. No.: <?= $_SESSION['data_wc_lwc']->meta_data[2]->value.$_SESSION['data_wc_lwc']->meta_data[3]->value; ?><br>
                            <br>
                            <br>
                            Firma: <span style="text-decoration: underline; "><?= $_SESSION['data_wc_lwc']->billing->first_name." ".$_SESSION['data_wc_lwc']->billing->last_name; ?></span>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 25%"></td>
                        <td style="width: 50%">
                            <table style="width: 100%;padding: 10px" class="bordertitulo">
                                <tr>
                                    <td style="width: 100%;" colspan="2">Por Universal De Seguros C.A. Representante </td>
                                </tr>
                                <tr>
                                    <td style="width: 40%;">Nombre y Apellido:</td>
                                    <td style="width: 60%;"></td>
                                </tr>
                                <tr>
                                    <td style="width: 40%;">C.I. No.:</td>
                                    <td style="width: 60%;">
                                        <img src="wp-content/themes/tugruero/images/firma2.png" style="width: 100px" alt="">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 40%;">Firma:</td>
                                    <td style="width: 60%;">__________________________</td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 25%"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 100%; text-align: center">
                <br>
                Aprobado por la Superintendencia de Seguros. Según Oficio Nro. 0005255 de Fecha 04/07/2003
            </td>
        </tr>
    </table>
</page>