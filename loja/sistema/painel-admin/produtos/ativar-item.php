<?php

require_once("../../../conexao.php"); 

$id = $_POST['id_item_carac_ativar'];

$pdo->query("UPDATE carac_itens set ativo = 'Sim' WHERE id = '$id'");

echo 'Ativado com Sucesso!!';

?>