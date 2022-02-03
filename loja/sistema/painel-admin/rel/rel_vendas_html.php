<?php 
require_once("../../../conexao.php"); 

setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
$data_hoje = utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));

$tipo = @$_GET['tipo'];
$data_inicial = @$_GET['data_inicial'];
$data_final = @$_GET['data_final'];

$data_inicialF = implode('/', array_reverse(explode('-', $data_inicial)));
$data_finalF = implode('/', array_reverse(explode('-', $data_final)));

if($tipo == "Sim"){
	$titulo_rel = 'Relatório de Vendas Pagas';
}else if($tipo == "Não"){
	$titulo_rel = 'Relatório de Vendas Pendentes';
}else{
	$titulo_rel = 'Relatório de Vendas';
}

if($data_inicial == $data_final){
	$apuracao = 'Data da Apuração: '.$data_inicialF;
}else{
	$apuracao = 'Apuração: '.$data_inicialF.' à '.$data_finalF;
}

if($tipo == ""){
	$tipo = '%%';
}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Relatório de Vendas</title>
	<link rel="shortcut icon" href="../img/favicon.ico" />

	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-wEmeIV1mKuiNpC+IOBjI7aAzPcEZeedi5yW5f2yOq55WWLwNGmvvx4Um1vskeMj0" crossorigin="anonymous">

	<style>

		@page {
			margin: 0px;

		}

		body{
			margin-top:0px;
			font-family:Times, "Times New Roman", Georgia, serif;
		}


		<?php if($relatorio_pdf == 'Sim'){ ?>

		.footer {
			margin-top:20px;
			width:100%;
			
			padding:5px;
			position:absolute;
			bottom:0;

		}

		<?php }else{ ?>
		.footer {
			margin-top:20px;
			width:100%;
			background-color: #ebebeb;
			padding:5px;
			
		}

		<?php } ?>

		.cabecalho {    
			padding:10px;
			margin-bottom:30px;
			width:100%;
			font-family:Times, "Times New Roman", Georgia, serif;

		}

		.titulo_cab{
			color:#0340a3;
			font-size:16px;
		}

		
		
		.titulo{
			margin:0;
			font-size:28px;
			font-family:Arial, Helvetica, sans-serif;
			color:#6e6d6d;

		}

		.subtitulo{
			margin:0;
			font-size:12px;
			font-family:Arial, Helvetica, sans-serif;
			color:#6e6d6d;
		}

		.areaTotais{
			border : 0.5px solid #bcbcbc;
			padding: 15px;
			border-radius: 5px;
			margin-right:25px;
			margin-left:25px;
			position:absolute;
			right:20;
		}

		.areaTotal{
			border : 0.5px solid #bcbcbc;
			padding: 15px;
			border-radius: 5px;
			margin-right:25px;
			margin-left:25px;
			background-color: #f9f9f9;
			margin-top:2px;
		}

		.pgto{
			margin:1px;
		}

		.fonte13{
			font-size:13px;
		}

		.esquerda{
			display:inline;
			width:50%;
			float:left;
		}

		.direita{
			display:inline;
			width:50%;
			float:right;
		}

		.table{
			padding:15px;
			font-family:Verdana, sans-serif;
			margin-top:20px;
		}

		.texto-tabela{
			font-size:12px;
		}


		.esquerda_float{

			margin-bottom:10px;
			float:left;
			display:inline;
		}


		.titulos{
			margin-top:10px;
		}

		.image{
			margin-top:-10px;
		}

		.margem-direita{
			margin-right: 80px;
		}

		.margem-direita50{
			margin-right: 50px;
		}

		hr{
			margin:8px;
			padding:0px;
		}


		.titulorel{
			margin:0;
			font-size:25px;
			font-family:Arial, Helvetica, sans-serif;
			color:#6e6d6d;

		}

		.margem-superior{
			margin-top:30px;
		}

		.areaSubtituloCab{
			margin-top:15px;
			margin-bottom:15px;
		}




		.area-tab{
			
			display:block;
			width:100%;
			height:30px;

		}


		.area-cab{
			
			display:block;
			width:100%;
			height:10px;

		}

		
		.coluna{
			margin: 0px;
			float:left;
			height:30px;
		}


		hr .hr-table{
			
			padding:2px;
			margin:0px;
		}

		.titulo-cardapio{
			width:100%;
			background-color: #f7f7f7;
			padding:3px;
			font-size:13px;
			font-weight: bold;
			margin-bottom:10px;
			margin-top:10px;
		}



	</style>


