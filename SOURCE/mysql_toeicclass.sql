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
  `content` varchar(20000) DEFAULT NULL,
  `idle` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Cách học từ vựng hiệu quả','images/tuvung.png','<h2><strong>1. Tập quen dần với việc nghe cường độ cao</strong></h2>\r\n\r\n<p>T&ocirc;i biết cảm gi&aacute;c đ&oacute;: đ&acirc;u đầu, đau tai, mệt mỏi, ch&oacute;ng mặt, buồn ngủ, trầm cảm, lo lắng. Kh&ocirc;ng phải cảm sốt hay t&acirc;m thần g&igrave; đ&acirc;u, đ&oacute; l&agrave; cảm gi&aacute;c khi nghe tiếng Anh li&ecirc;n tục tr&ecirc;n 15&rsquo; đối với những bạn chưa quen, phải kh&ocirc;ng n&agrave;o?</p>\r\n\r\n<p>Bốn năm trước khi lần đầu nghe tin tức tr&ecirc;n CNN, BBC t&ocirc;i c&oacute; cảm gi&aacute;c y chang. Chẳng hiểu n&oacute; l&atilde;i nh&atilde;i c&aacute;i qu&aacute;i g&igrave;, nghe tiếng được tiếng kh&ocirc;ng, nghe 1 hồi l&agrave; nhức đầu, ch&oacute;ng mặt, cảm gi&aacute;c như bị đi lạc v&ocirc; chỗ qu&aacute;i quỷ n&agrave;o đ&oacute;.</p>\r\n\r\n<p>B&igrave;nh thường th&ocirc;i, những nguy&ecirc;n nh&acirc;n ch&iacute;nh khiến bạn cảm thấy như vậy l&agrave;:</p>\r\n\r\n<ul>\r\n	<li><strong>&Iacute;t nghe tiếng Anh thường xuy&ecirc;n</strong></li>\r\n	<li><strong>Chủ yếu bạn nghe những nội dung ngắn</strong></li>\r\n	<li><strong>Cố gắng dịch từng c&acirc;u chữ sang tiếng Việt</strong></li>\r\n</ul>\r\n\r\n<p>Ch&iacute;nh v&igrave; vậy m&agrave; bạn kh&ocirc;ng&nbsp; đủ dẻo dai để chiến đấu li&ecirc;n tục suốt 45&rsquo; với b&agrave;i nghe TOEIC. Nhiều bạn chia sẻ, &ldquo;nghe 1 hồi l&agrave; hết biết băng n&oacute; n&oacute;i g&igrave;&rdquo;, &ldquo;nghe được tới phần 2 l&agrave; tao hoa mắt nhức đầu, kh&ocirc;ng c&ograve;n nghe được g&igrave; hết, đ&aacute;nh lụi lu&ocirc;n&rdquo;.</p>\r\n\r\n<h3><em><strong>Vậy b&acirc;y giờ l&agrave;m sao?</strong></em></h3>\r\n\r\n<p>B&iacute; quyết đơn giản lắm, l&agrave;m ngược lại với những nguy&ecirc;n nh&acirc;n khiến bạn cảm thấy hoa mắt, ch&oacute;ng mặt, nhức đầu.</p>\r\n\r\n<ul>\r\n	<li><strong>Nghe nhiều l&ecirc;n</strong>! Nghe hằng ng&agrave;y, mọi l&uacute;c mọi nơi. B&agrave;i trước t&ocirc;i đ&atilde; giới thiệu&nbsp;<a href=\"http://nghetienganhpro.com/5-bi-quyet-khong-the-tin-duoc-de-nghe-tieng-anh-tot/\" target=\"_blank\">5 tuyệt chi&ecirc;u nghe tiếng Anh thần th&aacute;nh</a>, k&egrave;m với 1 l&ocirc; 1 lốc c&aacute;c t&agrave;i liệu để bạn từ từ m&agrave; nghe.</li>\r\n	<li><strong>Nghe nội dung d&agrave;i l&ecirc;n</strong>. Nghe những đoạn hội thoại, b&agrave;i ph&aacute;t biểu, chương tr&igrave;nh thời sự (<a href=\"http://edition.cnn.com/\" target=\"_blank\">CNN</a>,&nbsp;<a href=\"http://www.bbc.com/\" target=\"_blank\">BBC</a>,&nbsp;<a href=\"http://www.51voa.com/\" target=\"_blank\">VOA</a>) d&agrave;i &iacute;t nhất 30&rsquo;.</li>\r\n	<li><strong>Tập tư duy bằng tiếng Anh</strong>. T&ocirc;i đ&atilde; hướng dẫn chi tiết trong&nbsp;<a href=\"http://nghetienganhpro.com/6-thoi-quen-nghe-tieng-anh-that-bai-va-khac-phuc-p1/\" target=\"_blank\">6 th&oacute;i quen nghe tiếng Anh thất bại &ndash; P1</a>.</li>\r\n	<li>C&aacute;ch kh&aacute;c l&agrave;&nbsp;<strong>nghe thụ động</strong>. C&aacute;ch n&agrave;y l&agrave; 1 trong những b&iacute; mật của t&ocirc;i, bật&nbsp;<strong>BBC radio, nghe khoảng 2 tiếng 1 ng&agrave;y, kh&ocirc;ng cần hiểu, vừa nghe vừa l&agrave;m việc kh&aacute;c</strong>, nghe đến mức kh&ocirc;ng bị nhức đầu, ph&acirc;n biệt được c&aacute;c từ, quen với c&aacute;c &acirc;m, v&agrave; vẫn tập trung l&agrave;m được việc kh&aacute;c l&agrave; đạt!</li>\r\n</ul>\r\n\r\n<p><a href=\"http://nghetienganhpro.com/wp-content/uploads/2015/06/bbc-radio.jpg\"><img alt=\"BBC Radio là nguồn nghe thụ động yêu thích của tôi. \" src=\"http://nghetienganhpro.com/wp-content/uploads/2015/06/bbc-radio.jpg\" style=\"height:662px; width:1005px\" /></a></p>\r\n\r\n<p><a href=\"http://www.bbc.co.uk/radio\" target=\"_blank\">BBC Radio</a>&nbsp;l&agrave; nguồn nghe thụ động y&ecirc;u th&iacute;ch của t&ocirc;i.</p>\r\n\r\n<p>Nghe nhiều, nghe d&agrave;i, nghe ho&agrave;i l&agrave; b&iacute; quyết để bạn c&oacute; thể tự trang bị cho bản th&acirc;n khả năng chiến đấu với b&agrave;i nghe d&agrave;i, li&ecirc;n tục m&agrave; kh&ocirc;ng cảm thấy mệt mỏi.&nbsp;<strong>Yếu tố tiếp l&agrave; tập trung!</strong></p>\r\n\r\n<h2><strong>2. Phớt lờ những quấy rầy khi tập trung</strong></h2>\r\n\r\n<p>Mỗi nội dung trong b&agrave;i nghe TOEIC k&eacute;o d&agrave;i từ 30 gi&acirc;y đến tầm 2 ph&uacute;t. Một người lớn khoẻ mạnh b&igrave;nh thường&nbsp;<a href=\"https://en.wikipedia.org/wiki/Attention_span\" target=\"_blank\">th&igrave; thời gian tập trung trung b&igrave;nh l&agrave; 5 ph&uacute;t</a>.</p>\r\n\r\n<p>Của c&aacute; v&agrave;ng l&agrave; 9&nbsp;gi&acirc;y. Của những đối tượng tăng động giảm ch&uacute; &yacute; th&igrave; cũng kh&oacute; n&oacute;i. Nếu bạn kh&ocirc;ng phải 2 đối tượng n&agrave;y th&igrave; kh&ocirc;ng cần phải lo g&igrave; về khả năng tập trung của m&igrave;nh cả đ&acirc;u nh&eacute;.</p>\r\n\r\n<p><a href=\"http://nghetienganhpro.com/wp-content/uploads/2015/06/S%E1%BB%B1-t%E1%BA%ADp-trung-c%E1%BB%A7a-c%C3%A1-v%C3%A0ng.gif\"><img alt=\"Cá vàng có thể tập trung được 9 giây. \" src=\"http://nghetienganhpro.com/wp-content/uploads/2015/06/S%E1%BB%B1-t%E1%BA%ADp-trung-c%E1%BB%A7a-c%C3%A1-v%C3%A0ng.gif\" style=\"height:387px; width:634px\" /></a></p>\r\n\r\n<p>C&aacute; v&agrave;ng c&oacute; thể tập trung được 9 gi&acirc;y.</p>\r\n\r\n<p>Phần cứng b&ecirc;n trong cho sự tập trung bạn biết l&agrave; bạn c&oacute; thừa. Vậy chỉ c&ograve;n yếu tố b&ecirc;n ngo&agrave;i th&ocirc;i. Những yếu tố b&ecirc;n ngo&agrave;i g&acirc;y xao nh&atilde;ng khi nghe thường gặp l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Băng nghe kh&ocirc;ng r&otilde;</li>\r\n	<li>Tiếng động b&ecirc;n ngo&agrave;i</li>\r\n	<li>Nhiều người đi qua đi lại</li>\r\n	<li>C&ograve;n 1 l&yacute; do nữa: Buồn ngủ</li>\r\n</ul>\r\n\r\n<p>Để loại bỏ triệt để những yếu tố n&agrave;y th&igrave; chả c&oacute; c&aacute;i c&aacute;ch qu&aacute;i n&agrave;o cả. Bạn phải sống chung với lũ, quen dần với n&oacute;, kệ n&oacute;.</p>\r\n\r\n<p>Để l&agrave;m được như vậy, th&igrave; m&ocirc;i trường l&uacute;c nghe hết sức quan trọng. Nghe trong ph&ograve;ng tĩnh lặng, một m&igrave;nh, kh&ocirc;ng ai quấy rầy?&nbsp;<strong>KH&Ocirc;NG ĐƯỢC L&Agrave;M NHƯ THẾ!</strong></p>\r\n\r\n<p>Ủa l&agrave; sao? Thằng cha n&agrave;y c&oacute;&nbsp;h&acirc;m kh&ocirc;ng? Mọi người đều bảo phải t&igrave;m nơi y&ecirc;n tĩnh m&agrave; học h&agrave;nh m&agrave;? Đ&uacute;ng! Đấy l&agrave; số đ&ocirc;ng. L&agrave;m kh&aacute;c với số đ&ocirc;ng l&agrave; c&aacute;ch m&agrave; người ta th&agrave;nh c&ocirc;ng.</p>\r\n\r\n<p>H&atilde;y luyện nghe Tiếng Anh trong&nbsp;<strong>điều kiện khắc nghiệt</strong>. Một trong những nơi ồn &agrave;o nhất t&ocirc;i từng ngồi nghe tiếng Anh l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>Ghế đ&aacute; c&ocirc;ng vi&ecirc;n</li>\r\n	<li>H&agrave;nh lang thư viện</li>\r\n	<li>Gần cửa ra v&agrave;o của Circle K</li>\r\n</ul>\r\n\r\n<p>Nếu bạn quen với những m&ocirc;i trường n&agrave;y, th&igrave; điều kiện l&yacute; tưởng trong ph&ograve;ng thi l&agrave; qu&aacute; tuyệt vời. Nếu trong ph&ograve;ng thi c&oacute; xảy ra những sự kiện ngo&agrave;i &yacute; muốn th&igrave; bạn vẫn tập trung được như thường.</p>\r\n\r\n<p>Lần trước t&ocirc;i đi thi TOEIC, trong ph&ograve;ng đầy những tiếng động qu&aacute;i dị, thằng kế b&ecirc;n đăng k&iacute; v&ocirc; thi hay kh&ocirc;ng biết đăng k&iacute; v&ocirc; ngủ, nghe được tới phần 2 l&agrave; nghe n&oacute; ng&aacute;y kh&ograve; kh&ograve;.</p>\r\n\r\n<p>Bạn nữ xinh đẹp ph&iacute;a sau th&igrave; bị mắc mưa, v&ocirc; ph&ograve;ng th&igrave; hỉ mũi khọt khẹt; đứa ngồi dưới c&aacute;i m&aacute;y lạnh th&igrave; l&acirc;u l&acirc;u kh&ograve; kh&egrave; ho như đi&ecirc;n; gi&aacute;m thị th&igrave; đi qua đi lại 1 ph&uacute;t t&aacute;m chục lần.</p>\r\n\r\n<p>Một giờ trưa, căng da bụng &hellip; Buồn ngủ qu&aacute;. Vậy m&agrave; c&ograve;n phải nghe b&agrave;i nghe d&agrave;i 45&rsquo;, chẳng tr&aacute;ch anh bạn kế b&ecirc;n t&ocirc;i ngồi ngủ ngon l&agrave;nh trong ph&ograve;ng thi.</p>\r\n\r\n<p>Thi TOEIC chỉ c&oacute; 3&nbsp;ca, ca s&aacute;ng từ 7h v&agrave; ca chiều từ 13h hoặc từ 16:30. Giờ n&agrave;o th&igrave; v&ocirc; nghe cũng buồn ngủ vật vả ra cả. Phải kiểm so&aacute;t được chuyện buồn ngủ trong l&uacute;c nghe th&igrave; mới tập trung v&agrave; c&oacute; điểm cao được.</p>\r\n\r\n<p>Để kiểm so&aacute;t cơn buồn ngủ đi&ecirc;n cuồng trong l&uacute;c nghe th&igrave; 1 lần nữa, phải quen với n&oacute;. Kh&aacute;c với những người kh&aacute;c chọn l&uacute;c tỉnh t&aacute;o m&agrave; nghe tiếng Anh. T&ocirc;i chọn l&uacute;c&nbsp;<strong>BUỒN NGỦ NHẤT</strong>&nbsp;để bật băng l&ecirc;n m&agrave; nghe. Ba thời điểm buồn ngủ vật vả t&ocirc;i hay thường chọn để nghe l&uacute;c luyện nghe TOEIC l&agrave;:</p>\r\n\r\n<ul>\r\n	<li>13:30 trưa, khi vừa &ldquo;căng da bụng&rdquo;</li>\r\n	<li>21:30 tối, mắt d&iacute;p l&ecirc;n d&iacute;p xuống</li>\r\n	<li>6:30 s&aacute;ng, ngủ dậy c&ograve;n mơ m&agrave;ng</li>\r\n</ul>\r\n\r\n<p>Ngược đời vậy đ&oacute;, m&agrave; hiệu quả lắm. Thử chừng v&agrave;i tuần, bạn sẽ tận hưởng cảm gi&aacute;c &ldquo;c&agrave;ng nghe c&agrave;ng tỉnh&rdquo; tại v&igrave; nếu kh&ocirc;ng tỉnh th&igrave; chỉ c&oacute; nước gục xuống m&agrave; ngủ.</p>\r\n\r\n<h3><strong>Tặng Free:&nbsp;</strong><strong>BỘ 10&nbsp;ĐỀ THI TOEIC HAY NHẤT&nbsp;chọn lọc từ c&aacute;c bộ Economy, Longman Real TOEIC, Big Step, TOEIC Hacker TOEIC, Tomato TOEIC</strong></h3>\r\n\r\n<h3><a href=\"http://nghetienganhpro.com/10-bo-de-thi-toeic/\" target=\"_blank\"><img alt=\"tai ngay\" src=\"http://nghetienganhpro.com/wp-content/uploads/2015/08/tai-ngay-300x65.png\" style=\"height:65px; width:300px\" /></a></h3>\r\n\r\n<h3>&nbsp;</h3>\r\n\r\n<h2><strong>3. Nắm r&otilde; cấu tr&uacute;c v&agrave; hiểu đề thi trong l&ograve;ng b&agrave;n tay</strong></h2>\r\n\r\n<p>Ối giời! Ai thi TOEIC m&agrave; chẳng biết&nbsp;<strong>b&agrave;i nghe TOEIC c&oacute; 4 phần với 100 c&acirc;u hỏi</strong>.</p>\r\n\r\n<p>Đ&uacute;ng, ch&iacute;nh x&aacute;c, nhưng bạn c&oacute; đủ &ldquo;hiểu&rdquo; v&agrave; tự tin trả lời được c&aacute;c c&acirc;u hỏi sau kh&ocirc;ng:</p>\r\n\r\n<ul>\r\n	<li>Điểm kh&aacute;c biệt giữa c&aacute;c phần?</li>\r\n	<li>C&aacute;ch luyện nghe cho từng phần?</li>\r\n	<li>Cần tập trung nghe g&igrave; cho mỗi phần?</li>\r\n	<li>Kỹ thuật l&agrave;m b&agrave;i tốt nhất cho c&aacute;c phần?</li>\r\n	<li>C&aacute;ch kiếm điểm dễ d&agrave;ng nhất?</li>\r\n	<li>Những bẫy thường gặp trong phần nghe?</li>\r\n</ul>\r\n\r\n<p><em><strong>Thế n&agrave;o? T&ocirc;i sẽ giải đ&aacute;p cho bạn!</strong></em></p>\r\n\r\n<p>Trước khi v&agrave;o chi tiết từng phần. H&atilde;y xem bảng sau để biết tổng quan về cấu tr&uacute;c b&agrave;i nghe TOEIC:</p>\r\n\r\n<p><strong>Phần thi Listening</strong>&nbsp;được d&ugrave;ng để đ&aacute;nh gi&aacute; kỹ năng nghe. Bạn sẽ được nghe c&aacute;c c&acirc;u mi&ecirc;u tả, c&acirc;u hỏi, hội thoại v&agrave; đoạn th&ocirc;ng tin bằng tiếng Anh&nbsp;được đọc trực tiếp tr&ecirc;n đ&agrave;i cassette hoặc loa v&agrave; chỉ c&oacute;&nbsp;<strong>45 ph&uacute;t</strong>&nbsp;để vừa nghe vừa trả lời&nbsp;<strong>100 c&acirc;u</strong>&nbsp;bằng c&aacute;ch khoanh v&agrave;o c&aacute;c đ&aacute;p &aacute;n A-B-C-D.</p>\r\n\r\n<table>\r\n	<tbody>\r\n		<tr>\r\n			<td><strong>Phần A</strong></td>\r\n			<td><strong>Nội dung thi</strong></td>\r\n			<td><strong>Số c&acirc;u</strong></td>\r\n			<td><strong>Chi tiết</strong></td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phần 1</strong></td>\r\n			<td>H&igrave;nh ảnh</td>\r\n			<td>10 c&acirc;u</td>\r\n			<td>Tương ứng với mỗi bức ảnh, bạn sẽ được nghe 04&nbsp;c&acirc;u m&ocirc; tả về n&oacute;. Nhiệm vụ của bạn l&agrave; phải chọn c&acirc;u m&ocirc; tả đ&uacute;ng nhất cho bức ảnh.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phần 2</strong></td>\r\n			<td>Hỏi đ&aacute;p</td>\r\n			<td>30 c&acirc;u</td>\r\n			<td>Bạn sẽ nghe một c&acirc;u hỏi (hoặc c&acirc;u n&oacute;i) v&agrave; 03 lựa chọn trả lời. Nhiệm vụ của bạn l&agrave; phải chọn ra c&acirc;u trả lời đ&uacute;ng nhất trong ba đ&aacute;p &aacute;n A-B-C.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phần 3</strong></td>\r\n			<td>Hội thoại ngắn</td>\r\n			<td>30 c&acirc;u</td>\r\n			<td>Bạn sẽ nghe 10&nbsp;đoạn hội thoại ngắn. Mỗi đoạn c&oacute; 03 c&acirc;u hỏi. Nhiệm vụ của bạn l&agrave; chọn ra c&acirc;u trả lời đ&uacute;ng nhất trong 04 đ&aacute;p &aacute;n của đề thi.</td>\r\n		</tr>\r\n		<tr>\r\n			<td><strong>Phần 4</strong></td>\r\n			<td>Đoạn th&ocirc;ng tin ngắn</td>\r\n			<td>30 c&acirc;u</td>\r\n			<td>Bạn sẽ nghe 10&nbsp;đoạn th&ocirc;ng tin ngắn. Mỗi đoạn c&oacute; 03 c&acirc;u hỏi. Nhiệm vụ của bạn l&agrave; chọn ra c&acirc;u trả lời đ&uacute;ng nhất trong số 04 đ&aacute;p &aacute;n được cung cấp.</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n',0),(2,'Bài tập phần nghe, đọc','images/default.png','<p>Đang c&oacute; &yacute; định luyện nghe TOEIC? Suy nghĩ trong đầu t&igrave;m 1 trung t&acirc;m để luyện nghe TOEIC 1 c&aacute;ch tốt hơn. Hy vọng tr&agrave;n trề trong 6 tuần sẽ đạt kết quả trong mơ?</p>\r\n\r\n<p>Đ&uacute;ng! H&atilde;y tiếp tục mơ, bởi v&igrave; kh&ocirc;ng 1 kho&aacute; luyện TOEIC n&agrave;o c&oacute; thể l&agrave;m tr&igrave;nh độ nghe của bạn cải thiện trong 1 đến 2 th&aacute;ng cả. Chỉ c&oacute; mơ th&ocirc;i.</p>\r\n\r\n<p>Trước khi đọc tiếp, t&ocirc;i muốn cảnh b&aacute;o bạn, những th&ocirc;ng tin dưới đ&acirc;y sẽ l&agrave;m bạn tỉnh giấc mộng TOEIC dễ d&agrave;ng của m&igrave;nh. Nếu bạn muốn mơ tiếp, xin mời nhấn n&uacute;t tắt v&agrave; t&ocirc;i sẽ để bạn hạnh ph&uacute;c với giấc mơ ấy.</p>\r\n\r\n<p>Những ai muốn thức dậy v&agrave; chinh phục thử th&aacute;ch nghe TOEIC max điểm, t&ocirc;i sẽ cho bạn 1 b&agrave;i viết cực k&igrave; chi tiết, hướng dẫn từng bước từng bước c&aacute;ch m&agrave; t&ocirc;i đạt được 495 điểm nghe TOEIC chỉ trong v&ograve;ng 3 th&aacute;ng tự &ocirc;n luyện.</p>\r\n\r\n<p>B&agrave;i viết rất d&agrave;i, v&agrave; kh&ocirc;ng d&agrave;nh cho những ai th&iacute;ch sự dễ d&agrave;ng, m&igrave; ăn liền trong học tập. Để cho ra b&agrave;i viết n&agrave;y, t&ocirc;i đ&atilde; đầu tư tổng cộng 10 giờ để viết v&agrave; 2 giờ để chỉnh sửa v&agrave; đăng b&agrave;i. T&ocirc;i hy vọng bạn&nbsp;<strong>h&atilde;y share hoặc lưu lại link để từ từ đọc v&agrave; &aacute;p dụng.</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3><strong>Nghe TOEIC tốt &ndash; Đừng đến l&ograve; luyện</strong></h3>\r\n\r\n<p>Nhiều l&ograve; luyện TOEIC chỉ l&agrave;m đ&uacute;ng 1 chuyện: Giải đề. Giải đề chỉ l&agrave; r&egrave;n luyện khả năng l&agrave;m b&agrave;i. Đơn giản như việc h&aacute;t nhiều kh&ocirc;ng c&oacute; nghĩa l&agrave; h&aacute;t hay, giải đề TOEIC nhiều kh&ocirc;ng li&ecirc;n quan g&igrave; đến điểm cao.</p>\r\n\r\n<p>Đ&oacute; l&agrave; l&yacute; do sau mỗi kho&aacute; luyện thi, điểm nghe của bạn kh&ocirc;ng bao giờ l&ecirc;n được hơn 50 điểm so với tr&igrave;nh độ thực của m&igrave;nh.</p>\r\n\r\n<p>Sự thật l&agrave; để tăng 100 điểm TOEIC bạn cần&nbsp;<a href=\"https://elt.oup.com/elt/students/exams/pdf/elt/toeic_teachers_guide_international.pdf\">xấp xỉ 200 giờ học nghi&ecirc;m t&uacute;c</a>. Tuy nhi&ecirc;n với những b&iacute; kiếp sau đ&acirc;y, t&ocirc;i sẽ r&uacute;t ngắn quảng đường xuống 1 nữa cho bạn.</p>\r\n\r\n<p>Bảng nghi&ecirc;n cứu số giờ cần học để cải thiện c&aacute;c mốc điểm trong b&agrave;i thi TOEIC. Cột đầu b&ecirc;n tr&aacute;i l&agrave; điểm hiện tại, h&agrave;ng đầu ti&ecirc;n tr&ecirc;n c&ugrave;ng l&agrave; điểm mong muốn. C&aacute;c số &ocirc; m&agrave;u trắng ph&iacute;a trong l&agrave; thời gian cần để tăng từ mức hiện tại l&ecirc;n mức mong muốn.</p>\r\n\r\n<p>B&agrave;i nghe TOEIC kh&ocirc;ng kh&oacute; về nội dung, tuy nhi&ecirc;n những yếu tố sau l&agrave;m b&agrave;i nghe TOEIC kh&aacute; l&agrave; kh&oacute; nhai:</p>\r\n\r\n<ul>\r\n	<li>D&agrave;i, li&ecirc;n tục 45&rsquo;</li>\r\n	<li>Nhiều y&ecirc;u cầu kh&aacute;c nhau</li>\r\n	<li>Giọng đọc đa dạng (Anh, Mỹ, &Uacute;c)</li>\r\n</ul>\r\n\r\n<p>Hiểu được những yếu tố đ&oacute;, bạn sẽ dễ d&agrave;ng c&oacute; chiến lược trị b&agrave;i nghe TOEIC 1 c&aacute;ch ngon l&agrave;nh nhất.</p>\r\n',0),(3,'Luyện thi toeic 450','images/toeic450.png','<h1>Kh&oacute;a luyện thi TOEIC 450+ (trong 20 buổi)</h1>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><a href=\"http://cfl.edu.vn/xmedia/2012/02/toeic.jpg\"><img alt=\"\" src=\"http://cfl.edu.vn/xmedia/2012/02/toeic-300x86.jpg\" style=\"height:86px; width:300px\" /></a></strong></p>\r\n\r\n<p><strong>Kh&oacute;a luyện thi TOEIC 450+</strong>&nbsp;được thiết kế nhằm đ&aacute;p ứng nguyện vọng của sinh vi&ecirc;n v&agrave; c&aacute;c đối tượng kh&aacute;c c&oacute;&nbsp;y&ecirc;u cầu tr&igrave;nh độ&nbsp;<strong>TOEIC 450 trở l&ecirc;n</strong>. Mục ti&ecirc;u lớp&nbsp;luyện thi TOEIC450 l&agrave; ph&aacute;t triển khả năng tiếng Anh một c&aacute;ch to&agrave;n diện gi&uacute;p học vi&ecirc;n n&acirc;ng cao điểm thi v&agrave; c&oacute; thể lấy chứng chỉ TOEIC để nộp cho nh&agrave; trường hoặc đơn vị tuyển dụng.</p>\r\n\r\n<p>Qua kh&oacute;a học n&agrave;y, học vi&ecirc;n:</p>\r\n\r\n<ul>\r\n	<li>N&acirc;ng cao khả năng tiếng Anh một c&aacute;ch to&agrave;n diện</li>\r\n	<li>N&acirc;ng cao vốn từ vựng cần thiết cho b&agrave;i thi TOEIC</li>\r\n	<li>Củng cố kiến thức ngữ ph&aacute;p cần thiết cho b&agrave;i thi TOEIC</li>\r\n	<li>Ph&aacute;t triển kỹ năng v&agrave; c&aacute;c chiến thuật nghe hiểu, đọc hiểu tiếng Anh hiệu quả</li>\r\n	<li>Trau dồi v&agrave; t&iacute;ch lũy c&aacute;c chiến lược, kỹ thuật, mẹo l&agrave;m b&agrave;i thi TOEIC hiệu quả</li>\r\n	<li>Ph&acirc;n t&iacute;ch v&agrave; luyện tập c&aacute;c c&acirc;u hỏi đ&atilde; c&oacute; trong c&aacute;c đề thi TOEIC quốc tế của ETS-Mỹ</li>\r\n	<li>Được cung cấp c&aacute;c b&agrave;i tập luyện thi TOEIC phong ph&uacute;</li>\r\n</ul>\r\n\r\n<h3>1. Đối tượng tham gia kh&oacute;a học TOEIC 450:</h3>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n đ&atilde; tham dự&nbsp;<a href=\"http://cfl.edu.vn/luyen-thi/toeic-400/\">lớp&nbsp;luyện thi TOEIC 400</a></li>\r\n	<li>Học vi&ecirc;n c&oacute; tr&igrave;nh độ đầu v&agrave;o từ 400 &ndash; 450 điểm TOEIC</li>\r\n	<li>Học vi&ecirc;n kh&aacute;c (C&oacute; kiểm tra đầu v&agrave;o)</li>\r\n</ul>\r\n\r\n<p><a href=\"http://cfl.edu.vn/xmedia/2012/02/khoa-luyen-thi-toeic-450.png\"><img alt=\"Khóa luyện thi TOEIC 450+\" src=\"http://cfl.edu.vn/xmedia/2012/02/khoa-luyen-thi-toeic-450.png\" style=\"height:420px; width:600px\" /></a></p>\r\n\r\n<p>Kh&oacute;a luyện thi TOEIC 450+</p>\r\n\r\n<h3>2. Mục ti&ecirc;u của kh&oacute;a học TOEIC 450:</h3>\r\n\r\n<p>Kh&oacute;a luyện thi n&agrave;y được thiết kế nhằm ph&aacute;t triển khả năng tiếng Anh một c&aacute;ch to&agrave;n diện gi&uacute;p học vi&ecirc;n n&acirc;ng cao điểm thi TOEIC. Kết th&uacute;c kh&oacute;a học, học vi&ecirc;n c&oacute; thể đạt điểm từ&nbsp;<strong>TOEIC 450 trở l&ecirc;n</strong></p>\r\n\r\n<p><strong>Từ vựng:</strong>&nbsp;N&acirc;ng cao vốn từ vựng về c&aacute;c chủ đề thường gặp trong b&agrave;i thi TOEIC.</p>\r\n\r\n<p><strong>Ngữ ph&aacute;p:</strong>&nbsp;Học c&aacute;c cấu tr&uacute;c ngữ ph&aacute;p thường gặptrong b&agrave;i thi TOEIC.</p>\r\n\r\n<p><strong>Kỹ năng thi TOEIC:</strong></p>\r\n\r\n<ul>\r\n	<li>Nắm chắc cấu tr&uacute;c b&agrave;i thi TOEIC</li>\r\n	<li>Ph&acirc;n t&iacute;ch y&ecirc;u cầu từng th&agrave;nh phần của b&agrave;i thi TOEIC</li>\r\n	<li>Ph&aacute;t triển kỹ năng v&agrave; c&aacute;c chiến thuật nghe hiểu, đọc hiểu tiếng Anh hiệu quả</li>\r\n	<li>Trau dồi v&agrave; t&iacute;ch lũy c&aacute;c chiến lược, kỹ thuật, mẹo l&agrave;m b&agrave;i thi TOEIC</li>\r\n</ul>\r\n\r\n<h3>3. T&agrave;i liệu học tập:</h3>\r\n\r\n<p><strong>Gi&aacute;o tr&igrave;nh ch&iacute;nh:</strong></p>\r\n\r\n<ul>\r\n	<li>Lin Lougheed, &ldquo;<em>Longman Preparation series for the new Toeic Test &ndash; Intermediate Course</em>&rdquo;</li>\r\n	<li>Kim Soyeong. Park Won, &ldquo;<em>Big Step TOEIC 2</em>&rdquo;</li>\r\n</ul>\r\n\r\n<p><strong>Gi&aacute;o tr&igrave;nh bổ trợ:</strong></p>\r\n\r\n<ul>\r\n	<li>Anne Taylor, &ldquo;<em>Target Score</em>&rdquo;</li>\r\n	<li>Anne Taylor, &ldquo;<em>TOEIC Analyst</em>&rdquo;</li>\r\n	<li>Kim Chang Su &ndash; Yoon Cheon Gi, &ldquo;<em>Smart TOEIC</em>&rdquo;</li>\r\n	<li>Mozilge TOEIC, &ldquo;<em>Economy TOEIC</em>&rdquo;</li>\r\n	<li>C&aacute;c t&agrave;i liệu luyện thi v&agrave; bổ trợ do gi&aacute;o vi&ecirc;n cung cấp</li>\r\n</ul>\r\n\r\n<h3>4. Thời gian học tập:</h3>\r\n\r\n<ul>\r\n	<li>Học vi&ecirc;n học trong&nbsp;<strong>20 buổi</strong>&nbsp;<em>(tương đương 60 tiết ~ 45 giờ)</em></li>\r\n</ul>\r\n',0),(4,'Luyện thi toeic 990','images/toeic990.png','Noi dung nay',0),(5,'600 từ vựng TOEIC','images/600tv.png','<h1>600 từ vựng TOEIC căn bản kh&ocirc;ng thể bỏ qua!</h1>\r\n\r\n<p>Kh&ocirc;ng c&oacute; từ vựng, bạn sẽ gặp rất nhiều kh&oacute; khăn khi đọc &ndash; hiểu, nhất l&agrave; khi cần &aacute;p dụng ngữ ph&aacute;p, viết c&acirc;u. V&igrave; vậy, từ vựng TOEIC được xem như l&agrave; &ldquo;chiếc cầu nối&rdquo; gi&uacute;p bạn tiếp cận tiếng Anh gần gũi v&agrave; hiệu quả hơn.</p>\r\n\r\n<p><br />\r\n<strong>600 từ vựng TOEIC theo chủ đề</strong></p>\r\n\r\n<h3>Để c&oacute; thể&nbsp;<a href=\"http://mshoatoeic.com/600-tu-vung-toeic-can-ban-khong-the-bo-qua-nd463057\">học 600 từ vựng TOEIC</a>&nbsp;n&agrave;y một c&aacute;ch dễ d&agrave;ng m&agrave; hiệu quả nhất, Ms Hoa TOEIC cung cấp cho bạn list c&aacute;c chủ đề cho từng loại từ vựng. V&iacute; dụ như n&oacute;i về trường học ch&uacute;ng ta sẽ c&oacute; những cụm từ li&ecirc;n quan đến &ldquo;school&rdquo; như c&aacute;c kiểu trường học bằng tiếng Anh, t&ecirc;n c&aacute;c m&ocirc;n học bằng tiếng Anh, c&aacute;c chức vụ trong lớp...<br />\r\n<br />\r\n<em><a href=\"http://mshoatoeic.com/600-tu-vung-toeic-can-ban-khong-the-bo-qua-nd463057\">Download 600 từ vựng TOEIC&nbsp;</a>để học TOEIC dễ d&agrave;ng hơn&nbsp;</em></h3>\r\n\r\n<p><br />\r\nMột c&aacute;ch rất hay để dễ nhớ từ vựng hơn ch&iacute;nh l&agrave; bạn x&acirc;u chuỗi, ph&acirc;n chia&nbsp;<a href=\"http://mshoatoeic.com/600-tu-vung-toeic-can-ban-khong-the-bo-qua-nd463057\">600 từ vựng TOEIC thường gặp</a>&nbsp;n&agrave;y th&agrave;nh c&aacute;c c&acirc;u chuyện c&oacute; &yacute; nghĩa, sau đ&oacute; đọc đi đọc lại nhiều lần. V&igrave; theo c&acirc;u chuyện liền mạch như vậy bạn sẽ nhờ từ &ldquo;dai&rdquo; hơn l&agrave; c&oacute; từ n&agrave;o học từ đ&oacute;.<br />\r\n<br />\r\n<em>Danh s&aacute;ch c&aacute;c từ vựng TOEIC theo chủ đề&nbsp;</em><br />\r\n<br />\r\n1 Contracts (hợp đồng, giao k&egrave;o, khế ước, giấy k&yacute; kết)<br />\r\n2 Marketing (thị trường, nơi ti&ecirc;u thụ; kh&aacute;ch h&agrave;ng)<br />\r\n3 Warranties (Bảo h&agrave;nh, sự bảo đảm)<br />\r\n4 Business planning (Tổ chức kế hoạch c&ocirc;ng sở)<br />\r\n5 Conferences (Hội nghị, cuộc gặp mặt)<br />\r\n6 Computers (M&aacute;y t&iacute;nh)<br />\r\n7 Office Technology (Vấn đề kĩ thuật trong c&ocirc;ng ty)<br />\r\n8 Office Procedures<br />\r\n9 Electronics (điện tử)<br />\r\n10 Correspondence (quan hệ thư từ, sự ph&ugrave; hợp)<br />\r\n11 Job Advertising and Recruiting (Quảng c&aacute;o c&ocirc;ng việc, tuyển dụng)<br />\r\n12 Applying and Interviewing. (Nộp đơn xin việc, phỏng vấn)<br />\r\n13 Hiring and Training. (Thu&ecirc; người, huấn luyện kĩ năng)<br />\r\n14 Salaries and benefits. (Lương bổng v&agrave; lợi &iacute;ch)<br />\r\n15 Promotions, Pensions and Awards. (Thăng tiến, giải thưởng)<br />\r\n16 Shopping. (Mua sắm)<br />\r\n17 Ordering Supplies.<br />\r\n18 Shipping.<br />\r\n19 Invoices.<br />\r\n20 Inventory.<br />\r\n21 Banking.<br />\r\n22 Accounting.<br />\r\n23 Investments.<br />\r\n24 Taxes.<br />\r\n26 Property and department<br />\r\n27 Board Meetings and committees.<br />\r\n28 Quality control<br />\r\n29 Product Development<br />\r\n30 Renting and Leasing.<br />\r\n31 Selecting a Restaurant<br />\r\n32 Eating out<br />\r\n33 Ordering Lunch.<br />\r\n34 Cooking as a career<br />\r\n35 Events.<br />\r\n36 General Travel<br />\r\n37 Airlines.<br />\r\n38 Trains.<br />\r\n39 Hotels.<br />\r\n40 Car Rentals.<br />\r\n41 Movies.<br />\r\n42 Theater<br />\r\n43 Music.<br />\r\n44 Museums.<br />\r\n45 Media.<br />\r\n46 Doctor&rsquo;s Office.<br />\r\n47 Dentist&rsquo;s office (Ph&ograve;ng Nha sĩ)<br />\r\n48 Health Insurance ( sự bảo hiểm sức khoẻ (khi ốm)<br />\r\n49 Hospitals tổ chức từ thiện, tổ chức cứu tế.<br />\r\n50 Pharmacy (&#39;fɑ:məsi) dược khoa.</p>\r\n\r\n<h3>Chặng đường học 600 từ vựng TOEIC n&agrave;y c&oacute; thể sẽ lấy đi của bạn nhiều thời gian, tuy nhi&ecirc;n nếu biết c&aacute;ch ph&acirc;n bổ thời gian v&agrave; l&ecirc;n chiến lược học tập hợp l&iacute;, bạn ho&agrave;n to&agrave;n c&oacute; thể chinh phục được ch&uacute;ng dễ d&agrave;ng.</h3>\r\n\r\n<p>Download 600 từ vựng TOEIC căn bản tại link dưới đ&acirc;y để học c&aacute;c bạn nh&eacute;!</p>\r\n\r\n<p><img alt=\"\" src=\"http://mshoatoeic.com/uploads/images/userfiles/h%C3%ACnh/H%C3%ACnh%E1%BA%A3nh/1361161557_LOGO_TOIEC.jpg\" /></p>\r\n\r\n<h3><a href=\"https://drive.google.com/file/d/0BxzSw__kZxblUHJRd25HUU14bzQ/view\"><strong>LINK DOWNLOAD</strong></a></h3>\r\n\r\n<h1><br />\r\nMột điều cần lưu &yacute; rằng&nbsp;<a href=\"http://www.mshoatoeic.com/600-tu-vung-toeic-can-ban-khong-the-bo-qua-nd463057\">bộ 600 từ vựng TOEIC</a>&nbsp;n&agrave;y chỉ l&agrave; tiền đề, l&agrave; bước đầu ti&ecirc;n cho những ai vừa mới tiếp cận việc giải đề thi TOEIC. Bạn sẽ c&ograve;n phải tiếp tục trau dồi th&ecirc;m nhiều kiến thức nữa, kết hợp với chăm chỉ học hỏi phần ngữ ph&aacute;p, luyện nghe tiếng Anh... để c&oacute; thể chinh phục điểm thi TOEIC như m&igrave;nh mong muốn!</h1>\r\n',0),(6,'abcdef','images/default.png','adsfasdf',0),(7,'vnd','images/default.png','vnd',0),(8,'vvvv','images/default.png','<h1>abc</h1>',0);
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

-- Dump completed on 2017-06-01 19:04:55
