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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_bairro`
--

LOCK TABLES `tb_bairro` WRITE;
/*!40000 ALTER TABLE `tb_bairro` DISABLE KEYS */;
INSERT INTO `tb_bairro` VALUES (1,'Guamá',1),(2,'Pedreira',1),(3,'Marambaia',1),(4,'Tapanã',1),(5,'Marco',1),(6,'Jurunas',1),(7,'Montese',1),(8,'Coqueiro',1),(9,'Sacramenta',1),(10,'Telégrafo',1),(11,'Rubem Berta',11),(12,'Sarandi',11),(13,'Restinga',11),(14,'Lomba de Pinheiro',11),(15,'Partenon',11),(16,'Santa Teresa',11),(17,'Centro Histórico',11),(18,'Petrópolis',11),(19,'Vila nova',11),(20,'Jardim Itu-sabará',11),(21,'1º de Setembro',26),(22,'Aberta Morros',26),(23,'Abranches',26),(24,'Água Branca',26),(25,'Boa Vista',26),(26,'Barreirinha',26),(27,'Cerqueira Cezar',26),(28,'Jabaquara',26),(29,'Ibirapuera',26),(30,'Thomaz Coelho',26),(31,'25 de Agosto',31),(32,'300',31),(33,'Bangu',31),(34,'Belford Roxo',31),(35,'Botafogo',31),(36,'Flamengo',31),(37,'Consolação',31),(38,'Gávea',31),(39,'Recreio dos Banderantes',31),(40,'Bom Sucesso',31);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_categoria`
--

LOCK TABLES `tb_categoria` WRITE;
/*!40000 ALTER TABLE `tb_categoria` DISABLE KEYS */;
INSERT INTO `tb_categoria` VALUES (3,'Davi'),(5,'descrição'),(1,'Heróis'),(2,'Princesas'),(4,'Video-Game');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cidade`
--

LOCK TABLES `tb_cidade` WRITE;
/*!40000 ALTER TABLE `tb_cidade` DISABLE KEYS */;
INSERT INTO `tb_cidade` VALUES (1,'Belém','PA'),(2,'Ananindeua','PA'),(3,'Santarém','PA'),(4,'Marabá','PA'),(5,'Parauapebas','PA'),(6,'Castanhal','PA'),(7,'Abaetetuba','PA'),(8,'Cametá','PA'),(9,'Marituba','PA'),(10,'Bragança','PA'),(11,'Porto Alegre','RS'),(12,'Caxias do Sul','RS'),(13,'Pelotas','RS'),(14,'Canoas','RS'),(15,'Santa Maria','RS'),(16,'Gravataí','RS'),(17,'Viamão','RS'),(18,'Novo Hamburgo','RS'),(19,'São Leopoldo','RS'),(20,'Rio Grande','RS'),(21,'Abatiá','PR'),(22,'Atalaia','PR'),(23,'Balsa Nova','PR'),(24,'Brasilândia do Sul','PR'),(25,'Cafeara','PR'),(26,'Curitiba','PR'),(27,'Enéas Marques','PR'),(28,'Engenheiro Beltrão','PR'),(29,'Figueira','PR'),(30,'Flórida','PR'),(31,'Rio de Janeiro','RJ'),(32,'Cabo Frio','RJ'),(33,'Niterói','RJ'),(34,'Angra dos Reis','RJ'),(35,'Barbosa','RJ'),(36,'Salgueiro','RJ'),(37,'Cambuci','RJ'),(38,'Itaipava','RJ'),(39,'Laranjal','RJ'),(40,'Duque de Caxias','RJ');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_cliente`
--

