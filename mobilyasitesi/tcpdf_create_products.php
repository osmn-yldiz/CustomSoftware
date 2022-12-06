<?php

include 'config.php';
include 'class/products.php';
include 'class/productsImages.php';

$products = new products();
$productsInfo = $products->productsFindID($_GET['productsID']);
$productsImages = new productsImages();
$productsImagesList = $productsImages->productsImagesList($_GET['productsID']);
//print_r($productsImagesList);exit;
$PropertyArray = json_decode($productsInfo['Property']);

ini_set("display_errors", 1);
define ('K_TCPDF_EXTERNAL_CONFIG', true);
define ('K_PATH_IMAGES', "assets/images/");
define ('PDF_HEADER_LOGO', 'logo.png');
define ('PDF_HEADER_LOGO_WIDTH', 50);
define ('K_PATH_CACHE', sys_get_temp_dir().'/');
define ('K_BLANK_IMAGE', 'antetli_kagit.jpg');
define ('PDF_PAGE_FORMAT', 'A4');
define ('PDF_PAGE_ORIENTATION', 'P');
define ('PDF_CREATOR', 'TCPDF');
define ('PDF_AUTHOR', 'TCPDF');
define ('PDF_HEADER_TITLE', '');
define ('PDF_HEADER_STRING', "");
define ('PDF_UNIT', 'mm');
define ('PDF_MARGIN_HEADER', 1);
define ('PDF_MARGIN_FOOTER', 10);
define ('PDF_MARGIN_TOP', 20);
define ('PDF_MARGIN_BOTTOM', 25);
define ('PDF_MARGIN_LEFT', 15);
define ('PDF_MARGIN_RIGHT', 15);
define ('PDF_FONT_NAME_MAIN', 'helvetica');
define ('PDF_FONT_SIZE_MAIN', 10);
define ('PDF_FONT_NAME_DATA', 'helvetica');
define ('PDF_FONT_SIZE_DATA', 6);
define ('PDF_FONT_MONOSPACED', 'courier');
define ('PDF_IMAGE_SCALE_RATIO', 1.25);
define('HEAD_MAGNIFICATION', 1.1);
define('K_CELL_HEIGHT_RATIO', 1.25);
define('K_TITLE_MAGNIFICATION', 1.3);
define('K_SMALL_RATIO', 2/3);
define('K_THAI_TOPCHARS', true);
define('K_TCPDF_CALLS_IN_HTML', true);
define('K_TCPDF_THROW_EXCEPTION_ERROR', false);

require_once("class/TCPDF-main/tcpdf.php");

// create new PDF document
$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// Extend the TCPDF class to create custom Header and Footer
class MYPDF extends TCPDF {

    //Page header
    public function Header() {
        // Logo
         $this->SetFillColor(246, 246, 246);
        $this->Rect(0, 0, $this->getPageWidth(), $this->getPageHeight(), 'DF', "");
        $image_file = 'img/logo.png';
        $this->Image($image_file, 70, 5, 70, '', 'PNG', '', 'C', false, 300, '', false, false, 0, false, false, false);
         $image_file = 'img/antetli_kagit_cizgisi.png';
        $this->Image($image_file, 50, 30, 650, '', 'PNG', '', 'C', false, 300, '', false, false, 0, false, false, false);
        
        // Set font
       // $this->SetFont('helvetica', 'B', 20);
        // Title
        //$this->Cell(0, 15, '<< TCPDF Example 003 >>', 0, false, 'C', 0, '', 0, false, 'M', 'M');
    }

    // Page footer
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-12);
        // Set font
        $this->SetFont('helvetica', 'I', 8);
       
         $image_file = 'img/pdf_footer.png';
        $this->Image($image_file, 105.5, 275, 100, '', 'PNG', '', 'C', false, 300, '', false, false, 0, false, false, false);
        // Page number
        $this->Cell(0, 10, 'Sayfa '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}

// create new PDF document
$pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('YILDIZ MOBİLYA KONFEKSİYON İNŞ. TUR. SAN. VE TİC. LTD. ŞTİ.');
$pdf->SetTitle($productsInfo['Name']);
$pdf->SetSubject($productsInfo['Name']);

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
$pdf->setFooterData(array(0,64,0), array(0,64,128));

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);



// ---------------------------------------------------------

// set font
$pdf->SetFont('freeserif', '', 11, '', true);

// add a page
$pdf->AddPage();

// Set some content to print
$html = '<style>

.baslik {
    text-align: center;
    color: #000000;
    font-size: 2.5em;
    font-weight: bold;
}
div.gallery {
  margin: 5px;
  border: 1px solid #ccc;
  float: left;
  width: 180px;
}

div.gallery:hover {
  border: 1px solid #777;
}

div.gallery img {
  width: 100%;
  height: auto;
}

