<?php 

//VARIÁVEIS GLOBAIS
$email = 'gabrielalencarbr13@gmail.com';
$telefone = '(44) 988681040';
$whatsapp = '(44) 988681040';
$whatsapp_link = '5544988681040';
$nome_loja = 'Beauty List';
$texto_destaque = 'Diversas novidades em produtos de beleza';
$endereco_loja = 'Rua Eloy Baptista Lopes, Número 6180, Jardim Aratimbó, Umuarama - PR - CEP 87502-430';
$email_adm = $email;

$url_loja = "http://$_SERVER[HTTP_HOST]/";
$url = explode("//", $url_loja);
if($url[1] == 'localhost/'){
	$url_loja = "http://$_SERVER[HTTP_HOST]/loja/";
}


//VARIAVEIS DO BANCO DE DADOS
$servidor = 'localhost';
$usuario = 'root';
$senha = '';
$banco = 'loja';


//VARIAVEIS DO SITE
$itens_por_pagina = 6;



//CONFIGURAÇÕES DO FRETE DOS CORREIOS
$cep_origem = '87502-430';

//INFORMAÇÕES EM CM (EMBALAGEM DE ENVIO)
$comprimento_caixa = '30';
$largura_caixa = '20';
$altura_caixa = '20';
$diametro_caixa = '25';

//Indica  se  a  encomenda  será  entregue  com  o  serviço adicional mão própria.Valores possíveis: S ou N   (S –Sim, N –Não)
$mao_propria = 'N';

//Valor declarado, 1 para sim e 0 para não
$valor_declarado = 0;

//Aviso de recebimento  S ou N
$aviso_recebimento = 'N';

//1 Para caixa/Pacote  -   2 para rolo/prisma  -   3 para envelope
$formato_frete = 1;






//NIVEL MINIMO PARA ALERTA NO ESTOQUE
$nivel_estoque = 5;


//VARIAVEL QUE DEFINE A LIMPEZA DO CARRINHO APÓS 2 DIAS SEM O USUÁRIO FECHAR A COMPRA (NO CASO ABAIXO EU OPTEI POR DOIS DIAS)
$dias_limpar_carrinho = 2;


//definir se vai ser possível retirar o produto no local sim ou não!
$retirada_local = 'sim';

$pagar_entrega = 'Sim'; // Sim para mostrar a opção de pagar na entrega no checkout;
$relatorio_pdf = 'Sim';
 ?>