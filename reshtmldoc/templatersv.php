<?php
    if(!isset($_SESSION)) 
    { 
        session_start(); 
    } 
    // var_dump($_SESSION['data_wc_lwc']);
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
    table.bordertitulo{border-bottom: solid 1mm #222;}
</style>
<page backtop="28mm" backbottom="18mm" backleft="10mm" backright="10mm" style="font-size: 9pt">
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%; text-align:center">
                <b>
                CUADRO DE PÓLIZA RECIBO<br>
                SEGURO DE VEHÍCULOS TERRESTRES
                </b><br>
                RENOVACIÓN
            </td>
        </tr>
    </table>
    <table style="width: 618px; border:1px solid #000">
        <tr style="vertical-align: top">
            <td style="width: 33%">N° de Poliza: <?= $_SESSION['data_wc_lwc']->billing->first_name; ?></td>
            <td style="width: 33%">N° de Recibo: <?= $_SESSION['data_wc_lwc']->billing->last_name; ?></td>
            <td style="width: 33%">Forma de pago: Anual</td>
        </tr>
        <tr>
            <td style="width: 33%">Vigencia de la Póliza: Anual</td>
            <td style="width: 33%">Desde: </td>
            <td style="width: 33%">Hasta: </td>
        </tr>
        <tr>
            <td style="width: 66%" colspan="2">Tomador: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 33%">Teléfono: <?= $_SESSION['data_wc_lwc']->meta_data[5]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Caracter: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 50%">Rif / C.I: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Direccion del tomador: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 50%">Rif / C.I: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Asegurado: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 50%">Teléfono: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Direccion del asegurado: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 50%">Rif / C.I: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Beneficiario: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 50%">Teléfono: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
        </tr>
        <tr>
            <td style="width: 100%" colspan="3">Dirección de Cobro: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%; text-align:center">
                <b>DATOS DEL VEHICULO ASEGURADO</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000">
        <tr style="vertical-align: top">
            <td style="width: 25%">Marca: <?= $_SESSION['data_wc_lwc']->meta_data[7]->value; ?></td>
            <td style="width: 25%">Modelo: <?= $_SESSION['data_wc_lwc']->meta_data[3]->value; ?></td>
            <td style="width: 25%">Clase: <?= $_SESSION['data_wc_lwc']->meta_data[12]->value; ?></td>
            <td style="width: 25%">Serial del motor: <?= $_SESSION['data_wc_lwc']->meta_data[11]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Serial de Carrocería: <?= $_SESSION['data_wc_lwc']->meta_data[10]->value; ?></td>
            <td style="width: 25%">N° Placa: <?= $_SESSION['data_wc_lwc']->meta_data[9]->value; ?></td>
            <td style="width: 25%">Uso: </td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 25%">Tipo: <?= $_SESSION['data_wc_lwc']->meta_data[7]->value; ?></td>
            <td style="width: 25%">Color: <?= $_SESSION['data_wc_lwc']->meta_data[3]->value; ?></td>
            <td style="width: 25%">N° Puestos: <?= $_SESSION['data_wc_lwc']->meta_data[12]->value; ?></td>
            <td style="width: 25%">Año: <?= $_SESSION['data_wc_lwc']->meta_data[11]->value; ?></td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000">
        <tr style="vertical-align: top">
            <td style="width: 23.2%">Coberturas</td>
            <td style="width: 23.2%"></td>
            <td style="width: 16.6%">Suma asegurada</td>
            <td style="width: 10%">Deducible</td>
            <td style="width: 10%">Tasa</td>
            <td style="width: 16.6%">Prima</td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000">
        <tr>
            <td style="width: 23.2%">RCV</td>
            <td style="width: 23.2%">
                DAÑOS A COSAS<br>
                DAÑOS A PERSONAS
            </td>
            <td style="width: 16.6%">5.561,00<br>7.089,00</td>
            <td style="width: 10%"></td>
            <td style="width: 10%"></td>
            <td style="width: 16.6%"><br>110,50</td>
        </tr>
        <tr>
            <td style="width: 23.2%">EXCESOS DE LIMITES</td>
            <td style="width: 23.2%">EXCESO DE LIMITE</td>
            <td style="width: 16.6%">1.000,00</td>
            <td style="width: 10%"></td>
            <td style="width: 10%"></td>
            <td style="width: 16.6%">300,00</td>
        </tr>
        <tr>
            <td style="width: 23.2%">DEFENSA PENAL</td>
            <td style="width: 23.2%">DEFENSA PENAL</td>
            <td style="width: 16.6%">1.000,00</td>
            <td style="width: 10%"></td>
            <td style="width: 10%"></td>
            <td style="width: 16.6%">300,00</td>
        </tr>
        <tr>
            <td style="width: 23.2%">A.P.O.V.</td>
            <td style="width: 23.2%">
                MUERTE<br>
                INVALIDEZ<br>
                PERMANENTE<br>
                GASTOS MÉDICOS<br>
            </td>
            <td style="width: 16.6%">
                2.000,00<br>
                2.000,00<br>
                <br>
                200,00
            </td>
            <td style="width: 10%"></td>
            <td style="width: 10%"></td>
            <td style="width: 16.6%"><br><br><br><br>500,00</td>
        </tr>
        <tr>
            <td style="width: 23.2%">ASISTENCIA VIAL</td>
            <td style="width: 23.2%">
                INCLUIDO
            </td>
            <td style="width: 16.6%"></td>
            <td style="width: 10%"></td>
            <td style="width: 10%"></td>
            <td style="width: 16.6%"></td>
        </tr>
        <tr>
            <td style="width: 23.2%"></td>
            <td style="width: 23.2%"></td>
            <td style="width: 16.6%"></td>
            <td style="width: 10%"></td>
            <td style="width: 10%"></td>
            <td style="width: 16.6%">1.210,50</td>
        </tr>
    </table>
    <br>
    <table style="width: 100%; border:1px solid #000">
        <tr>
            <td style="width: 23.2%"></td>
            <td style="width: 23.2%"></td>
            <td style="width: 36.6%" colspan="3">TOTAL PRIMA NETA ANUAL</td>
            <td style="width: 16.6%">1.210,50</td>
        </tr>
    </table>
    <br>
    <br>
    <br>
    <br>
    <table style="width: 100%;">
        <tr>
            <td style="width: 100%">
                El tomador y/o Asegurado declara(n) recibir en este Acto las condiciones generales y particulares de la Póliza
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                Autorización y Compromiso:  Autorizo a las Compañías o Instituciones, para suministrar a la ASEGURADORA, todos los datos que posean antes o despues del siniestro, asimismo autorizo a la ASEGURADORA, a recabar cualquier información relacionada con el riesgo y a verificar los datos de este CUADRO RECIBO DE LA PÓLIZA
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                <br><br>
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                Declaro que el dinero utilizado para el pago de la prima de la Póliza a suscribir,  proviene de una fuente lícita,  por lo tanto no tiene relación alguna con dinero, capitales, bienes haberes o beneficios derivados de actividades ilícitas o de los delitos de legitimación de capitales previstos en la Ley Orgánica Contra la Delincuencia Organizada
            </td>
        </tr>
        <tr>
            <td style="width: 100%">
                <br><br>
            </td>
        </tr>
    </table>
    <br>
    <table style="width: 100%;">
        <tr>
            <td style="width: 25%; text-align:center">
                Asociado Promotor:
            </td>
            <td style="width: 25%; text-align:center">
                Codigo:
            </td>
            <td style="width: 25%; text-align:center">
                Asegurado:
            </td>
            <td style="width: 25%; text-align:center">
                
            </td>
        </tr>
        <tr>
            <td style="width: 25%; text-align:center"><br>
                ___________________________<br>
                El Asegurado
            </td>
            <td style="width: 25%">
                
            </td>
            <td style="width: 25%">
                
            </td>
            <td style="width: 25%; text-align:center"><br>
                ___________________________<br>
                Por: Asistir
            </td>
        </tr>
    </table>
    <br>
    <br>
    <table style="width: 100%;">
        <tr>
            <td style="width: 100%; text-align:center">
                COOPERATIVA ASISTIR DE PROTECCION SOCIAL DE SEGUROS R.L INSCRITA EN LA SUPERINTENDENCIA DE COOPERATIVAS BAJO EL Nº 191237
            </td>
        </tr>
        <tr>
            <td style="width: 100%; text-align:center">
                AV. VENEZUELA CON CALLE EL RETIRO, QUINTA MINA, EL ROSAL, PB TELF. 0212-9513847 / 9514656
            </td>
        </tr>
        <tr>
            <td style="width: 100%; text-align:center">
                CARACAS-VENEZUELA
            </td>
        </tr>
    </table>
</page>