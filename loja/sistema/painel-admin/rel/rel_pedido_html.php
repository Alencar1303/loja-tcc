<?php 
require_once("../../../conexao.php"); 

setlocale(LC_TIME, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
date_default_timezone_set('America/Sao_Paulo');
$data_hoje = utf8_encode(strftime('%A, %d de %B de %Y', strtotime('today')));

$id = @$_GET['id'];
$query = $pdo->query("SELECT * FROM vendas where id = '$id' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);
$total = $res[0]['sub_total'];
$frete = $res[0]['frete'];
$subtotal = $res[0]['total'];
$data = $res[0]['data'];
$pago = $res[0]['pago'];
$status = $res[0]['status'];
$rastreio = $res[0]['rastreio'];
$pgto_entrega = $res[0]['pgto_entrega'];

if($pago == 'Sim'){
	$texto_pedido = 'Venda Paga';
}else{
	$texto_pedido = 'Venda Pendente';
}


$data = implode('/', array_reverse(explode('-', $data)));
$subtotal = number_format($subtotal, 2, ',', '.');
$total = number_format($total, 2, ',', '.');
$frete = number_format($frete, 2, ',', '.');




$query_v = $pdo->query("SELECT * FROM vendas where id = '$id' ");
$res_v = $query_v->fetchAll(PDO::FETCH_ASSOC);
$id_usu = $res_v[0]['id_usuario'];

$query_u = $pdo->query("SELECT * FROM usuarios where id = '$id_usu' ");
$res_u = $query_u->fetchAll(PDO::FETCH_ASSOC);
$cpf_usu = $res_u[0]['cpf'];

$query = $pdo->query("SELECT * FROM clientes where cpf = '$cpf_usu' ");
$res = $query->fetchAll(PDO::FETCH_ASSOC);

$nome = $res[0]['nome'];
$cpf = $res[0]['cpf'];
$telefone = $res[0]['telefone'];
$rua = $res[0]['rua'];
$numero = $res[0]['numero'];
$cep = $res[0]['cep'];
$bairro = $res[0]['bairro'];
$cidade = $res[0]['cidade'];
$estado = $res[0]['estado'];
$email_cli = $res[0]['email'];

?>

<!DOCTYPE html>
<html>
<head>
	<title>Relatório de Pedido</title>
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
			<div class="coluna titulo_cab" style="width:70%"> <u>RELATÓRIO DO PEDIDO - <?php echo mb_strtoupper($texto_pedido) ?></u></div>
			<div align="right" class="coluna" style="width:30%"> <?php echo mb_strtoupper($nome_loja) ?></div>
		</div>
	</section>

	<br>

	<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna" style="width:60%"><small> <small>
				Pedido Nº <?php echo $id;

				if($pgto_entrega == 'sim'){
					echo ' <span class="text-danger">(Pagamento na Entrega)</span>';
				}

				?>

			</small></small></div>
			<div align="right" class="coluna" style="width:40%"><small> <small><small> <?php echo mb_strtoupper($data_hoje) ?></small></small></small></div>
		</div>
	</section>

	<br>
	<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
	</div>
	<br>


	<div><small><small>&nbsp; <span class="text-primary">DADOS DA VENDA - STATUS (<?php echo $status; ?> <?php echo $rastreio ?>)</span></small></small></div>
	<hr>
	<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna" style="width:25%"><small> <b>Data da Venda :</b><?php echo $data ?> </small></div>

			<div class="coluna" style="width:25%"><small> <b>Total : R$ </b><?php echo $total ?> </small></div>

			<div class="coluna" style="width:25%"><small> <b>Frete : R$ </b><?php echo $frete ?> </small></div>

			<div class="coluna" style="width:25%"><small> <b>Subtotal : R$ </b><?php echo $subtotal ?> </small></div>

			
		</div>
	</section>

	<br>
	<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
	</div>



	<br><br>


	<div><small><small>&nbsp; <span class="text-primary">DADOS DO CLIENTE - <?php echo mb_strtoupper($nome) ?></span></small></small></div>
	<hr>
	<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna" style="width:25%"><small> <b>Nome :</b><?php echo $nome ?> </small></div>

			<div class="coluna" style="width:23%"><small> <b>Telefone : </b><?php echo $telefone ?> </small></div>

			<div class="coluna" style="width:20%"><small> <b>CPF : </b><?php echo $cpf ?> </small></div>

			<div class="coluna" style="width:32%"><small> <b>Email :  </b><?php echo $email ?> </small></div>



			
		</div>
	</section>
	<br>

	<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna" style="width:60%"><small> <b>Endereço :</b><?php echo $rua ?> </small></div>

			<div class="coluna" style="width:20%"><small><b>Número :  </b><?php echo $numero ?> </small></div>

			<div class="coluna" style="width:20%"><small> <b>CEP :  </b><?php echo $cep ?> </small></div>
			
		</div>
	</section>

	<br>

	<section class="area-cab">
		<div class="cabecalho">
			
			<div class="coluna" style="width:40%"><small> <b>Bairro : </b><?php echo $bairro ?> </small></div>

			<div class="coluna" style="width:30%"><small> <b>Cidade : </b><?php echo $cidade ?> </small></div>

			<div class="coluna" style="width:30%"><small> <b>Estado :  </b><?php echo $estado ?> </small></div>



			
		</div>
	</section>


	<br>
	<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
	</div>


	<br>

	<div><small><small>&nbsp; <span class="text-primary">DADOS DO REMETENTE (LOJA)</span></small></small></div>
	<hr>
	<section class="area-cab">
		<div class="cabecalho">
			<div class="coluna" style="width:100%"><small> <b>Endereço :</b><?php echo $endereco_loja ?> </small></div>
			
		</div>
	</section>

	<br>
	<div class="cabecalho" style="border-bottom: solid 1px #0340a3">
	</div>

	

	<div class="mx-2" style="padding-top:40px ">

		

			<small>
			<section class="area-tab" style="background-color: #f5f5f5;">

				<div class="linha-cab" style="padding-top: 5px;">
					<div class="coluna" style="width:10%">QTD</div>
					<div class="coluna" style="width:90%">PRODUTO</div>
					
				</div>

			</section><small></small>

			<div class="cabecalho mb-1" style="border-bottom: solid 1px #e3e3e3;">
			</div>

						

						<?php 

						$res = $pdo->query("SELECT * from carrinho where id_venda = '$id' ");
						$dados = $res->fetchAll(PDO::FETCH_ASSOC);
						for ($i=0; $i < count($dados); $i++) { 
							foreach ($dados[$i] as $key => $value) {
							}

							$id_produto = $dados[$i]['id_produto'];
							$id_carrinho = $dados[$i]['id'];	
							$combo = $dados[$i]['combo'];	
							$quantidade = $dados[$i]['quantidade'];

							if($combo != 'Sim'){
								$res2 = $pdo->query("SELECT * from produtos where id = '$id_produto' ");
							}else{
								$res2 = $pdo->query("SELECT * from combos where id = '$id_produto' ");
							}



							$dados2 = $res2->fetchAll(PDO::FETCH_ASSOC);
							$nome_produto = $dados2[0]['nome'];
							$valor = $dados2[0]['valor'];

							$valor_final = $valor * $quantidade;

							$valor = number_format( $valor , 2, ',', '.');
							$valor_final = number_format( $valor_final , 2, ',', '.');
							?>

							<section class="area-tab" style="padding-top:5px">
							<div class="linha-cab <?php echo $classe_linha ?>">

							<div class="coluna" style="width:10%">
								<?php echo $quantidade ?>
							</div>
							<div class="coluna" style="width:90%">
								<?php echo $nome_produto ?>
								<?php 
								if($combo != 'Sim'){
									$query_c = $pdo->query("SELECT * from carac_prod where id_prod = '$id_produto'");
									$res_c = $query_c->fetchAll(PDO::FETCH_ASSOC);
									$total_prod_carac = @count($res_c);


									if($total_prod_carac > 0){


										$query4 = $pdo->query("SELECT * from carac_itens_car where id_carrinho = '$id_carrinho'");
										$res4 = $query4->fetchAll(PDO::FETCH_ASSOC);

										for ($i2=0; $i2 < count($res4); $i2++) { 
											foreach ($res4[$i2] as $key => $value) {
											}


											$nome_item_carac = $res4[$i2]['nome'];
											$id_carac = $res4[$i2]['id_carac'];

											$query1 = $pdo->query("SELECT * from carac where id = '$id_carac' ");
											$res1 = $query1->fetchAll(PDO::FETCH_ASSOC);
											$nome_carac = $res1[0]['nome'];


											echo '<i><small><img style="margin:5px" src="'.$url_loja.'img/check.jpg" width="12px">'.$nome_carac.' : '.$nome_item_carac.'</small></i>';

										}
									} 
								}else{
									$query = $pdo->query("SELECT * FROM prod_combos where id_combo = '$id_produto' ");
									$res = $query->fetchAll(PDO::FETCH_ASSOC);

									for ($i=0; $i < count($res); $i++) { 
										foreach ($res[$i] as $key => $value) {
										}

										$id_prod = $res[$i]['id_produto'];
										$query2 = $pdo->query("SELECT * FROM produtos where id = '$id_prod' ");
										$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
										$nome_prod = $res2[0]['nome'];

										echo '<i><small><img style="margin:5px" src="'.$url_loja.'img/check.jpg" width="12px">'.$nome_prod.'</small></i>';
									}
								}


								?>
							</div>


						</div>
					</section>
					<div class="cabecalho" style="border-bottom: solid 1px #e3e3e3;">
					</div>

				<?php } ?>

			</small>


			



		</div>


		<div class="cabecalho mt-3" style="border-bottom: solid 1px #0340a3">
		</div>



		<br>


		<div class="footer" align="center">
			<span style="font-size:12px"><?php echo $rodape_relatorios ?></span> 
		</div>




	</body>
	</html>
