<?php
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

include "../core/autoload.php";
include "../core/modules/index/model/ProductoData.php";
include "../core/modules/index/model/ContratosData.php";
include "../core/modules/index/model/OperationData.php";
include "../core/modules/index/model/DData.php";
include "../core/modules/index/model/PData.php";

require_once '../core/controller/PhpWord/Autoloader.php';
use PhpOffice\PhpWord\Autoloader;
use PhpOffice\PhpWord\Settings;

Autoloader::register();

$word = new  PhpOffice\PhpWord\PhpWord();
//$sells = SellData::getSells();

$section1 = $word->AddSection();
$section1->addText("Contratos",array("size"=>22,"bold"=>true,"align"=>"right"));


//if datos

if($_GET["product_id"]==""){
$operations = ContratosData::getAllByDateOfficial($_GET["sd"],$_GET["ed"]);
}
else{
	//echo "entraaaaaaaaaaaaaaaaaaaaaaaaaaaa";
//$operations = LlamadasDSData::getAllByDateOfficialBP($_GET["product_id"],$_GET["sd"],$_GET["ed"]);
$operations = ContratosData::getAllByDateOfficialBP($_GET["product_id"],$_GET["sd"],$_GET["ed"]);
} 
//Fin if datos



$styleTable = array('borderSize' => 6, 'borderColor' => '888888', 'cellMargin' => 40);
$styleFirstRow = array('borderBottomColor' => '0000FF', 'bgColor' => 'AAAAAA');

$table1 = $section1->addTable("table1");
$table1->addRow();
$table1->addCell()->addText("id");
$table1->addCell()->addText("Cliente");
$table1->addCell()->addText("Nombre");
$table1->addCell()->addText("Telefono");
$table1->addCell()->addText("Fecha de inicio");
$table1->addCell()->addText("Fecha dinal");
$table1->addCell()->addText("Estado");





foreach($operations as $sell){
//    $q=OperationData::getQYesF($sell->id);
//$q=OperationData::getQByStock($sell->id,$stock);

    $table1->addRow();
    $table1->addCell()->addText("#".$sell->id);
    $table1->addCell()->addText($sell->Codigo);
    $table1->addCell()->addText($sell->Nombre);
    $table1->addCell()->addText($sell->Telefono);
    $table1->addCell()->addText($sell->FechaInicio);
    $table1->addCell()->addText($sell->FechaFinal);
    $table1->addCell()->addText($sell->Estado);

	


}

$word->addTableStyle('table1', $styleTable,$styleFirstRow);
/// datos bancarios

$filename = "ReporteClientes-".time().".docx";
#$word->setReadDataOnly(true);
$word->save($filename,"Word2007");
//chmod($filename,0444);
header("Content-Disposition: attachment; filename='$filename'");
readfile($filename); // or echo file_get_contents($filename);
unlink($filename);  // remove temp file



?>