DROP TABLE IF EXISTS alertas;

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

INSERT INTO alertas VALUES("3","fdsafdsfa","fdfadf","dfasfdsafsad","http://google.com","sem-foto.jpg","2020-09-01","Não");


DROP TABLE IF EXISTS avaliacoes;

CREATE TABLE `avaliacoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `texto` varchar(500) NOT NULL,
  `nota` int(11) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO avaliacoes VALUES("3","1","8","Muito bom, gostei muito.","5","2020-09-17");
INSERT INTO avaliacoes VALUES("4","25","8","Muito bom, excelente Produto!!","5","2020-09-17");
INSERT INTO avaliacoes VALUES("5","25","6","Fiquei impressionado com a qualidade do produto, superou todas as minhas expectativas, realmente muito bom e num preço totalmente acessível, super indico!","5","2020-09-17");


DROP TABLE IF EXISTS banner;

CREATE TABLE `banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(30) NOT NULL,
  `subtitulo` varchar(20) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `textobt` varchar(15) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO banner VALUES("2","Produtos de Primeira Linha","BOUTIQUE FREITAS","Aqui você encontra os melhores preços!!","http://localhost/loja/sub-categoria-de-moda-feminina","COMPRAR AGORA","Não","16-06-2021-12-11-11-banner.jpg");
INSERT INTO banner VALUES("4","Promoção Camisa Social","Aproveite Já","Todas com 30% de Desconto","http://localhost/loja/produto-camisa-social","COMPRAR AGORA","Sim","16-06-2021-12-19-00-banner-social.jpg");


DROP TABLE IF EXISTS blog;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(200) NOT NULL,
  `descricao_1` varchar(1000) NOT NULL,
  `descricao_2` varchar(1000) NOT NULL,
  `imagem` varchar(150) NOT NULL,
  `data` date NOT NULL,
  `palavras` varchar(150) DEFAULT NULL,
  `nome_url` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS carac;

CREATE TABLE `carac` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO carac VALUES("1","Tamanho");
INSERT INTO carac VALUES("2","Cor");
INSERT INTO carac VALUES("3","Numeração");
INSERT INTO carac VALUES("4","Voltagem");


DROP TABLE IF EXISTS carac_itens;

CREATE TABLE `carac_itens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carac_prod` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `valor_item` varchar(50) DEFAULT NULL,
  `ativo` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;

INSERT INTO carac_itens VALUES("1","11","Azul","#80acf2","Sim");
INSERT INTO carac_itens VALUES("2","3","Azul","#80acf2","Sim");
INSERT INTO carac_itens VALUES("3","3","Vermelho","#cf4023","Sim");
INSERT INTO carac_itens VALUES("4","10","P",NULL,"Sim");
INSERT INTO carac_itens VALUES("5","10","M",NULL,"Sim");
INSERT INTO carac_itens VALUES("6","10","G",NULL,"Sim");
INSERT INTO carac_itens VALUES("7","10","GG",NULL,"Sim");
INSERT INTO carac_itens VALUES("8","3","Amarelo",NULL,"Sim");
INSERT INTO carac_itens VALUES("9","3","Verde",NULL,"Sim");
INSERT INTO carac_itens VALUES("12","11","Vermelho",NULL,"Sim");
INSERT INTO carac_itens VALUES("13","15","30 e 31",NULL,"Sim");
INSERT INTO carac_itens VALUES("14","15","32 e 33",NULL,"Sim");
INSERT INTO carac_itens VALUES("15","16","Marron",NULL,"Sim");
INSERT INTO carac_itens VALUES("16","16","Preto",NULL,"Sim");
INSERT INTO carac_itens VALUES("17","17","34/35",NULL,"Sim");
INSERT INTO carac_itens VALUES("18","17","36/37",NULL,"Sim");
INSERT INTO carac_itens VALUES("19","18","Azul",NULL,"Sim");
INSERT INTO carac_itens VALUES("20","20","P",NULL,"Sim");
INSERT INTO carac_itens VALUES("22","21","Preta","#000","Sim");
INSERT INTO carac_itens VALUES("23","21","Azul","#939ced","Sim");
INSERT INTO carac_itens VALUES("24","22","P",NULL,"Sim");
INSERT INTO carac_itens VALUES("25","22","M",NULL,"Sim");
INSERT INTO carac_itens VALUES("26","22","G",NULL,"Sim");
INSERT INTO carac_itens VALUES("27","22","GG",NULL,"Sim");
INSERT INTO carac_itens VALUES("29","21","Verde Escuro","#073817","Sim");
INSERT INTO carac_itens VALUES("30","21","Verde Claro","#6fd691","Sim");
INSERT INTO carac_itens VALUES("31","21","Laranja","#b5631b","Sim");
INSERT INTO carac_itens VALUES("34","20","M",NULL,"Sim");
INSERT INTO carac_itens VALUES("35","23","Preto","#000","Sim");
INSERT INTO carac_itens VALUES("36","24","P",NULL,"Sim");
INSERT INTO carac_itens VALUES("37","24","M",NULL,"Sim");
INSERT INTO carac_itens VALUES("38","24","G",NULL,"Sim");
INSERT INTO carac_itens VALUES("39","25","31 e 32",NULL,"Sim");
INSERT INTO carac_itens VALUES("40","25","33 e 34",NULL,"Sim");
INSERT INTO carac_itens VALUES("41","26","P",NULL,"Sim");
INSERT INTO carac_itens VALUES("42","26","M",NULL,"Sim");
INSERT INTO carac_itens VALUES("46","19","Cinza","#CCC","Sim");
INSERT INTO carac_itens VALUES("47","19","Azul","#11478a","Sim");
INSERT INTO carac_itens VALUES("48","19","Preto","#000","Sim");


DROP TABLE IF EXISTS carac_itens_car;

CREATE TABLE `carac_itens_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carrinho` int(11) NOT NULL,
  `id_carac` int(11) NOT NULL,
  `nome` varchar(35) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8;

