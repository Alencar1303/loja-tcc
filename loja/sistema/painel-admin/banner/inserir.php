<?php

require_once("../../../conexao.php"); 

$titulo = $_POST['titulo'];
$subtitulo = $_POST['subtitulo'];
$textobt = $_POST['textobt'];
$descricao = $_POST['descricao'];
$link = $_POST['link'];


$id = $_POST['txtid2'];

if($titulo == ""){
	echo 'Preencha o Campo Titulo!';
	exit();
}



//SCRIPT PARA SUBIR FOTO NO BANCO
$nome_img = date('d-m-Y H:i:s') .'-'.@$_FILES['imagem']['name'];
$nome_img = preg_replace('/[ :]+/' , '-' , $nome_img);
$caminho = '../../../img/banner/' .$nome_img;
if (@$_FILES['imagem']['name'] == ""){
  $imagem = "sem-foto.jpg";
}else{
  $imagem = $nome_img;
}

$imagem_temp = @$_FILES['imagem']['tmp_name']; 

$ext = pathinfo($imagem, PATHINFO_EXTENSION);   
if($ext == 'png' or $ext == 'jpg' or $ext == 'jpeg' or $ext == 'gif'){ 
move_uploaded_file($imagem_temp, $caminho);
}else{
	echo 'Extensão de Imagem não permitida!';
	exit();
}


if($id == ""){
	$res = $pdo->prepare("INSERT INTO banner (titulo, subtitulo, descricao, link, textobt,  ativo, imagem) VALUES (:titulo, :subtitulo, :descricao, :link, :textobt,  :ativo, :imagem)");
	$res->bindValue(":imagem", $imagem);
	$res->bindValue(":ativo", 'Não');
}else{

	if($imagem == "sem-foto.jpg"){
		$res = $pdo->prepare("UPDATE banner SET titulo = :titulo, subtitulo = :subtitulo, descricao = :descricao, link = :link, textobt = :textobt WHERE id = :id");
	}else{
		$res = $pdo->prepare("UPDATE alertas SET titulo = :titulo, subtitulo = :subtitulo, descricao = :descricao, link = :link, textobt = :textobt, imagem = :imagem WHERE id = :id");
		$res->bindValue(":imagem", $imagem);
	}

	$res->bindValue(":id", $id);
}

	$res->bindValue(":titulo", $titulo);
	$res->bindValue(":subtitulo", $subtitulo);
	$res->bindValue(":link", $link);
	$res->bindValue(":descricao", $descricao);
	$res->bindValue(":textobt", $textobt);
	

	$res->execute();


echo 'Salvo com Sucesso!!';

?>