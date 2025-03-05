-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: mahasiswa
-- ------------------------------------------------------
-- Server version	10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `biodata_anggota`
--

DROP TABLE IF EXISTS `biodata_anggota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `biodata_anggota` (
  `ID_ANGGOTA` varchar(15) NOT NULL,
  `ID_ADMIN` varchar(15) DEFAULT NULL,
  `FULL_NAME` varchar(150) DEFAULT NULL,
  `TEMPAT_LAHIR` varchar(100) DEFAULT NULL,
  `TANGGAL_LAHIR` date DEFAULT NULL,
  `ADDRESS` mediumtext DEFAULT NULL,
  `GENDER` enum('L','P') DEFAULT NULL,
  `NO_HP` varchar(25) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL,
  `D_CREATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_ANGGOTA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biodata_anggota`
--

LOCK TABLES `biodata_anggota` WRITE;
/*!40000 ALTER TABLE `biodata_anggota` DISABLE KEYS */;
INSERT INTO `biodata_anggota` VALUES ('DA002300110704','1123','Aulia Nidya Kusuma Dewati','Kramat Utara','2005-07-11','Jl. Kramat Utara No. 5','P','089603302947','Lia.jpg','2025-03-04 21:32:00'),('DA002300110705',NULL,'Anindita',NULL,NULL,NULL,'P',NULL,NULL,NULL),('DA002300110706','1124','Bagus Pratama','Surabaya','2001-12-15','Jl. Sudirman No. 5','L','082345678901','bagus.jpg','2025-03-04 00:00:00'),('DA002300110707','1125','Citra Lestari','Bandung','2000-09-20','Jl. Diponegoro No. 7','P','083456789012','citra.jpg','2025-03-04 00:00:00'),('DA002300110708','1126','Dimas Saputra','Yogyakarta','1999-07-25','Jl. Malioboro No. 3','L','084567890123','dimas.jpg','2025-03-04 00:00:00'),('DA002300110709','1127','Eka Susanti','Semarang','2003-03-30','Jl. Pandanaran No. 10','P','085678901234','eka.jpg','2025-03-04 00:00:00'),('DA002300110710','1128','Fajar Ramadhan','Medan','2002-11-05','Jl. Gatot Subroto No. 8','L','086789012345','fajar.jpg','2025-03-04 00:00:00'),('DA002300110711','1129','Gita Maharani','Makassar','2001-08-12','Jl. Pettarani No. 12','P','087890123456','gita.jpg','2025-03-04 00:00:00'),('DA002300110712','1130','Hadi Santoso','Bali','2000-06-18','Jl. Sunset Road No. 9','L','088901234567','hadi.jpg','2025-03-04 00:00:00'),('DA002300110713','1131','Indah Permata','Palembang','2003-02-22','Jl. Ampera No. 15','P','089012345678','indah.jpg','2025-03-04 00:00:00'),('DA002300110714','1132','Joko Setiawan','Malang','1998-04-27','Jl. Ijen No. 11','L','081123456789','joko.jpg','2025-03-04 00:00:00');
/*!40000 ALTER TABLE `biodata_anggota` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-05 20:13:03
