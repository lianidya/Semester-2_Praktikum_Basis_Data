-- MariaDB dump 10.19  Distrib 10.4.32-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: db_kampus
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
-- Table structure for table `dosen`
--

DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dosen` (
  `nip` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `bidang` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES ('ADM001','Admin Utama','Administrasi');
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswa`
--

DROP TABLE IF EXISTS `mahasiswa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswa` (
  `nim` char(10) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswa`
--

LOCK TABLES `mahasiswa` WRITE;
/*!40000 ALTER TABLE `mahasiswa` DISABLE KEYS */;
INSERT INTO `mahasiswa` VALUES ('1010101001','Citra Kirana','Akuntansi'),('1010101002','Bambang Pamungkas','Manajemen Keuangan'),('1010101003','Dewi Lestari','Sistem Informasi'),('1010101004','Agus Salim','Teknik Informatika'),('1010101005','Siti Aminah','Ilmu Komunikasi'),('1010101006','Rizky Febian','Desain Grafis'),('1010101007','Aulia Putri','Psikologi'),('1010101008','Fajar Nugroho','Teknik Elektro'),('1010101009','Indah Permata','Sastra Inggris'),('1010101010','Bayu Wicaksono','Hukum'),('1010101011','Putri Ayu','Pendidikan Guru'),('1010101012','Andi Wijaya','Manajemen Bisnis'),('DSN001','Andi Dosen','Informatika');
/*!40000 ALTER TABLE `mahasiswa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matakuliah`
--

DROP TABLE IF EXISTS `matakuliah`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matakuliah` (
  `kode_mk` char(6) NOT NULL,
  `nama_mk` varchar(50) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL,
  PRIMARY KEY (`kode_mk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matakuliah`
--

LOCK TABLES `matakuliah` WRITE;
/*!40000 ALTER TABLE `matakuliah` DISABLE KEYS */;
/*!40000 ALTER TABLE `matakuliah` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagihan`
--

DROP TABLE IF EXISTS `tagihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagihan` (
  `id_tagihan` int(11) NOT NULL AUTO_INCREMENT,
  `nim` char(10) DEFAULT NULL,
  `jenis_tagihan` varchar(50) DEFAULT NULL,
  `jumlah` decimal(12,2) DEFAULT NULL,
  `status_bayar` varchar(20) DEFAULT 'Belum Lunas',
  PRIMARY KEY (`id_tagihan`),
  KEY `nim` (`nim`),
  CONSTRAINT `tagihan_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagihan`
--

LOCK TABLES `tagihan` WRITE;
/*!40000 ALTER TABLE `tagihan` DISABLE KEYS */;
INSERT INTO `tagihan` VALUES (1,'1010101001','SPP Semester Ganjil 2024',5000000.00,'Lunas'),(2,'1010101002','SPP Semester Ganjil 2024',5500000.00,'Belum Lunas'),(3,'1010101001','Uang Gedung',2000000.00,'Belum Lunas'),(4,'1010101001','SPP Semester Ganjil 2024',5000000.00,'Belum Lunas'),(5,'1010101002','SPP Semester Ganjil 2024',5500000.00,'Belum Lunas'),(6,'1010101001','Uang Gedung',2000000.00,'Belum Lunas'),(7,'1010101003','SPP Semester Ganjil 2024',5200000.00,'Belum Lunas'),(8,'1010101003','Biaya Praktikum Basis Data',350000.00,'Belum Lunas'),(9,'1010101004','SPP Semester Ganjil 2024',5300000.00,'Belum Lunas'),(10,'1010101004','Biaya Praktikum Jaringan Komputer',400000.00,'Belum Lunas'),(11,'1010101005','SPP Semester Ganjil 2024',4800000.00,'Belum Lunas'),(12,'1010101005','Biaya Produksi Media',500000.00,'Belum Lunas'),(13,'1010101006','SPP Semester Ganjil 2024',5100000.00,'Belum Lunas'),(14,'1010101006','Software Lisensi Tahunan',600000.00,'Belum Lunas'),(15,'1010101007','SPP Semester Ganjil 2024',4900000.00,'Belum Lunas'),(16,'1010101008','SPP Semester Ganjil 2024',5400000.00,'Belum Lunas'),(17,'1010101008','Biaya Lab. Rangkaian Listrik',450000.00,'Belum Lunas'),(18,'1010101009','SPP Semester Ganjil 2024',4700000.00,'Belum Lunas'),(19,'1010101010','SPP Semester Ganjil 2024',5000000.00,'Belum Lunas'),(20,'1010101010','Biaya Peradilan Semu',250000.00,'Belum Lunas'),(21,'1010101011','SPP Semester Ganjil 2024',4600000.00,'Belum Lunas'),(22,'1010101012','SPP Semester Ganjil 2024',5250000.00,'Belum Lunas'),(23,'1010101012','Studi Kasus Bisnis Internasional',300000.00,'Belum Lunas'),(24,'1010101002','Dana Kemahasiswaan Tahunan',150000.00,'Belum Lunas'),(25,'1010101004','Uang Pendaftaran Ulang Genap 2024',100000.00,'Belum Lunas'),(26,'1010101007','Biaya Tes Psikologi Lanjutan',750000.00,'Belum Lunas');
/*!40000 ALTER TABLE `tagihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_tabel`
--

DROP TABLE IF EXISTS `temp_tabel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_tabel` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_tabel`
--

LOCK TABLES `temp_tabel` WRITE;
/*!40000 ALTER TABLE `temp_tabel` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp_tabel` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-29 20:32:10
