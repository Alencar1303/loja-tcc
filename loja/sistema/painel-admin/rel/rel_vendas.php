<?php 

require_once('../../../config.php');

$tipo = @$_POST['status'];
$data_inicial = @$_POST['dataInicial'];
$data_final = @$_POST['dataFinal'];


//ALIMENTAR OS DADOS NO RELATÓRIO
$html = file_get_contents($url_loja."sistema/painel-admin/rel/rel_vendas_html.php?tipo=$tipo&data_inicial=$data_inicial&data_final=$data_final");

if($relatorio_pdf != 'Sim'){
	echo $html;
	exit();
}


//CARREGAR DOMPDF
require_once '../../../dompdf/autoload.inc.php';
use Dompdf\Dompdf;
use Dompdf\Options;

//INICIALIZAR A CLASSE DO DOMPDF
$options = new Options();
$options->set('isRemoteEnabled', true);

$pdf = new DOMPDF($options);

//Definir o tamanho do papel e orientação da página
$pdf->set_paper('A4', 'portrait');

//CARREGAR O CONTEÚDO HTML
$pdf->load_html($html);

//RENDERIZAR O PDF
$pdf->render();

//NOMEAR O PDF GERADO
$pdf->stream(
'vendas.pdf',
array("Attachment" => false)
);


?>