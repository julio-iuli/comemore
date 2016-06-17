CREATE DATABASE  IF NOT EXISTS `comemore` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `comemore`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: comemore
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_bairro`
--

DROP TABLE IF EXISTS `tb_bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_bairro` (
  `id_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `ds_bairro` varchar(60) NOT NULL,
  `tb_cidade_id_cidade` int(11) NOT NULL,
  PRIMARY KEY (`id_bairro`),
  UNIQUE KEY `id_bairro_UNIQUE` (`id_bairro`),
  KEY `fk_tb_bairro_tb_cidade1_idx` (`tb_cidade_id_cidade`),
  CONSTRAINT `fk_tb_bairro_tb_cidade1` FOREIGN KEY (`tb_cidade_id_cidade`) REFERENCES `tb_cidade` (`id_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bairro`
--

LOCK TABLES `tb_bairro` WRITE;
/*!40000 ALTER TABLE `tb_bairro` DISABLE KEYS */;
INSERT INTO `tb_bairro` VALUES (1,'Guamá',1),(2,'Pedreira',1),(3,'Marambaia',1),(4,'Tapanã',1),(5,'Marco',1),(6,'Jurunas',1),(7,'Montese',1),(8,'Coqueiro',1),(9,'Sacramenta',1),(10,'Telégrafo',1),(11,'Rubem Berta',11),(12,'Sarandi',11),(13,'Restinga',11),(14,'Lomba de Pinheiro',11),(15,'Partenon',11),(16,'Santa Teresa',11),(17,'Centro Histórico',11),(18,'Petrópolis',11),(19,'Vila nova',11),(20,'Jardim Itu-sabará',11),(21,'1º de Setembro',26),(22,'Aberta Morros',26),(23,'Abranches',26),(24,'Água Branca',26),(25,'Boa Vista',26),(26,'Barreirinha',26),(27,'Cerqueira Cezar',26),(28,'Jabaquara',26),(29,'Ibirapuera',26),(30,'Thomaz Coelho',26),(31,'25 de Agosto',31),(32,'300',31),(33,'Bangu',31),(34,'Belford Roxo',31),(35,'Botafogo',31),(36,'Flamengo',31),(37,'Consolação',31),(38,'Gávea',31),(39,'Recreio dos Banderantes',31),(40,'Bom Sucesso',31),(41,'Pimentas',45),(42,'Sucesso',45),(43,'Taboão',45),(44,'Presidente Dutra',45),(45,'Bananal',45),(46,'Macedo',45),(47,'Cocaia',45),(48,'Itapegica',45),(49,'Vila Barros',45),(50,'Grampola',45),(51,'Mondubim',51),(52,'Barra de Ceará',51),(53,'Vila Velha',51),(54,'Granja Lisboa',51),(55,'Passaré',51),(56,'Jangurussu',51),(57,'Quintino Cunha',51),(58,'Vicente Pinzon',51),(59,'Pici(parque Univesitário)',51),(60,'Aldeota',51),(61,'Sagrada Família',61),(62,'Buritis',61),(63,'Padre Eustáquio',61),(64,'Lindéia',61),(65,'Santa Mônica',61),(66,'Céu Azul',61),(67,'Santa Cruz',61),(68,'Santo Antônio',61),(69,'Alto Vera Cruz',61),(70,'Jardim dos Comerciários',61),(71,'Aeroporto',71),(72,'Nova Villa',71),(73,'Norte Ferroviário',71),(74,'Jardim Pompéia',71),(75,'Shamgrilá',71),(76,'Vale dos Sonhos',71),(77,'Asa Branca',71),(78,'Alice Barbosa',71),(79,'Jardim Diamantina ',71),(80,'Perím',71),(81,'Paul',88),(82,'Divino Espírito Santo',88),(83,'Riviera da Barra',88),(84,'Morada do Sol',88),(85,'Morro da Lagoa',88),(86,'Santos Dumont',88),(87,'Residencial Coqueiral',88),(88,'Ataíde',88),(89,'Praia das Gaivotas ',88),(90,'Barra do Jucu',88),(91,'Asa Sul',91),(92,'Asa Norte',91),(93,'Ceilândia Norte',91),(94,'Ceilândia Sul',91),(95,'Setor Sudoeste',91),(96,'Cruzeiro Velho',91),(97,'Cruzeiro Novo',91),(98,'Gama Leste',91),(99,'Sobradinho I',91),(100,'Lago Sul',91);
/*!40000 ALTER TABLE `tb_bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cargo`
--

DROP TABLE IF EXISTS `tb_cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `ds_cargo` varchar(60) NOT NULL,
  `ds_salario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_cargo`),
  UNIQUE KEY `id_cargo_UNIQUE` (`id_cargo`),
  UNIQUE KEY `ds_cargo_UNIQUE` (`ds_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cargo`
--

LOCK TABLES `tb_cargo` WRITE;
/*!40000 ALTER TABLE `tb_cargo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_categoria`
--

DROP TABLE IF EXISTS `tb_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `ds_categoria` varchar(60) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE KEY `id_categoria_UNIQUE` (`id_categoria`),
  UNIQUE KEY `ds_nome_UNIQUE` (`ds_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria`
--

LOCK TABLES `tb_categoria` WRITE;
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` VALUES (15,'Anime'),(14,'Carros'),(5,'Futurista'),(1,'Heróis'),(2,'Princesas'),(3,'Video-Game');
/*!40000 ALTER TABLE `tb_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cidade`
--

DROP TABLE IF EXISTS `tb_cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cidade` (
  `id_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `ds_cidade` varchar(60) NOT NULL,
  `tb_uf_id_uf` char(2) NOT NULL,
  PRIMARY KEY (`id_cidade`),
  KEY `fk_tb_cidade_tb_uf1_idx` (`tb_uf_id_uf`),
  CONSTRAINT `fk_tb_cidade_tb_uf1` FOREIGN KEY (`tb_uf_id_uf`) REFERENCES `tb_uf` (`id_uf`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cidade`
--

LOCK TABLES `tb_cidade` WRITE;
/*!40000 ALTER TABLE `tb_cidade` DISABLE KEYS */;
INSERT INTO `tb_cidade` VALUES (1,'Belém','PA'),(2,'Ananindeua','PA'),(3,'Santarém','PA'),(4,'Marabá','PA'),(5,'Parauapebas','PA'),(6,'Castanhal','PA'),(7,'Abaetetuba','PA'),(8,'Cametá','PA'),(9,'Marituba','PA'),(10,'Bragança','PA'),(11,'Porto Alegre','RS'),(12,'Caxias do Sul','RS'),(13,'Pelotas','RS'),(14,'Canoas','RS'),(15,'Santa Maria','RS'),(16,'Gravataí','RS'),(17,'Viamão','RS'),(18,'Novo Hamburgo','RS'),(19,'São Leopoldo','RS'),(20,'Rio Grande','RS'),(21,'Abatiá','PR'),(22,'Atalaia','PR'),(23,'Balsa Nova','PR'),(24,'Brasilândia do Sul','PR'),(25,'Cafeara','PR'),(26,'Curitiba','PR'),(27,'Enéas Marques','PR'),(28,'Engenheiro Beltrão','PR'),(29,'Figueira','PR'),(30,'Flórida','PR'),(31,'Rio de Janeiro','RJ'),(32,'Cabo Frio','RJ'),(33,'Niterói','RJ'),(34,'Angra dos Reis','RJ'),(35,'Barbosa','RJ'),(36,'Salgueiro','RJ'),(37,'Cambuci','RJ'),(38,'Itaipava','RJ'),(39,'Laranjal','RJ'),(40,'Duque de Caxias','RJ'),(41,'São Caetano','SP'),(42,'Avaré','SP'),(43,'Riberão Preto','SP'),(44,'Sumaré','SP'),(45,'Guarulhoss','SP'),(46,'Campinas','SP'),(47,'Sorocaba','SP'),(48,'Jundiaí','SP'),(49,'Araraquara','SP'),(50,'Mogi','SP'),(51,'Fortaleza','CE'),(52,'Juazeiro do Norte','CE'),(53,'Caucaia','CE'),(54,'Maracanaú','CE'),(55,'Sobral','CE'),(56,'Crato','CE'),(57,'Itapipoca','CE'),(58,'Maranguape','CE'),(59,'Iguatu','CE'),(60,'Quixadá','CE'),(61,'Belo Horizonte','MG'),(62,'Uberlândia','MG'),(63,'Contagem','MG'),(64,'Juiz de Fora','MG'),(65,'Betim','MG'),(66,'Montes Claros','MG'),(67,'Ribeirão das Neves','MG'),(68,'Uberaba','MG'),(69,'Governador Valadares','MG'),(70,'Ipatinga','MG'),(71,'Goiânia','GO'),(72,'Caldas Novas','GO'),(73,'Anápolis','GO'),(74,'Cidade Ocidental','GO'),(75,'Cristalina','GO'),(76,'Rio Verde','GO'),(77,'Formosa','GO'),(78,'Catalão','GO'),(79,'Jaraguá','GO'),(80,'Niquelândia','GO'),(81,'Afonso Cláudio','ES'),(82,'Anchieta','ES'),(83,'Colatina','ES'),(84,'Itaguaçu','ES'),(85,'Linhares','ES'),(86,'Santa Teresa','ES'),(87,'Vila Valério','ES'),(88,'Vila Velha','ES'),(89,'Laranja da Terra','ES'),(90,'Guarapari','ES'),(91,'Brasília','DF');
/*!40000 ALTER TABLE `tb_cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_cliente`
--

DROP TABLE IF EXISTS `tb_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_cliente` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `ds_cliente` varchar(80) NOT NULL,
  `ds_ddd_res` tinyint(2) unsigned DEFAULT NULL,
  `ds_telefone_res` int(9) unsigned DEFAULT NULL,
  `ds_ddd_cel` tinyint(2) unsigned DEFAULT NULL,
  `ds_telefone_cel` int(9) unsigned DEFAULT NULL,
  `ds_rg` int(7) DEFAULT NULL,
  `ds_emissor_rg` char(2) DEFAULT NULL,
  `ds_cpf` bigint(11) unsigned zerofill DEFAULT NULL,
  `ds_cnpj` bigint(14) unsigned zerofill DEFAULT NULL,
  `ds_pf_pj` tinyint(1) NOT NULL,
  `ds_email` varchar(80) DEFAULT NULL,
  `ds_data_nasc` date DEFAULT NULL,
  `ds_end_complemento` varchar(20) NOT NULL,
  `ds_recomendacao_nome` varchar(80) DEFAULT NULL,
  `ds_recomendacao_data_nasc` date DEFAULT NULL,
  `tb_logradouro_id_logradouro` int(11) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `id_cliente_UNIQUE` (`id_cliente`),
  KEY `fk_tb_cliente_tb_logradouro1_idx` (`tb_logradouro_id_logradouro`),
  CONSTRAINT `fk_tb_cliente_tb_logradouro1` FOREIGN KEY (`tb_logradouro_id_logradouro`) REFERENCES `tb_logradouro` (`id_logradouro`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES (1,'Cliente 1',11,11111111,11,11111111,1111111,'11',11111111111,00000000000000,1,'11111111111111','1971-01-01','casa 01','','0000-00-00',78),(2,'Cliente 2 - busca pelo CEP',22,22222222,22,22222222,2222222,'DF',22222222222,00000000000000,1,'2222222222222222','1972-02-02','casa 02','','0000-00-00',76);
/*!40000 ALTER TABLE `tb_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_funcionario` (
  `id_funcionario` int(11) NOT NULL AUTO_INCREMENT,
  `ds_funcionario` varchar(80) NOT NULL,
  `ds_ddd_res` tinyint(2) unsigned DEFAULT NULL,
  `ds_telefone_res` int(9) unsigned DEFAULT NULL,
  `ds_ddd_cel` tinyint(2) unsigned DEFAULT NULL,
  `ds_telefone_cel` int(9) unsigned DEFAULT NULL,
  `ds_rg` int(7) unsigned zerofill DEFAULT NULL,
  `ds_emissor_rg` char(2) DEFAULT NULL,
  `ds_cpf` bigint(11) unsigned zerofill NOT NULL,
  `ds_pis` bigint(11) unsigned zerofill DEFAULT NULL,
  `ds_data_contratacao` date NOT NULL,
  `ds_email` varchar(80) DEFAULT NULL,
  `ds_end_complementos` char(8) DEFAULT NULL,
  `ds_login` char(8) NOT NULL,
  `ds_senha` char(8) NOT NULL,
  `tipo_adm` tinyint(1) DEFAULT NULL,
  `tb_logradouro_id_logradouro` int(11) NOT NULL,
  `tb_cargo_id_cargo` int(11) NOT NULL,
  `tb_funcionariocol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `ds_cpf_UNIQUE` (`ds_cpf`),
  UNIQUE KEY `id_funcionario_UNIQUE` (`id_funcionario`),
  UNIQUE KEY `ds_login_UNIQUE` (`ds_login`),
  UNIQUE KEY `ds_pis_UNIQUE` (`ds_pis`),
  KEY `fk_tb_funcionario_tb_logradouro1_idx` (`tb_logradouro_id_logradouro`),
  KEY `fk_tb_funcionario_tb_cargo1_idx` (`tb_cargo_id_cargo`),
  CONSTRAINT `fk_tb_funcionario_tb_cargo1` FOREIGN KEY (`tb_cargo_id_cargo`) REFERENCES `tb_cargo` (`id_cargo`),
  CONSTRAINT `fk_tb_funcionario_tb_logradouro1` FOREIGN KEY (`tb_logradouro_id_logradouro`) REFERENCES `tb_logradouro` (`id_logradouro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_item`
--

DROP TABLE IF EXISTS `tb_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_item` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `ds_item` varchar(60) NOT NULL,
  `ds_tipo` varchar(60) NOT NULL,
  `tb_tema_id_tema` int(11) NOT NULL,
  PRIMARY KEY (`id_tema`),
  UNIQUE KEY `id_tema_UNIQUE` (`id_tema`),
  UNIQUE KEY `ds_nome_UNIQUE` (`ds_item`),
  KEY `fk_tb_item_tb_tema1_idx` (`tb_tema_id_tema`),
  CONSTRAINT `fk_tb_item_tb_tema1` FOREIGN KEY (`tb_tema_id_tema`) REFERENCES `tb_tema` (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_item`
--

LOCK TABLES `tb_item` WRITE;
/*!40000 ALTER TABLE `tb_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_logradouro`
--

DROP TABLE IF EXISTS `tb_logradouro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_logradouro` (
  `id_logradouro` int(11) NOT NULL AUTO_INCREMENT,
  `ds_logradouro` varchar(60) NOT NULL,
  `ds_cep` int(8) unsigned DEFAULT NULL,
  `tb_bairro_id_bairro` int(11) NOT NULL,
  PRIMARY KEY (`id_logradouro`),
  UNIQUE KEY `id_logradouro_UNIQUE` (`id_logradouro`),
  UNIQUE KEY `ds_cep_UNIQUE` (`ds_cep`),
  KEY `fk_tb_logradouro_tb_bairro1_idx` (`tb_bairro_id_bairro`),
  CONSTRAINT `fk_tb_logradouro_tb_bairro1` FOREIGN KEY (`tb_bairro_id_bairro`) REFERENCES `tb_bairro` (`id_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logradouro`
--

LOCK TABLES `tb_logradouro` WRITE;
/*!40000 ALTER TABLE `tb_logradouro` DISABLE KEYS */;
INSERT INTO `tb_logradouro` VALUES (1,'Passagem Guamá',66065335,1),(2,'Rua da Salvação',66079050,1),(3,'Avenida José Bonifácio',66065362,1),(4,'Avenida Perimetral',66075750,1),(5,'Vila Silva Castro',66075010,1),(6,'Alameda Mamoré',66075425,1),(7,'Conjunto Mauro Porto',66073390,1),(8,'Passagem da Paz',66073440,1),(9,'Travessa Guerra Passos',66073250,1),(10,'Conjunto Aron',66075865,1),(11,'Travessa Jordão',91170700,11),(12,'Rua Vinte e Cinco',91170440,11),(13,'Rua Umbertina Gonçalves',91170750,11),(14,'Rua Sagitário',91150310,11),(15,'Rua Rufino Antonio Monteiro',91150311,11),(16,'Rua S',91160520,11),(17,'Praça Tom Jobim',91150035,11),(18,'Estrada Martim Félix Berta',91270650,11),(19,'Beco da Servidão',91250270,11),(20,'Avenida Homero Guerreiro',91150030,11),(21,'Rua Americo Ribeiro',81050650,28),(22,'Avenida Marechal Dutra ',81460286,28),(23,'Praça da Cultura ',81230220,28),(24,'Rua Moacir Nogueira,145 a 190',81530300,28),(25,'Rua da Consolação ',81490050,28),(26,'Avenida Martins Pacheco',82315094,28),(27,'Estação Central',81580370,28),(28,'Avenida Ademar de Souza ',82630420,28),(29,'Rua Pinheiro de Souza',82115272,28),(30,'Avenida Aricajá',81480404,28),(31,'Praia do Flamengo de 195/196 ao fim',23850220,36),(32,'Rua Ferreira Viana',27970410,36),(33,'Praça Luís de Camões Glória',25907120,36),(34,'Rua Almirante Tamandaré',21825435,36),(35,'Rua Ferreira Viana',21864221,36),(36,'Parque Carlos Lacerda',21012255,36),(37,'Ladeira do Russel',20931675,36),(38,'Pedro Maquenzie',28920100,36),(39,'Ladeira do Abel',22793381,36),(40,'Avenida Central',22793380,36),(41,'Praça Anita',7194380,49),(42,'Rua Anita Garibaldi',7123190,49),(43,'Rua Anjicos Júnior',7252190,49),(44,'Rua Anna Muggiasco Marcondes',7272550,49),(45,'Avenida Anna Rodrigues de Carvalho',7075220,49),(46,'Rua Annunciato Thomeu',7082560,49),(47,'Avenida Annunciato Thomeu',7224280,49),(48,'Passagem Ano Bom',7020300,49),(49,'Viela Anofi',7240011,49),(50,'Viela Antas',7170031,49),(51,'Alameda Verde 01',60752180,51),(52,'Avenida 1',60752310,51),(53,'Praça São Judas Tadeu',60711490,51),(54,'Rua 10',60752400,51),(55,'Vila Risoneide',60761450,51),(56,'Vila Serrano',60711450,51),(57,'Via Coletora A',60768010,51),(58,'Travessa Vitalino',60763260,51),(59,'Rua Wagner Marinho',60766200,51),(60,'Rua Uirapuru',60711790,51),(61,'Praça Euclydes josé Correia',31030325,61),(62,'Praça Nilo Peçanha',31030270,61),(63,'Rua Abílio Machado',31030390,61),(64,'Rua Carolina Guedes',31035130,61),(65,'Rua Joaquim Felício',31030200,61),(66,'Rua Volta Grande',31003340,61),(67,'Rua São Bento',31035060,61),(68,'Rua Petrolina',31030370,61),(69,'Rua Geraldo Menezes Soares',31030440,61),(70,'Rua Diametral',31030350,61),(71,'Rua da Liberdade',74703210,74),(72,'Avenida Central',74465100,74),(73,'Avenida César Lattes',74363400,74),(74,'Avenida Minas Gerais',74510040,74),(75,'Rua José Hermano',74515030,74),(76,'Avenida Vera Cruz',74675830,74),(77,'Avenida Honestino Guimarães',74510020,74),(78,'Avenida Genésio de Lima Brito - de 4447/4448 ao fim',74593210,74),(79,'Avenida São Paulo  ',74160010,74),(80,'Avenida do Povo ',74440010,74),(81,'Rua Anita Garibaldi',29115280,81),(82,'Praça Anita Malfati',29129742,81),(83,'Rua Aniz Oliveira Santos',29109520,81),(84,'Travessa Annor da Silva',29102606,81),(85,'Rua Ano Novo',29119020,81),(86,'Vila Anselmo',60347290,81),(87,'Rua Antenor Braga',29102574,81),(88,'Praça Antenor Fassarela',29115015,81),(89,'Escadaria Antenor Gomes',29114026,81),(90,'Rua Antenor Pinto Carneiro',29125120,81),(91,'SQS 304 Bloco A',70337010,91),(92,'SQS 304 Bloco B',70337020,91),(93,'SQS 304 Bloco C',70337030,91),(94,'SQS 304 Bloco D',70337040,91),(95,'SQS 304 Bloco E',70337050,91),(96,'SQS 304 Bloco F',70337060,91),(97,'SQS 304 Bloco G',70337070,91),(98,'SQS 304 Bloco H',70337080,91),(99,'SQS 304 Bloco I',70337090,91),(100,'SQS 304 Bloco J',70337100,91);
/*!40000 ALTER TABLE `tb_logradouro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_pedido`
--

DROP TABLE IF EXISTS `tb_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pedido` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `ds_data_pedido` date DEFAULT NULL,
  `ds_data_entrega` datetime NOT NULL,
  `ds_obs_pedido` text,
  `ds_end_complemento` varchar(20) NOT NULL,
  `tb_cliente_id_cliente` int(11) NOT NULL,
  `tb_funcionario_id_funcionario` int(11) NOT NULL,
  `tb_logradouro_id_logradouro` int(11) NOT NULL,
  `tb_tema_id_tema` int(11) NOT NULL,
  PRIMARY KEY (`id_pedido`),
  UNIQUE KEY `id_pedido_UNIQUE` (`id_pedido`),
  KEY `fk_tb_pedido_tb_logradouro1_idx` (`tb_logradouro_id_logradouro`),
  KEY `fk_tb_pedido_tb_funcionario1_idx` (`tb_funcionario_id_funcionario`),
  KEY `fk_tb_pedido_tb_tema1_idx` (`tb_tema_id_tema`),
  KEY `fk_tb_pedido_tb_cliente1_idx` (`tb_cliente_id_cliente`),
  CONSTRAINT `fk_tb_pedido_tb_cliente1` FOREIGN KEY (`tb_cliente_id_cliente`) REFERENCES `tb_cliente` (`id_cliente`),
  CONSTRAINT `fk_tb_pedido_tb_funcionario1` FOREIGN KEY (`tb_funcionario_id_funcionario`) REFERENCES `tb_funcionario` (`id_funcionario`),
  CONSTRAINT `fk_tb_pedido_tb_logradouro1` FOREIGN KEY (`tb_logradouro_id_logradouro`) REFERENCES `tb_logradouro` (`id_logradouro`),
  CONSTRAINT `fk_tb_pedido_tb_tema1` FOREIGN KEY (`tb_tema_id_tema`) REFERENCES `tb_tema` (`id_tema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_pedido`
--

LOCK TABLES `tb_pedido` WRITE;
/*!40000 ALTER TABLE `tb_pedido` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_tema`
--

DROP TABLE IF EXISTS `tb_tema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_tema` (
  `id_tema` int(11) NOT NULL AUTO_INCREMENT,
  `ds_tema` varchar(80) NOT NULL,
  `ds_status` varchar(45) DEFAULT NULL,
  `ds_descricao` text,
  `ds_genero` char(1) NOT NULL,
  `ds_data_compra` date DEFAULT NULL,
  `ds_preco` decimal(10,2) NOT NULL,
  `img_tema` varchar(150) DEFAULT NULL,
  `tb_categoria_id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_tema`),
  UNIQUE KEY `id_tema_UNIQUE` (`id_tema`),
  KEY `fk_tb_tema_tb_categoria1_idx` (`tb_categoria_id_categoria`),
  CONSTRAINT `fk_tb_tema_tb_categoria1` FOREIGN KEY (`tb_categoria_id_categoria`) REFERENCES `tb_categoria` (`id_categoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tema`
--

LOCK TABLES `tb_tema` WRITE;
/*!40000 ALTER TABLE `tb_tema` DISABLE KEYS */;
INSERT INTO `tb_tema` VALUES (1,'Tema 1',NULL,' descrição do tema 1','M','2016-01-01',1.00,NULL,5);
/*!40000 ALTER TABLE `tb_tema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_uf`
--

DROP TABLE IF EXISTS `tb_uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_uf` (
  `id_uf` char(2) NOT NULL,
  `ds_estado` char(20) NOT NULL,
  PRIMARY KEY (`id_uf`),
  UNIQUE KEY `id_uf_UNIQUE` (`id_uf`),
  UNIQUE KEY `ds_estado_UNIQUE` (`ds_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_uf`
--

LOCK TABLES `tb_uf` WRITE;
/*!40000 ALTER TABLE `tb_uf` DISABLE KEYS */;
INSERT INTO `tb_uf` VALUES ('AC','Acre'),('AL','Alagoas'),('AP','Amapá'),('AM','Amazônia'),('BA','Bahia'),('CE','Ceará'),('DF','Distrito Federal'),('ES','Espírito Santo'),('GO','Goiás'),('MA','Maranhão'),('MT','Mato Grosso'),('MS','Mato Grosso do Sul'),('MG','Minas Gerais'),('PA','Pará'),('PR','Paraná'),('PB','Pernambuco'),('PI','Piauí'),('RJ','Rio de Janeiro'),('RN','Rio Grande do Norte'),('RS','Rio Grande do Sul'),('RO','Rondônia'),('RR','Roraima'),('SC','Santa Catarina'),('SP','São Paulo'),('SE','Sergipe'),('TO','Tocantins');
/*!40000 ALTER TABLE `tb_uf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-17 18:54:32
