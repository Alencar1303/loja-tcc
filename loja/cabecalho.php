<?php 
require_once("config.php");
require_once("conexao.php");
@session_start();
$id_usuario = @$_SESSION['id_usuario'];


//VERIFICAR TOTAIS DO CARRINHO
$res = $pdo->query("SELECT * from carrinho where id_usuario = '$id_usuario' and id_venda = 0 order by id asc");
$dados = $res->fetchAll(PDO::FETCH_ASSOC);
$linhas = count($dados);

if($linhas == 0){
  $linhas = 0;
  $total = 0;
}

$total;
for ($i=0; $i < count($dados); $i++) { 
 foreach ($dados[$i] as $key => $value) {
 }

$combo = $dados[$i]['combo'];
$id_produto = $dados[$i]['id_produto'];
 $quantidade = $dados[$i]['quantidade'];

 if($combo == 'Sim'){
   $res_p = $pdo->query("SELECT * from combos where id = '$id_produto' ");
 }else{
  $res_p = $pdo->query("SELECT * from produtos where id = '$id_produto' ");
 }
 
 $dados_p = $res_p->fetchAll(PDO::FETCH_ASSOC);

 if($combo == 'Sim'){ 
  $promocao = ""; 
  $pasta = "combos";
 }else{
  $promocao = @$dados_p[0]['promocao']; 
  $pasta = "produtos";
 }

 if($promocao == 'Sim'){
  $queryp = $pdo->query("SELECT * FROM promocoes where id_produto = '$id_produto' ");
  $resp = $queryp->fetchAll(PDO::FETCH_ASSOC);
  $valor = $resp[0]['valor'];

}else{
  $valor = @$dados_p[0]['valor'];
}


$total_item = $valor * $quantidade;
@$total = @$total + $total_item;

}

@$total_c = number_format(@$total, 2, ',', '.');

?>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Venda de Roupas Masculina e Feminina">
    <?php if(@$palavras == ""){ ?>
    <meta name="keywords" content="botas masculinas, roupas femininas">
    <?php }else{ ?>
    <meta name="keywords" content="<?php echo $palavras ?>">
    <?php } ?>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $nome_loja ?></title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <link rel="shortcut icon" href="img/beautylist.png" type="image/x-icon">
    <link rel="icon" href="img/beautylist.png" type="image/x-icon">
</head>

