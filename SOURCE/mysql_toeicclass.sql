-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: toeicclass
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(15) DEFAULT NULL,
  `type` int(1) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','123456','admin','admin','admin@itzeno.com','999999999',1,0),(2,'hocvien1','123456','Nguyễn Quang','KTX','quangnguyen@gmail.com','1234567890',2,0),(3,'hocvien2','123456','Sơn Tùng MTP','Núi Thái Sơn','tungnui@mtp.com','1643215487',2,0),(4,'vegeta','123456','Quang Nguyen','KTX','vegeta@gmail.com','01234567890',2,0),(13,'abcde','123123','Abcdef','KTX','abc@gmail.com','01234567890',2,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Nguyễn Văn A','antivirus@atvr.com','Nhận xét về website','Có thể nói website Toeic Class là một trong những website học tiếng anh ra đời từ rất lâu của việt nam. Mặc dù trang web này hướng người dùng đến những bài học ngữ pháp hơn là giao tiếp , nhưng với lượng bài giảng phong phú . Trang web này vẫn xứng đáng nằm trong những website học tiếng anh online miễn phí hay nhất và tốt nhất hiện nay.',0),(2,'Nguyễn Bình','binhng@gmail.com','Đăng ký tất cả các môn học','Nội dung học chưa có ở bất kì môn học nào',0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Cách học từ vựng hiệu quả','images/tuvung.png','Cung cấp các bài hướng dẫn sát với đề thi',0),(2,'Bài tập phần nghe, đọc','images/default.png','Chúng tôi cung cấp các dạng bài tập có trong đề thi Toeic',0),(3,'Luyện thi toeic 450','images/toeic450.png','Thông tin chữ Hán và chữ Nôm dựa theo cơ\r\n sở dữ liệu của phần mềm WinVNKey,\r\n đóng góp bởi học giả Lê Sơn Thanh; đã đ\r\nược các tác giả đồng ý đưa vào đây. (chi tiết)\r\n',0),(4,'Luyện thi toeic 990','images/toeic990.png','Noi dung nay',0),(5,'600 từ vựng TOEIC','images/600tv.png','Fujenet',0),(6,'abcdef','images/default.png','adsfasdf',0),(7,'vnd','images/default.png','vnd',0),(8,'vvvv','images/default.png','vvvv',0);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcourse` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examdetail`
--

DROP TABLE IF EXISTS `examdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idexam` int(11) DEFAULT NULL,
  `idquestion` int(11) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examdetail`
--

LOCK TABLES `examdetail` WRITE;
/*!40000 ALTER TABLE `examdetail` DISABLE KEYS */;
/*!40000 ALTER TABLE `examdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lesson`
--

DROP TABLE IF EXISTS `lesson`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lesson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcourse` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lesson`
--

LOCK TABLES `lesson` WRITE;
/*!40000 ALTER TABLE `lesson` DISABLE KEYS */;
/*!40000 ALTER TABLE `lesson` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `question`
--

DROP TABLE IF EXISTS `question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idcourse` int(11) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `option1` varchar(45) DEFAULT NULL,
  `option2` varchar(45) DEFAULT NULL,
  `option3` varchar(45) DEFAULT NULL,
  `option4` varchar(45) DEFAULT NULL,
  `correctanswer` varchar(1) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `question`
--

LOCK TABLES `question` WRITE;
/*!40000 ALTER TABLE `question` DISABLE KEYS */;
/*!40000 ALTER TABLE `question` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regcourse`
--

DROP TABLE IF EXISTS `regcourse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `regcourse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idaccount` int(11) DEFAULT NULL,
  `idcourse` int(11) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regcourse`
--

LOCK TABLES `regcourse` WRITE;
/*!40000 ALTER TABLE `regcourse` DISABLE KEYS */;
INSERT INTO `regcourse` VALUES (1,1,1,0),(2,2,2,0);
/*!40000 ALTER TABLE `regcourse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-01 17:43:20
