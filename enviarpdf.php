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
        include "reshtmldoc/template.php";
        $content = ob_get_clean();
        // echo $content;
        $mail = new PHPMailer;
        try {
            $html2pdf = new Html2Pdf('P', 'A4', 'fr',true, 'UTF-8', array(0, 0, 0, 0));
            $html2pdf->pdf->SetDisplayMode('fullpage');
            $html2pdf->setDefaultFont('Arial');
            $html2pdf->writeHTML($content);
            $html2pdf->output('reshtmldoc/cuadro'.$_SESSION['data_wc_lwc']->id.'.pdf',"F");

            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->SMTPDebug = 2; 
            $mail->Host = "smtp.gmail.com";  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = "tugruerodesarrollo@gmail.com";                 // SMTP username
            $mail->Password = "perro.0000";                           // SMTP password
            $mail->SMTPSecure = "tls";                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = "587";                                    // TCP port to connect to
        
            //Recipients
            $mail->setFrom("tugruerodesarrollo@gmail.com", "TuGruero");
            $mail->addAddress("ing.leonardo.hp@gmail.com", "Leonardo Hernandez");

            //Suje
            $mail->Subject = 'Documentos';

            $mail->msgHTML("Documentos adjuntos");
            $mail->CharSet = 'UTF-8';
            $mail->AltBody = 'TuGruero';
            $mail->send();
        } catch (Html2PdfException $e) {
            $html2pdf->clean();
            $formatter = new ExceptionFormatter($e);
            echo $formatter->getHtmlMessage();
        }
        // $_SESSION['data_wc_lwc'] = "";
    }else{
        header("location: ./");
    }
?>