div.desc {
  padding: 15px;
  text-align: center;
}
</style>';

$html .= '<br><br><h1 class="baslik">'.$productsInfo['Name'].'</h1>';

$html .= '<table style="border-collapse: collapse; width: 100%;">
  <tr class="customers">
    <th style="padding-top: 12px; padding-bottom: 12px; background-color: #970D1B; color: white; border: 1px solid #000; padding: 8px; font-weight: bold; font-size: 20px;" align="center">Ürün Açıklaması</th>
  </tr>
  <tr class="customers">
    <td style="border: 1px solid #000; padding: 8px; font-size: 17px; text-align: center;"><ul>
    ';
    foreach ($PropertyArray as $Property) {
      $html .= '<li align="left">'.$Property->value.'</li>';
    }
    $html .= '</ul></td>
  </tr>
</table> <br><br>';

$html .= '<table style="border-collapse: collapse; width: 100%;">
  <tr class="customers">
    <th style="padding-top: 12px; padding-bottom: 12px; background-color: #970D1B; color: white; border: 1px solid #000; padding: 8px; font-weight: bold; font-size: 20px;" align="center">Ürün Özellikleri</th>
  </tr>
  <tr class="customers">
    <td style="border: 1px solid #000; padding: 8px; font-size: 17px; text-align: center;">'.$productsInfo['Measure'].'</td>
  </tr>
</table> <br><br>'; 

$html .= '<img src="uploads/products/buyuk/'.$productsImagesList[0]['Images'].'">';
// Print text using writeHTMLCell()
$pdf->writeHTMLCell(0, 0, '', '', $html, 0, 1, 0, true, '', true); 

$horizontal_alignments = array('L', 'C', 'R');
$vertical_alignments = array('T', 'M', 'B');

// test all combinations of alignments

$resim = 0;
for ($i = 0; $i < count($productsImagesList); ++$i) {
  if($i==1){
    $pdf->SetXY(50, 30);
    $pdf->writeHTMLCell(0, 0, '', '', '<h1>'.$productsInfo['Name'].' Resimleri</h1>'.' ', 0, 1, 0, true, '', true); 

    //$pdf->MultiCell(55, 5, $productsInfo['Name'].' Resimleri', 1, 'J', 1, 2, '' ,'', true);
    //$pdf->MultiCell('auto', 'auto', $productsInfo['Name'].' Resimleri', 1, 'C', 0, 0, '', '', true);

  }
    if($i%4 == 0){
      $x = 13;
      $y = 40;
      $w = 90;
      $h = 50;
      $pdf->AddPage();

    }
    $fitbox = $horizontal_alignments[$i].' ';
    
    $x = 13;
    for ($j = 0; $j < 2; ++$j) {
        $fitbox[1] = $vertical_alignments[$j];
        //$pdf->Rect($x, $y, $w, $h, 'F', array(), array(128,255,128));
        $pdf->Image('uploads/products/buyuk/'.$productsImagesList[$resim]['Images'], $x, $y, $w, $h, 'JPG', '', '', false, 300, '', false, false, 0, $fitbox, false, false);
        $x += 95; // new column
         $resim++;
    }
    $y += 55; // new row

}

/*$i=0;
foreach($productsImagesList as $value){

  if($i==0){
    $x =15;
    $y = 125;
    $pdf->SetXY($x, $y);
  }
  if($i%2 == 0){
    $x+=20;
    $y+=55;
  }else{
    $x+=110;
    $y+=25;
  }/*if ($i%3==0) {
    $x+=10;
    $y+=55;
  }
  /*if ($i%3==0) {
    $x+=110;
    $y+=75;
  }else{
    $x=10;
    $y=125;
  }*/

/*  if($i%3==1){
    $y += 55;
    $x=15;
  }
  else{
    $x+=100;
    $y+=55;
  }*/

  /*$pdf->Image('uploads/products/buyuk/'.$value['Images'], $x, $y, 90, 50, '', '', 'T', false, 300, '', false, false, 1, false, false, false);

    $i++;
}*/
/*
$pdf->Image('uploads/galeri/1637839843-XCF.png', 110, 125, 90, 50, '', '', '', false, 300, '', false, false, 1, false, false, false);
$pdf->Image('uploads/galeri/1637839843-XCF.png', 10, 180, 90, 50, '', '', '', false, 300, '', false, false, 1, false, false, false);*/


               

// output the HTML content
//$pdf->writeHTML($html, true, 0, true, 0);

// reset pointer to the last page
$pdf->lastPage();

// ---------------------------------------------------------

//Close and output PDF document
$pdf->Output($productsInfo['Name'].'.pdf', 'I');
//$pdf->Output('/D:/www/eltemtek_suanki_site/kariyer/ss.pdf', 'I');

//============================================================+
// END OF FILE
//============================================================+
