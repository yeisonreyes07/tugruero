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
        // echo $content;
        try {
            $html2pdf = new Html2Pdf('P', 'letter', 'fr',true, 'UTF-8', array(0, 0, 0, 0));
            $html2pdf->pdf->SetDisplayMode('fullpage');
            $html2pdf->setDefaultFont('Arial');
            $html2pdf->writeHTML($content);
            $html2pdf->output('rcv'.$_SESSION['data_wc_lwc']->id_yi.'.pdf');
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