-- MySQL dump 10.13  Distrib 5.7.9, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: fisl17
-- ------------------------------------------------------
-- Server version	5.5.49-0ubuntu0.14.04.1

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
-- Table structure for table `dim_assunto`
--

DROP TABLE IF EXISTS `dim_assunto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_assunto` (
  `ASSUNTO` varchar(150) DEFAULT NULL,
  `ASSUNTO_CALC` tinytext,
  `id_dim_assunto` int(11) DEFAULT NULL,
  KEY `idx_id_dim_assunto` (`id_dim_assunto`),
  KEY `idx_cod_assunto` (`ASSUNTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_orgao_resp`
--

DROP TABLE IF EXISTS `dim_orgao_resp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_orgao_resp` (
  `ORGAO_RESP` varchar(150) DEFAULT NULL,
  `ORGAO_RESP_CALC` tinytext,
  `id_dim_orgao_resp` int(11) DEFAULT NULL,
  KEY `idx_id_dim_orgao_resp` (`id_dim_orgao_resp`),
  KEY `idx_cod_orgao_resp` (`ORGAO_RESP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_orgao_solic`
--

DROP TABLE IF EXISTS `dim_orgao_solic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_orgao_solic` (
  `ORGAO_SOLICITACAO` varchar(150) DEFAULT NULL,
  `ORGAO_SOLICITADO_CALC` tinytext,
  `id_dim_orgao_solic` int(11) DEFAULT NULL,
  KEY `idx_id_dim_orgao_solic` (`id_dim_orgao_solic`),
  KEY `idx_cod_orgao_solic` (`ORGAO_SOLICITACAO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_sexo`
--

DROP TABLE IF EXISTS `dim_sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_sexo` (
  `SEXO` varchar(9) DEFAULT NULL,
  `SEXO_MAPPER` varchar(20) DEFAULT NULL,
  `id_dim_sexo` int(11) DEFAULT NULL,
  KEY `idx_id_dim_sexo` (`id_dim_sexo`),
  KEY `idx_cod_sexo` (`SEXO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_tempo`
--

DROP TABLE IF EXISTS `dim_tempo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tempo` (
  `id_dim_tempo` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `mes_string` varchar(30) DEFAULT NULL,
  `trimestre_string` varchar(30) DEFAULT NULL,
  `semestre_string` varchar(30) DEFAULT NULL,
  `data_dia` datetime DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  KEY `idx_id_dim_tempo` (`id_dim_tempo`),
  KEY `idx_cod_data` (`data_dia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dim_tipo`
--

DROP TABLE IF EXISTS `dim_tipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_tipo` (
  `TIPO` varchar(150) DEFAULT NULL,
  `TIPO_CALC` tinytext,
  `id_dim_tipo` int(11) DEFAULT NULL,
  KEY `idx_id_dim_tipo` (`id_dim_tipo`),
  KEY `idx_cod_tipo` (`TIPO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fato_156`
--

DROP TABLE IF EXISTS `fato_156`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fato_156` (
  `id_dim_assunto` int(11) DEFAULT NULL,
  `id_dim_orgao_resp` int(11) DEFAULT NULL,
  `id_dim_orgao_solic` int(11) DEFAULT NULL,
  `id_dim_sexo` int(11) DEFAULT NULL,
  `id_dim_tipo` int(11) DEFAULT NULL,
  `id_dim_tempo_156` int(11) DEFAULT NULL,
  `DD_SOLICITACAO` int(11) DEFAULT NULL,
  KEY `idx_id_dim_assunto` (`id_dim_assunto`),
  KEY `idx_id_dim_orgao_resp` (`id_dim_orgao_resp`),
  KEY `idx_id_dim_orgao_solic` (`id_dim_orgao_solic`),
  KEY `idx_id_dim_sexo` (`id_dim_sexo`),
  KEY `idx_id_dim_tempo` (`id_dim_tempo_156`),
  KEY `idx_id_dim_tipo` (`id_dim_tipo`),
  KEY `idx_dim_degenerada` (`DD_SOLICITACAO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-16 11:06:02
