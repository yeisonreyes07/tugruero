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
    table.page_header {width: 100%; border: none; background-color: #eee; border-bottom: solid 1mm #ccc; padding: 2mm; color:#000 }
    table.page_header img {height: 60px; float: left; margin-right: 10px; margin-left:30px}
    table.page_footer {width: 100%; border: none; background-color: #eee; border-top: solid 1mm #ccc; padding: 2mm; color:#000}
    img.firma {width: 180px;}
    div.note {border: solid 1mm #DDDDDD;background-color: #EEEEEE; padding: 2mm; border-radius: 2mm; width: 100%; }
    ul.main { width: 95%; list-style-type: square; }
    ul.main li { padding-bottom: 2mm; }
    h1 { text-align: center; font-size: 20mm}
    h3 { text-align: center; font-size: 14mm}
    table.info{width: 100%;padding: 2mm; color:#000; border-color: #ccc; border:1px solid #ccc;}
    table.bordertitulo{border-bottom: solid 1mm #222;}
</style>
<page backtop="28mm" backbottom="18mm" backleft="10mm" backright="10mm" style="font-size: 9pt">
    <page_header>
        <table class="page_header">
            <tr>
                <td style="width: 60%; text-align: left">
                    <img src="wp-content/themes/tugruero/images/logopdf.png" alt="" class="logo">
                    <br>SOLUCIONES TU GRUERO C.A.<br>
                    RIF: J-40680605-6
                </td>
                <td style="width: 40%; text-align: right">
                    <table class="info" style="width: 100%">
                        <tr>
                            <td style="width: 50%; text-align: center; border-right: 1px solid #ccc; padding-right: 10px">Tipo de venta</td>
                            <td style="width: 50%; text-align: center; padding-left: 10px">N° Producto</td>
                        </tr>
                        <tr>
                            <td style="width: 50%; text-align: center; border-right: 1px solid #ccc; padding-right: 10px">
                                <?= $_SESSION['data_wc_lwc']->tipoventa ?>
                            </td>
                            <td style="width: 50%; text-align: center; padding-left: 10px">
                                <?php 
                                    switch($_SESSION['data_wc_lwc']->producto){
                                        case "Plan Classic":{
                                            echo "TGB-";
                                            break;
                                        }
                                        case "Plan Plus":{
                                            echo "TGP-";
                                            break;
                                        }
                                        case "Plan Gold":{
                                            echo "TGG-";
                                            break;
                                        }
                                    }
                                    echo $_SESSION['data_wc_lwc']->canal."-";
                                    echo $_SESSION['data_wc_lwc']->id;

                                ?>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </page_header>
    <page_footer>
        <table class="page_footer">
            <tr>
                <td style="width: 100%; text-align: center;">
                    Caracas, Venezuela.<br> (0212) 2379227 / 0500 GRUERO - 0 (0500 478376 - 0) ·  comercializacion@tugruero.io · www.tugruero.io
                </td>
            </tr>
        </table>
    </page_footer>
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%">
                <b>DATOS DE CLIENTE</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000;">
        <tr style="vertical-align: top">
            <td style="width: 25%">Nombre: <?= $_SESSION['data_wc_lwc']->billing->first_name; ?></td>
            <td style="width: 25%">Apellido: <?= $_SESSION['data_wc_lwc']->billing->last_name; ?></td>
            <td style="width: 25%">Fecha de nac.: <?php
                echo date("d/m/Y", strtotime($_SESSION['data_wc_lwc']->meta_data[4]->value));
            ?></td>
            <td style="width: 25%">Edo. Civil: <?= $_SESSION['data_wc_lwc']->meta_data[5]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 25%">Telefono: <?= $_SESSION['data_wc_lwc']->meta_data[1]->value.$_SESSION['data_wc_lwc']->billing->phone; ?></td>
            <td style="width: 50%" colspan="2">Cedula/Pasaporte: <?= $_SESSION['data_wc_lwc']->meta_data[2]->value.$_SESSION['data_wc_lwc']->meta_data[3]->value; ?></td>
            <td style="width: 25%">Sexo: <?= $_SESSION['data_wc_lwc']->meta_data[0]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 50%" colspan="2">Domicilio: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 25%">Estado: <?= $_SESSION['data_wc_lwc']->billing->state; ?></td>
            <td style="width: 25%">Ciudad: <?= $_SESSION['data_wc_lwc']->billing->city; ?></td>
        </tr>
    </table>
    <br>
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%">
                <b>DATOS DEL VEHICULO</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000;">
        <tr style="vertical-align: top">
            <td style="width: 25%">Clase: <?= $_SESSION['data_wc_lwc']->meta_data[7]->value; ?></td>
            <td style="width: 25%">Año: <?= $_SESSION['data_wc_lwc']->meta_data[8]->value; ?></td>
            <td style="width: 25%">Marca: <?= $_SESSION['data_wc_lwc']->meta_data[9]->value; ?></td>
            <td style="width: 25%">Placa: <?= $_SESSION['data_wc_lwc']->meta_data[10]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 25%">Modelo: <?= $_SESSION['data_wc_lwc']->meta_data[11]->value; ?></td>
            <td style="width: 25%">Color: <?= $_SESSION['data_wc_lwc']->meta_data[12]->value; ?></td>
            <td style="width: 25%">Tipo: <?= $_SESSION['data_wc_lwc']->meta_data[13]->value; ?></td>
            <td style="width: 25%"></td>
        </tr>
    </table>
    <br>
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%">
                <b>DESCRIPCIÓN PRODUCTO</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000;">
        <tr style="vertical-align: top">
            <td style="width: 33%">Nombre Producto: <?= $_SESSION['data_wc_lwc']->producto ?></td>
            <td style="width: 33%">Precio: <?= number_format($_SESSION['data_wc_lwc']->total, 2, ',', '.'). " ". $_SESSION['data_wc_lwc']->currency; ?></td>
            <td style="width: 33%">Inic. Vig: <?= date("d/m/Y", strtotime($fecha_ini)); ?></td>
        </tr>
        <tr>
            <td style="width: 33%">Cantidad de servicios: 3 servicios de 25km</td>
            <td style="width: 33%"></td>
            <td style="width: 33%">Fin. Vig. <?= date("d/m/Y", strtotime($fecha_fin)); ?></td>
        </tr>
        <tr>
            <td style="width: 100%" colspan="3"><b>TELEFONO AUXILIO VIAL: 0500 GRUERO - 0 (0500 478376 - 0) / (0212) 2379227. Número de contingencia:  (0424) 1357579.</b></td>
        </tr>
    </table>
    <br>
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%">
                <b>ACUERDO LEGAL (I)</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000;">
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">1- PRIMERA: El presente contrato de adhesión versa sobre un plan pre-pagado de servicio de auxilio vial (grúa anual), adquirido sólo y únicamente para el vehículo identificado arriba (no es por persona, sino por vehículo).</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">2- SEGUNDA: Ud., podrá solicitar nuestros servicios mediante nuestro Call-Center por los números telefónicos 0500 GRUERO - 0 (0500 478376 - 0), (0212)-237-9227, (0212)-419-0105, (0212)-227-5273, Número de contingencia: (0424)-135-7579.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">3- TERCERA: Los servicios adquiridos mediante los planes sólo se prestaran si el vehículo sufrió una avería que le imposibilite andar y será auxiliado hacia el lugar requerido por la persona, siempre y cuando el tramo a recorrer no exceda el kilometraje cubierto por el plan contratado. </td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">4- CUARTA: Cuando el recorrido que realiza la grúa desde el lugar de origen del vehículo accidentado hasta el lugar de destino indicado por el cliente, excede el kilometraje establecido en el plan de grúas, el cliente deberá pagar, previo a la prestación del servicio, lo correspondiente al kilometraje adicional. El monto a cancelar será indicado por el operador del Call Center.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">5- QUINTA El presente plan de auxilio vial posee validez de un (1) año. Las fechas de vigencia del plan están descritas arriba.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">6- SEXTA: Vencido como fuera el lapso de tiempo por el cual fue contratado el servicio, Ud. entiende que no posee “mes de gracia”, y en caso de necesitar utilizar los servicios de la empresa, deberá adquirir nuevo plan o renovar el mismo plan que ya tenía. </td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">7- SEPTIMA: “Soluciones Tu Gruero C.A.” no trabaja con reembolsos de facturas por servicios tomados de forma particular, en tal sentido, no se reconocerá ningún servicio de auxilio vial (grúa) tomado de forma particular. Por tanto, no se realizará el reembolso de cantidades pagadas a proveedores externos a la compañía, cuando no sean autorizados previamente por el respectivo personal de la empresa.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">8- OCTAVA: Los servicios desde el estado Nueva Esparta hacia cualquier estado o puerto perteneciente al territorio continental de la República Bolivariana de Venezuela, o viceversa, no están cubiertos por el plan adquirido por su persona. Así como no están cubiertos los estados Amazonas y Delta Amacuro.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">9- NOVENA: El servicio de grúas contratado estará activo, y el cliente lo podrá disfrutar luego de veinte (20) días hábiles del pago del mismo.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">10- DECIMA: El servicio de grúas contratado por el cliente será responsabilidad plena y absoluta de Soluciones Tu Gruero, C.A. entendiéndose así que cualquier reclamo, crítica y/o sugerencia del servicio debe ser comunicado a esta compañía.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">11- DECIMA PRIMERA: En caso de adquirir el producto financiado, Ud., faculta a “Soluciones Tu Gruero C.A.” para realizar el proceso de cobranza de las cuotas restantes mediante la herramienta de domiciliación de tarjeta de crédito en su página web www.tugruero.io</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">12- DECIMA SEGUNDA: Si adquirió el producto financiado, en caso de retrasos en el pago de las siguientes cuotas en la fecha, lugar, monto y forma convenida, se suspenderá inmediatamente el derecho a utilizar los servicios ofrecidos por “Soluciones Tu Gruero C.A.”</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">13- DECIMA TERCERA: En caso de adquirir el producto financiado, el incumplimiento en el pago por parte del cliente., automáticamente acarrea un incremento de la cuota, en tal sentido, se le realizará recargo de un por ciento (1%) por cada día continuo de atraso sobre el monto de la cuota vencida. Además, no podrá disfrutar el servicio por una cantidad de un (1) día hábil acumulativo por cada día de retraso en pago correspondiente, contados a partir de la fecha de pago de la(s) cuotas(s) pendientes(s). Pasados 60 días de mora, se procederá a cancelar el plan (suscripción) del cliente, y este deberá adquirir un nuevo plan si desea afiliarse nuevamente.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">14- DECIMA CUARTA: “Soluciones Tu Gruero C.A.” no realiza reintegro o devolución de dinero en caso de que el cliente no pueda o no quiera pagar el resto de las cuotas pendientes, habiendo o no utilizado alguno de nuestros servicios.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">15- DECIMA QUINTA: En el caso de que el vehículo afiliado cuente con servicios ilimitados de 50 Km (TUGRUERO PLUS o TUGRUERO GOLD), a pesar que las averías/fallas que puede sufrir un vehículo son ilimitadas, el cliente cuenta con 3 servicios de grúa por avería/falla reportada durante la vigencia de su plan.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">16- DECIMA SEXTA: El plan de grúas TUGRUERO GOLD cuenta con un (01) servicio de máximo 100 Km y podrá ser utilizado sólo si el vehículo accidentado se encuentra en plena vía o en un lugar de resguardo y el lugar de destino es el domicilio establecido en el plan adquirido.</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 100%; text-align: center">
                <img src="wp-content/themes/tugruero/images/FIRMA.jpg" alt="" class="firma">
            </td>
        </tr>
    </table>
    <br>
    <br>
    <br>
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%">
                <b>ACUERDO LEGAL (II)</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%; border:1px solid #000;">
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">17- DECIMA SEPTIMA: Los traslados de grúas autorizados por Soluciones Tu Gruero C.A. deben tener las siguientes características: 1. Plena vía/Resguardo - Domicilio, 2. Plena vía/ Resguardo - Taller, 3. Domicilio - Taller y 4. Taller - Taller.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">18- DECIMA OCTAVA: Soluciones Tu Gruero, C.A. no garantiza la prestación de los servicios de grúa en las denominadas zonas rojas del territorio nacional. Entendiéndose como zonas rojas: barrios, vecindarios, calles o cualquier territorio altamente peligroso debido a la inseguridad. Estas zonas rojas pueden ser verificadas en www.tugruero.io</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">19- DECIMA NOVENA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial a vehículos que presenten fallas debido a negligencias del conductor y/o propietario. Estas fallas son: batería descargada por dejar luces prendidas, falta de gasolina, llaves dejadas dentro del vehículo, dejar negligentemente el vehículo atascado en barro o arena, accidentarse en lugares no accesibles o inhóspitos, personas bajo efectos del alcohol o sustancias psicotrópicas o cualquier otra falla que el operador considere negligente.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">20- VIGESIMA: Soluciones Tu Gruero, C.A, podrá enviar un motorizado (verificador) contratado por la compañía con el fin de verificar la información suministrada por el cliente (origen, placa, color, modelo, marca y avería del vehículo) previamente al envío de la grúa. El cliente autoriza al motorizado a verificar su vehículo y a tomar fotografías del mismo para que quede constancia del proceso realizado. Una vez el verificador corrobore toda la información el operador del Call Center autorizará al operador de grúa para hacer ir a hacer el servicio de remolque. La compañía se reserva el derecho de prestar o no el servicio según la información enviada por el verificador.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">21- VIGESIMA PRIMERA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial (grúa) a vehículos que tengan un (1) neumático espichado. Se entiende que el cliente debe poseer un (01) neumático de repuesto funcional dentro de su vehículo.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">22- VIGESIMA SEGUNDA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial (grúa) en forma de rescate. Se entiende por rescate a: vehículos volcados, “encunetados” a más de dos (02) metros, vehículos fuera de la vía y/o cualquier condición que requiera un maniobra especial por el operador de grúa. El operador del Call Center y el operador de grua determinarán si un vehículo requiere una maniobra especial o no.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">23- VIGESIMA TERCERA: En caso de que el vehículo haya chocado contra otro vehículo o algún elemento de la Nación, Soluciones Tu Gruero, C.A. no puede prestar sus servicios de auxilio vial hasta que las autoridades de tránsito hayan liberado el vehículo. Una vez, el conductor y/o propietario del vehículo tenga la boleta de liberación, la compañía podrá prestar el servicio de grúa pertinente.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">24- VIGESIMA CUARTA: En caso de que el vehículo se encuentre en un estacionamiento adscrito a un ente gubernamental y ya el cliente posea la boleta de liberación, este debe garantizar que el vehículo se encuentre apto para ser retirado del lugar. De esta forma, se agiliza el proceso.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">25- VIGESIMA QUINTA: Soluciones Tu Gruero, C.A. verificará ante el Ministerio Público la placa del vehículo que solicite el servicio y si este se encuentra solicitado por este ente, la compañía procederá inmediatamente a la no prestación del servicio y cancelación del plan. Además, se vetará al cliente contratante de por vida y no podrá disfrutar de los servicios que ofrece la compañía. En caso de que un cliente sufra el hurto de su vehículo, este debe notificarlo a Soluciones Tu Gruero, C.A. para poder darle de baja en el sistema.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">26- VIGESIMA SEXTA: En caso de que el vehículo tenga dos (02) neumáticos dañados debido al siniestro ocurrido en ese momento, Soluciones Tu Gruero, C.A. solamente prestará el servicio si ambos neumáticos son del mismo eje (delanteros o traseros), para poder realizar el servicio con una grua de gancho o “Wheel lift”.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">27- VIGESIMA SEPTIMA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial si el conductor y/o propietario del vehículo no posee el carnet de circulación consigo en el momento y lugar del vehículo accidentado.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">28- VIGESIMA OCTAVA: Soluciones Tu Gruero, C.A. se reserva el derecho de cancelar y/o posponer cualquier servicio de auxilio vial (grúa) en caso de: manifestaciones sociales, protestas, guerras, toque de queda, catástrofes naturales que afecten las vías y el paso de los vehículos y/o cualquier eventualidad que imposibilite la normal circulación de vehículos en la vía.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">29- VIGESIMA NOVENA: En caso de que el cliente cometa actos fraudulentos para solicitar servicios de grúas y aprovecharse de la buena fe de la compañía, Soluciones Tu Gruero, C.A. procederá a la no prestación del servicio e inmediatamente a la cancelación del plan contratado. Además, se vetará al cliente contratante por una duración de un (01) año y no podrá gozar ningún servicio que ofrezca la compañía.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">30- TRIGESIMA: Se entiende por actos fraudulentos: indicar al operador del Call Center un origen y/o destino diferente al real, indicar un vehículo con diferente placa, marca, modelo, color, indicar una avería diferente a la real o cualquier información que el operador considere falsa o fraudulenta. En vista de esto se le solicita al cliente suministrar una información veraz y real.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">31- TRIGESIMA PRIMERA: En caso de que ocurra un Servicio Fallido, el cliente será responsable de los pagos incurridos en el mismo. Un Servicio Fallido se considera cuando el operador de grúa va en camino a hacer el remolque, y el cliente se retira del sitio sin previo aviso (al operador del Call Center u operador de grúa). En este caso, se le debe hacer un pago al operador de grúa por el Servicio Fallido y este es responsabilidad del cliente. El pago debe hacerse a Soluciones Tu Gruero, C.A. en los próximos tres (3) días hábiles o de lo contrario su plan quedará anulado. </td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">32- TRIGESIMA SEGUNDA: En caso de que el servicio de grúa tenga como destino un taller, el cliente debe asegurar que el mismo se encuentre abierto para cuando se llegue a dicho destino. En caso contrario, el cliente deberá pagar el siguiente traslado al otro lugar de destino</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">33- TRIGESIMA TERCERA: Con la compra de este plan usted está autorizando a Soluciones Tu Gruero, C.A. a utilizar su imagen a fin de que la misma sea divulgada y/o incorporada con fines publicitarios institucionales en medios de comunicación audiovisuales, radiales, gráficos, internet, vía pública y/o cualquier otro soporte conforme el plan de medios.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">34- TRIGESIMA CUARTA: Soluciones Tu Gruero, C.A, se reserva el derecho de cancelar la suscripción del cliente en cualquier momento de la vigencia del plan, si la compañía así lo considera pertinente. Asimismo la compañía se reserva el derecho de negar la renovación del plan.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">35- TRIGESIMA QUINTA: Soluciones Tu Gruero, C.A. se reserva el derecho de modificar los Términos y Condiciones del servicio cuando la empresa lo considere necesario para mejorar su servicio, dentro de los límites fijados por las leyes de la República Bolivariana de Venezuela.</td>
        </tr>
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px; font-size:8px">36- TRIGESIMA SEXTA: Para mayor información le recomendamos que se tome el tiempo de leer los términos y condiciones, así como nuestra política de privacidad CUIDADOSAMENTE del producto que está adquiriendo a través de nuestro portal web www.tugruero.io</td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 100%; text-align: center">
                <img src="wp-content/themes/tugruero/images/FIRMA.jpg" alt="" class="firma">
            </td>
        </tr>
    </table>
</page>