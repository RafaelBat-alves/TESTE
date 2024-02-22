CREATE DATABASE  IF NOT EXISTS `comex` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `comex`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: comex
-- ------------------------------------------------------
-- Server version	8.2.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'INFO'),(2,'MOVEIS'),(3,'LIVROS'),(4,'MOVEIS'),(5,'CELULARES'),(6,'INFO'),(7,'LIVROS'),(8,'AUTOMOTIVA'),(9,'LIVRO'),(10,'CELULARES'),(11,'INFO'),(12,'LIVROS'),(13,'MOVEIS'),(14,'AUTOMOTIVA'),(15,'LIVROS'),(16,'INFO');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'ANA'),(2,'ANA'),(3,'ANA'),(4,'ELI'),(5,'ANA'),(6,'DANI'),(7,'GABI'),(8,'BIA'),(9,'BIA'),(10,'DANI'),(11,'CAIO'),(12,'DANI'),(13,'DANI'),(14,'CAIO'),(15,'CAIO'),(16,'BIA');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cep` int DEFAULT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `complemento` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `localidade` varchar(100) DEFAULT NULL,
  `uf` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (4,49037089,'Rua José Oliveira Lima','','Aeroporto','Aracaju','SE'),(5,29114055,'Rua Adolfo Amaro','','São Torquato','Vila Velha','ES'),(6,29114055,'Rua Adolfo Amaro','Rua Das Flores','São Torquato','Vila Velha','ES'),(7,29114055,'Rua Adolfo Amaro','','São Torquato','Vila Velha','ES'),(8,72814620,'Rua 13','RUA DAS LAGRIMA','Setor Mandu II','Luziânia','GO'),(9,55004453,'2ª Travessa Maciel Pinheiro',' A VITORIA CHEGOU','Nossa Senhora das Dores','Caruaru','PE'),(12,55004453,'2ª Travessa Maciel Pinheiro','','Nossa Senhora das Dores','Caruaru','PE'),(13,55004453,'2ª Travessa Maciel Pinheiro','','Nossa Senhora das Dores','Caruaru','PE'),(14,55004453,'2ª Travessa Maciel Pinheiro','','Nossa Senhora das Dores','Caruaru','PE'),(15,55004453,'2ª Travessa Maciel Pinheiro','','Nossa Senhora das Dores','Caruaru','PE'),(16,55004453,'2ª Travessa Maciel Pinheiro','','Nossa Senhora das Dores','Caruaru','PE'),(17,77824510,'Rua S-004','','Vila Santiago','Araguaína','TO');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_pedido`
--

DROP TABLE IF EXISTS `item_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint DEFAULT NULL,
  `produto_id` bigint DEFAULT NULL,
  `preco_unitario` decimal(10,0) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `produto_id` (`produto_id`),
  KEY `pedido_id` (`pedido_id`),
  CONSTRAINT `item_pedido_ibfk_1` FOREIGN KEY (`produto_id`) REFERENCES `produto` (`id`),
  CONSTRAINT `item_pedido_ibfk_2` FOREIGN KEY (`pedido_id`) REFERENCES `pedido` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_pedido`
--

LOCK TABLES `item_pedido` WRITE;
/*!40000 ALTER TABLE `item_pedido` DISABLE KEYS */;
INSERT INTO `item_pedido` VALUES (1,NULL,NULL,3523,1),(2,NULL,NULL,2500,1),(3,NULL,NULL,103,2),(4,NULL,NULL,3679,1),(5,NULL,NULL,9176,6),(6,NULL,NULL,1889,3),(7,NULL,NULL,144,3),(8,NULL,NULL,1277,1),(9,NULL,NULL,95,1),(10,NULL,NULL,8549,5),(11,NULL,NULL,31752,1),(12,NULL,NULL,174,1),(13,NULL,NULL,3100,2),(14,NULL,NULL,711,1),(15,NULL,NULL,300,2),(16,NULL,NULL,5939,4);
/*!40000 ALTER TABLE `item_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` datetime DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'2022-01-01 00:00:00',NULL),(2,'2022-01-05 00:00:00',NULL),(3,'2022-01-14 00:00:00',NULL),(4,'2022-01-23 00:00:00',NULL),(5,'2022-01-05 00:00:00',NULL),(6,'2022-01-25 00:00:00',NULL),(7,'2022-01-15 00:00:00',NULL),(8,'2022-12-15 00:00:00',NULL),(9,'2022-12-01 00:00:00',NULL),(10,'2022-06-08 00:00:00',NULL),(11,'2022-06-18 00:00:00',NULL),(12,'2022-06-28 00:00:00',NULL),(13,'2022-11-22 00:00:00',NULL),(14,'2022-11-22 00:00:00',NULL),(15,'2022-11-22 00:00:00',NULL),(16,'2022-11-22 00:00:00',NULL);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `categoria_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria_id` (`categoria_id`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Notebook Samsung',3523.00,NULL),(2,'Sofa 3 lugares',2500.00,NULL),(3,'Clean Architecture',102.90,NULL),(4,'Mesa de jantar 6 lugares',3678.98,NULL),(5,'iPhone 13 Pro',9176.00,NULL),(6,'\"Monitor Dell 27\"\"\"',1889.00,NULL),(7,'Implementing Domain-Driven Design',144.07,NULL),(8,'Jogo de pneus',1276.79,NULL),(9,'Clean Code',95.17,NULL),(10,'Galaxy S22 Ultra',8549.10,NULL),(11,'Macbook Pro 16',31752.00,NULL),(12,'Refactoring Improving the Design of Existing Code',173.90,NULL),(13,'Cama queen size',3100.00,NULL),(14,'Central multimidia',711.18,NULL),(15,'Building Microservices',300.28,NULL),(16,'Galaxy Tab S8',5939.10,NULL);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-22 17:41:19