</head>
<body>

	
		<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna titulo_cab" style="width:70%"> <u><?php echo $titulo_rel ?></u></div>
			<div align="right" class="coluna" style="width:30%"> <?php echo mb_strtoupper($nome_loja) ?></div>
		</div>
		</section>

		<br>

		<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna" style="width:60%"><small> <small><?php echo $apuracao ?></small></small></div>
			<div align="right" class="coluna" style="width:40%"><small> <small><small> <?php echo mb_strtoupper($data_hoje) ?></small></small></small></div>
		</div>
		</section>

		<br>
		<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
		</div>
			
	

	<div class="mx-2" style="padding-top:15px ">

		

	<small><small><small>
	<section class="area-tab" style="background-color: #f5f5f5;">
					
						<div class="linha-cab" style="padding-top: 5px;">
							<div class="coluna" style="width:15%">DATA</div>
							<div class="coluna" style="width:25%">CLIENTE</div>
							<div class="coluna" style="width:25%">STATUS</div>
							<div class="coluna" style="width:15%">PRODUTOS</div>
							<div class="coluna" style="width:20%">TOTAL</div>
							
							
							
						</div>
					
				</section><small></small>

				<div class="cabecalho mb-1" style="border-bottom: solid 1px #e3e3e3;">
		</div>

		 <?php 
		 		  $vendasPagas = 0;
		 		  $vendasPendentes = 0;
		 		  $totalVendido = 0;
                   $query_ped = $pdo->query("SELECT * FROM vendas where (data >= '$data_inicial' or data >= '$data_final') and pago LIKE '$tipo' order by id desc ");
                   $res_ped = $query_ped->fetchAll(PDO::FETCH_ASSOC);

                   for ($i=0; $i < count($res_ped); $i++) { 
                      foreach ($res_ped[$i] as $key => $value) {
                      }

                      $data = $res_ped[$i]['data'];
                      $total = $res_ped[$i]['total'];
                      $pago = $res_ped[$i]['pago'];
                      $status = $res_ped[$i]['status'];
                      $rastreio = $res_ped[$i]['rastreio'];
                      $id_venda = $res_ped[$i]['id'];
                       $pgto_entrega = $res_ped[$i]['pgto_entrega'];
                        $frete = $res_ped[$i]['frete'];
                        $id_usuario = $res_ped[$i]['id_usuario'];

                       if($pago == 'Sim'){
                       	$vendasPagas += $total;
                       }

                       if($pago == 'Não'){
                       	$vendasPendentes += $total;
                       }

                       $totalVendido += $total;

                      $data = implode('/', array_reverse(explode('-', $data)));
                      $totalF = number_format($total, 2, ',', '.');
                      $vendasPagasF = number_format($vendasPagas, 2, ',', '.');
                      $vendasPendentesF = number_format($vendasPendentes, 2, ',', '.');
						$totalVendidoF = number_format($totalVendido, 2, ',', '.');


                      $quantidade_produtos = 0;
                    $query2 = $pdo->query("SELECT * FROM carrinho where id_venda = '$id_venda' order by id desc ");
                   $res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
                   for ($i2=0; $i2 < count($res2); $i2++) { 
                      foreach ($res2[$i2] as $key => $value) {
                      }
                   $quantidade_produtos += $res2[$i2]['quantidade'];

                 }
                   $total_produtos = @count($res2);
                       
                    

                    $query3 = $pdo->query("SELECT * FROM usuarios where id = '$id_usuario' order by id desc ");
                   $res3 = $query3->fetchAll(PDO::FETCH_ASSOC);
                   $nome_cliente = $res3[0]['nome'];
			?>

				<section class="area-tab" style="padding-top:5px">
					
				<div class="linha-cab <?php echo $classe_linha ?>">

				
			

			<div class="coluna" style="width:15%">
                            <?php 
                        if($pago == 'Sim') {
                            echo '<img src="'.$url_loja.'img/verde.jpg" width="11px">';
                        }else{

                             echo '<img src="'.$url_loja.'img/vermelho.jpg" width="11px">';
                        }?> 
                        <?php echo $data ?>
                            
                         </div>


                          <div class="coluna" style="width:25%"><?php echo $nome_cliente ?>

                   </div>


                    <div class="coluna" style="width:25%">
                           
                            <?php if($status == 'Enviado'){
                                echo '<img src="'.$url_loja.'img/correios.png" width"25px" height="25"><a class="text-primary" title="Código de Postagem"><small>'. $rastreio .'</small></a>';
                            }else{
                                echo $status;
                                
                            } ?>    
                            </div>


                       


                      
                       

                        <div class="coluna" style="width:15%">
                            <a href="" onclick="verProdutos('<?php echo $id_venda ?>')" title="Ver Produtos">
                            <i class="fas fa-eye mr-1 text-primary"></i>
                            <?php echo $quantidade_produtos ?> Produto(s)
                            </a>
                                
                        </div>


                         <div class="coluna" style="width:20%">R$ <?php echo $total ?>
                            
                             <?php if($frete > 0){
              echo ' <small><span class="text-primary">('.$frete.')</span></small>';
             } ?>

             <?php 
             if($pgto_entrega != ''){
                                  echo ' <small><span class="text-danger">(PGTO Entrega)</span></small>';
                                }
              ?>

                        </div>
                       

                      
				
				
				

			</div>
		</section>
		<div class="cabecalho" style="border-bottom: solid 1px #e3e3e3;">
		</div>
	
		<?php } ?>


		</small></small>
	
	

</div>


<div class="cabecalho mt-3" style="border-bottom: solid 1px #0340a3">
		</div>

		<small><small><small>
		<div class="linha-cab p-2">


				<div class="coluna text-success" style="width:35%">VENDAS PAGAS: R$ <?php echo @$vendasPagasF ?> </div>
				<div class="coluna text-danger" style="width:35%">VENDAS PENDENTES: R$ <?php echo @$vendasPendentesF ?>  </div>

				
				<div align="right" class="coluna" style="width:30%">TOTAL DE VENDAS: R$ <?php echo @$totalVendidoF ?>  </div>
			</div>
		</small></small></small>
	
		

		<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
		</div>

		<br>


<div class="footer" align="center">
	<span style="font-size:12px"><?php echo $rodape_relatorios ?></span> 
</div>




</body>
</html>
