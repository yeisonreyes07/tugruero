<?php
    require_once 'vendor/autoload.php';

    session_start();

    use Spipu\Html2Pdf\Html2Pdf;
    use Spipu\Html2Pdf\Exception\Html2PdfException;
    use Spipu\Html2Pdf\Exception\ExceptionFormatter;

    use PHPMailer\PHPMailer\PHPMailer;
    use PHPMailer\PHPMailer\Exception;

    // var_dump($_SESSION['data_wc_lwc']);

    if(!empty($_SESSION['data_wc_lwc'])){
        ob_start();
        include "reshtmldoc/templatersv.php";
        $content = ob_get_clean();
        // // echo $content;
        $mail = new PHPMailer;
        // try {
        //     $html2pdf = new Html2Pdf('P', 'A4', 'fr',true, 'UTF-8', array(0, 0, 0, 0));
        //     $html2pdf->pdf->SetDisplayMode('fullpage');
        //     $html2pdf->setDefaultFont('Arial');
        //     $html2pdf->writeHTML($content);
        //     $html2pdf->output('reshtmldoc/rcv'.$_SESSION['data_wc_lwc']->id.'.pdf',"F");

            
        //     $mail->isSMTP();                                      // Set mailer to use SMTP
        //     $mail->SMTPDebug = 0; 
        //     $mail->Host = "smtp.gmail.com";  // Specify main and backup SMTP servers
        //     $mail->SMTPAuth = true;                               // Enable SMTP authentication
        //     $mail->Username = "noreplysolcripto@gmail.com";                 // SMTP username
        //     $mail->Password = "Vot01Sol.!dlL";                           // SMTP password
        //     $mail->SMTPSecure = "tls";                            // Enable TLS encryption, `ssl` also accepted
        //     $mail->Port = "587";                                    // TCP port to connect to
        //     $mail->addAttachment('reshtmldoc/cuadro'.$_SESSION['data_wc_lwc']->id.'.pdf', 'cuadro'.$_SESSION['data_wc_lwc']->id.'.pdf');
        //     $mail->addAttachment('reshtmldoc/rcv'.$_SESSION['data_wc_lwc']->id.'.pdf', 'rcv'.$_SESSION['data_wc_lwc']->id.'.pdf');
        
        //     //Recipients
        //     $mail->setFrom("tugruerodesarrollo@gmail.com", "TuGruero");
        //     $mail->addAddress($_SESSION['data_wc_lwc']->billing->email, $_SESSION['data_wc_lwc']->billing->first_name. " " .$_SESSION['data_wc_lwc']->billing->last_name);

        //     //Suje
        //     $mail->Subject = 'TU/GRUERO: ¡Todo listo! Aquí están tus documentos (3/3)';

        //     $mail->msgHTML("Hola ".$_SESSION['data_wc_lwc']->billing->first_name. " " .$_SESSION['data_wc_lwc']->billing->last_name.", este es el paso final. Adjunto te enviamos los documentos de tu compra:<br><br>
        //     1- Contrato de plan de Grúa.<br>
        //     2- Póliza del seguro de Responsabilidad Civil Vehicular.<br><br>
        //     En ellos tendrás información detallada y los pasos a seguir en caso de que requieras nuestros servicios<br><br>
        //     ¡De ahora en adelante maneja tranquilo, estamos contigo!<br><br>
        //     Con <a href='http://tugruero.io/'>TU/GRUERO</a> quedarse accidentado ya no es un problema<br><a href='http://tugruero.io/'><img src='https://www.tugruero.io/wp-content/themes/tugruero/images/logo.png'></a>");
        //     $mail->CharSet = 'UTF-8';
        //     $mail->AltBody = 'TuGruero';
        //     $mail->send();
        // } catch (Html2PdfException $e) {
        //     $html2pdf->clean();
        //     $formatter = new ExceptionFormatter($e);
        //     echo $formatter->getHtmlMessage();
        // }
        // unlink('reshtmldoc/cuadro'.$_SESSION['data_wc_lwc']->id.'.pdf');
        // unlink('reshtmldoc/rcv'.$_SESSION['data_wc_lwc']->id.'.pdf');
        // $_SESSION['data_wc_lwc'] = "";
        // echo '<script>window.close()</script>';
    }else{
        header("location: ./");
    }
?>