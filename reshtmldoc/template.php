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
        <table class="page_header">
            <tr>
                <td style="width: 70%; text-align: left">
                    <img src="http://67.205.188.242/tugruero/wp-content/themes/tugruero/images/logo.png" alt="" class="logo">
                    <br>SOLUCIONES TU GRUERO C.A.<br>
                    RIF: J-40680605-6
                </td>
                <td style="width: 40%; text-align: right">
                    <table class="info">
                        <tr>
                            <td>Duración del Producto</td>
                            <td>N° Producto</td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                Anual
                            </td>
                            <td style="text-align: center">
                                <?= $_SESSION['data_wc_lwc']->id; ?>
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
                <td style="width: 100%; text-align: left;">
                    Caracas, Venezuela · (212) 2379227 / 0500 GRUERO - 0 (0500 478376 - 0) ·  comercializacion@tugruero.io · www.tugruero.io
                </td>
            </tr>
        </table>
    </page_footer>
</page>