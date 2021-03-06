<?php
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

include "../core/autoload.php";
include "../core/modules/index/model/SolucionesData.php";

require_once '../core/controller/PhpWord/Autoloader.php';
use PhpOffice\PhpWord\Autoloader;
use PhpOffice\PhpWord\Settings;

Autoloader::register();

$word = new  PhpOffice\PhpWord\PhpWord();
//$sells = SellData::getSells();

$section1 = $word->AddSection();
$section1->addText("Soluciones ",array("size"=>22,"bold"=>true,"align"=>"right"));


//if datos

if($_GET["product_id"]=="" and $_GET["Tecnico"]==""){
$operations = SolucionesData::getAllByDateOfficial();
}
else{
	//echo "entraaaaaaaaaaaaaaaaaaaaaaaaaaaa";
                                                    //al poner esto si funcion
//$operations = SolucionesData::getAllByDateOfficialBP("001810","");//$_GET["product_id"],$_GET["Tecnico"]	
$operations = SolucionesData::getAllByDateOfficialBP($_GET["product_id"],$_GET["Tecnico"]);//$_GET["product_id"],$_GET["Tecnico"]

} 
//Fin if datos



$styleTable = array('borderSize' => 6, 'borderColor' => '888888', 'cellMargin' => 40);
$styleFirstRow = array('borderBottomColor' => '0000FF', 'bgColor' => 'AAAAAA');

$table1 = $section1->addTable("table1");
$table1->addRow();
$table1->addCell()->addText("id");
$table1->addCell()->addText("Tema");
$table1->addCell()->addText("Articulo");
$table1->addCell()->addText("Descripcion");
$table1->addCell()->addText("Actualizado por");
$table1->addCell()->addText("Actualizao el");
$table1->addCell()->addText("Creador");


foreach($operations as $sell){
//    $q=OperationData::getQYesF($sell->id);
//$q=OperationData::getQByStock($sell->id,$stock);

    $table1->addRow();
    $table1->addCell()->addText("#".$sell->id);
    $table1->addCell()->addText($sell->Tema);
    $table1->addCell()->addText($sell->Articulo);
    $table1->addCell()->addText($sell->Comentarios);
    $table1->addCell()->addText($sell->ActualizadoPor);
    $table1->addCell()->addText($sell->ActualizaoEl);
    $table1->addCell()->addText($sell->Creador);

	


}

$word->addTableStyle('table1', $styleTable,$styleFirstRow);
/// datos bancarios

$filename = "ReporteSoluciones-".time().".docx";
#$word->setReadDataOnly(true);
$word->save($filename,"Word2007");
//chmod($filename,0444);
header("Content-Disposition: attachment; filename='$filename'");
readfile($filename); // or echo file_get_contents($filename);
unlink($filename);  // remove temp file



?>