LOCK TABLES `tb_cliente` WRITE;
/*!40000 ALTER TABLE `tb_cliente` DISABLE KEYS */;
INSERT INTO `tb_cliente` VALUES (1,'Cliente 1 teste de alteração',11,11111111,11,11111111,1111111,'DF',11111111111,00000000000000,1,'111111111111111','1972-02-02','casa 01','Fulano de tal 1 teste de alteração de novo','2002-02-02',27),(2,'Cliente 3',33,33333333,33,33333333,3333333,'DF',33333333333,00000000000000,1,'3333333333333333333','1983-03-03','casa 03','','0000-00-00',4),(4,'Cliente 2',22,22222222,22,22222222,2222222,'DF',22222222222,00000000000000,1,'222222222222222222','1972-02-02','casa 02','fulano de tal','2002-02-02',22);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logradouro`
--

LOCK TABLES `tb_logradouro` WRITE;
/*!40000 ALTER TABLE `tb_logradouro` DISABLE KEYS */;
INSERT INTO `tb_logradouro` VALUES (1,'Passagem Guamá',66065335,1),(2,'Rua da Salvação',66079050,1),(3,'Avenida José Bonifácio',66065362,1),(4,'Avenida Perimetral',66075750,1),(5,'Vila Silva Castro',66075010,1),(6,'Alameda Mamoré',66075425,1),(7,'Conjunto Mauro Porto',66073390,1),(8,'Passagem da Paz',66073440,1),(9,'Travessa Guerra Passos',66073250,1),(10,'Conjunto Aron',66075865,1),(11,'Travessa Jordão',91170700,11),(12,'Rua Vinte e Cinco',91170440,11),(13,'Rua Umbertina Gonçalves',91170750,11),(14,'Rua Sagitário',91150310,11),(15,'Rua Rufino Antonio Monteiro',91150311,11),(16,'Rua S',91160520,11),(17,'Praça Tom Jobim',91150035,11),(18,'Estrada Martim Félix Berta',91270650,11),(19,'Beco da Servidão',91250270,11),(20,'Avenida Homero Guerreiro',91150030,11),(21,'Rua Americo Ribeiro',81050650,28),(22,'Avenida Marechal Dutra ',81460286,28),(23,'Praça da Cultura ',81230220,28),(24,'Rua Moacir Nogueira,145 a 190',81530300,28),(25,'Rua da Consolação ',81490050,28),(26,'Avenida Martins Pacheco',82315094,28),(27,'Estação Central',81580370,28),(28,'Avenida Ademar de Souza ',82630420,28),(29,'Rua Pinheiro de Souza',82115272,28),(30,'Avenida Aricajá',81480404,28),(31,'Praia do Flamengo de 195/196 ao fim',23850220,36),(32,'Rua Ferreira Viana',27970410,36),(33,'Praça Luís de Camões Glória',25907120,36),(34,'Rua Almirante Tamandaré',21825435,36),(35,'Rua Ferreira Viana',21864221,36),(36,'Parque Carlos Lacerda',21012255,36),(37,'Ladeira do Russel',20931675,36),(38,'Pedro Maquenzie',28920100,36),(39,'Ladeira do Abel',22793381,36),(40,'Avenida Central',22793380,36);
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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_tema`
--

LOCK TABLES `tb_tema` WRITE;
/*!40000 ALTER TABLE `tb_tema` DISABLE KEYS */;
INSERT INTO `tb_tema` VALUES (27,'Homem Aranha',NULL,'Novo texto do Honem Aranha, após a alteração.','M','2016-05-11',700.00,NULL,1),(30,'tema teste',NULL,'tema de teste pra agoraaaaa','m','0000-00-00',200.00,NULL,1),(32,'asdfasfg',NULL,' asdfsadfg','M','2016-05-03',70.00,NULL,3),(33,'Teste Casa do Diego 1',NULL,'Descrição, testando','U','2016-05-01',111.00,NULL,2),(35,'nome de gente',NULL,'Trocado','M','2013-06-07',45.00,NULL,1),(36,'teste da outra interface',NULL,' testando inserção','F','2014-06-07',1.00,NULL,2),(37,'Tema8jun',NULL,' Descrição do Tema de 8 de junho','M','2012-10-10',1.00,NULL,2),(39,'Um tema sobre a seleção brasileira',NULL,'Um tema sobre a seleção brasileira','U','2016-06-07',11.00,NULL,1),(40,' Peixe perdido',NULL,' Peixe perdido','U','2016-06-14',5000.00,NULL,1),(41,' Amigos ursos',NULL,' Amigos ursos','U','2016-06-23',2000.00,NULL,1),(42,'Um tema sobre a seleção brasileira ',NULL,'Um tema sobre a seleção brasileira ','U','2016-06-07',11.00,NULL,1),(43,'Davi, Ana , Julio, confusos',NULL,' gadgadsfasdfasdfasdfasdf','U','2016-06-08',11111.00,NULL,3),(44,'Robson, o mago',NULL,'Robson, o mago','M','2016-06-06',2.00,NULL,1),(45,'Robson, o mago',NULL,'Slides e chamadas ','M','2016-06-06',2.00,NULL,1),(46,'Robson, o mago',NULL,'Slides e chamadas ','M','2016-06-06',2.00,NULL,1),(47,'Robson, o magro',NULL,'Construção amadora de casas','U','2016-06-07',2.00,NULL,1);
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

-- Dump completed on 2016-06-15 22:23:15
