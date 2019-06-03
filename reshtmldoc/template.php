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
    <page_header>
        
    </page_header>
    <page_footer>
        <table class="page_footer">
            <tr>
                <td style="width: 100%; text-align: left;">
                    Caracas, Venezuela · (212) 2379227 / 0500 GRUERO - 0 (0500 478376 - 0) ·  comercializacion@tugruero.io · www.tugruero.io
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
    <table style="width: 100%">
        <tr style="vertical-align: top">
            <td style="width: 25%">Nombre: <?= $_SESSION['data_wc_lwc']->billing->first_name; ?></td>
            <td style="width: 25%">Apellido: <?= $_SESSION['data_wc_lwc']->billing->last_name; ?></td>
            <td style="width: 25%">Edad: <?= $_SESSION['data_wc_lwc']->meta_data[4]->value; ?></td>
            <td style="width: 25%">Edo. Civil: <?= $_SESSION['data_wc_lwc']->meta_data[5]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 25%">Telefono: <?= $_SESSION['data_wc_lwc']->meta_data[1]->value.$_SESSION['data_wc_lwc']->billing->phone; ?></td>
            <td style="width: 50%" colspan="2">Cedula/Pasaporte: <?= $_SESSION['data_wc_lwc']->meta_data[2]->value.$_SESSION['data_wc_lwc']->meta_data[3]->value; ?></td>
            <td style="width: 25%">Sexo: <?= $_SESSION['data_wc_lwc']->meta_data[0]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 25%">Domicilio: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
            <td style="width: 25%">Estado: <?= $_SESSION['data_wc_lwc']->meta_data[5]->value; ?></td>
            <td style="width: 50%" colspan="2">Ciudad: <?= $_SESSION['data_wc_lwc']->billing->city; ?></td>
        </tr>
        <tr>
            <td style="width: 100%" colspan="4">Direccion: <?= $_SESSION['data_wc_lwc']->billing->address_1." ".$_SESSION['data_wc_lwc']->billing->address_2; ?></td>
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
    <table style="width: 100%">
        <tr style="vertical-align: top">
            <td style="width: 25%">Marca: <?= $_SESSION['data_wc_lwc']->meta_data[7]->value; ?></td>
            <td style="width: 25%">Modelo: <?= $_SESSION['data_wc_lwc']->meta_data[3]->value; ?></td>
            <td style="width: 25%">Color: <?= $_SESSION['data_wc_lwc']->meta_data[12]->value; ?></td>
            <td style="width: 25%">Año: <?= $_SESSION['data_wc_lwc']->meta_data[11]->value; ?></td>
        </tr>
        <tr>
            <td style="width: 25%">Placa: <?= $_SESSION['data_wc_lwc']->meta_data[10]->value; ?></td>
            <td style="width: 25%">Tipo: <?= $_SESSION['data_wc_lwc']->meta_data[9]->value; ?></td>
            <td style="width: 25%"></td>
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
    <table style="width: 100%">
        <tr style="vertical-align: top">
            <td style="width: 33%">Nombre Producto: <?= $_SESSION['data_wc_lwc']->id; ?></td>
            <td style="width: 33%">Costo: <?= $_SESSION['data_wc_lwc']->id; ?></td>
            <td style="width: 33%">Inic. Vig: <?= $_SESSION['data_wc_lwc']->id; ?></td>
        </tr>
        <tr>
            <td style="width: 33%">Cantidad de servicios: <?= $_SESSION['data_wc_lwc']->id; ?></td>
            <td style="width: 33%"></td>
            <td style="width: 33%">Fin Vig. <?= $_SESSION['data_wc_lwc']->id; ?></td>
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
    <table style="width: 100%">
        <tr style="vertical-align: top">
            <td style="width: 100%; padding-bottom:10px">PRIMERA: El presente contrato de adhesión versa sobre un plan pre-pagado de servicio de auxilio vial (grúa anual), adquirido sólo y únicamente para el vehículo ut-supra identificado.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">SEGUNDA: Ud., podrá solicitar nuestros servicios mediante nuestra aplicación para Smartphones (teléfonos inteligentes) “TUGRUERO app clientes”, la cual podrá ser descargada de forma gratuita desde la respectiva tienda del sistema operativo de su teléfono. A todo evento, igual podrá solicitar los servicios mediante nuestro Call-Center por los números telefónicos (0212) 2379227/ 0500 GRUERO - 0 (0500 478376 - 0). Número de contingencia:  (0424) 1357579.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">TERCERA: Los servicios adquiridos mediante los planes pre-pagados TUGRUERO PLUS y TUGRUERO GOLD sólo se prestaran si el vehículo sufre o sufrió una avería que le imposibilite andar y será auxiliado a nivel nacional hacia el lugar requerido por la persona, siempre y cuando el tramo a recorrer no exceda en ningún momento a cincuenta (50) kilómetros desde el sitio de origen de avería hacia el lugar requerido por Ud. Si posee un plan pre-pagado TUGRUERO BASICO contará con tres (03) servicios de máximo veinticinco (25) kilómetros desde el sitio de origen de avería hacia el lugar requerido por Ud.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">CUARTA: El presente plan pre-pagado de auxilio vial posee validez de un (1) año,  según las condiciones de compra establecidas en el proceso de venta del producto. La duración del mismo se encuentra reflejada en la parte superior derecha del Cuadro Producto.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">QUINTA: Vencido como fuera el lapso de tiempo por el cual fue contratado el servicio, Ud. entiende que no posee “mes de gracia”, y en caso de necesitar utilizar los servicios de la empresa, deberá adquirir nuevo plan pre-pagado.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">SEXTA: Si adquirió el producto financiado, en caso de retrasos en el pago de las siguientes cuotas en la fecha, lugar, monto y forma convenida, se suspenderá inmediatamente el derecho a utilizar los servicios ofrecidos por “Soluciones Tu Gruero C.A.” conforme al 1.168 del código civil, sin menoscabo de actuar de conformidad con lo previsto en el artículo 1.167 eiusdem.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">SEPTIMA: En caso de adquirir el producto financiado, el incumplimiento en el pago de la obligación adquirida por Ud., automáticamente acarrea un incremento en el valor a pagar indicado inicialmente por el producto adquirido, en tal sentido, se le realizará recargo del veinte por ciento (20%) por cada mes de atraso en el que incurra sobre el monto total a pagar de la factura inicial. Además, no podrá disfrutar el servicio por una cantidad de dos (02) día hábiles acumulativos por cada día de retraso en el o los pagos correspondientes, contados a partir de la fecha de pago de la(s) cuotas(s) pendientes(s).</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">OCTAVA: En caso de adquirir el producto financiado, Ud., faculta a “Soluciones Tu Gruero C.A.” para realizar el proceso de cobranza de las cuotas restantes por los siguientes medios de comunicación: mensajería de texto masiva, correo electrónico y llamada. </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">NOVENA: “Soluciones Tu Gruero C.A.” no realiza reintegro o devolución de dinero en caso de no poder o no querer pagar la totalidad del producto adquirido, habiendo o no utilizado alguno de nuestros servicios.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">DECIMA:  “Soluciones Tu Gruero C.A.” no trabaja con reembolsos de facturas por servicios tomados de forma particular, en tal sentido, no se reconocerá ningún servicio de auxilio vial (grúa) tomado de forma particular. Por tanto, no se realizará el reembolso de cantidades pagadas a proveedores externos a la compañía, cuando no sean autorizados previamente por el respectivo personal  de la empresa. </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">DECIMA PRIMERA: Los servicios desde el estado Nueva Esparta hacia cualquier estado o puerto perteneciente al territorio continental de la República Bolivariana de Venezuela, o viceversa, no están cubiertos por el plan pre-pagado adquirido por su persona.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">DECIMA SEGUNDA: Cuando el recorrido que realiza la grúa desde el lugar de origen del vehículo accidentado hasta el lugar de destino indicado por el cliente, excede el kilometraje establecido en el plan de grúas, debe realizar un pago adicional para poder gozar del servicio. Las formas de pago son a través de Transferencia Bancaria o Tarjeta de Crédito). El monto a cancelar será indicado por el operador del Call Center y podrá ser procesado en el lugar de origen o destino del vehículo accidentado. El cliente tendrá máximo dos (02) días hábiles siguientes después de la solicitud para realizar dicho pago.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">DECIMA TERCERA: De no cumplir con el pago mencionado en la cláusula anterior, tendrá un recargo del 5% del monto establecido por cada día de incumplimiento que transcurra. Durante este proceso, el plan de grúas adquirido quedará momentáneamente suspendido hasta realizar la cancelación.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">DECIMA CUARTA: Para mayor información le recomendamos que se tome el tiempo de leer los términos y condiciones, así como nuestra política de privacidad CUIDADOSAMENTE del producto que está adquiriendo a través de nuestro portal web www.tugruero.io</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">(*) Servicio Urbano: servicios de máximo 50KM de recorrido.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">(**) Servicio Extraurbano: servicios de máximo 100KM de recorrido.</td>
        </tr>
    </table>
    <br>
    <table style="width: 100%" class="bordertitulo">
        <tr style="vertical-align: top">
            <td style="width: 100%">
                <b>ACUERDO LEGAL (II)</b>
            </td>
        </tr>
    </table>
    <table style="width: 100%">
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                DECIMA QUINTA: El servicio de grúas TUGRUERO BASICO, TUGRUERO PLUS y TUGRUERO GOLD estará activo, y el cliente lo podrá disfrutar, luego de diez (10) días hábiles del pago del mismo y entrega de esta planilla firmada y sellada.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                DECIMA SEXTA: El servicio de grúas contratado por el cliente será responsabilidad plena y absoluta de Soluciones Tu Gruero, C.A. entendiéndose así que cualquier reclamo, crítica y/o sugerencia del servicio debe ser comunicado a esta compañía.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                DECIMA SEPTIMA: El vehículo afiliado cuenta con servicios ilimitados de 50 Km (Solo disponible para TUGRUERO PLUS y TUGRUERO GOLD). A pesar que las averías/fallas que puede sufrir un vehículo son ilimitadas, usted cuenta solo con 3 servicios de grúa por avería/falla reportada durante la vigencia de su plan de grúas.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                DECIMA OCTAVA: El plan de grúas TUGRUERO GOLD cuenta con un (01) servicio extraurbano de máximo 100 Km y podrá ser utilizado sólo si el vehículo accidentado se encuentra en plena vía o en un lugar de resguardo y requiere el traslado hasta el lugar de domicilio establecido en el plan adquirido.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                DECIMA NOVENA: El cliente responsable del plan de grúas puede realizar unicamente un (01) cambio de domicilio durante el año de vigencia del producto. Este mismo se activará un (01) mes después de realizada la solicitud.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA: Los traslados de grúas autorizados por Soluciones TuGruero deben tener las siguientes características: 1. Plena vía/Resguardo - Domicilio, 2. Plena vía/ Resguardo - Taller, 3. Domicilio - Taller y 4. Taller - Taller.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA PRIMERA: Soluciones Tu Gruero, C.A. no garantiza la prestación de los servicios de grúa en las denominadas zonas rojas del territorio nacional. Entendiendose como zonas rojas: barrios, vecindarios, calles o cualquier territorio altamente peligroso debido a la inseguridad. Estas zonas rojas pueden ser verificadas en www.tugruero.io
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA SEGUNDA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial a vehículos que presenten fallas debido a negligencias del conductor y/o propietario. Estas fallas son: batería descargada, falta de gasolina, llaves dejadas dentro del vehículo, dejar negligentemente el vehículo atascado en barro o arena, accidentarse en lugares no accesibles o inhóspitos, personas bajo efectos del alcohol o sustancias psicotrópicas o cualquier otra falla que el operador considere negligente.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA TERCERA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial (grúa) a vehículos que tengan una llanta espichada. Se entiende que el cliente debe poseer un (01) neumático de repuesto dentro de su vehículo y si no lo posee, es un negligencia del conductor y/o propietario del mismo.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA CUARTA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial (grúa) en forma de rescate. Se entiende por rescate a: vehículos volcados, encunetados a más de dos (02) metros, vehículos fuera de la vía y/o cualquier condición que requiera un maniobra especial por el operador de grúa. 
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA QUINTA: En caso de que el vehículo haya chocado contra otro vehículo o algún elemento de la Nación, Soluciones Tu Gruero, C.A. no puede prestar sus servicios de auxulio vial hasta que las autoridades de tránsito hayan liberado el vehículo. Una vez, el conductor y/o propietario del vehículo tenga la boleta de liberación, la compañía podrá prestar el servicio de grúa pertinente.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA SEXTA: En caso de que el vehículo se encuentre en un estacionamiento adscrito a un ente gubernamental y ya el cliente posea la boleta de liberación, este debe garantizar que el vehículo se encuentre completamente para ser retirado del lugar. De esta forma, se agiliza el proceso.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA SEPTIMA: Soluciones Tu Gruero, C.A. verificará ante el Ministerio Público la placa del vehículo que solicite el servicio y si este se encuentra solicitado por este ente, la compañía procederá inmediatamente a la no prestación del servicio y cancelación del plan. Además, se betará al cliente contratante de por vida y no podrá disfrutar de los servicios que ofrece la compañía.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">
                VIGESIMA OCTAVA: En caso de que el vehículo tenga dos (02) neumáticos dañados, Soluciones Tu Gruero, C.A. solamente prestará el servicio si ambos neumáticos son del mismo eje (delanteros o traseros). Esto se debe para poder realizar el servicio con una grúa de WheelLift o Gancho.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                VIGESIMA NOVENA: Soluciones Tu Gruero, C.A. no prestará servicios de auxilio vial si el conductor y/o propietario del vehículo no posee el carnet de circulación consigo en el momento y lugar del vehículo accidentado.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                TRIGESIMA: Soluciones Tu Gruero, C.A. se reserva el derecho de cancelar y/o posponer cualquier servicio de auxilio vial (grúa) en caso de: manifestaciones sociales, protestas, guerras, toque de queda, catástrofes naturales que afecten las vías y el paso de los vehículos y/o cualquier eventualidad que imposibilite la normal circulación de vehículos en la vía.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                TRIGESIMA PRIMERA: En caso de que el cliente cometa actos fraudulentos para solicitar servicios de grúas y aprovecharse de los plan de grúas, Soluciones Tu Gruero, C.A. procederá a la no prestación del servicio e inmediatamente a la suspensión y cancelación del plan contratado. Además, se betará al cliente contratante por una duración de un (01) año y no podrá gozar ningún servicio que ofrezca la compañía.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                TRIGESIMA SEGUNDA: Se entiende por actos fraudulentos: indicar al operador o en la aplicación móvil un origen y/o destino diferente al real, indicar un vehículo con diferente placa, marca, modelo, color, indicar una avería diferente a la real. En vista de esto se le solicita al cliente suministrar una información veraz y real.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                TRIGESIMA TERCERA: En caso de que el servicio de grúa tenga como destino un taller, el cliente debe asegurar que el mismo se encuentre abierto para cuando se llegue a dicho destino. En caso contrario, Soluciones Tu Gruero, C.A. llevará el vehículo al domicilio del cliente (siempre y cuando el servicio no exceda los cincuenta (50) kilómetros) y no se prestará más servicios para esa avería que presenta el vehículo. Si el domicilio de la persona se encuentra en un destino mayor a cincuenta (50) kilómetros, el cliente puede elegir otro destino para resguardar el vehículo.
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                TRIGESIMA CUARTA: Con la compra de este plan usted esta autorizando a Soluciones Tu Gruero, C.A. a utilizar su imagen a fin de que la misma sea divulgada y/o incorporada con fines publicitarios institucionales en medios de comunicación audiovisuales, radiales, gráficos, internet, vía pública y/o cualquier otro soporte conforme el plan de medios. 
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px;">
                TRIGESIMA QUINTA: Soluciones Tu Gruero, C.A. se reserva el derecho de modificar los Términos y Condiciones del servicio cuando la empresa lo considere necesario para mejorar su servicio, dentro de los límites fijados por las leyes de la República Bolivariana de Venezuela. 
            </td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">(*) Servicio Urbano: servicios de máximo 50KM de recorrido.</td>
        </tr>
        <tr>
            <td style="width: 100%; padding-bottom:10px">(**) Servicio Extraurbano: servicios de máximo 100KM de recorrido.</td>
        </tr>
    </table>
</page>