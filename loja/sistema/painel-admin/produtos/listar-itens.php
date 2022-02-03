<?php

require_once("../../../conexao.php"); 

$id_carac_prod = @$_POST['id_carac_item_2']; 

$pag = "produtos";

$query = $pdo->query("SELECT * FROM carac_itens where id_carac_prod = '" . $id_carac_prod . "' ");
echo "<div class='ml-2'>";
 $res = $query->fetchAll(PDO::FETCH_ASSOC);

                  for ($i=0; $i < count($res); $i++) { 
                      foreach ($res[$i] as $key => $value) {
                      }

                $ativo = $res[$i]['ativo'];     
                  
      echo "<span class='mb-2'><i class='text-secondary fas fa-check mr-1'></i><big><big> ".$res[$i]['nome']."</big></big> <a title='Deletar Item' href='#' onClick='deletarItem(". $res[$i]['id'] .")'><i class='text-danger fas fa-times ml-1'></i></a>";


      if($ativo != 'Não'){
      	echo "<a title='Inativar Item' href='#' onClick='inativarItem(". $res[$i]['id'] .")'><i class='text-secondary far fa-bell-slash ml-2'></i> Desativar </a>";
      }else{
      	echo "<a title='Ativar Item' href='#' onClick='ativarItem(". $res[$i]['id'] .")'><i class='text-success far fa-check-circle ml-2'></i> Ativar </a>";
      }
      

     echo " </span><br>";

    }
    echo "</div>";
?>
