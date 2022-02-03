<?php 

require_once("../conexao.php");
@session_start();
$id_usuario = @$_SESSION['id_usuario'];

$res = $pdo->query("SELECT * from carrinho where id_usuario = '$id_usuario' and id_venda = 0 order by id asc");
$dados = $res->fetchAll(PDO::FETCH_ASSOC);
$linhas = @count($dados);

for ($i=0; $i < count($dados); $i++) { 
 foreach ($dados[$i] as $key => $value) {
 }

 $id_produto = $dados[$i]['id_produto'];	
 $id_carrinho = $dados[$i]['id'];
 $combo = $dados[$i]['combo'];
 $quantidade = $dados[$i]['quantidade'];

 $nova_quant = 0;
 $resc = $pdo->query("SELECT * from carrinho where id_usuario = '$id_usuario' and id_venda = 0 and id_produto = '$id_produto' order by id asc");
$dadosc = $resc->fetchAll(PDO::FETCH_ASSOC);
if(@count($dadosc) > 0){
	for ($ic=0; $ic < count($dadosc); $ic++) { 
 foreach ($dadosc[$ic] as $key => $value) {
 }

 $nova_quant += $dadosc[$ic]['quantidade'];

}
$quantidade = $nova_quant;
}


 //BUSCAAR QUANTIDADE NO ESTOQUE
$query2 = $pdo->query("SELECT * from produtos where id = '$id_produto'");
$res2 = $query2->fetchAll(PDO::FETCH_ASSOC);
$estoque = @$res2[0]['estoque'];
$nome_prod = @$res2[0]['nome'];
if($quantidade > $estoque){
	echo 'Você não pode comprar '.$quantidade. ' ' .$nome_prod. ', atualmente possui '. $estoque. ' produtos no estoque!';
	exit();
}


if($combo != 'Sim'){
	$query_c = $pdo->query("SELECT * from carac_prod where id_prod = '$id_produto'");
	$res_c = $query_c->fetchAll(PDO::FETCH_ASSOC);
	$total_prod_carac = @count($res_c);

		if($total_prod_carac > 0){

		   $query4 = $pdo->query("SELECT * from carac_itens_car where id_carrinho = '$id_carrinho'");
		  $res4 = $query4->fetchAll(PDO::FETCH_ASSOC);
		  $total_carac = @count($res4);

		  if($total_carac == 0){
		  	echo 'Selecione as Características dos Produtos!';
		  	exit();
		  }

		}
	}
}

echo 'deu certo';

 ?>