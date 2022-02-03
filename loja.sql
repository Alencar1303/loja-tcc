-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Jun-2021 às 01:19
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alertas`
--

CREATE TABLE `alertas` (
  `id` int(11) NOT NULL,
  `titulo_alerta` varchar(20) NOT NULL,
  `titulo_mensagem` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  `data` date NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alertas`
--

INSERT INTO `alertas` (`id`, `titulo_alerta`, `titulo_mensagem`, `mensagem`, `link`, `imagem`, `data`, `ativo`) VALUES
(3, 'fdsafdsfa', 'fdfadf', 'dfasfdsafsad', 'http://google.com', 'sem-foto.jpg', '2020-09-01', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacoes`
--

CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `nota` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `avaliacoes`
--

INSERT INTO `avaliacoes` (`id`, `id_produto`, `id_usuario`, `texto`, `nota`, `data`) VALUES
(3, 1, 8, 'Muito bom, gostei muito.', 5, '2020-09-17'),
(4, 25, 8, 'Muito bom, excelente Produto!!', 5, '2020-09-17'),
(5, 25, 6, 'Fiquei impressionado com a qualidade do produto, superou todas as minhas expectativas, realmente muito bom e num preço totalmente acessível, super indico!', 5, '2020-09-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `subtitulo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `textobt` varchar(15) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `imagem` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `titulo`, `subtitulo`, `descricao`, `link`, `textobt`, `ativo`, `imagem`) VALUES
(2, 'Produtos de Primeira Linha', 'BOUTIQUE FREITAS', 'Aqui você encontra os melhores preços!!', 'http://localhost/loja/sub-categoria-de-moda-feminina', 'COMPRAR AGORA', 'Não', '16-06-2021-12-11-11-banner.jpg'),
(4, 'Promoção Camisa Social', 'Aproveite Já', 'Todas com 30% de Desconto', 'http://localhost/loja/produto-camisa-social', 'COMPRAR AGORA', 'Sim', '16-06-2021-12-19-00-banner-social.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `titulo` varchar(200) NOT NULL,
  `descricao_1` varchar(1000) NOT NULL,
  `descricao_2` varchar(1000) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `palavras` varchar(150) DEFAULT NULL,
  `nome_url` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `blog`
--

INSERT INTO `blog` (`id`, `titulo`, `descricao_1`, `descricao_2`, `imagem`, `data`, `palavras`, `nome_url`) VALUES
(1, 'Titulo da Postagem do Blog', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'curso-de-bootstrap-5.jpeg', '2020-09-21', 'curso de bootstrap 5, novidades bootstrap 5, aulas de bootstrap 5, treinamento com bootstrap, aulas bootstrap', 'titulo-da-postagem-do-blog'),
(3, 'Saiba como verificar a originalidade de uma roupa', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscingLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing', 'nao-pode-provar-roupas-em-loja.jpg', '2020-09-21', 'roupa original, como saber, como saber se a roupa é original', 'saiba-como-verificar-a-originalidade-de-uma-roupa'),
(4, 'Como verificar a qualidade de uma roupa?', 'Nos países de língua inglesa o texto apresenta-se em forma um pouco diferente, apresentada a seguir:\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Nos países de língua inglesa o texto apresenta-se em forma um pouco diferente, apresentada a seguir:\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'mv-modas1.jpg', '2020-09-21', 'qualidade de roupa, verificar qualidade', 'como-verificar-a-qualidade-de-uma-roupa-'),
(5, 'Tendência para o verão de 2020', 'Aquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta. Para dar um exemplo trivial, qual de nós se submete a laborioso exercício físico, exceto para obter alguma vantagem com isso. Desmoralizado pelos encantos do prazer, percebe que a dor não resulta em prazer algum. Está tão cego pelo desejo que não pode prever quem não cumprirá seu dever por fraqueza de vontade', 'Aquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta. Para dar um exemplo trivial, qual de nós se submete a laborioso exercício físico, exceto para obter alguma vantagem com isso. Desmoralizado pelos encantos do prazer, percebe que a dor não resulta em prazer algum. Está tão cego pelo desejo que não pode prever quem não cumprirá seu dever por fraqueza de vontadeAquele que ama ou exerce ou deseja a dor, pode ocasionalmente adquirir algum prazer na labuta. Para dar um exemplo trivial, qual de nós se submete a laborioso exercício físico, exceto para obter alguma vantagem com isso. Desmoralizado pelos encantos do prazer, percebe que a dor não resulta em prazer algum. Está tão cego pelo desejo que não pode prever quem não cumprirá seu dever por fraqueza de vontade', 'Roupas-feitas-com-renda-1.jpg', '2020-09-21', 'tendencias para o versão 2020, tendencia verão, roupa verão', 'tendencia-para-o-verao-de-2020');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carac`
--

CREATE TABLE `carac` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carac`
--

INSERT INTO `carac` (`id`, `nome`) VALUES
(1, 'Tamanho'),
(2, 'Cor'),
(3, 'Numeração'),
(4, 'Voltagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carac_itens`
--

CREATE TABLE `carac_itens` (
  `id` int(11) NOT NULL,
  `id_carac_prod` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor_item` varchar(50) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carac_itens`
--

INSERT INTO `carac_itens` (`id`, `id_carac_prod`, `nome`, `valor_item`, `ativo`) VALUES
(1, 11, 'Azul', '#80acf2', 'Sim'),
(2, 3, 'Azul', '#80acf2', 'Sim'),
(3, 3, 'Vermelho', '#cf4023', 'Sim'),
(4, 10, 'P', '', 'Sim'),
(5, 10, 'M', '', 'Sim'),
(6, 10, 'G', '', 'Sim'),
(7, 10, 'GG', '', 'Sim'),
(8, 3, 'Amarelo', '', 'Sim'),
(9, 3, 'Verde', '', 'Sim'),
(12, 11, 'Vermelho', '', 'Sim'),
(13, 15, '30 e 31', '', 'Sim'),
(14, 15, '32 e 33', '', 'Sim'),
(15, 16, 'Marron', '', 'Sim'),
(16, 16, 'Preto', '', 'Sim'),
(17, 17, '34/35', '', 'Sim'),
(18, 17, '36/37', '', 'Sim'),
(19, 18, 'Azul', '', 'Sim'),
(20, 20, 'P', '', 'Sim'),
(22, 21, 'Preta', '#000', 'Sim'),
(23, 21, 'Azul', '#939ced', 'Sim'),
(24, 22, 'P', '', 'Sim'),
(25, 22, 'M', '', 'Sim'),
(26, 22, 'G', '', 'Sim'),
(27, 22, 'GG', '', 'Sim'),
(29, 21, 'Verde Escuro', '#073817', 'Sim'),
(30, 21, 'Verde Claro', '#6fd691', 'Sim'),
(31, 21, 'Laranja', '#b5631b', 'Sim'),
(34, 20, 'M', '', 'Sim'),
(35, 23, 'Preto', '#000', 'Sim'),
(36, 24, 'P', '', 'Sim'),
(37, 24, 'M', '', 'Sim'),
(38, 24, 'G', '', 'Sim'),
(39, 25, '31 e 32', '', 'Sim'),
(40, 25, '33 e 34', '', 'Sim'),
(41, 26, 'P', '', 'Sim'),
(42, 26, 'M', '', 'Sim'),
(46, 19, 'Cinza', '#CCC', 'Sim'),
(47, 19, 'Azul', '#11478a', 'Sim'),
(48, 19, 'Preto', '#000', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carac_itens_car`
--

CREATE TABLE `carac_itens_car` (
  `id` int(11) NOT NULL,
  `id_carrinho` int(11) NOT NULL,
  `id_carac` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carac_itens_car`
--

INSERT INTO `carac_itens_car` (`id`, `id_carrinho`, `id_carac`, `nome`) VALUES
(32, 104, 2, 'Azul'),
(33, 104, 1, 'G'),
(34, 220, 1, 'M'),
(36, 223, 1, 'M'),
(37, 223, 2, 'Verde Escuro'),
(38, 220, 2, 'Preto'),
(39, 220, 3, '31 e 32'),
(41, 315, 2, 'Preta'),
(42, 222, 2, 'Preto'),
(43, 318, 2, 'Azul'),
(44, 320, 2, 'Verde Escuro'),
(45, 321, 2, 'Verde Claro'),
(46, 322, 2, 'Verde Claro'),
(47, 323, 2, 'Azul'),
(48, 324, 2, 'Laranja'),
(49, 325, 2, 'Preta'),
(50, 326, 2, 'Azul'),
(51, 327, 2, 'Verde Escuro'),
(52, 328, 2, 'Laranja'),
(53, 329, 2, 'Azul'),
(54, 330, 0, ''),
(55, 331, 2, 'Verde Escuro'),
(56, 332, 2, 'Azul'),
(57, 333, 2, 'Azul'),
(58, 334, 2, 'Verde Escuro'),
(59, 335, 2, 'Verde Escuro'),
(60, 336, 2, 'Preta'),
(61, 337, 2, 'Azul'),
(62, 337, 1, 'M'),
(63, 338, 0, ''),
(64, 338, 1, 'G'),
(65, 339, 2, 'Azul'),
(66, 339, 1, 'G'),
(67, 340, 2, 'Preto'),
(68, 340, 1, 'M'),
(69, 340, 3, '31 e 32'),
(78, 441, 2, 'Azul'),
(79, 441, 1, 'P'),
(80, 455, 2, 'Azul'),
(81, 455, 1, 'M'),
(82, 457, 2, 'Azul'),
(83, 457, 1, 'P'),
(84, 458, 2, 'Azul'),
(85, 458, 1, 'G'),
(86, 459, 2, 'Preta'),
(87, 459, 1, 'M'),
(88, 465, 2, 'Azul'),
(89, 465, 1, 'M'),
(90, 467, 2, 'Preta'),
(91, 467, 1, 'M'),
(92, 469, 2, 'Azul'),
(93, 469, 1, 'GG'),
(100, 473, 2, 'Verde Escuro'),
(101, 473, 1, 'G'),
(105, 492, 2, 'Preta'),
(106, 492, 1, 'M'),
(109, 497, 2, 'Verde Escuro'),
(110, 497, 1, 'G'),
(111, 498, 1, 'P'),
(112, 498, 2, 'Verde Escuro'),
(113, 499, 2, 'Preta'),
(114, 499, 1, 'M'),
(117, 504, 2, 'Preta'),
(118, 504, 1, 'G'),
(119, 505, 2, 'Azul'),
(120, 505, 1, 'M'),
(121, 509, 2, 'Azul'),
(122, 509, 1, 'G'),
(123, 510, 2, 'Azul'),
(124, 510, 1, 'G'),
(125, 512, 2, 'Azul'),
(126, 512, 1, 'M'),
(133, 518, 2, 'Azul'),
(134, 518, 1, 'P'),
(135, 519, 2, 'Preta'),
(136, 519, 1, 'P'),
(137, 520, 2, 'Azul'),
(138, 520, 1, 'M'),
(139, 521, 2, 'Verde Escuro'),
(140, 521, 1, 'G'),
(141, 522, 2, 'Preta'),
(142, 522, 1, 'M'),
(143, 523, 2, 'Azul'),
(144, 523, 1, 'G'),
(145, 524, 2, 'Preta'),
(146, 524, 1, 'P'),
(147, 525, 2, 'Azul'),
(148, 525, 1, 'P'),
(149, 526, 2, 'Azul'),
(150, 526, 1, 'P'),
(151, 527, 2, 'Preta'),
(152, 527, 1, 'M'),
(153, 528, 2, 'Preta'),
(154, 528, 1, 'M'),
(155, 529, 2, 'Preta'),
(156, 529, 1, 'P'),
(157, 530, 2, 'Marron'),
(158, 530, 3, '34/35'),
(159, 531, 2, 'Azul'),
(160, 531, 1, 'G'),
(161, 533, 2, 'Azul'),
(162, 533, 1, 'P'),
(163, 534, 2, 'Preto'),
(164, 534, 1, 'P'),
(165, 534, 3, '31 e 32'),
(166, 535, 2, 'Preta'),
(167, 535, 1, 'M'),
(168, 536, 2, 'Preta'),
(169, 536, 1, 'M'),
(170, 537, 2, 'Azul'),
(171, 537, 1, 'P'),
(172, 538, 2, 'Azul'),
(173, 538, 1, 'P'),
(174, 541, 2, 'Azul'),
(175, 541, 1, 'P'),
(176, 542, 2, 'Azul'),
(177, 542, 1, 'P'),
(178, 558, 2, 'Preta'),
(179, 558, 1, 'M'),
(180, 559, 2, 'Azul'),
(181, 559, 1, 'P'),
(182, 560, 2, 'Preta'),
(183, 560, 1, 'P'),
(184, 561, 2, 'Azul'),
(185, 561, 1, 'M'),
(186, 562, 2, 'Preto'),
(187, 562, 1, 'P'),
(188, 562, 3, '33 e 34'),
(189, 563, 2, 'Azul'),
(190, 563, 1, 'P'),
(191, 564, 2, 'Azul'),
(192, 564, 1, 'P'),
(193, 575, 2, 'Azul'),
(194, 575, 1, 'P'),
(195, 578, 2, 'Preta'),
(196, 578, 1, 'P'),
(197, 580, 2, 'Preto'),
(198, 580, 1, 'P'),
(199, 580, 3, '31 e 32'),
(201, 584, 2, 'Azul'),
(202, 584, 1, 'P');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carac_prod`
--

CREATE TABLE `carac_prod` (
  `id` int(11) NOT NULL,
  `id_carac` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carac_prod`
--

INSERT INTO `carac_prod` (`id`, `id_carac`, `id_prod`) VALUES
(3, 2, 1),
(10, 1, 1),
(11, 2, 3),
(12, 3, 3),
(13, 1, 3),
(14, 4, 3),
(15, 3, 1),
(16, 2, 23),
(17, 3, 23),
(18, 2, 31),
(19, 2, 30),
(20, 1, 30),
(21, 2, 25),
(22, 1, 25),
(23, 2, 22),
(24, 1, 22),
(25, 3, 22),
(26, 1, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `data` date NOT NULL,
  `combo` varchar(5) NOT NULL,
  `sessao` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_usuario`, `id_produto`, `quantidade`, `id_venda`, `data`, `combo`, `sessao`) VALUES
(427, 8, 25, 1, 42, '2020-09-15', 'Não', ''),
(428, 8, 30, 1, 43, '2020-09-15', 'Não', ''),
(429, 8, 25, 1, 43, '2020-09-15', 'Não', ''),
(430, 8, 30, 1, 44, '2020-09-15', 'Não', ''),
(431, 8, 25, 1, 44, '2020-09-15', 'Não', ''),
(434, 8, 22, 1, 45, '2020-09-15', 'Não', ''),
(435, 8, 24, 1, 46, '2020-09-15', 'Não', ''),
(436, 8, 15, 1, 46, '2020-09-15', 'Não', ''),
(437, 8, 10, 1, 46, '2020-09-15', 'Não', ''),
(438, 8, 24, 1, 47, '2020-09-15', 'Não', ''),
(439, 8, 15, 1, 47, '2020-09-15', 'Não', ''),
(440, 8, 10, 1, 47, '2020-09-15', 'Não', ''),
(457, 8, 30, 1, 48, '2020-09-16', 'Não', ''),
(458, 8, 25, 1, 48, '2020-09-16', 'Não', ''),
(459, 8, 25, 1, 49, '2020-09-16', 'Não', ''),
(460, 8, 1, 1, 49, '2020-09-16', 'Sim', ''),
(465, 8, 25, 1, 50, '2020-09-16', 'Não', ''),
(466, 8, 1, 1, 50, '2020-09-16', 'Sim', ''),
(473, 8, 25, 1, 51, '2020-09-16', 'Não', ''),
(495, 8, 4, 1, 53, '2020-09-17', 'Sim', ''),
(497, 8, 25, 1, 54, '2020-09-17', 'Não', ''),
(498, 8, 25, 1, 55, '2020-09-17', 'Não', ''),
(499, 8, 25, 1, 56, '2020-09-17', 'Não', ''),
(502, 8, 4, 1, 57, '2020-09-17', 'Sim', ''),
(503, 8, 32, 1, 58, '2020-09-17', 'Não', ''),
(504, 8, 25, 1, 58, '2020-09-17', 'Não', ''),
(505, 8, 25, 1, 59, '2020-09-17', 'Não', ''),
(508, 8, 24, 1, 60, '2020-09-17', 'Não', ''),
(509, 6, 25, 1, 61, '2020-09-17', 'Não', ''),
(510, 8, 25, 1, 62, '2020-09-17', 'Não', ''),
(511, 8, 32, 1, 63, '2020-09-17', 'Não', ''),
(512, 8, 25, 2, 64, '2020-09-21', 'Não', ''),
(518, 6, 30, 1, 65, '2021-06-15', 'Não', ''),
(519, 6, 25, 1, 66, '2021-06-15', 'Não', ''),
(520, 6, 25, 1, 67, '2021-06-15', 'Não', ''),
(521, 6, 25, 1, 68, '2021-06-15', 'Não', ''),
(522, 6, 25, 1, 69, '2021-06-15', 'Não', ''),
(523, 6, 25, 1, 71, '2021-06-15', 'Não', ''),
(524, 6, 25, 1, 72, '2021-06-15', 'Não', ''),
(525, 6, 30, 1, 73, '2021-06-15', 'Não', ''),
(526, 6, 30, 1, 74, '2021-06-15', 'Não', ''),
(527, 6, 25, 1, 75, '2021-06-15', 'Não', ''),
(528, 6, 25, 1, 76, '2021-06-15', 'Não', ''),
(529, 6, 25, 1, 77, '2021-06-15', 'Não', ''),
(530, 6, 23, 1, 78, '2021-06-15', 'Não', ''),
(531, 6, 25, 1, 79, '2021-06-15', 'Não', ''),
(532, 6, 12, 1, 79, '2021-06-15', 'Não', ''),
(533, 6, 30, 1, 80, '2021-06-15', 'Não', ''),
(534, 6, 22, 1, 80, '2021-06-15', 'Não', ''),
(535, 6, 25, 1, 81, '2021-06-15', 'Não', ''),
(536, 6, 25, 1, 82, '2021-06-15', 'Não', ''),
(537, 6, 30, 1, 83, '2021-06-15', 'Não', ''),
(538, 6, 30, 1, 84, '2021-06-15', 'Não', ''),
(539, 6, 20, 1, 85, '2021-06-15', 'Não', ''),
(540, 6, 20, 1, 86, '2021-06-15', 'Não', ''),
(541, 6, 30, 1, 87, '2021-06-15', 'Não', ''),
(542, 6, 30, 6, 87, '2021-06-15', 'Não', ''),
(543, 6, 15, 1, 88, '2021-06-15', 'Não', ''),
(544, 6, 8, 1, 88, '2021-06-15', 'Não', ''),
(558, 6, 25, 3, 89, '2021-06-15', 'Não', ''),
(559, 6, 25, 2, 89, '2021-06-15', 'Não', ''),
(560, 6, 25, 1, 90, '2021-06-15', 'Não', ''),
(561, 6, 30, 1, 91, '2021-06-16', 'Não', ''),
(562, 6, 22, 1, 91, '2021-06-16', 'Não', ''),
(563, 6, 30, 1, 92, '2021-06-16', 'Não', ''),
(564, 6, 30, 1, 93, '2021-06-16', 'Não', ''),
(573, 6, 10, 1, 94, '2021-06-16', 'Não', '16-06-2021 11:14:06'),
(574, 6, 15, 1, 94, '2021-06-16', 'Não', '16-06-2021 11:14:06'),
(575, 6, 30, 1, 94, '2021-06-16', 'Não', '16-06-2021 11:18:25'),
(576, 5, 15, 1, 0, '2021-06-16', 'Não', '16-06-2021 11:19:33'),
(577, 6, 10, 1, 94, '2021-06-16', 'Não', '16-06-2021 13:17:31'),
(578, 6, 25, 1, 94, '2021-06-16', 'Não', '16-06-2021 13:17:31'),
(579, 6, 24, 1, 95, '2021-06-16', 'Não', '16-06-2021 13:17:31'),
(580, 6, 22, 1, 95, '2021-06-16', 'Não', '16-06-2021 13:17:31'),
(584, 6, 30, 1, 95, '2021-06-16', 'Não', '16-06-2021 13:17:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `nome_url`, `imagem`) VALUES
(1, 'Moda Masculina', 'moda-masculina', 'cat-3.jpg'),
(2, 'Moda Feminina', 'moda-feminina', 'cat-2.jpg'),
(3, 'Relógios', 'relogios', 'cat-5.jpg'),
(4, 'Calçados', 'calcados', 'cat-6.jpg'),
(5, 'Jóias e Semi-Jóias', 'joias-e-semi-joias', 'cat-7.jpg'),
(8, 'Óculos', 'oculos', 'cat-oculos.jpg'),
(9, 'Chapéu e Bonés', 'chapeu-e-bones', '00.jpg'),
(10, 'Cursos', 'cursos', 'cursos-cat.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `rua` varchar(80) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `complemento` varchar(50) DEFAULT NULL,
  `bairro` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `estado` varchar(5) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `cartoes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `cpf`, `email`, `telefone`, `rua`, `numero`, `complemento`, `bairro`, `cidade`, `estado`, `cep`, `cartoes`) VALUES
(1, 'Alice Santos', '000.000.000-40', 'alice@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(2, 'Pedro Silva', '000.000.000-18', 'cliente@hotmail.com', '(55) 55555-5555', 'Rua Alameda Campos', '22', 'AP 22 Bloco 5', 'Bonfim', 'Belo Horizonte', 'MG', '31530-150', 2),
(3, 'Matheus Silva', '184.854.545-44', 'mateus@hotmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Hugo Vasconcelos', '214.569.999-99', 'hugovasconcelosf@hotmail.com', '(33) 33333-3333', 'AF', '55', '', 'Bonfim', 'Belo Horizonte', 'MG', '32451-236', 8),
(5, 'Marta Campos', '456.899.999-99', 'marta@hotamil.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `combos`
--

CREATE TABLE `combos` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `descricao_longa` text NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `tipo_envio` int(1) NOT NULL,
  `palavras` varchar(250) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `peso` double(8,2) NOT NULL,
  `largura` double(8,2) NOT NULL,
  `altura` double(8,2) NOT NULL,
  `comprimento` double(8,2) NOT NULL,
  `valor_frete` decimal(10,2) DEFAULT NULL,
  `vendas` int(11) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `combos`
--

INSERT INTO `combos` (`id`, `nome`, `nome_url`, `descricao`, `descricao_longa`, `valor`, `imagem`, `tipo_envio`, `palavras`, `ativo`, `peso`, `largura`, `altura`, `comprimento`, `valor_frete`, `vendas`, `link`) VALUES
(1, 'Camisa e Bermuda', 'camisa-e-bermuda', 'fdsfd', 'fsdfdsf', '139.99', 'cat-1.jpg', 1, 'fdsaf', 'Sim', 1.00, 1.00, 1.00, 1.00, '0.00', 2, NULL),
(3, 'Conjunto Completo', 'conjunto-completo', 'fsdfds', 'fsdf', '199.00', 'cat-3.jpg', 1, 'afdsaf', 'Sim', 1.00, 1.00, 1.00, 1.00, '0.00', NULL, NULL),
(4, 'Pacote PHP', 'pacote-php', 'Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação, totalmente atualizada com api dos correios, api de pagamentos (Pagseguro, Paypal e Mercado Pago), Gestão de Estoque, Painél Administrativo e muito mais. ', 'Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação, totalmente atualizada com api dos correios, api de pagamentos (Pagseguro, Paypal e Mercado Pago), Gestão de Estoque, Painél Administrativo e muito mais. (OBS) A loja ainda não está 100% finalizada, temos 7 dos 10 módulos já concluídos, criei o pacote para os alunos já poderem comprar no valor promocional, pois comprando avulso sairá bem mais caro, previsão para conclusão é até o final de setembro de 2020.', '280.00', 'curso-de-pdo.jpg', 10, 'pacote de cursos php, pacote php', 'Sim', 0.00, 0.00, 0.00, 0.00, '0.00', 1, 'http://google.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coment_blog`
--

CREATE TABLE `coment_blog` (
  `id` int(11) NOT NULL,
  `id_blog` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `coment_blog`
--

INSERT INTO `coment_blog` (`id`, `id_blog`, `id_usuario`, `comentario`, `data`, `hora`) VALUES
(1, 3, 6, 'Sempre tive dúvidas quanto a isso, muitas das vezes não conseguia diferenciar bem, sua postagem me ajudou muito, vou prestar mais atenção, grato.', '2020-09-21', '13:21:49'),
(5, 3, 8, 'cccccccccc', '2020-09-21', '13:47:45');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cupons`
--

CREATE TABLE `cupons` (
  `id` int(11) NOT NULL,
  `titulo` varchar(35) NOT NULL,
  `desconto` decimal(8,2) NOT NULL,
  `codigo` varchar(35) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `emails`
--

INSERT INTO `emails` (`id`, `nome`, `email`, `ativo`) VALUES
(1, 'José Silva', 'hugovasconcelosf@hotmail.com', 'Sim'),
(2, 'João Silva', 'contato@hugocursos.com.br', 'Sim'),
(3, 'Alice Santos', 'alice@hotmail.com', 'Sim'),
(4, 'Cliente Teste', 'cliente@hotmail.com', 'Sim'),
(5, 'Matheus Silva', 'hugovasconcelosf@hotmail.com', 'Sim'),
(6, 'Marta Campos', 'marta@hotamil.com', 'Sim');

-- --------------------------------------------------------

--
-- Estrutura da tabela `envios_email`
--

CREATE TABLE `envios_email` (
  `id` int(11) NOT NULL,
  `data` datetime NOT NULL,
  `final` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `envios_email`
--

INSERT INTO `envios_email` (`id`, `data`, `final`, `assunto`, `mensagem`, `link`) VALUES
(1, '2020-09-21 17:30:54', 0, 'Promoção de Camisas', 'Aproveite a nossa promoção com um lindo conjunto ..', 'combo-conjunto-completo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`id`, `id_produto`, `imagem`) VALUES
(11, 1, 'cat-4.jpg'),
(13, 3, 'cat-2.jpg'),
(14, 3, 'cat-4.jpg'),
(15, 3, 'cat-7.jpg'),
(16, 1, 'cat-6.jpg'),
(19, 31, 'cat-4.jpg'),
(21, 25, 'ca misa social.jpg'),
(22, 25, 'Blusa-azul.jpg'),
(23, 25, 'Blusa Ver.jpg'),
(24, 25, 'Polo Marinho.jpg'),
(25, 25, 'Blue.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagem`
--

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mensagem`
--

INSERT INTO `mensagem` (`id`, `id_venda`, `texto`, `usuario`, `data`, `hora`) VALUES
(7, 43, 'Mensagem Teste', 'Cliente', '2020-09-15', '00:00:00'),
(9, 43, 'Pergunta do Admin', 'Admin', '2020-09-15', '00:00:00'),
(15, 43, 'Cliente Respondeu', 'Admin', '2020-09-15', '13:37:59'),
(16, 42, 'Pergunta do cliente sobre...', 'Cliente', '2020-09-15', '14:01:25'),
(17, 42, 'Resposta do Admin', 'Admin', '2020-09-15', '14:26:59'),
(18, 42, 'Mudança de status no pedido, pedido Disponivel', 'Admin', '2020-09-15', '15:19:45'),
(19, 42, 'Mudança de status no pedido, pedido Entregue', 'Admin', '2020-09-15', '15:20:34'),
(20, 42, 'Mudança de status no pedido, pedido Entregue', 'Admin', '2020-09-15', '15:27:39'),
(21, 42, 'Obrigado', 'Cliente', '2020-09-15', '15:32:48'),
(22, 40, 'Seu pedido foi Enviado, o código de rastreio é JR065666652', 'Admin', '2020-09-15', '15:38:18'),
(23, 44, 'Parab?ns, voc? ganhou um novo cupom de desconto, poder? usar at? o dia 22/09/2020 o seu c?digo para uso do cupom ? 214.569.999-99', 'Admin', '2020-09-15', '17:32:02'),
(24, 45, 'Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99', 'Admin', '2020-09-15', '17:40:39'),
(25, 46, 'Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99', 'Admin', '2020-09-15', '18:19:56'),
(26, 43, 'Mudança de status no pedido, pedido Não Enviado', 'Admin', '2020-09-15', '18:53:38'),
(27, 47, 'Seu pedido foi Enviado, o código de rastreio é JR065666652', 'Admin', '2020-09-15', '19:10:46'),
(28, 43, 'Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99', 'Admin', '2020-09-15', '19:13:33'),
(29, 64, 'Seu pedido foi Enviado, o código de rastreio é JR065666652', 'Admin', '2020-09-21', '18:01:57');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `categoria` int(11) NOT NULL,
  `sub_categoria` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `nome_url` varchar(100) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `descricao_longa` text NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `estoque` int(11) NOT NULL,
  `tipo_envio` int(11) NOT NULL,
  `palavras` varchar(250) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `peso` double(8,2) DEFAULT NULL,
  `largura` int(11) DEFAULT NULL,
  `altura` int(11) DEFAULT NULL,
  `comprimento` int(11) DEFAULT NULL,
  `modelo` varchar(100) DEFAULT NULL,
  `valor_frete` decimal(8,2) DEFAULT NULL,
  `promocao` varchar(5) NOT NULL,
  `vendas` int(11) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `categoria`, `sub_categoria`, `nome`, `nome_url`, `descricao`, `descricao_longa`, `valor`, `imagem`, `estoque`, `tipo_envio`, `palavras`, `ativo`, `peso`, `largura`, `altura`, `comprimento`, `modelo`, `valor_frete`, `promocao`, `vendas`, `link`) VALUES
(1, 4, 2, 'Sapato Social', 'sapato-social', 'aaaaaaaaaaaafdsfdfsdf', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaafdsfdsfdffdsf', '189.99', 'cat-6.jpg', 12, 2, 'tenis masculino, tenis esportivo, tenis barato, comprar tenis, tenis lançamento', 'Não', 0.20, 0, 0, 1, '', '20.00', 'Não', NULL, NULL),
(3, 2, 3, 'Vestido', 'vestido', 'adaf', 'dfafdsf', '250.00', 'cat-2.jpg', 7, 1, 'vestido feminino, vestidos', 'Sim', 0.00, 0, 0, 0, '', '0.00', 'Não', NULL, NULL),
(4, 2, 6, 'Olympikus', 'olympikus', 'Tênis Olympikus Selene Preto\r\n\r\n', 'Tênis Olympikus Selene, feito em jacquard multicolor, com estampa floral exclusiva e detalhes em lycra. A palmilha Feetpad traz ainda mais conforto. Solado em Evasense texturizado completa o visual do tênis, garantindo leveza e segurança.\r\n\r\n\r\n', '129.99', 'Tenis-fem-rosa.jpg', 20, 1, 'fadsdsa', 'Sim', 0.00, 34, 0, 39, '', '0.00', 'Não', NULL, NULL),
(5, 2, 6, 'Tênis para Esporte', 'tenis-para-esporte', 'Tênis Olympikus Selene Azul', 'Tênis Olympikus Selene, feito em jacquard multicolor, com estampa floral exclusiva e detalhes em lycra. A palmilha Feetpad traz ainda mais conforto. Solado em Evasense texturizado completa o visual do tênis, garantindo leveza e segurança.\r\n\r\n\r\n', '129.99', 'tenis-masculino.jpg', 20, 1, 'fdfa', 'Sim', 0.00, 0, 0, 39, '', '0.00', 'Não', NULL, NULL),
(6, 2, 6, 'Jogging', 'jogging', 'Tênis Jogging Via Marte Branco', 'Modelo conta com fecho em cadarço permitindo um melhor ajuste aos pés, interior revestido em material têxtil e palmilha em PU macio para um caminhar confortável.\r\n\r\n\r\n', '99.99', 'tenis-feminino.jpg', 20, 1, 'fdsafds', 'Sim', 0.00, 0, 0, 39, '', '0.00', 'Não', NULL, NULL),
(7, 2, 6, 'Tênis Feminino', 'tenis-feminino', 'Tênis Jogging Via Marte Preto', 'Modelo conta com fecho em cadarço permitindo um melhor ajuste aos pés, interior revestido em material têxtil e palmilha em PU macio para um caminhar confortável.\r\n\r\n\r\n', '99.99', 'Preto.jpg', 20, 6, 'fdsafsa', 'Sim', 0.00, 0, 0, 39, '', '0.00', 'Não', NULL, ''),
(8, 2, 3, 'Vestido com Capuz', 'vestido-com-capuz', 'Vestido com Capuz Preto', 'Vestido básico com capuz. Confeccionado em malha moletinho leve de algodão com toque macio. Com decote em V e mangas longas, de modelagem soltinha e comprimento curto.\r\n\r\n\r\n', '89.90', 'Vestido-Preto-.jpg', 20, 8, 'fadfaf', 'Sim', 0.00, 0, 0, 0, '', '0.00', 'Não', 6, ''),
(10, 2, 3, 'Vestidos', 'vestidos', 'Vestido Preto Transpassado com Alça Dupla', 'Vestido em helanca. Modelo com alças, decote transpassado, busto duplo, recorte na cintura, saia assimétrica com transpasse frontal. Comprimento: Curto.\r\n\r\n\r\n', '0.20', 'Vst-preto.jpg', 20, 8, 'fdafa', 'Sim', 0.00, 0, 0, 0, '', '0.00', 'Não', 15, ''),
(12, 2, 7, 'Camisa Social', 'camisa-social', 'Camisa com Babado na Gola Azul', 'Camisa jeans. Decote com babado, fechamento com botões. Pences no busto e mangas longas com punho. Comprimento tradicional.\r\n\r\n\r\n', '129.90', 'çáa-misa-social.jpg', 20, 6, 'fdsafsaf', 'Sim', 0.00, 0, 0, 0, '', '0.00', 'Não', 3, ''),
(15, 2, 7, 'Camisa Polo', 'camisa-polo', 'Polo Azul Royal Feminina', 'Polo Feminina em modelo Tradicional. Confeccionado em Meia Malha\r\n\r\n\r\n', '0.40', 'Blusa-azul.jpg', 20, 8, 'dafa', 'Sim', 0.00, 0, 0, 0, '', '0.00', 'Não', 15, ''),
(18, 2, 8, 'Calças', 'calcas', 'Calça Jeans Sawary Skinny 360° com Cinta e Puídos', 'Calça em jeans com elastano. Modelo 360º skinny. Cintura com cós e passantes, bolsos frontais falsos e traseiros funcionais, fechamento em botão e zíper, puídos nas pernas, cinta interna contornando a cintura. Cintura alta.\r\n\r\n\r\n', '189.99', 'Calça-fem.jpg', 20, 7, 'fdafa', 'Sim', 0.10, 0, 0, 0, '', '10.00', 'Não', NULL, ''),
(20, 2, 9, 'Calção Preto', 'calcao-preto', 'Short Boxer Preta com Elástico Esportivo', 'Short, em helanca. Modelo boxer, com elástico na cintura, faixa esportiva nas laterais e cordão decorativo. Cintura: Média.\r\n\r\n\r\n', '39.99', 'Short-Preto.jpg', 20, 6, 'fdsaf', 'Sim', 0.20, 2, 2, 2, '', '0.00', 'Não', NULL, ''),
(22, 2, 9, 'Short Jeans', 'short-jeans', 'Short Azul', 'Short em jeans de algodão com puídos de efeito destroyed e barra desfiada. Possui comprimento curto e cintura média e tem cós com passantes, bolsos na frente e na parte de trás e fechamento por botão fixo de metal e zíper.\r\n\r\n\r\n', '99.90', 'Short-Jeans.jpg', 20, 7, 'fdff', 'Sim', 0.00, 0, 0, 0, '', '10.00', 'Não', 2, ''),
(23, 4, 10, 'Dariely', 'dariely', 'Bota Montaria Feminina Bottero Couro Preto', 'Modelo básico que finaliza inúmeros looks com muita elegância. Conta com detalhes metalizados na lateral, fecho em zíper garante a praticidade no calce. Salto grosso complementa o estilo.\r\n\r\n\r\n', '149.99', 'Bota-Feminina.jpg', 18, 6, 'fsdfa', 'Sim', 0.10, 0, 0, 0, '', '0.00', 'Não', 1, ''),
(24, 4, 10, 'Bota Masculina', 'bota-masculina', 'Coturno Masculino Polo State Bronxy Marrom Brown', 'O Coturno Bronxy foi desenvolvido para você ter mais estilo, com um design diferenciado e excelente acabamento, para maior durabilidade. Botas são calçados que nunca saem de moda, além de trazerem mais estilo ao visual, elas são bastante confortáveis principalmente naqueles dias de frio. Além de modernas e elegantes, elas deixam seus pés aquecidos e seu visual ainda mais sofisticado. Um produto que combina com diversas ocasiões e estilo de roupas diferentes. Confeccionado em material alternativo. Fechamento em cadarço e zíper na lateral facilitando na hora de calçar esse incrível produto, sem contar com os detalhes em costuras. Um charme de Coturno\r\n\r\n\r\n', '0.40', 'bota.jpg', 8, 8, 'fdafdsf', 'Sim', 0.10, 0, 0, 0, '', '18.00', 'Sim', 20, ''),
(25, 1, 11, 'Camisa Estampa', 'camisa-estampa', 'Camiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha.\r\n\r\n\r\n\r\n', 'Camiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha.\r\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha.\r\n\r\n\r\n\r\n\r\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha. Modelagem tradicional. Possui estampa ilustrativa de peixe-espada. Detalhe de etiqueta decorativa da marca. Aposte em calça jeans skinny e tênis slip on, para um visual despojado e moderno!\r\nCamiseta confeccionada em meia malha.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '1699.99', 'Camisa-azul.jpg', 9, 6, 'fdfs', 'Sim', 0.02, 20, 15, 30, '', '0.00', 'Sim', 12, ''),
(30, 1, 12, 'Bermudas', 'bermudas', 'Bermuda com Cordel e Detalhe Destroyed Jeans', 'Bermuda em jeans de algodão. Modelo com cordel removível e bolsos frontais e traseiros funcionais. Detalhes destroyed.\r\n\r\n\r\n', '199.99', 'Jeans.jpg', 14, 7, 'ssfs', 'Sim', 0.00, 0, 0, 0, '', '15.00', 'Não', 6, ''),
(32, 10, 13, 'Loja Virtual', 'loja-virtual', 'Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação.', 'Está buscando uma loja virtual completa que possa te atender em tudo e para qualquer tipo de produto? Se a resposta é sim então acaba de encontrar, neste treinamento você aprenderá a criar do zero uma loja virtual completa, caso não tenha interesse no curso ela também virá pronta com os arquivos já prontos para instalação, totalmente atualizada com api dos correios, api de pagamentos (Pagseguro, Paypal e Mercado Pago), Gestão de Estoque, Painél Administrativo e muito mais. (OBS) A loja ainda não está 100% finalizada, temos 7 dos 10 módulos já concluídos, criei o pacote para os alunos já poderem comprar no valor promocional, pois comprando avulso sairá bem mais caro, previsão para conclusão é até o final de setembro de 2020.', '199.99', 'estoque.jpeg', 998, 10, 'curso de loja virtual, curso de ecommerce, montando loja virtual', 'Sim', 0.00, 0, 0, 0, '', '0.00', 'Não', 4, 'https://1drv.ms/u/s!AgtQ8RNXr-R3kuBgubn5M3laKDVqLw?e=uOSMEc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `prod_combos`
--

CREATE TABLE `prod_combos` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `id_combo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `prod_combos`
--

INSERT INTO `prod_combos` (`id`, `id_produto`, `id_combo`) VALUES
(9, 24, 1),
(10, 25, 1),
(13, 30, 1),
(14, 23, 1),
(15, 30, 3),
(18, 24, 3),
(19, 22, 3),
(20, 32, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocao_banner`
--

CREATE TABLE `promocao_banner` (
  `id` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `promocao_banner`
--

INSERT INTO `promocao_banner` (`id`, `titulo`, `link`, `imagem`, `ativo`) VALUES
(1, 'Promoção 6 Camisetas', 'http://google.com', 'banner-promo-2.jpg', 'Sim'),
(3, 'Segunda Promoção', 'produto-sapato-social', 'banner-promo.jpg', 'Sim'),
(4, 'Terceira Promoção', 'http://google.com', 'banner-1.jpg', 'Não');

-- --------------------------------------------------------

--
-- Estrutura da tabela `promocoes`
--

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `desconto` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `promocoes`
--

INSERT INTO `promocoes` (`id`, `id_produto`, `valor`, `data_inicio`, `data_final`, `ativo`, `desconto`) VALUES
(2, 31, '30.00', '2020-08-30', '2020-09-01', 'Sim', ''),
(3, 30, '104.99', '2020-08-31', '2020-09-30', 'Sim', '25'),
(4, 29, '35.00', '2020-08-24', '2020-09-02', 'Não', ''),
(5, 28, '50.00', '2020-08-31', '2020-09-08', 'Sim', ''),
(6, 25, '1529.99', '2020-09-02', '2021-09-25', 'Sim', '10'),
(7, 24, '0.38', '2020-09-02', '2021-09-30', 'Sim', '5'),
(8, 22, '89.91', '2020-09-02', '2020-09-04', 'Sim', '10'),
(9, 18, '170.99', '2020-09-02', '2020-09-02', 'Sim', '10'),
(10, 23, '75.00', '2020-09-09', '2020-09-30', 'Sim', '50');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sub_categorias`
--

CREATE TABLE `sub_categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `sub_categorias`
--

INSERT INTO `sub_categorias` (`id`, `nome`, `nome_url`, `imagem`, `id_categoria`) VALUES
(1, 'Tênis Masculinos', 'tenis-masculinos', 'Prdt-Tenis-Masc-preto.jpg', 4),
(2, 'Sapato Social', 'sapato-social', 'Sapato-Social.jpg', 4),
(3, 'Vestidos', 'vestidos', 'cat-2.jpg', 2),
(6, 'Tênis Femininos', 'tenis-femininos', 'Prdt-Tenis-Feminino-Rosa.jpg', 2),
(7, 'Blusas', 'blusas', 'Sub-Social-Feminina-.jpg', 2),
(8, 'Calças ', 'calcas', 'Prdt-Jogger-Feminina.jpg', 2),
(9, 'Shorts', 'shorts', 'Calção.jpg', 2),
(10, 'Botas', 'botas', 'Bota-Feminina.jpg', 4),
(11, 'Camisetas', 'camisetas', 'Sub-Camisas.jpg', 1),
(12, 'Bermudas', 'bermudas', 'Prdt-Bermuda-masc-Cinza.jpg', 1),
(13, 'Desenvolvimento WEB', 'desenvolvimento-web', 'loja-virtual-php7.jpeg', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_envios`
--

CREATE TABLE `tipo_envios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipo_envios`
--

INSERT INTO `tipo_envios` (`id`, `nome`) VALUES
(6, 'Correios'),
(7, 'Valor Fixo'),
(8, 'Sem Frete'),
(10, 'Digital');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `senha_crip` varchar(150) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `senha_crip`, `nivel`, `imagem`) VALUES
(1, 'Administrador', '000.000.000-00', 'lojaportalhugo@gmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Admin', 'hugo-profile.jpeg'),
(5, 'Alice Santos', '000.000.000-40', 'alice@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Cliente', NULL),
(6, 'Cliente Teste 5', '000.000.000-18', 'cliente@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Cliente', NULL),
(7, 'Matheus Silva', '184.854.545-44', 'mateus@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Cliente', NULL),
(8, 'Hugo Vasconcelos', '214.569.999-99', 'hugovasconcelosf@hotmail.com', '123', '202cb962ac59075b964b07152d234b70', 'Cliente', NULL),
(9, 'Marta Campos', '456.899.999-99', 'marta@hotamil.com', '123', '202cb962ac59075b964b07152d234b70', 'Cliente', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `sub_total` decimal(10,2) NOT NULL,
  `frete` decimal(8,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(35) NOT NULL,
  `rastreio` varchar(35) DEFAULT NULL,
  `pgto_entrega` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `sub_total`, `frete`, `total`, `id_usuario`, `pago`, `data`, `status`, `rastreio`, `pgto_entrega`) VALUES
(1, '172.50', '21.00', '193.50', 6, 'Não', '2020-09-10', '', NULL, NULL),
(2, '172.50', '21.00', '193.50', 6, 'Não', '2020-09-10', '', NULL, NULL),
(3, '172.50', '21.00', '193.50', 6, 'Não', '2020-09-10', '', NULL, NULL),
(4, '172.50', '21.00', '193.50', 6, 'Não', '2020-09-10', '', NULL, NULL),
(5, '172.50', '21.00', '193.50', 6, 'Não', '2020-09-10', '', NULL, NULL),
(6, '172.50', '21.00', '193.50', 6, 'Não', '2020-09-10', '', NULL, NULL),
(7, '75.00', '21.00', '96.00', 6, 'Não', '2020-09-10', '', NULL, NULL),
(8, '174.99', '73.50', '248.49', 6, 'Não', '2020-09-10', '', NULL, NULL),
(9, '257.49', '21.00', '278.49', 6, 'Não', '2020-09-14', '', NULL, NULL),
(19, '52.00', '0.00', '52.00', 6, 'Não', '2020-09-14', '', NULL, NULL),
(20, '52.00', '0.00', '52.00', 6, 'Não', '2020-09-14', '', NULL, NULL),
(31, '52.00', '0.00', '52.00', 6, 'Não', '2020-09-14', '', NULL, NULL),
(32, '52.00', '0.00', '52.00', 6, 'Não', '2020-09-14', '', NULL, NULL),
(33, '1.00', '0.00', '1.00', 6, 'Não', '2020-09-14', '', NULL, NULL),
(34, '1.00', '0.00', '1.00', 8, 'Sim', '2020-09-14', 'Não Enviado', NULL, NULL),
(35, '1.00', '0.00', '1.00', 8, 'Sim', '2020-09-14', 'Não Enviado', NULL, NULL),
(36, '1.00', '0.00', '1.00', 8, 'Sim', '2020-09-14', 'Não Enviado', NULL, NULL),
(37, '1.00', '0.00', '1.00', 8, 'Sim', '2020-09-14', 'Enviado', 'JR03665666555', NULL),
(40, '45.00', '21.00', '66.00', 8, 'Sim', '2020-09-15', 'Enviado', 'JR065666652', NULL),
(42, '120.00', '21.00', '141.00', 8, 'Sim', '2020-09-15', 'Entregue', 'JR064982122', NULL),
(43, '149.99', '21.00', '170.99', 8, 'Sim', '2020-09-15', 'Não Enviado', 'adfsafdfa', NULL),
(44, '149.99', '21.00', '170.99', 8, 'Sim', '2020-09-15', 'Não Enviado', NULL, NULL),
(45, '99.00', '0.00', '99.00', 8, 'Sim', '2020-09-15', 'Não Enviado', NULL, NULL),
(46, '1.00', '0.00', '1.00', 8, 'Sim', '2020-09-15', 'Não Enviado', NULL, NULL),
(47, '1.00', '0.00', '1.00', 8, 'Sim', '2020-09-15', 'Enviado', 'JR065666652', NULL),
(48, '149.99', '21.00', '170.99', 8, 'Sim', '2020-09-16', 'Não Enviado', NULL, NULL),
(49, '184.99', '24.90', '209.89', 8, 'Sim', '2020-09-16', 'Não Enviado', NULL, NULL),
(50, '184.99', '24.20', '209.19', 8, 'Sim', '2020-09-16', 'Não Enviado', NULL, NULL),
(58, '244.99', '21.00', '265.99', 8, 'Não', '2020-09-17', 'Não Enviado', NULL, NULL),
(59, '45.00', '0.00', '45.00', 8, 'Não', '2020-09-17', 'Retirada', NULL, NULL),
(60, '18.00', '0.00', '18.00', 8, 'Não', '2020-09-17', 'Não Enviado', NULL, NULL),
(61, '45.00', '21.00', '66.00', 6, 'Sim', '2020-09-17', 'Não Enviado', NULL, NULL),
(62, '45.00', '0.00', '45.00', 8, 'Não', '2020-09-17', 'Retirada', NULL, NULL),
(63, '199.00', '0.00', '199.00', 8, 'Sim', '2020-09-17', 'Não Enviado', NULL, NULL),
(64, '90.00', '21.00', '111.00', 8, 'Sim', '2020-09-21', 'Enviado', 'JR065666652', NULL),
(65, '154.99', '0.00', '154.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(66, '1.20', '0.00', '1.20', 6, 'Não', '2021-06-15', 'Retirada', NULL, NULL),
(67, '1199.99', '0.00', '1199.99', 6, 'Não', '2021-06-15', 'Retirada', NULL, NULL),
(68, '1199.99', '0.00', '1199.99', 6, 'Não', '2021-06-15', 'Retirada', NULL, NULL),
(69, '1199.99', '0.00', '1199.99', 6, 'Não', '2021-06-15', 'Retirada', NULL, NULL),
(70, '0.00', '0.00', '0.00', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(71, '1199.99', '0.00', '1199.99', 6, 'Não', '2021-06-15', 'Retirada', NULL, NULL),
(72, '699.99', '0.00', '699.99', 6, 'Não', '2021-06-15', 'Retirada', NULL, NULL),
(73, '1414.99', '0.00', '1414.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(74, '214.99', '0.00', '214.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(75, '1699.99', '0.00', '1699.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(76, '172078.00', '21.00', '172099.00', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(77, '1699.99', '21.00', '1720.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(78, '167.99', '21.00', '188.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(79, '1829.89', '21.00', '1850.89', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(80, '324.89', '0.00', '324.89', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(81, '1689.99', '21.00', '1710.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(82, '1689.99', '21.00', '1710.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(83, '20499.00', '0.00', '20499.00', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(84, '214.99', '0.00', '214.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(85, '39.99', '21.00', '60.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(86, '24.99', '21.00', '45.99', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(87, '1409.93', '0.00', '1409.93', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(88, '90.30', '0.00', '90.30', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(89, '8499.95', '21.00', '8520.95', 6, 'Não', '2021-06-15', 'Não Enviado', NULL, NULL),
(90, '1699.99', '0.00', '1699.99', 6, 'Sim', '2021-06-16', 'Não Enviado', NULL, 'Sim'),
(91, '324.89', '0.00', '324.89', 6, 'Não', '2021-06-16', 'Não Enviado', NULL, 'Sim'),
(92, '214.99', '0.00', '214.99', 6, 'Sim', '2021-06-16', 'Não Enviado', NULL, ''),
(93, '214.99', '0.00', '214.99', 6, 'Não', '2021-06-16', 'Não Enviado', NULL, 'sim'),
(94, '1745.78', '21.00', '1766.78', 6, 'Não', '2021-06-16', 'Não Enviado', NULL, ''),
(95, '343.27', '0.00', '343.27', 6, 'Não', '2021-06-16', 'Não Enviado', NULL, 'sim');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alertas`
--
ALTER TABLE `alertas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carac`
--
ALTER TABLE `carac`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carac_itens`
--
ALTER TABLE `carac_itens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carac_itens_car`
--
ALTER TABLE `carac_itens_car`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carac_prod`
--
ALTER TABLE `carac_prod`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `combos`
--
ALTER TABLE `combos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `coment_blog`
--
ALTER TABLE `coment_blog`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cupons`
--
ALTER TABLE `cupons`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `envios_email`
--
ALTER TABLE `envios_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `mensagem`
--
ALTER TABLE `mensagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `prod_combos`
--
ALTER TABLE `prod_combos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `promocao_banner`
--
ALTER TABLE `promocao_banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `promocoes`
--
ALTER TABLE `promocoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sub_categorias`
--
ALTER TABLE `sub_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_envios`
--
ALTER TABLE `tipo_envios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alertas`
--
ALTER TABLE `alertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `avaliacoes`
--
ALTER TABLE `avaliacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `carac`
--
ALTER TABLE `carac`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `carac_itens`
--
ALTER TABLE `carac_itens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de tabela `carac_itens_car`
--
ALTER TABLE `carac_itens_car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT de tabela `carac_prod`
--
ALTER TABLE `carac_prod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=585;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `combos`
--
ALTER TABLE `combos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `coment_blog`
--
ALTER TABLE `coment_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cupons`
--
ALTER TABLE `cupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `envios_email`
--
ALTER TABLE `envios_email`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `mensagem`
--
ALTER TABLE `mensagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de tabela `prod_combos`
--
ALTER TABLE `prod_combos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `promocao_banner`
--
ALTER TABLE `promocao_banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `promocoes`
--
ALTER TABLE `promocoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `sub_categorias`
--
ALTER TABLE `sub_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tipo_envios`
--
ALTER TABLE `tipo_envios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
