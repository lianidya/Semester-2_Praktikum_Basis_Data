-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: tugas_praktikum_basis_data
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
-- Table structure for table `ambil_mk`
--

DROP TABLE IF EXISTS `ambil_mk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ambil_mk` (
  `nim` varchar(15) NOT NULL,
  `kode_mk` varchar(10) NOT NULL,
  PRIMARY KEY (`nim`,`kode_mk`),
  KEY `kode_mk` (`kode_mk`),
  CONSTRAINT `ambil_mk_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  CONSTRAINT `ambil_mk_ibfk_2` FOREIGN KEY (`kode_mk`) REFERENCES `mata_kuliah` (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ambil_mk`
--

LOCK TABLES `ambil_mk` WRITE;
/*!40000 ALTER TABLE `ambil_mk` DISABLE KEYS */;
INSERT INTO `ambil_mk` VALUES ('M001','MK001'),('M002','MK002'),('M003','MK003'),('M004','MK004'),('M005','MK005');
/*!40000 ALTER TABLE `ambil_mk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `kode_dos` varchar(10) NOT NULL,
  `nama_dos` varchar(50) DEFAULT NULL,
  `ketua_jurusan` tinyint(1) DEFAULT NULL,
  `wilayah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_dos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES ('D001','Dr. Budi',1,'Jakarta'),('D002','Prof. Siti',0,'Bandung'),('D003','Dr. Hendra',0,'Jakarta'),('D004','Dr. Arif',0,'Surabaya'),('D005','Dr. Lina',0,'Semarang');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jk` char(1) DEFAULT NULL,
  `wilayah` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('M001','Wati','P','Jakarta'),('M002','Andi','L','Bandung'),('M003','Rina','P','Jakarta'),('M004','Doni','L','Surabaya'),('M005','Sari','P','Semarang'),('M006','Joko','L','Solo'),('M007','Odette','P','Medan');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mata_kuliah`
--

DROP TABLE IF EXISTS `mata_kuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mata_kuliah` (
  `kode_mk` varchar(10) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `kode_dos` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`),
  KEY `kode_dos` (`kode_dos`),
  CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`kode_dos`) REFERENCES `dosen` (`kode_dos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mata_kuliah`
--

LOCK TABLES `mata_kuliah` WRITE;
/*!40000 ALTER TABLE `mata_kuliah` DISABLE KEYS */;
INSERT INTO `mata_kuliah` VALUES ('MK001','Kalkulus',3,1,'D001'),('MK002','Fisika Dasar',4,2,'D002'),('MK003','Aljabar Linear',3,3,'D003'),('MK004','Pemrograman',4,4,'D004'),('MK005','Jaringan Komputer',3,5,'D005'),('MK006','PKN',3,1,'D001'),('MK007','Algoritma dan Pemograman',4,2,'D002'),('MK008','Big Data',3,5,'D005');
/*!40000 ALTER TABLE `mata_kuliah` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-26 18:18:53
