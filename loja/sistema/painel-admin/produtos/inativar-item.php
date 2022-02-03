<?php

require_once("../../../conexao.php"); 

$id = $_POST['id_item_carac_inativar'];

$pdo->query("UPDATE carac_itens set ativo = 'Não' WHERE id = '$id'");

echo 'Inativado com Sucesso!!';

?>