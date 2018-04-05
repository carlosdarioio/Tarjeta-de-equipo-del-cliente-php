<?php

/** Error reporting */
error_reporting(E_ALL);
ini_set('display_errors', TRUE);
ini_set('display_startup_errors', TRUE);

include "../core/autoload.php";
//include "../core/modules/index/model/ProductoData.php";
include "../core/modules/index/model/SolucionesData.php";
//include "../core/modules/index/model/OperationData.php";
//include "../core/modules/index/model/OperationTypeData.php";

/** Include PHPExcel */
//require_once dirname(__FILE__) . '/../Classes/PHPExcel.php';
require_once '../core/controller/PHPExcel/Classes/PHPExcel.php';


// Create new PHPExcel object
$objPHPExcel = new PHPExcel();
//$products = ProductData::getAll();

$operations = array();

//if($_GET["product_id"]==""){
if($_GET["product_id"]=="" and $_GET["Tecnico"]==""){
$operations = SolucionesData::getAllByDateOfficial();
}
else{
	//echo "entraaaaaaaaaaaaaaaaaaaaaaaaaaaa";
                                                    //al poner esto si funcion
//$operations = SolucionesData::getAllByDateOfficialBP("001810","");//$_GET["product_id"],$_GET["Tecnico"]	
$operations = SolucionesData::getAllByDateOfficialBP($_GET["product_id"],$_GET["Tecnico"]);//$_GET["product_id"],$_GET["Tecnico"]

} 


// Set document properties


$objPHPExcel->getProperties()->setCreator("SKYTEKGPS")
							 ->setLastModifiedBy("SKYTEKGPS")
							 ->setTitle("Reporte - Soluciones")
							 ->setSubject("SKYTEKGPS")
							 ->setDescription("")
							 ->setKeywords("")
							 ->setCategory("");


// Add some data
$sheet = $objPHPExcel->setActiveSheetIndex(0);

$sheet->setCellValue('A1', 'Reporte de Soluciones - SKYTEKGPS')
->setCellValue('A2', 'id')
->setCellValue('B2', 'Tema')
->setCellValue('C2', 'Articulo')
->setCellValue('D2', 'Comentarios')
->setCellValue('E2', 'Actualizado por')
->setCellValue('F2', 'Actualizao el')
->setCellValue('G2', 'Creador');
//->setCellValue('H2', 'Estado');

//			 Tema Articulo Comentarios ActualizadoPor ActualizaoEl Creador

$start = 3;
foreach($operations as $operation){
$sheet->setCellValue('A'.$start, $operation->id)
->setCellValue('B'.$start, $operation->Tema)
->setCellValue('C'.$start, $operation->Articulo)
->setCellValue('D'.$start, $operation->Comentarios)
->setCellValue('E'.$start, $operation->ActualizadoPor)
->setCellValue('F'.$start, $operation->ActualizaoEl)
->setCellValue('G'.$start, $operation->Creador);
//->setCellValue('H'.$start, $operation->Estado);


		
$start++;
}

// Set active sheet index to the first sheet, so Excel opens this as the first sheet
$objPHPExcel->setActiveSheetIndex(0);


// Redirect output to a client’s web browser (Excel2007)
header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
header('Content-Disposition: attachment;filename="ReporteDeSOL-'.Date('D-M-Y').'.xlsx"');
header('Cache-Control: max-age=0');
// If you're serving to IE 9, then the following may be needed
header('Cache-Control: max-age=1');

// If you're serving to IE over SSL, then the following may be needed
header ('Expires: Mon, 26 Jul 1997 05:00:00 GMT'); // Date in the past
header ('Last-Modified: '.gmdate('D, d M Y H:i:s').' GMT'); // always modified
header ('Cache-Control: cache, must-revalidate'); // HTTP/1.1
header ('Pragma: public'); // HTTP/1.0

$objWriter = PHPExcel_IOFactory::createWriter($objPHPExcel, 'Excel2007');
$objWriter->save('php://output');
exit;