INSERT INTO carac_itens_car VALUES("32","104","2","Azul");
INSERT INTO carac_itens_car VALUES("33","104","1","G");
INSERT INTO carac_itens_car VALUES("34","220","1","M");
INSERT INTO carac_itens_car VALUES("36","223","1","M");
INSERT INTO carac_itens_car VALUES("37","223","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("38","220","2","Preto");
INSERT INTO carac_itens_car VALUES("39","220","3","31 e 32");
INSERT INTO carac_itens_car VALUES("41","315","2","Preta");
INSERT INTO carac_itens_car VALUES("42","222","2","Preto");
INSERT INTO carac_itens_car VALUES("43","318","2","Azul");
INSERT INTO carac_itens_car VALUES("44","320","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("45","321","2","Verde Claro");
INSERT INTO carac_itens_car VALUES("46","322","2","Verde Claro");
INSERT INTO carac_itens_car VALUES("47","323","2","Azul");
INSERT INTO carac_itens_car VALUES("48","324","2","Laranja");
INSERT INTO carac_itens_car VALUES("49","325","2","Preta");
INSERT INTO carac_itens_car VALUES("50","326","2","Azul");
INSERT INTO carac_itens_car VALUES("51","327","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("52","328","2","Laranja");
INSERT INTO carac_itens_car VALUES("53","329","2","Azul");
INSERT INTO carac_itens_car VALUES("54","330",NULL,NULL);
INSERT INTO carac_itens_car VALUES("55","331","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("56","332","2","Azul");
INSERT INTO carac_itens_car VALUES("57","333","2","Azul");
INSERT INTO carac_itens_car VALUES("58","334","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("59","335","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("60","336","2","Preta");
INSERT INTO carac_itens_car VALUES("61","337","2","Azul");
INSERT INTO carac_itens_car VALUES("62","337","1","M");
INSERT INTO carac_itens_car VALUES("63","338",NULL,NULL);
INSERT INTO carac_itens_car VALUES("64","338","1","G");
INSERT INTO carac_itens_car VALUES("65","339","2","Azul");
INSERT INTO carac_itens_car VALUES("66","339","1","G");
INSERT INTO carac_itens_car VALUES("67","340","2","Preto");
INSERT INTO carac_itens_car VALUES("68","340","1","M");
INSERT INTO carac_itens_car VALUES("69","340","3","31 e 32");
INSERT INTO carac_itens_car VALUES("78","441","2","Azul");
INSERT INTO carac_itens_car VALUES("79","441","1","P");
INSERT INTO carac_itens_car VALUES("80","455","2","Azul");
INSERT INTO carac_itens_car VALUES("81","455","1","M");
INSERT INTO carac_itens_car VALUES("82","457","2","Azul");
INSERT INTO carac_itens_car VALUES("83","457","1","P");
INSERT INTO carac_itens_car VALUES("84","458","2","Azul");
INSERT INTO carac_itens_car VALUES("85","458","1","G");
INSERT INTO carac_itens_car VALUES("86","459","2","Preta");
INSERT INTO carac_itens_car VALUES("87","459","1","M");
INSERT INTO carac_itens_car VALUES("88","465","2","Azul");
INSERT INTO carac_itens_car VALUES("89","465","1","M");
INSERT INTO carac_itens_car VALUES("90","467","2","Preta");
INSERT INTO carac_itens_car VALUES("91","467","1","M");
INSERT INTO carac_itens_car VALUES("92","469","2","Azul");
INSERT INTO carac_itens_car VALUES("93","469","1","GG");
INSERT INTO carac_itens_car VALUES("100","473","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("101","473","1","G");
INSERT INTO carac_itens_car VALUES("105","492","2","Preta");
INSERT INTO carac_itens_car VALUES("106","492","1","M");
INSERT INTO carac_itens_car VALUES("109","497","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("110","497","1","G");
INSERT INTO carac_itens_car VALUES("111","498","1","P");
INSERT INTO carac_itens_car VALUES("112","498","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("113","499","2","Preta");
INSERT INTO carac_itens_car VALUES("114","499","1","M");
INSERT INTO carac_itens_car VALUES("117","504","2","Preta");
INSERT INTO carac_itens_car VALUES("118","504","1","G");
INSERT INTO carac_itens_car VALUES("119","505","2","Azul");
INSERT INTO carac_itens_car VALUES("120","505","1","M");
INSERT INTO carac_itens_car VALUES("121","509","2","Azul");
INSERT INTO carac_itens_car VALUES("122","509","1","G");
INSERT INTO carac_itens_car VALUES("123","510","2","Azul");
INSERT INTO carac_itens_car VALUES("124","510","1","G");
INSERT INTO carac_itens_car VALUES("125","512","2","Azul");
INSERT INTO carac_itens_car VALUES("126","512","1","M");
INSERT INTO carac_itens_car VALUES("133","518","2","Azul");
INSERT INTO carac_itens_car VALUES("134","518","1","P");
INSERT INTO carac_itens_car VALUES("135","519","2","Preta");
INSERT INTO carac_itens_car VALUES("136","519","1","P");
INSERT INTO carac_itens_car VALUES("137","520","2","Azul");
INSERT INTO carac_itens_car VALUES("138","520","1","M");
INSERT INTO carac_itens_car VALUES("139","521","2","Verde Escuro");
INSERT INTO carac_itens_car VALUES("140","521","1","G");
INSERT INTO carac_itens_car VALUES("141","522","2","Preta");
INSERT INTO carac_itens_car VALUES("142","522","1","M");
INSERT INTO carac_itens_car VALUES("143","523","2","Azul");
INSERT INTO carac_itens_car VALUES("144","523","1","G");
INSERT INTO carac_itens_car VALUES("145","524","2","Preta");
INSERT INTO carac_itens_car VALUES("146","524","1","P");
INSERT INTO carac_itens_car VALUES("147","525","2","Azul");
INSERT INTO carac_itens_car VALUES("148","525","1","P");
INSERT INTO carac_itens_car VALUES("149","526","2","Azul");
INSERT INTO carac_itens_car VALUES("150","526","1","P");
INSERT INTO carac_itens_car VALUES("151","527","2","Preta");
INSERT INTO carac_itens_car VALUES("152","527","1","M");
INSERT INTO carac_itens_car VALUES("153","528","2","Preta");
INSERT INTO carac_itens_car VALUES("154","528","1","M");
INSERT INTO carac_itens_car VALUES("155","529","2","Preta");
INSERT INTO carac_itens_car VALUES("156","529","1","P");
INSERT INTO carac_itens_car VALUES("157","530","2","Marron");
INSERT INTO carac_itens_car VALUES("158","530","3","34/35");
INSERT INTO carac_itens_car VALUES("159","531","2","Azul");
INSERT INTO carac_itens_car VALUES("160","531","1","G");
INSERT INTO carac_itens_car VALUES("161","533","2","Azul");
INSERT INTO carac_itens_car VALUES("162","533","1","P");
INSERT INTO carac_itens_car VALUES("163","534","2","Preto");
INSERT INTO carac_itens_car VALUES("164","534","1","P");
INSERT INTO carac_itens_car VALUES("165","534","3","31 e 32");
INSERT INTO carac_itens_car VALUES("166","535","2","Preta");
INSERT INTO carac_itens_car VALUES("167","535","1","M");
INSERT INTO carac_itens_car VALUES("168","536","2","Preta");
INSERT INTO carac_itens_car VALUES("169","536","1","M");
INSERT INTO carac_itens_car VALUES("170","537","2","Azul");
INSERT INTO carac_itens_car VALUES("171","537","1","P");
INSERT INTO carac_itens_car VALUES("172","538","2","Azul");
INSERT INTO carac_itens_car VALUES("173","538","1","P");
INSERT INTO carac_itens_car VALUES("174","541","2","Azul");
INSERT INTO carac_itens_car VALUES("175","541","1","P");
INSERT INTO carac_itens_car VALUES("176","542","2","Azul");
INSERT INTO carac_itens_car VALUES("177","542","1","P");
INSERT INTO carac_itens_car VALUES("178","558","2","Preta");
INSERT INTO carac_itens_car VALUES("179","558","1","M");
INSERT INTO carac_itens_car VALUES("180","559","2","Azul");
INSERT INTO carac_itens_car VALUES("181","559","1","P");
INSERT INTO carac_itens_car VALUES("182","560","2","Preta");
INSERT INTO carac_itens_car VALUES("183","560","1","P");
INSERT INTO carac_itens_car VALUES("184","561","2","Azul");
INSERT INTO carac_itens_car VALUES("185","561","1","M");
INSERT INTO carac_itens_car VALUES("186","562","2","Preto");
INSERT INTO carac_itens_car VALUES("187","562","1","P");
INSERT INTO carac_itens_car VALUES("188","562","3","33 e 34");
INSERT INTO carac_itens_car VALUES("189","563","2","Azul");
INSERT INTO carac_itens_car VALUES("190","563","1","P");
INSERT INTO carac_itens_car VALUES("191","564","2","Azul");
INSERT INTO carac_itens_car VALUES("192","564","1","P");
INSERT INTO carac_itens_car VALUES("193","575","2","Azul");
INSERT INTO carac_itens_car VALUES("194","575","1","P");
INSERT INTO carac_itens_car VALUES("195","578","2","Preta");
INSERT INTO carac_itens_car VALUES("196","578","1","P");
INSERT INTO carac_itens_car VALUES("197","580","2","Preto");
INSERT INTO carac_itens_car VALUES("198","580","1","P");
INSERT INTO carac_itens_car VALUES("199","580","3","31 e 32");
INSERT INTO carac_itens_car VALUES("201","584","2","Azul");
INSERT INTO carac_itens_car VALUES("202","584","1","P");


DROP TABLE IF EXISTS carac_prod;

CREATE TABLE `carac_prod` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_carac` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO carac_prod VALUES("3","2","1");
INSERT INTO carac_prod VALUES("10","1","1");
INSERT INTO carac_prod VALUES("11","2","3");
INSERT INTO carac_prod VALUES("12","3","3");
INSERT INTO carac_prod VALUES("13","1","3");
INSERT INTO carac_prod VALUES("14","4","3");
INSERT INTO carac_prod VALUES("15","3","1");
INSERT INTO carac_prod VALUES("16","2","23");
INSERT INTO carac_prod VALUES("17","3","23");
INSERT INTO carac_prod VALUES("18","2","31");
INSERT INTO carac_prod VALUES("19","2","30");
INSERT INTO carac_prod VALUES("20","1","30");
INSERT INTO carac_prod VALUES("21","2","25");
INSERT INTO carac_prod VALUES("22","1","25");
INSERT INTO carac_prod VALUES("23","2","22");
INSERT INTO carac_prod VALUES("24","1","22");
INSERT INTO carac_prod VALUES("25","3","22");
INSERT INTO carac_prod VALUES("26","1","18");


DROP TABLE IF EXISTS carrinho;

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `data` date NOT NULL,
  `combo` varchar(5) NOT NULL,
  `sessao` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=591 DEFAULT CHARSET=utf8;

INSERT INTO carrinho VALUES("427","8","25","1","42","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("428","8","30","1","43","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("429","8","25","1","43","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("430","8","30","1","44","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("431","8","25","1","44","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("434","8","22","1","45","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("435","8","24","1","46","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("436","8","15","1","46","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("437","8","10","1","46","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("438","8","24","1","47","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("439","8","15","1","47","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("440","8","10","1","47","2020-09-15","Não",NULL);
INSERT INTO carrinho VALUES("457","8","30","1","48","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("458","8","25","1","48","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("459","8","25","1","49","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("460","8","1","1","49","2020-09-16","Sim",NULL);
INSERT INTO carrinho VALUES("465","8","25","1","50","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("466","8","1","1","50","2020-09-16","Sim",NULL);
INSERT INTO carrinho VALUES("473","8","25","1","51","2020-09-16","Não",NULL);
INSERT INTO carrinho VALUES("495","8","4","1","53","2020-09-17","Sim",NULL);
INSERT INTO carrinho VALUES("497","8","25","1","54","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("498","8","25","1","55","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("499","8","25","1","56","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("502","8","4","1","57","2020-09-17","Sim",NULL);
INSERT INTO carrinho VALUES("503","8","32","1","58","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("504","8","25","1","58","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("505","8","25","1","59","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("508","8","24","1","60","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("509","6","25","1","61","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("510","8","25","1","62","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("511","8","32","1","63","2020-09-17","Não",NULL);
INSERT INTO carrinho VALUES("512","8","25","2","64","2020-09-21","Não",NULL);
INSERT INTO carrinho VALUES("518","6","30","1","65","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("519","6","25","1","66","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("520","6","25","1","67","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("521","6","25","1","68","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("522","6","25","1","69","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("523","6","25","1","71","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("524","6","25","1","72","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("525","6","30","1","73","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("526","6","30","1","74","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("527","6","25","1","75","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("528","6","25","1","76","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("529","6","25","1","77","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("530","6","23","1","78","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("531","6","25","1","79","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("532","6","12","1","79","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("533","6","30","1","80","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("534","6","22","1","80","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("535","6","25","1","81","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("536","6","25","1","82","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("537","6","30","1","83","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("538","6","30","1","84","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("539","6","20","1","85","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("540","6","20","1","86","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("541","6","30","1","87","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("542","6","30","6","87","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("543","6","15","1","88","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("544","6","8","1","88","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("558","6","25","3","89","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("559","6","25","2","89","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("560","6","25","1","90","2021-06-15","Não",NULL);
INSERT INTO carrinho VALUES("561","6","30","1","91","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("562","6","22","1","91","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("563","6","30","1","92","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("564","6","30","1","93","2021-06-16","Não",NULL);
INSERT INTO carrinho VALUES("573","6","10","1","94","2021-06-16","Não","16-06-2021 11:14:06");
INSERT INTO carrinho VALUES("574","6","15","1","94","2021-06-16","Não","16-06-2021 11:14:06");
INSERT INTO carrinho VALUES("575","6","30","1","94","2021-06-16","Não","16-06-2021 11:18:25");
INSERT INTO carrinho VALUES("577","6","10","1","94","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("578","6","25","1","94","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("579","6","24","1","95","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("580","6","22","1","95","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("584","6","30","1","95","2021-06-16","Não","16-06-2021 13:17:31");
INSERT INTO carrinho VALUES("589","10","51","1",NULL,"2022-01-28","Não","28-01-2022 13:50:36");
INSERT INTO carrinho VALUES("590","13","51","1","96","2022-01-28","Não","28-01-2022 13:50:36");


DROP TABLE IF EXISTS categorias;

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO categorias VALUES("11","Cabelo","cabelo","sem-foto.jpg");
INSERT INTO categorias VALUES("12","Unhas","unhas","sem-foto.jpg");
INSERT INTO categorias VALUES("13","Apliques Orgânicos","apliques-organicos","sem-foto.jpg");
INSERT INTO categorias VALUES("14","Pele","pele","sem-foto.jpg");


DROP TABLE IF EXISTS clientes;

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `cartoes` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO clientes VALUES("1","Alice Santos","000.000.000-40","alice@hotmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("2","Pedro Silva","000.000.000-18","cliente@hotmail.com","(55) 55555-5555","Rua Alameda Campos","22","AP 22 Bloco 5","Bonfim","Belo Horizonte","MG","31530-150","2");
INSERT INTO clientes VALUES("3","Matheus Silva","184.854.545-44","mateus@hotmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("4","Hugo Vasconcelos","214.569.999-99","hugovasconcelosf@hotmail.com","(33) 33333-3333","AF","55",NULL,"Bonfim","Belo Horizonte","MG","32451-236","8");
INSERT INTO clientes VALUES("5","Marta Campos","456.899.999-99","marta@hotamil.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("6","Gabriel Alencar","111.111.111-11","gabrielalencarbr13@gmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("7","Gabriel Alencar","222.222.222-22","jooj@gmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("8","Jooj","111.111.111-22","gabrielalencarbr13@gmail.com",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO clientes VALUES("9","Jooj","128.983.729-51","mamaeu@gmail.com","(44) 98868-1040","Rua Eloy Baptista Lopes","6180","casa","Jd. Aratimbó","Umuarama","PR","87502-430",NULL);


DROP TABLE IF EXISTS combos;

CREATE TABLE `combos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS coment_blog;

CREATE TABLE `coment_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_blog` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `comentario` varchar(500) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO coment_blog VALUES("1","3","6","Sempre tive dúvidas quanto a isso, muitas das vezes não conseguia diferenciar bem, sua postagem me ajudou muito, vou prestar mais atenção, grato.","2020-09-21","13:21:49");
INSERT INTO coment_blog VALUES("5","3","8","cccccccccc","2020-09-21","13:47:45");


DROP TABLE IF EXISTS cupons;

CREATE TABLE `cupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(35) NOT NULL,
  `desconto` decimal(8,2) NOT NULL,
  `codigo` varchar(35) NOT NULL,
  `data` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;



DROP TABLE IF EXISTS emails;

CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO emails VALUES("1","José Silva","hugovasconcelosf@hotmail.com","Sim");
INSERT INTO emails VALUES("2","João Silva","contato@hugocursos.com.br","Sim");
INSERT INTO emails VALUES("3","Alice Santos","alice@hotmail.com","Sim");
INSERT INTO emails VALUES("4","Cliente Teste","cliente@hotmail.com","Sim");
INSERT INTO emails VALUES("5","Matheus Silva","hugovasconcelosf@hotmail.com","Sim");
INSERT INTO emails VALUES("6","Marta Campos","marta@hotamil.com","Sim");
INSERT INTO emails VALUES("7","Gabriel Alencar","gabrielalencarbr13@gmail.com","Sim");
INSERT INTO emails VALUES("8","Gabriel Alencar","jooj@gmail.com","Sim");
INSERT INTO emails VALUES("9","Jooj","mamaeu@gmail.com","Sim");


DROP TABLE IF EXISTS envios_email;

CREATE TABLE `envios_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `final` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO envios_email VALUES("1","2020-09-21 17:30:54",NULL,"Promoção de Camisas","Aproveite a nossa promoção com um lindo conjunto ..","combo-conjunto-completo");


DROP TABLE IF EXISTS imagens;

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

INSERT INTO imagens VALUES("11","1","cat-4.jpg");
INSERT INTO imagens VALUES("13","3","cat-2.jpg");
INSERT INTO imagens VALUES("14","3","cat-4.jpg");
INSERT INTO imagens VALUES("15","3","cat-7.jpg");
INSERT INTO imagens VALUES("16","1","cat-6.jpg");
INSERT INTO imagens VALUES("19","31","cat-4.jpg");
INSERT INTO imagens VALUES("21","25","ca misa social.jpg");
INSERT INTO imagens VALUES("22","25","Blusa-azul.jpg");
INSERT INTO imagens VALUES("23","25","Blusa Ver.jpg");
INSERT INTO imagens VALUES("24","25","Polo Marinho.jpg");
INSERT INTO imagens VALUES("25","25","Blue.jpg");


DROP TABLE IF EXISTS mensagem;

CREATE TABLE `mensagem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_venda` int(11) NOT NULL,
  `texto` varchar(1000) NOT NULL,
  `usuario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

INSERT INTO mensagem VALUES("7","43","Mensagem Teste","Cliente","2020-09-15","00:00:00");
INSERT INTO mensagem VALUES("9","43","Pergunta do Admin","Admin","2020-09-15","00:00:00");
INSERT INTO mensagem VALUES("15","43","Cliente Respondeu","Admin","2020-09-15","13:37:59");
INSERT INTO mensagem VALUES("16","42","Pergunta do cliente sobre...","Cliente","2020-09-15","14:01:25");
INSERT INTO mensagem VALUES("17","42","Resposta do Admin","Admin","2020-09-15","14:26:59");
INSERT INTO mensagem VALUES("18","42","Mudança de status no pedido, pedido Disponivel","Admin","2020-09-15","15:19:45");
INSERT INTO mensagem VALUES("19","42","Mudança de status no pedido, pedido Entregue","Admin","2020-09-15","15:20:34");
INSERT INTO mensagem VALUES("20","42","Mudança de status no pedido, pedido Entregue","Admin","2020-09-15","15:27:39");
INSERT INTO mensagem VALUES("21","42","Obrigado","Cliente","2020-09-15","15:32:48");
INSERT INTO mensagem VALUES("22","40","Seu pedido foi Enviado, o código de rastreio é JR065666652","Admin","2020-09-15","15:38:18");
INSERT INTO mensagem VALUES("23","44","Parab?ns, voc? ganhou um novo cupom de desconto, poder? usar at? o dia 22/09/2020 o seu c?digo para uso do cupom ? 214.569.999-99","Admin","2020-09-15","17:32:02");
INSERT INTO mensagem VALUES("24","45","Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99","Admin","2020-09-15","17:40:39");
INSERT INTO mensagem VALUES("25","46","Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99","Admin","2020-09-15","18:19:56");
INSERT INTO mensagem VALUES("26","43","Mudança de status no pedido, pedido Não Enviado","Admin","2020-09-15","18:53:38");
INSERT INTO mensagem VALUES("27","47","Seu pedido foi Enviado, o código de rastreio é JR065666652","Admin","2020-09-15","19:10:46");
INSERT INTO mensagem VALUES("28","43","Parabéns, você ganhou um novo cupom de desconto no valor de 20 reais, poderá usar até o dia 22/09/2020 o seu código para uso do cupom é 214.569.999-99","Admin","2020-09-15","19:13:33");
INSERT INTO mensagem VALUES("29","64","Seu pedido foi Enviado, o código de rastreio é JR065666652","Admin","2020-09-21","18:01:57");


DROP TABLE IF EXISTS prod_combos;

CREATE TABLE `prod_combos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `id_combo` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

INSERT INTO prod_combos VALUES("9","24","1");
INSERT INTO prod_combos VALUES("10","25","1");
INSERT INTO prod_combos VALUES("13","30","1");
INSERT INTO prod_combos VALUES("14","23","1");
INSERT INTO prod_combos VALUES("15","30","3");
INSERT INTO prod_combos VALUES("18","24","3");
INSERT INTO prod_combos VALUES("19","22","3");
INSERT INTO prod_combos VALUES("20","32","4");


DROP TABLE IF EXISTS produtos;

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `link` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

INSERT INTO produtos VALUES("38","11","16","Shampo Wella Invigo Nutri Enrich - Nutrição Profunda (1L)","shampo-wella-invigo-nutri-enrich-nutricao-profunda-(1l)","Shampoo de nutrição Wella cosmetics.","O Shampoo Wella Professionals Invigo Nutri Enrich é a limpeza diária para cabelos ressecados. Uma nutrição instantânea que devolve toda maciez aos cabelos mais ressecados, recuperando sua vitalidade. Um tratamento digno dos melhores salões.O Shampoo Wella Professionals Invigo Nutri Enrich ajuda a resgatar profundamente o aspecto saudável dos cabelos.\n\nAção Ácido Oleico e o Pantenol: proporciona hidratação e nutrição aos cabelos. Vitamina E: protege os cabelos de desgaste. Goji Berry: é rica em vitaminas minerais e peptídeos.\nTipos de Cabelos: Cabelos Ressecados e Danificados","130.00","28-01-2022-13-23-28-shampoo-wella.jpeg","20","6","shampoo","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("39","11","17","Condicionador Wella Invigo Nutri Enrich - Nutrição Profunda (1L)","condicionador-wella-invigo-nutri-enrich-nutricao-profunda-(1l)","Condicionador para cabelos secos, ressecados ou quimicamente tratados em tamanho salão.","Condicionador para cabelos secos, ressecados ou quimicamente tratados em tamanho salão. Wella Professionals Invigo Nutri-Enrich Conditioner desembaraça, hidrata e nutre. Ele é rico em ativos que melhoram a qualidade do cabelo e suaviza sua superfície para que fique com um toque macio. \n\n\nWella Professionals Invigo Nutri-Enrich Conditioner tem uma fórmula com um blend de nutrientes multifuncionais que restauram a maciez, o brilho e a saúde do cabelo. A fragrância luxuosa é frutal chipre almiscarado. Seus fios ficam hidratados, nutridos e desembaraçados.","150.00","28-01-2022-13-27-35-condicionador-wella.jpeg","50","6","condicionador","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("40","11","18","Kit nutrição Wella","kit-nutricao-wella","Kit de tratamento para cabelos secos, ressecados ou com química em tamanho salão.","Kit de tratamento para cabelos secos, ressecados ou com química em tamanho salão. Nutre e hidrata de maneira intensa para restaurar a saúde dos fios.\n\nKit Wella Professionals Invigo Nutri-Enrich Salon Duo traz um blend de nutrientes multifuncionais que suavizam a superfície do cabelo para proporcionar muito mais brilho e maciez. A fragrância luxuosa é frutal chipre almiscarado. Seus fios ficam limpos, hidratados, nutridos e desembaraçados.","360.00","28-01-2022-13-29-47-Kit-wella.jpeg","50","6","kit","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("41","11","18","Kit Wella Oil Reflections","kit-wella-oil-reflections","Luminosidade, maciez e anti-frizz em um só kit.","Kit Wella Oil Reflections completo pra você que quer seu cabelo com luminosidade, maciez e efeito anti-frizz.","620.00","28-01-2022-13-33-03-kit-wella-com-oleo.jpeg","50","6","kit","Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("42","11","19","Wella Professionals Invigo Nutri-Enrich Mask","wella-professionals-invigo-nutri-enrich-mask","Máscara de tratamento para cabelos secos, ressecados ou com química. ","Máscara de tratamento para cabelos secos, ressecados ou com química. Wella Professionals Invigo Nutri-Enrich Mask hidrata e nutre profundamente para restaurar a saúde dos fios e ainda garantir um toque sedoso e muito brilho. Tamanho profissional.\n\nSua fórmula é rica em ingredientes que tratam a fibra capilar tanto em sua superfície, suavizando-a, como na parte mais profunda. Afinal, Wella Professionals Invigo Nutri-Enrich Mask age na reposição de nutrientes essenciais e de hidratação. Ela possui um perfume luxuoso frutal chipre almiscarado.","140.00","28-01-2022-13-34-30-creme-capilar.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("43","11","20","Óleo Wella Professionals Oil Reflections","oleo-wella-professionals-oil-reflections","Óleo para todos os tipos de cabelos. O Óleo Wella Professionals Oil Reflections proporciona um efeito gloss com nutrição e proteção dos fios.","Óleo para todos os tipos de cabelos. O Óleo Wella Professionals Oil Reflections proporciona um efeito gloss com nutrição e proteção dos fios.\n\nÓleo Wella Oil Reflections é extremamente versátil e pode ser usado como pré-shampoo, tratamento noturno, leave-in, proteção térmica contra secador e extra brilho. Além disso, também protege os fios durante processos químicos. Dessa forma, você conquista cabelos macios e com uma carga maior de nutrientes.","120.00","28-01-2022-13-36-18-oleo-wella.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("44","14","21","Rolo de Jade","rolo-de-jade","Rolo massageador com diversos benefícios.","A MASSAGEM COM O ROLO DE JADE PROPORCIONA:\n• Retarda o envelhecimento da pele;\n• Promove a circulação sanguínea e o metabolismo da superfície da pele com o uso a longo prazo;\n• Pode reduzir as linhas dos olhos;\n• Ajuda na prevenção de rugas;\n• Promove bem estar devido a massagem relaxante;\n• Fazer massagem uma vez por dia, a cada 10-15 minutos. Além disso, o rolinho de massagem pode ser colocado em um recipiente com água quente, e depois efetuar a massagem para ajudar a expandir os poros e ativar a circulação sanguínea;\n• Pode ser utilizada com loções e cremes;","20.00","28-01-2022-13-40-52-rolo-de-jade.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("45","14","21","Pincel de silicone para máscaras","pincel-de-silicone-para-mascaras","Pincel para aplicação de máscara facial.","Características:\n1. A cabeça de pincel é confeccionada em material de silicone macio e confortável, e a máscara é uniformemente fina e fácil de limpar.\n2. O design de cabeça de cabeça em forma de pá pá pode tocar qualquer posição no rosto sem deformação.\n3. É mais fácil de carregar que uma escova de máscara capilar, não derramou pelos, dobra na vontade, não é fácil de deformar, e é conveniente de guardar.","5.00","28-01-2022-13-42-21-pincel-silicone.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("46","14","22","Argila verde","argila-verde","Argila para mascara. ","Para uma pele equilibrada e livre de impurezas, é rica em potássio, ferro, silício e alumínio. Possui propriedades adstringentes, esfoliam-te e antibactericidas que ajudam a combater as espinhas e cravos. Esse tipo de argila ajuda regular a produção de sebo da cútis e fechar os poros do rosto. No corpo auxilia no combate a celulite, gordura localizada e flacidez.\n\nIndicações da argila Verde: \nIndicada para peles oleosas e com acne.","15.00","28-01-2022-13-43-43-argila-verde.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("47","14","22","Argila preta","argila-preta","argila para mascara.","Para rejuvenescer e livrar a pele da oleosidade, é rica em enxofre, silício e alumínio. Com poder estimulante e antioxidante, esse tipo de argila, também conhecida como lama vulcânica, é retirada de profundidades superiores a 5 metros e, por isso,  contém diversas propriedades naturais que pode melhorar significativamente o aspecto e a saúde da sua pele. Devido ao alto teor de alumínio, silício e baixo percentual de ferro, a argila preta tem e ação anti-idade e ainda ajuda a atenuar manchas na pele. No corpo auxilia no combate a celulite, gordura localizada e flacidez.\n\nIndicações da argila preta:\nIndicada para peles oleosas e com acne.","15.00","28-01-2022-13-44-41-argila-preta.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("48","14","22","Removedor De Cravos LANBENA","removedor-de-cravos-lanbena","creme removedor de cravos.","Removedor De Cravos LANBENA Nase Faixa Pore Facial Máscara Facial Acne Tratamento Esfoliação Tratamento Profundo Limpeza Profunda Pele Preta\nCaracterísticas:\n1. Múltiplos efeitos: limpeza profunda, remoção de cravo, tratamento de acne.\n2. Seguro e confiável: pele amigável, sem irritação, sem danos da pele.\n3. Fácil de usar: usar com tecidos 60pcs tecidos, o efeito é melhor.\n","20.00","28-01-2022-13-47-31-lanbena.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("49","12","25","Decoração de borboleta","decoracao-de-borboleta","Decoração de borboletas para suas unhas.",NULL,"10.00","28-01-2022-13-49-37-decoração-borboleta.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("50","12","25","Adesivos de unha","adesivos-de-unha","Adesivos diversos para suas unhas",NULL,"5.00","28-01-2022-13-53-04-adesivo-para-unhas.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("51","12","24","Esmalte Latika Daisy Pétala","esmalte-latika-daisy-petala","Os Latika Nail Polish são esmaltes de: \n* Alta cobertura; \n* Pigmentação e duração; \n* Com secagem rápida;\n* Possuem pincel flat que facilita a aplicação uniforme nas unhas;\n*  Possuem tampa removível, para facilitar a aplicação.",NULL,"4.00","28-01-2022-13-54-48-latika-branco.jpeg","50","6",NULL,"Sim","0.05",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("52","12","24","Esmalte Latika Confetti Merlot","esmalte-latika-confetti-merlot","Os Latika Nail Polish são esmaltes de: \n* Alta cobertura; \n* Pigmentação e duração; \n* Com secagem rápida;\n* Possuem pincel flat que facilita a aplicação uniforme nas unhas;\n*  Possuem tampa removível, para facilitar a aplicação.",NULL,"4.00","28-01-2022-13-56-51-latika-rosa.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("53","13","27","Rabo de cavalo","rabo-de-cavalo","Rabo De cavalo Castanho - Cabelo orgânico 90cm",NULL,"110.00","28-01-2022-14-00-24-aplique-1.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("54","13","27","Aplique tik-tak","aplique-tik-tak","Extensão de Cabelo orgânico na cor preta (70cm)",NULL,"90.00","28-01-2022-14-01-35-aplique-2.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("55","13","26","Hair Mousse Neez","hair-mousse-neez","O Hair Mousse Neez foi desenvolvido para proporcionar forma aos cabelos, atribuindo maior brilho e maciez.","Modo de Usar:\n \nAgite antes de usar. Vire o frasco com o bico para baixo para pressionar a válvula. Coloque na palma da mão a quantidade equivalente ao tamanho de um limão. Aplique com as duas mãos, distribuindo o produto por todo o cabelo. Com o auxílio dos dedos, pente, escova e secador finalize o penteado. Para retirar o produto dos cabelos escove ou lave-os normalmente.","35.00","28-01-2022-14-03-32-mousse-fixador.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);
INSERT INTO produtos VALUES("56","13","26","Spray Desmaia Fibras","spray-desmaia-fibras","- Recupere todos os tipos de fibras! (Orgânico, bio fibra...)\n- Perfeito para finalização do cabelo liso com a prancha\n- Auxilia no desembaraço do cabelo cacheado\n- Dá brilho\n- Revitaliza \nContém 120ml",NULL,"25.00","28-01-2022-14-04-35-spray-desmaia.jpeg","50","6",NULL,"Sim","0.00",NULL,NULL,NULL,NULL,"0.00","Não",NULL,NULL);


DROP TABLE IF EXISTS promocao_banner;

CREATE TABLE `promocao_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO promocao_banner VALUES("1","Promoção 6 Camisetas","http://google.com","banner-promo-2.jpg","Sim");
INSERT INTO promocao_banner VALUES("3","Segunda Promoção","produto-sapato-social","banner-promo.jpg","Sim");
INSERT INTO promocao_banner VALUES("4","Terceira Promoção","http://google.com","banner-1.jpg","Não");


DROP TABLE IF EXISTS promocoes;

CREATE TABLE `promocoes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_produto` int(11) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `data_inicio` date NOT NULL,
  `data_final` date NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `desconto` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO promocoes VALUES("2","31","30.00","2020-08-30","2020-09-01","Sim",NULL);
INSERT INTO promocoes VALUES("3","30","104.99","2020-08-31","2020-09-30","Sim","25");
INSERT INTO promocoes VALUES("4","29","35.00","2020-08-24","2020-09-02","Não",NULL);
INSERT INTO promocoes VALUES("5","28","50.00","2020-08-31","2020-09-08","Sim",NULL);
INSERT INTO promocoes VALUES("6","25","1529.99","2020-09-02","2021-09-25","Sim","10");
INSERT INTO promocoes VALUES("7","24","0.38","2020-09-02","2021-09-30","Sim","5");
INSERT INTO promocoes VALUES("8","22","89.91","2020-09-02","2020-09-04","Sim","10");
INSERT INTO promocoes VALUES("9","18","170.99","2020-09-02","2020-09-02","Sim","10");
INSERT INTO promocoes VALUES("10","23","75.00","2020-09-09","2020-09-30","Sim","50");


DROP TABLE IF EXISTS sub_categorias;

CREATE TABLE `sub_categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO sub_categorias VALUES("16","Shampoo","shampoo","sem-foto.jpg","11");
INSERT INTO sub_categorias VALUES("17","Condicionador","condicionador","sem-foto.jpg","11");
INSERT INTO sub_categorias VALUES("18","Kit ","kit","sem-foto.jpg","11");
INSERT INTO sub_categorias VALUES("19","Creme Capilar","creme-capilar","sem-foto.jpg","11");
INSERT INTO sub_categorias VALUES("20","Óleo Capilar","oleo-capilar","sem-foto.jpg","11");
INSERT INTO sub_categorias VALUES("21","Acessórios","acessorios","sem-foto.jpg","14");
INSERT INTO sub_categorias VALUES("22","Produtos para cuidado","produtos-para-cuidado","sem-foto.jpg","14");
INSERT INTO sub_categorias VALUES("24","Esmaltes","esmaltes","sem-foto.jpg","12");
INSERT INTO sub_categorias VALUES("25","Decoração","decoracao","sem-foto.jpg","12");
INSERT INTO sub_categorias VALUES("26","Cuidados","cuidados","sem-foto.jpg","13");
INSERT INTO sub_categorias VALUES("27","Apliques","apliques","sem-foto.jpg","13");


DROP TABLE IF EXISTS tipo_envios;

CREATE TABLE `tipo_envios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO tipo_envios VALUES("6","Correios");
INSERT INTO tipo_envios VALUES("7","Valor Fixo");
INSERT INTO tipo_envios VALUES("8","Sem Frete");
INSERT INTO tipo_envios VALUES("12","Digital");


DROP TABLE IF EXISTS usuarios;

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `senha_crip` varchar(150) NOT NULL,
  `nivel` varchar(20) NOT NULL,
  `imagem` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO usuarios VALUES("1","Administrador","000.000.000-00","lojaportalhugo@gmail.com","123","202cb962ac59075b964b07152d234b70","Admin","hugo-profile.jpeg");
INSERT INTO usuarios VALUES("5","Alice Santos","000.000.000-40","alice@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("6","Cliente Teste 5","000.000.000-18","cliente@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("7","Matheus Silva","184.854.545-44","mateus@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("8","Hugo Vasconcelos","214.569.999-99","hugovasconcelosf@hotmail.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("9","Marta Campos","456.899.999-99","marta@hotamil.com","123","202cb962ac59075b964b07152d234b70","Cliente",NULL);
INSERT INTO usuarios VALUES("10","Gabriel Alencar","111.111.111-11","gabrielalencarbr13@gmail.com","jooj123","379d2d0e943d8e80372634fb511edbf6","Admin","unnamed-(1).png");
INSERT INTO usuarios VALUES("11","Gabriel Alencar","222.222.222-22","jooj@gmail.com","jooj123","379d2d0e943d8e80372634fb511edbf6","Cliente",NULL);
INSERT INTO usuarios VALUES("12","Jooj","111.111.111-22","gabrielalencarbr13@gmail.com","alencar123","e7b74ba732548ddd59df151151831cf6","Cliente",NULL);
INSERT INTO usuarios VALUES("13","Jooj","128.983.729-51","mamaeu@gmail.com","alencar123","e7b74ba732548ddd59df151151831cf6","Cliente",NULL);


DROP TABLE IF EXISTS vendas;

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sub_total` decimal(10,2) NOT NULL,
  `frete` decimal(8,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(35) NOT NULL,
  `rastreio` varchar(35) DEFAULT NULL,
  `pgto_entrega` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

INSERT INTO vendas VALUES("1","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("2","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("3","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("4","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("5","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("6","172.50","21.00","193.50","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("7","75.00","21.00","96.00","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("8","174.99","73.50","248.49","6","Não","2020-09-10",NULL,NULL,NULL);
INSERT INTO vendas VALUES("9","257.49","21.00","278.49","6","Não","2020-09-14",NULL,NULL,NULL);
INSERT INTO vendas VALUES("19","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL);
INSERT INTO vendas VALUES("20","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL);
INSERT INTO vendas VALUES("31","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL);
INSERT INTO vendas VALUES("32","52.00","0.00","52.00","6","Não","2020-09-14",NULL,NULL,NULL);
INSERT INTO vendas VALUES("33","1.00","0.00","1.00","6","Não","2020-09-14",NULL,NULL,NULL);
INSERT INTO vendas VALUES("34","1.00","0.00","1.00","8","Sim","2020-09-14","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("35","1.00","0.00","1.00","8","Sim","2020-09-14","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("36","1.00","0.00","1.00","8","Sim","2020-09-14","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("37","1.00","0.00","1.00","8","Sim","2020-09-14","Enviado","JR03665666555",NULL);
INSERT INTO vendas VALUES("40","45.00","21.00","66.00","8","Sim","2020-09-15","Enviado","JR065666652",NULL);
INSERT INTO vendas VALUES("42","120.00","21.00","141.00","8","Sim","2020-09-15","Entregue","JR064982122",NULL);
INSERT INTO vendas VALUES("43","149.99","21.00","170.99","8","Sim","2020-09-15","Não Enviado","adfsafdfa",NULL);
INSERT INTO vendas VALUES("44","149.99","21.00","170.99","8","Sim","2020-09-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("45","99.00","0.00","99.00","8","Sim","2020-09-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("46","1.00","0.00","1.00","8","Sim","2020-09-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("47","1.00","0.00","1.00","8","Sim","2020-09-15","Enviado","JR065666652",NULL);
INSERT INTO vendas VALUES("48","149.99","21.00","170.99","8","Sim","2020-09-16","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("49","184.99","24.90","209.89","8","Sim","2020-09-16","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("50","184.99","24.20","209.19","8","Sim","2020-09-16","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("58","244.99","21.00","265.99","8","Não","2020-09-17","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("59","45.00","0.00","45.00","8","Não","2020-09-17","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("60","18.00","0.00","18.00","8","Não","2020-09-17","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("61","45.00","21.00","66.00","6","Sim","2020-09-17","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("62","45.00","0.00","45.00","8","Não","2020-09-17","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("63","199.00","0.00","199.00","8","Sim","2020-09-17","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("64","90.00","21.00","111.00","8","Sim","2020-09-21","Enviado","JR065666652",NULL);
INSERT INTO vendas VALUES("65","154.99","0.00","154.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("66","1.20","0.00","1.20","6","Não","2021-06-15","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("67","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("68","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("69","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("70","0.00","0.00","0.00","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("71","1199.99","0.00","1199.99","6","Não","2021-06-15","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("72","699.99","0.00","699.99","6","Não","2021-06-15","Retirada",NULL,NULL);
INSERT INTO vendas VALUES("73","1414.99","0.00","1414.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("74","214.99","0.00","214.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("75","1699.99","0.00","1699.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("76","172078.00","21.00","172099.00","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("77","1699.99","21.00","1720.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("78","167.99","21.00","188.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("79","1829.89","21.00","1850.89","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("80","324.89","0.00","324.89","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("81","1689.99","21.00","1710.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("82","1689.99","21.00","1710.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("83","20499.00","0.00","20499.00","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("84","214.99","0.00","214.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("85","39.99","21.00","60.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("86","24.99","21.00","45.99","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("87","1409.93","0.00","1409.93","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("88","90.30","0.00","90.30","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("89","8499.95","21.00","8520.95","6","Não","2021-06-15","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("90","1699.99","0.00","1699.99","6","Sim","2021-06-16","Não Enviado",NULL,"Sim");
INSERT INTO vendas VALUES("91","324.89","0.00","324.89","6","Não","2021-06-16","Não Enviado",NULL,"Sim");
INSERT INTO vendas VALUES("92","214.99","0.00","214.99","6","Sim","2021-06-16","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("93","214.99","0.00","214.99","6","Não","2021-06-16","Não Enviado",NULL,"sim");
INSERT INTO vendas VALUES("94","1745.78","21.00","1766.78","6","Não","2021-06-16","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("95","343.27","0.00","343.27","6","Não","2021-06-16","Não Enviado",NULL,"sim");
INSERT INTO vendas VALUES("96","4.00","70.80","74.80","13","Não","2022-01-28","Não Enviado",NULL,NULL);
INSERT INTO vendas VALUES("97","0.00","0.00","0.00","13","Não","2022-01-28","Não Enviado",NULL,NULL);