<body>


    <!-- Page Preloder 
    <div id="preloder">
        <div class="loader"></div>
    </div> -->

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="index.php"><img src="img/beautylist.png" alt=""></a>
        </div>
        <div class="humberger__menu__cart">
            <ul>

                <li><a href="carrinho.php"><i class="fa fa-shopping-bag"></i> <span><?php echo $linhas ?></span></a></li>
            </ul>
            <div class="header__cart__price">item: <span>R$ <?php echo $total_c ?></span></div>

            <div class="header__top__right__auth ml-4">
                <?php 
                     if(@$_SESSION['id_usuario'] == null || @$_SESSION['nivel_usuario'] != 'Cliente'){
                 ?>
                <a href="sistema"><i class="fa fa-user"></i> Login</a>
            <?php }else{ ?>
                <a href="sistema/painel-cliente"><i class="fa fa-user"></i> Painel</a>
            <?php } ?>
            </div>
        </div>
        <div class="humberger__menu__widget">


        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                 <li class="active"><a href="./index.php">Início</a></li>
                      <li><a href="categorias.php">Categorias</a></li>
                     <li><a href="#">Produtos</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="produtos.php">Produtos</a></li>

                            <li><a href="lista-produtos.php">Lista de Produtos</a></li>
                            <li><a href="sub-categorias.php">Sub Categorias</a></li>                            
                        </ul>
                    </li>
                    
                    
                    <li><a href="contatos.php">Contatos</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a target="_blank" href="#"><i class="fa fa-facebook"></i></a>
            
            <a target="_blank" href="#"><i class="fa fa-instagram"></i></a>
            <a target="_blank" href="http://api.whatsapp.com/send?1=pt_BR&phone=<?php echo $whatsapp_link ?>" title="<?php echo $whatsapp ?>"><i class="fa fa-whatsapp"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> <?php echo $email ?></li>
                <li><?php echo $texto_destaque ?></li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> <?php echo $email ?></li>
                                <li><?php echo $texto_destaque ?></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                               <a target="_blank" title="Ir para página do Facebook" href="#"><i class="fa fa-facebook"></i></a>
                               <a target="_blank" href="#"><i class="fa fa-instagram"></i></a>
                               <a target="_blank" href="http://api.whatsapp.com/send?1=pt_BR&phone=<?php echo $whatsapp_link ?>" title="<?php echo $whatsapp ?>"><i class="fa fa-whatsapp text-success"></i></a>
                           </div>

                           <div class="header__top__right__auth">
                            <?php 
                     if(@$_SESSION['id_usuario'] == null || @$_SESSION['nivel_usuario'] != 'Cliente'){
                 ?>
                <a href="sistema"><i class="fa fa-user"></i> Login</a>
            <?php }else{ ?>
                <a target="_blank" href="sistema/painel-cliente"><i class="fa fa-user"></i> Painel</a>
               
            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="./index.php"><img src="img/beautylist.jpeg" alt="" style="overflow: auto;"></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                     <li class="active"><a href="./index.php">Início</a></li>
                      <li><a href="categorias.php">Categorias</a></li>
                     <li><a href="#">Produtos</a>
                        <ul class="header__menu__dropdown">
                            <li><a href="produtos.php">Produtos</a></li>

                            <li><a href="lista-produtos.php">Lista de Produtos</a></li>
                            <li><a href="sub-categorias.php">Sub Categorias</a></li>
                            
                        </ul>
                    </li>
                   
                    
                    <li><a href="contatos.php">Contatos</a></li>
                </ul>
            </nav>
        </div>
        <div class="col-lg-3">
            <div class="header__cart">
                <ul>
                   <li><a href="carrinho.php"><i class="fa fa-shopping-bag"></i> <span><?php echo $linhas ?></span></a></li>
                </ul>
                <div class="header__cart__price">item: <span>R$ <?php echo $total_c ?></span></div>
            </div>
        </div>
    </div>
    <div class="humberger__open">
        <i class="fa fa-bars"></i>
    </div>
</div>
</header>
<!-- Header Section End -->







<style type="text/css">
    .alerta{
      background-color: #060d54; color:#FFF; padding:15px; font-family: Arial; text-align:center; position:fixed; bottom:0; width:100%; opacity: 80%; z-index: 100;
    }

     .alerta.hide{
       display:none !important;
    }

    .link-alerta{
      color:#f2f2f2; 
    }

    .link-alerta:hover{
      text-decoration: underline;
      color:#FFF;
    }

    .botao-aceitar{
      background-color: #e3e3e3; padding:7px; margin-left: 15px; border-radius: 5px; border: none; margin-top:3px;
    }

    .botao-aceitar:hover{
      background-color: #f7f7f7;
      text-decoration: none;

    }

  </style>

<div class="alerta hide">
  A gente guarda estatísticas de visitas para melhorar sua experiência de navegação, saiba mais em nossa  <a class="link-alerta" title="Ver as políticas de privacidade" data-toggle="modal" href="#modalTermosCondicoes"" >política de privacidade.</a>
  <a class="botao-aceitar text-dark" href="#">Aceitar</a>
</div>


<script>
        if (!localStorage.meuCookie) {
            document.querySelector(".alerta").classList.remove('hide');
        }

        const acceptCookies = () => {
            document.querySelector(".alerta").classList.add('hide');
            localStorage.setItem("meuCookie", "accept");
        };

        const btnCookies = document.querySelector(".botao-aceitar");

        btnCookies.addEventListener('click', acceptCookies);
    </script>
