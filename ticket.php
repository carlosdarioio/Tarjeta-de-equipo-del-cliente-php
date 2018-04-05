<?php
//Creando ticket de servicio

//Incluyendo clases
include "core/controller/Database.php";
include "core/controller/Executor.php";
include "core/controller/Model.php";

include "core/modules/index/model/UserData.php";
include "core/modules/index/model/LlamadasDSData.php";
include "core/modules/index/model/OperationData.php";
include "core/modules/index/model/ProductData.php";
include "core/modules/index/model/ConfigurationData.php";
include "fpdf/fpdf.php";

//Adquiriendo Datos
$operations = LlamadasDSData::getById($_GET["id"]);


$title  = "Ticket SKYTEK GPS";//ConfigurationData::getByPreffix("ticket_title")->val;
$head1  = "".$operations->TipoDeProblema;
$head2  = "".$operations->FechaFinal;
//$head2  = ConfigurationData::getByPreffix("ticket_head2")->val;

$pdf = new FPDF($orientation='P',$unit='mm', array(80,250));
$pdf->AddPage();
$pdf->SetFont('Arial','B',14);    //Letra Arial, negrita (Bold), tam. 20
//$pdf->setXY(5,0);
$pdf->setY(2);
$pdf->setX(2);
$pdf->Cell(5,5,$title);
$pdf->SetFont('Arial','B',7);    //Letra Arial, negrita (Bold), tam. 20
$pdf->setX(2);
$pdf->Cell(5,13,$head1);
$pdf->setX(2);
$pdf->Cell(5,19,$head2);
$pdf->setX(2);
$off = 25;

$pdf->setX(2);
$pdf->Cell(5,$off+3,"Solicitud de: ".$operations->Nombre);
$pdf->setX(2);
$pdf->Cell(5,$off+9,'Atendido por '.$operations->CodigoDeUsuario);
$pdf->setX(2);
$pdf->Cell(5,$off+15,'Descripcion '.$operations->Descripcion);
$pdf->setX(2);
$pdf->Cell(5,$off+21,''.$operations->Estado);
$pdf->setX(2);

$pdf->output();
