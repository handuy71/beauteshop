CREATE DATABASE  IF NOT EXISTS `beaute_store` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `beaute_store`;
-- MySQL dump 10.13  Distrib 5.7.11, for Win64 (x86_64)
--
-- Host: localhost    Database: online_store
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `chi_muc_gio_hang`
--

DROP TABLE IF EXISTS `chi_muc_gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_muc_gio_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `so_luong` int(11) NOT NULL,
  `ma_gio_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK49lmmclnjgb7eck20lwhv0cks` (`ma_gio_hang`),
  KEY `FKkd69a7wiulr4xgohxl0rlhth4` (`ma_san_pham`),
  CONSTRAINT `FK49lmmclnjgb7eck20lwhv0cks` FOREIGN KEY (`ma_gio_hang`) REFERENCES `gio_hang` (`id`),
  CONSTRAINT `FKkd69a7wiulr4xgohxl0rlhth4` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `chi_tiet_don_hang`
--

DROP TABLE IF EXISTS `chi_tiet_don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chi_tiet_don_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `don_gia` bigint(20) NOT NULL,
  `so_luong` int(11) NULL,
  `ma_don_hang` bigint(20) DEFAULT NULL,
  `ma_san_pham` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK9wl3houbukbxpixsut6uvojhy` (`ma_don_hang`),
  KEY `FK3ry84nmdxgoarx53qjxd671tk` (`ma_san_pham`),
  CONSTRAINT `FK3ry84nmdxgoarx53qjxd671tk` FOREIGN KEY (`ma_san_pham`) REFERENCES `san_pham` (`id`),
  CONSTRAINT `FK9wl3houbukbxpixsut6uvojhy` FOREIGN KEY (`ma_don_hang`) REFERENCES `don_hang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `danh_muc`
--

DROP TABLE IF EXISTS `danh_muc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `danh_muc` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_danh_muc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `don_hang`
--

DROP TABLE IF EXISTS `don_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `don_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi_nhan` varchar(255) DEFAULT NULL,
  `ghi_chu` varchar(255) DEFAULT NULL,
  `ho_ten_nguoi_nhan` varchar(255) DEFAULT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ngay_giao_hang` datetime DEFAULT NULL,
  `ngay_nhan_hang` datetime DEFAULT NULL,
  `sdt_nhan_hang` varchar(255) DEFAULT NULL,
  `trang_thai_don_hang` varchar(255) DEFAULT NULL,
  `ma_nguoi_dat` bigint(20) DEFAULT NULL,
  `ma_shipper` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnwjiboxao1uvw1siemkvs1jb9` (`ma_nguoi_dat`),
  KEY `FKgndcrlvetoudr3jaif9b7ay37` (`ma_shipper`),
  CONSTRAINT `FKgndcrlvetoudr3jaif9b7ay37` FOREIGN KEY (`ma_shipper`) REFERENCES `nguoi_dung` (`id`),
  CONSTRAINT `FKnwjiboxao1uvw1siemkvs1jb9` FOREIGN KEY (`ma_nguoi_dat`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gio_hang`
--

DROP TABLE IF EXISTS `gio_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gio_hang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tong_tien` varchar(255) DEFAULT NULL,
  `ma_nguoi_dung` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKitverect56puwr47y7tyvy6er` (`ma_nguoi_dung`),
  CONSTRAINT `FKitverect56puwr47y7tyvy6er` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hang_san_xuat`
--

DROP TABLE IF EXISTS `hang_san_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hang_san_xuat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_hang_san_xuat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lien_he`
--

DROP TABLE IF EXISTS `lien_he`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lien_he` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_lien_he` varchar(255) DEFAULT NULL,
  `ngay_lien_he` datetime DEFAULT NULL,
  `ngay_tra_loi` datetime DEFAULT NULL,
  `noi_dung_lien_he` varchar(255) DEFAULT NULL,
  `noi_dung_tra_loi` varchar(255) DEFAULT NULL,
  `trang_thai` varchar(255) DEFAULT NULL,
  `ma_nguoi_tra_loi` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6jm47uh7f94pc3wix0duvedde` (`ma_nguoi_tra_loi`),
  CONSTRAINT `FK6jm47uh7f94pc3wix0duvedde` FOREIGN KEY (`ma_nguoi_tra_loi`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nguoi_dung`
--

DROP TABLE IF EXISTS `nguoi_dung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoi_dung` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dia_chi` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ho_ten` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `so_dien_thoai` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nguoidung_vaitro`
--

DROP TABLE IF EXISTS `nguoidung_vaitro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung_vaitro` (
  `ma_nguoi_dung` bigint(20) NOT NULL,
  `ma_vai_tro` bigint(20) NOT NULL,
  PRIMARY KEY (`ma_nguoi_dung`,`ma_vai_tro`),
  KEY `FKig6jxd861mqv02a8pn68r43fr` (`ma_vai_tro`),
  CONSTRAINT `FKig6jxd861mqv02a8pn68r43fr` FOREIGN KEY (`ma_vai_tro`) REFERENCES `vai_tro` (`id`),
  CONSTRAINT `FKocavcnspu1wcvp2w0s4usfgbf` FOREIGN KEY (`ma_nguoi_dung`) REFERENCES `nguoi_dung` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `san_pham`
--

DROP TABLE IF EXISTS `san_pham`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `san_pham` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `don_gia` bigint(20) NOT NULL,
  `don_vi_ban` int(11) NOT NULL,
  `don_vi_kho` int(11) NOT NULL,
  `ten_san_pham` varchar(255) DEFAULT NULL,
  `thong_tin_bao_hanh` varchar(255) DEFAULT NULL,
  `thong_tin_chung` varchar(255) DEFAULT NULL,
  `ma_danh_muc` bigint(20) DEFAULT NULL,
  `ma_hang_sx` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKqss6n6gtx6lhb7flcka9un18t` (`ma_danh_muc`),
  KEY `FKchvjvgjnq8lbt9mjtyfn5pksq` (`ma_hang_sx`),
  CONSTRAINT `FKchvjvgjnq8lbt9mjtyfn5pksq` FOREIGN KEY (`ma_hang_sx`) REFERENCES `hang_san_xuat` (`id`),
  CONSTRAINT `FKqss6n6gtx6lhb7flcka9un18t` FOREIGN KEY (`ma_danh_muc`) REFERENCES `danh_muc` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vai_tro`
--

DROP TABLE IF EXISTS `vai_tro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vai_tro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ten_vai_tro` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vai_tro`
--

LOCK TABLES `vai_tro` WRITE;
/*!40000 ALTER TABLE `vai_tro` DISABLE KEYS */;
INSERT INTO `vai_tro` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MEMBER'),(3,'ROLE_SHIPPER');
/*!40000 ALTER TABLE `vai_tro` ENABLE KEYS */;
UNLOCK TABLES;

LOCK TABLES `hang_san_xuat` WRITE;
INSERT INTO `hang_san_xuat`(`id`, `ten_hang_san_xuat`) VALUES ('1001','Skin1004'),('1002','Maybeline'),('1003','Simple'),('1004','Cocoon'),('1005','Laropoche'),('1006','Senka'),('1007','Corsx'),('1008','SOME BY MI'),('1009','SVR'),('1010','Bioderma'),('1011','Loreal'),('1012','Centaphil'),('1013','ESTEE LAUDER');
UNLOCK TABLES;

LOCK TABLES `danh_muc` WRITE;
INSERT INTO `danh_muc`(`id`, `ten_danh_muc`) VALUES ('10001','Tẩy trang'),('10002','Sữa rửa mặt'),('10003','Toner'),('10004','Serum'),('10005','Kem dưỡng'),('10006','Mặt nạ'),('10007','Kem chống nắng');
UNLOCK TABLES;

LOCK TABLES `san_pham` WRITE;
INSERT INTO `san_pham`(`id`, `don_gia`, `don_vi_ban`, `don_vi_kho`, `ten_san_pham`, `thong_tin_bao_hanh`, `thong_tin_chung`, `ma_danh_muc`, `ma_hang_sx`) VALUES ('1','144000','1000','1000','Nước tẩy trang Loreal','1 tháng','là  nước tẩy trang mang đến các bước tẩy trang, làm sạch, giữ ẩm và dưỡng mềm da đồng thời chỉ trong một sản phẩm. Sản phẩm giúp lấy đi sạch cặn trang điểm nhưng không làm khô da. Hơn thế, thành phần an toàn và công nghệ tiên tiến giúp da giữ nước, thông thoáng, mềm mượt chỉ trong một bước thuộc thương hiệu  LOreal đến từ Pháp','10001','1011')
,('2','118000','12345','2000','Nước Tẩy Trang mắt môi Maybelline','1 months',' là  nước tẩy trang mang chuyên nghiệp dùng cho vùng da quanh mắt và môi, chứa tinh chát hoa hồng có tác dụng dưỡng da, làm mềm da và tránh tình trạng khô rát sau khi tẩy trang thuộc thương hiệu Maybeline đến từ Mỹ','10001','1002')
,('3','56000','2000','1000','Nước Tẩy Trang Simple','1 months','là  nước tẩy trang chứa các thành phần như Vitamin B3, Vitamin, nước tinh khiết giúp làm sạch sâu, làm sạch  lớp makeup nặng nề, không gây bít tắc lỗ chân lông đồng thời bổ sung, tăng cường độ ẩm tức thì cho làn da Simple đến từ Anh ','10001','1003') 
,('4','247000','2001','1400','Nước Tẩy Trang The Cocoon Rose Micellar Water 500ml','1 months',' là  nước tẩy trang với nước cất hoa hồng hữu cơ tinh khiết kết hợp cùng công nghệ Micellar giúp làm sạch sâu lớp trang điểm, bụi bẩn, cấp ẩm và làm dịu da, mang lại làn da sạch và ẩm mịn thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Vieẹt Nam ','10001','1004')    
,('5','371000','2000','2471','Nước Tẩy Trang cho da nhạy cảm Bioderma 500ml','1 months',' là  nước tẩy trang dạng micellar đến từ thương hiệu Bioderma giúp nhẹ nhàng làm sạch bụi bẩn và các lớp trang điểm trên da (kể cả vùng mắt và môi) hông cần rửa lại bằng nước với công nghệ Micellar và các chiết xuất từ thiên nhiên giúp giảm thiểu khả năng kích ứng và làm dịu da hiệu quả ','10001','1010')    
,('6','330000','5000','500','Nước Tẩy Trang cho da nhạy cảm Laroche-Posay 400ml','1 months',' La Roche-Posay Micellar Water Ultra Sensitive Skin với công nghệ cải tiến Glyco Micellar mang lại hiệu quả làm sạch sâu vượt trội, giúp lấy đi bụi bẩn, bã nhờn và lớp trang điểm nhưng vẫn an toàn cho làn da nhạy cảm & dễ kích ứng. Sản phẩm giàu nước khoáng La Roche-Posay với tính năng làm dịu da, giảm kích ứng và chống oxi hóa.','10001','1005')    
,('7','59000','3000','1000','Nước Sữa Tẩy Trang Hai Lớp Senka All Clear Milky Water 230ml','1 months','Nước Sữa Tẩy Trang Hai Lớp Senka All Clear Milky Water chứa chiết xuất đậu nành và tơ tằm trắng cùng hàm lượng gấp đôi Hyaluronic Acid không chỉ giúp loại bỏ bụi bẩn, bã nhờn, lớp trang điểm một cách dễ dàng mà còn cấp ẩm, thông thoáng lỗ chân lông, nuôi dưỡng làn da mềm mịn, sáng khỏe.','10001','1006')   
,('8','348000','4020','2000','Dầu tẩy trang rau má Skin1004 200ml','1 months','Dầu Tẩy Trang Làm Sạch Sâu, Dịu Nhẹ Chiết Xuất Rau Má Skin1004 Madagascar Centella Light Cleansing Oil là dầu tẩy trang giúp làm sạch sâu làn da và làm sạch lớp trang điểm cứng đầu với chiết xuất rau má Madagascar tinh khiết kết hợp cùng 6 loại dầu quý được chắt lọc kỹ lưỡng, mang lại làn da sạch tận sâu lỗ chân lông và mềm mịn ngay tức thì thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10001','1004')    
,(' 9 ',' 59000 ',' 1500 ',' 1000 ',' SRM dịu nhẹ cho da nhạy cảm Simple 150ml ',' 1 week ','   là sửa rửa mặt thuộc thương hiệu Simple với kết cấu gel 100% không chứa xà phòng nhẹ nhàng làm sạch da, lấy đi bụi bẩn cùng bã nhờn dư thừa mà không gây kích ứng cho da ','10002',' 1003 ')
,(' 10 ',' 139000 ',' 1500 ',' 1000 ','SRM Dạng Gel Cosrx Low pH Good Morning Gel Cleanser 150ml ',' 1 week ',' là dòng SRM dịu nhẹ, thuộc thương hiệu Cosrx. Có độ pH gần như là làn da tự nhiên có khả năng làm sạch mà không gây khô căng da, dễ dàng làm sạch bụi bẩn, bã nhờn và lớp trang điểm, mang đến làn da sạch mịn, thông thoáng lỗ chân lông ','10002',' 1007 ')
,(' 11 ',' 285000 ',' 1500 ',' 1000 ','SRM Lành Tính, Dịu Nhẹ Không Xà Phòng Cetaphil 500ml ',' 1 week ','là SRMvới công thức lành tính giúp loại bỏ bụi bẩn một cách nhẹ nhàng. Bên cạnh đó, Cetaphil Skin Cleanser còn không gây bít tắc lỗ chân lông, có khả năng duy trì độ ẩm tự nhiên và phù hợp với mọi loại da, kể cả làn da mỏng manh của bé sơ sinh thuộc thương Cetaphil được bác sĩ da liễu khuyên dùng đến từ Canada ','10002',' 1012 ')
,(' 12 ',' 398000 ',' 1500 ',' 1000 ','SRM Dạng Gel Cho Da Dầu Mụn La Roche-Posay 400ml',' 1 week ','là SRM giúp nhẹ nhàng làm sạch bụi bẩn và bã nhờn dư thừa - nguyên nhân chính gây nên mụn. Không làm khô da nhờ các thành phần làm sạch nhẹ nhàng được lựa chọn kỹ càng. Mang lại cảm giác tươi mát và dễ chịu cho làn da thuộc thương hiệu dược mỹ phẩmLa Roche - Posay đến từ Pháp. ','10002',' 1005 ')
,(' 13 ',' 204000 ',' 1500 ',' 1000 ','SRM Làm Sạch Sâu, Dịu Nhẹ Chiết Xuất Rau Má 125ml',' 1 week ','là SRM với công thức chứa hàm lượng cao chiết xuất rau má - biểu tượng của sự tinh khiết của Madagascar và sử dụng chất hoạt động bề mặt có nguồn gốc từ thực vật và độ pH5 an toàn cho làn da  thuộc thương hiệu Skin1004 đến từ Hàn Quốc ','10002',' 1001 ')
,(' 14 ',' 182000 ',' 1500 ',' 1000 ','SRM Some By Mi AHA-BHA-PHA 30 Days Miracle Acne Clear Foam',' 1 week ',' SRM thuộc dòng AHA - BHA - PHA của thương hiệu Some By Mi với hoạt chất độc quyền TruecicaTM chứa nhiều thành phần thiên nhiên dịu nhẹ giúp làn da sạch sâu, lỗ chân lông được thông thoáng, hỗ trợ cải thiện làn da mụn chỉ trong 30 ngày, mang đến làn da khỏe mạnh, mềm mại, tươi sáng tự nhiên ','10002',' 1008 ')
,(' 15 ',' 230000 ',' 1500 ',' 1000 ','SRM Sủi Bọt Loại Bỏ Mụn Đầu Đen Some By Mi 120g ',' 1 week ',' SRM sủi bọt thương hiệu Some By Mi  làm sạch sâu giúp loại bỏ bã nhờn và mụn đầu đen. Làm sạch dịu nhẹ không gây căng kít nhờ BHA tự nhiên và chiết xuất thảo mộc thiên nhiên ','10002',' 1008 ')
,(' 16 ',' 322000 ',' 1500 ',' 1000 ','SRM Gel Không Chứa Xà Phòng Cho Da Dầu SVR 200ml ',' 1 week ',' SRM thuộc thương hiệu SVR với công thức dịu nhẹ không chứa thành phần xà phòng đặc biệt phù hợp với làn da dầu mụn và nhạy cảm, có tác dụng làm sạch, loại bỏ tế bào da chết và dầu nhờn trong lỗ chân lông giúp ngăn ngừa tối đa mụn ẩn và mụn đầu đen hiệu quả ','10002',' 1009 ')
,(' 17 ',' 140000 ',' 1500 ',' 1000 ','Gel Rửa Mặt Chiết Xuất Bí Đao The Cocoon 140ml ',' 1 week ',' gel rửa mặt với các thành phần gồm bí đao, rau má, tràm trà, bổ sung thêm vitamin B3, B5 và Betaine và có độ pH 5.5 giúp làm sạch sâu bụi bẩn và dầu thừa, ngăn ngừa hình thành mụn ẩn mà vẫn giữ được độ ẩm mịn tự nhiên và không gây khô căng da sau khi sử dụng thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Việt Nam ','10002',' 1004 ')
,(' 18 ',' 274000 ',' 1500 ',' 1000 ','SRM Dạng Gel Cho Da Dầu Mụn La Roche-Posay 200ml ',' 1 week ','là SRM giúp nhẹ nhàng làm sạch bụi bẩn và bã nhờn dư thừa - nguyên nhân chính gây nên mụn. Không làm khô da nhờ các thành phần làm sạch nhẹ nhàng được lựa chọn kỹ càng. Mang lại cảm giác tươi mát và dễ chịu cho làn da thuộc thương hiệu dược mỹ phẩmLa Roche - Posay đến từ Pháp. ','10002',' 1005 ')
,(' 19 ',' 115000 ',' 1500 ',' 1000 ','SRM Lành Tính, Dịu Nhẹ Cetaphil 125ml ',' 1 week ','là SRMvới công thức lành tính giúp loại bỏ bụi bẩn một cách nhẹ nhàng. Bên cạnh đó, Cetaphil Skin Cleanser còn không gây bít tắc lỗ chân lông, có khả năng duy trì độ ẩm tự nhiên và phù hợp với mọi loại da, kể cả làn da mỏng manh của bé sơ sinh thuộc thương Cetaphil được bác sĩ da liễu khuyên dùng đến từ Canada ','10002',' 1012 ')
,(' 20 ',' 62000 ',' 1500 ',' 1000 ',' SRM Lành Tính, Dịu Nhẹ Cetaphil 59ml ',' 1 week ','là SRMvới công thức lành tính giúp loại bỏ bụi bẩn một cách nhẹ nhàng. Bên cạnh đó, Cetaphil Skin Cleanser còn không gây bít tắc lỗ chân lông, có khả năng duy trì độ ẩm tự nhiên và phù hợp với mọi loại da, kể cả làn da mỏng manh của bé sơ sinh thuộc thương Cetaphil được bác sĩ da liễu khuyên dùng đến từ Canada ','10002',' 1012 ')
,(' 21 ',' 378000 ',' 1500 ',' 1000 ','SRM Và Tẩy Trang Cho Da Quá Nhạy Cảm La Roche-Posay 200ml ',' 1 week ',' SRM Và Tẩy Trang Cho Da Quá Nhạy Cảm La Roche-Posay Toleriane Dermo Cleanser - Cleansing & Make-Up Removal Fluidlà SRM và tẩy trang với công thức tối giản an toàn cho làn da nhạy cảm và dễ kích ứng. Trong đó thành phần chính, là Glycerin giàu độ dưỡng ẩm duy trì làn da mềm mại, đồng thời làm sạch các tạp chất và bã nhờn dư thừa trên da một cách nhẹ nhàng. Sản phẩm có kết cấu dạng sữa lỏng, nâng niu da trong quá trình làm sạch  thuộc thương hiệu dược mỹ phẩm La Roche-Posay đến từ Pháp. ','10002',' 1005 ')
,(' 22 ',' 365000 ',' 1500 ',' 1000 ','Gel Rửa Mặt Ngăn Ngừa Mụn Cho Da Dầu Bioderma 200ml',' 1 week ',' Gel Rửa Mặt Ngăn Ngừa Mụn Cho Da Dầu Bioderma Sebium Gel Moussant là dòng sản phẩm làm sạch dạng gel đến từ thương hiệu dược mỹ phẩm Bioderma giúp nhẹ nhàng làm sạch, thanh lọc da, giảm mụn và hạn chế tăng tiết bã nhờn nhờ thành phần kẽm Gluconate và đồng Sulphate. Với cơ chế làm sạch da không chứa xà phòng, duy trì độ pH sinh lý cho làn da.','10002',' 1010 ')
,(' 23 ',' 188000 ',' 1500 ',' 1000 ','SRM Cosrx Salicylic Acid Daily Gentle Cleanser 150ml',' 1 week ','SRM Cosrx Salicylic Acid Daily Gentle Cleanser là dòng SRM với chiết xuất từ thiên nhiên đến từ thương hiệu mỹ phẩm Cosrx, có khả năng hỗ trợ trị mụn, làm sạch cặn bẩn, dầu thừa, mụn đầu đen và mụn đầu trắng..','10002',' 1007 ')
,(' 24 ',' 69000 ',' 1500 ',' 1000 ','Gel Rửa Mặt Dịu Nhẹ Senka Perfect Gel Gentle Wash 100g',' 1 week ','Gel Rửa Mặt Dịu Nhẹ Senka Perfect Gel Gentle Wash là gel rửa mặt thuộc thương hiệu Senka dịu nhẹ làm sạch bã nhờn, bụi bẩn sâu bên trong lỗ chân lông, cho da sạch thoáng, sáng mịn rạng rỡ. Phù hợp với da khô, da nhạy cảm và rửa mặt buổi sáng','10002',' 1006 ')
,(' 25 ',' 104000 ',' 1500 ',' 1000 ','SRM Loreal Glycolic-Bright Glowing Daily Cleanser Foam',' 1 week ','SRM Sáng Da Loreal Glycolic-Bright Glowing Daily Cleanser Foamlà SRM thuộc thương hiệu LOreal đến từ Pháp. Với sự nâng cấp thành phần Glycolic Acid (AHA)++ giúp loại bỏ tế bào chết, dưỡng trắng mờ thâm nám mang lại cho bạn một làn da khỏe mạnh và tràn đầy sức sống.','10002',' 1011 ')
,(' 26 ',' 77000 ',' 1500 ',' 1000 ','SRM Làm Sạch Sâu, Sáng Hồng Senka 100g',' 1 week ','SRM Làm Sạch Sâu, Sáng Hồng Senka Perfect Whip Berry Brightlà SRM thuộc thương hiệu Senka với thành phần chứa các Micro Bubbles hạt bọt siêu nhỏ giúp làm sạch sâu mọi bụi bẩn kể cả bụi mịn PM 2.5 hỗ trợ loại bỏ dầu thừa, bã nhờn, làm sạch mụn đầu đen, loại bỏ da chết ,ột cách nhẹ nhàng, mang đến làn da tươi sáng và mịn màng','10002',' 1006 ')
,(' 27 ',' 62000 ',' 1500 ',' 1000 ','SRM Tạo Bọt Làm Sạch Sâu Chiết Xuất Tơ Tằm Trắng Senka 120g',' 1 week ','SRM Tạo Bọt Làm Sạch Sâu Chiết Xuất Tơ Tằm Trắng Senka Perfect Whip Ulà SRM thuộc thương hiệu Senka có khả năng làm sạch sâu loại bỏ bụi bẩn, bã nhờn một cách hiệu quả nhờ lớp bọt dày, mịn. Cùng công nghệ độc quyền Aqua in Pool độc quyền từ Shiseido giúp làm sạch sâu mọi bụi bẩn và bã nhờn mà vẫn giữ lại độ ẩm tự nhiên cho da','10002',' 1006 ')
,(' 28 ',' 88000 ',' 1500 ',' 1000 ','SRM Tạo Bọt Ẩm Mịn, Săn Chắc Da Senka 120g',' 1 week ','SRM Tạo Bọt Ẩm Mịn, Săn Chắc Da Senka Perfect Whip Collagen Inlà SRM thuộc thương hiệu Senka chứa thành phần Collagen cùng lớp bọt dày, mịn không những loại bỏ bụi bẩn, dầu thừa hiệu quả mà còn giúp da săn chắc, đàn hồi, đầy sức sống hơn. Cùng công nghệ độc quyền Aqua in Pool độc quyền từ Shiseido giúp làm sạch sâu mọi bụi bẩn và bã nhờn mà vẫn giữ lại độ ẩm tự nhiên cho da','10002',' 1006 ')
,(' 29 ',' 82000 ',' 1500 ',' 1000 ','SRM Đất Sét Trắng Giúp Làm Sạch Sâu, Dưỡng Da Sáng Senka 120g',' 1 week ','SRM Đất Sét Trắng Giúp Làm Sạch Sâu, Dưỡng Da Sáng Mịn Senka Perfect White Claylà SRM thuộc thương hiệu Senka với thành phần chính là đất sét trắng nhẹ nhàng làm sạch, loại bỏ tế bào chết nhẹ nhàng và dưỡng da sáng mịn, đều màu hơn. Cùng công nghệ độc quyền Aqua in Pool độc quyền từ Shiseido giúp làm sạch sâu mọi bụi bẩn và bã nhờn mà vẫn giữ lại độ ẩm tự nhiên cho da.','10002',' 1006 ')
,(' 30 ',' 216000 ',' 1500 ',' 1000 ','[100ml] SRM Dạng Gel Cho Da Nhạy Cảm Bioderma',' 1 week ','SRM Dạng Gel Cho Da Nhạy Cảm Bioderma Sensibio Gel Moussant là dòng sản phẩm làm sạch da dạng gel đến từ thương hiệu Bioderma, nhẹ nhàng làm sạch bụi bẩn dầu nhờn trên da mà vẫn giữ lại độ ẩm cho da mềm mại. Công thức dịu nhẹ an toàn cho cả làn da nhạy cảm','10002',' 1010 ')
,(' 31 ',' 109000 ',' 1500 ',' 1000 ','[55ml] SRM Dạng Gel Không Chứa Xà Phòng Dành Cho Da Khô SVR',' 1 week ','SRM Dạng Gel Không Chứa Xà Phòng Dành Cho Da Khô SVR Topialyse Gel Lavant là dòng SRM dịu nhẹ ngăn ngừa khô da, bảo vệ làn da khô và nhạy cảm, sản phẩm thích hợp dành cho cả gia đình. Đồng thời công thức đặc biệt dành cho làn da khô giúp bảo vệ lớp màng hydrolipid của da và giúp giảm khô căng và khó chịu, mang lại làn da mềm mại và thoải mái thuộc thương hiệu dược mỹ phẩm SVR đến từ Pháp ','10002',' 1009 ')
,(' 32 ',' 252000 ',' 1500 ',' 1000 ','SRM Sáng Da Skin1004 Tone Brightening Cleansing Gel Foam',' 1 week ','SRM Sáng Da Skin1004 Tone Brightening Cleansing Gel Foam là dòng SRM dưỡng trắng thuộc thương hiệu Skin1004 đến từ Hàn Quốc. Với công thức chứa thành phần được cấp bằng sáng chế Madewhite™ chiết xuất từ rau má và công thức tạo bọt có khả năng làm sạch nhẹ nhàng, làm dịu da và hỗ trợ dưỡng trắng da hiệu quả','10002',' 1001 ')
,(' 33 ',' 66000 ',' 1500 ',' 1000 ','SRM Tạo Bọt Dành Cho Da Mụn Senka 100g',' 1 week ','SRM Tạo Bọt Dành Cho Da Mụn Senka Perfect Whip Acne Carelà SRM thuộc thương hiệu Senka với kết cấu bọt tơ tằm trắng mịn kết hợp với thành phần Salicylic Acid giúp làm sạch bụi bẩn, bã nhờn, tế bào chết nằm sâu trong lỗ chân lông, kiểm soát dầu, bảo vệ da trước những tác nhân gây mụn. Đồng thời, chiết xuất hoa cúc vùng Kyoto, Nhật Bản giúp da kháng khuẩn, chống oxi hóa, thanh lọc, cung cấp độ ẩm cho làn da sạch thoáng, ẩm mịn & sáng rạng rỡ.','10002',' 1006 ')
,(' 34 ',' 272000 ',' 1500 ',' 1000 ','SRM Dạng Gel Không Chứa Xà Phòng Dành Cho Da Khô SVR',' 1 week ','SRM Dạng Gel Không Chứa Xà Phòng Dành Cho Da Khô SVR Topialyse Gel Lavant là dòng SRM dịu nhẹ ngăn ngừa khô da, bảo vệ làn da khô và nhạy cảm, sản phẩm thích hợp dành cho cả gia đình. Đồng thời công thức đặc biệt dành cho làn da khô giúp bảo vệ lớp màng hydrolipid của da và giúp giảm khô căng và khó chịu, mang lại làn da mềm mại và thoải mái thuộc thương hiệu dược mỹ phẩm SVR đến từ Pháp','10002',' 1009 ')
,(' 35 ',' 459000 ',' 1500 ',' 1000 ','[200ml]SRM Dạng Gel Dành Cho Da Nhạy Cảm SVR',' 1 week ','SRM Dạng Gel Dành Cho Da Nhạy Cảm SVR Physiopure Gelée Moussantelà SRM với kết cấu dạng gel thanh khiết và tươi mát cùng công thức dành riêng cho làn da nhạy cảm giúp làm sạch  bụi bẩn và tạp chất trên bề mặt da mà vẫn khiến da thoải mái và mềm mại, cung cấp năng lượng và tái tạo oxy cho tế bào đồng thời giải độc da hiệu quả thuộc thương hiệu dược mỹ phẩm SVR đến từ Pháp ','10002',' 1009 ')
,(' 36 ',' 53000 ',' 1500 ',' 1000 ','Toner Cân Bằng, Làm Dịu Da Simple 200ml',' 1 week ','Toner Cân Bằng, Làm Dịu Da Simple Kind To Skin Soothing Facial Toner là nước cân bằng thuộc thương hiệu Simple gồm công thức đặc biệt chứa những dưỡng chất giúp da cân bằng và tươi mát. Trong sản phẩm có những thành phần như Pro-Vitamin B5, Hoa Cúc, Cây Phỉ và Niệu Nang Tố giúp cân bằng, làm dịu da, là tiền đề để các bước dưỡng tiếp theo thẩm thấu tốt hơn và mang lại hiệu quả tối ưu','10003',' 1003 ')
,(' 37 ',' 243000 ',' 1500 ',' 1000 ','Toner Some By Mi AHA-BHA-PHA 30 Days Miracle Toner 135',' 1 week ','Toner Cân Bằng Da, Giúp Da Săn Chắc Chiết Xuất Ốc Sên Some By Mi Snail Truecica Miracle Repair Toner là Toner thuộc dòng Snail Truecica của thương hiệu Some By Mi giúp dưỡng ẩm và phục hồi da chứa 90% dịch nhầy ốc sên và các thành phần dưỡng trắng như Niacinamide, Arbutin, Glutathione không chỉ dưỡng ẩm mà còn cải thiện tình trạng thâm mụn một cách hiệu quả','10003',' 1008 ')
,(' 38',' 294000 ',' 1500 ',' 1000 ','Toner Dưỡng Ẩm, Làm Sáng Da Skin1004 210ml',' 1 week ','Toner Dưỡng Ẩm, Làm Sáng Da Skin1004 Madagascar Centella Hyalu-Cica Brightening Toner là Toner chứa các thành phần chính AHA-LHA, chiết xuất rau má Madagascar, Ceramide biom giúp đồng thời làm sạch tế bào chết, dầu thừa 1 cách nhẹ nhàng, cung cấp độ ẩm làm dịu da, tăng cường hàng rào bảo vệ da khỏe mạnh hơn   thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10003',' 1001')
,(' 39',' 288000 ',' 1500 ',' 1000 ','Toner Chiết Xuất Rau Má Skin1004 210ml',' 1 week ','Toner Giúp Cân Bằng, Dưỡng Trắng Da Chiết Xuất Rau Má Skin1004 Madagascar Centella Toning Toner  là Toner Chiết xuất rau má (84%) kết hợp cùng thành phần PHA dịu nhẹ, không gây kích ứng, không chứa cồn và hương liệu giúp làm sạch được chất nhờn, bụi bẩn còn sót lại tận sâu trong lỗ chân lông, vừa cung cấp độ ẩm cho da, cân bằng PH cho da hiệu quả, vừa có công dụng làm se khít lỗ chân lông  thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10003',' 1001')
,(' 40',' 282000 ',' 1500 ',' 1000 ','[200ml] Toner Cho Da Dầu La Roche-Posay',' 1 week ','Nước Cân Bằng Cho Da Dầu La Roche-Posay Effaclar Lotion Astringente là nước cân bằng  có tác dụng se khí lỗ chân lông hiệu quả, giúp điều tiết lượng bã nhờn và làm sạch lượng bã nhờn sâu trong lỗ chân lông với công thức micro-exfoliating lipo-hydroxy acid và 15 thành phần khoáng chất dinh dưỡng có trong nước khoáng La Roche Posay giúp chăm sóc làn da ẩm mịn  thuộc thương hiệu dược mỹ phẩm La Roche-Posay đến từ Pháp.','10003',' 1005')
,(' 41',' 140000 ',' 1500 ',' 1000 ','Toner Chiết Xuất Bí Đao The Cocoon 140ml',' 1 week ','Toner Cân Bằng Da Chiết Xuất Bí Đao The Cocoon Winter Melon Toner là Toner với các thành phần như bí đao, rau má và tràm trà và công thức không chứa cồn có tác dụng cân bằng pH. giảm dầu, làm sạch lỗ chân lông và cải thiện tình trạng mụn, được bổ sung thêm vitamin B3 và HA giúp cấp ẩm cho làn da luôn mịn màng thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Việt Nam.','10003',' 1004')
,(' 42',' 140000 ',' 1500 ',' 1000 ','Toner Chiết Xuất Hoa Hồng The Cocoon 140ml',' 1 week ','Toner Cấp Ẩm Làm Mềm Da Từ Toner Hữu Cơ The Cocoon Rose Water Toner là Toner được chưng cất từ cánh hoa hồng tươi, bổ sung HA giúp làm dịu, cấp ẩm và làm mềm da, giảm sự xuất hiện của lỗ chân lông to, mang lại làn da tươi mới chuẩn bị cho những bước chăm sóc da tiếp theo  thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Việt Nam.','10003',' 1004')
,(' 43',' 258000 ',' 1500 ',' 1000 ','Toner Some By Mi Galactomyces Pure Vitamin C Glow Toner 200ml',' 1 week ','Toner Dưỡng Trắng, Chống Lão Hóa Nuôi Dưỡng Làn Da Sáng Mịn Từ Bên Trong Some By Mi Galactomyces Pure Vitamin C Glow Toner là Toner dưỡng trắng không chứa cồn chiết xuất từ 88% men Galactomyces kết hợp cùng vitamin C và Niacinamide mang lại hiệu quả cân bằng và dưỡng trắng tối ưu giúp da bóng khỏe tràn đầy sức sống thuộc thương hiệu Some By Mi  đến từ Hàn Quốc','10003',' 1008')
,(' 44',' 1500000 ',' 1500 ',' 1000 ','Toner Dưỡng Da Hoa Anh Đào Estee Lauder 200ml',' 1 week ','Serum Dưỡng Da Hoa Anh Đào Estee Lauder Micro Essence Sakura 200ml là sản phẩm kết hợp toner và Serum dưỡng da vô cùng đặc biệt của thương hiệu mỹ phẩm cao cấp Estee Lauder dành riêng cho làn da châu Á, giúp hỗ trợ phục hồi và tái tạo từ sâu bên trong cho đến bề mặt da, nuôi dưỡng làn da khỏe mạnh từ nền tảng, đồng thời ung cấp nước giúp giảm thiểu các khiếm khuyết thường gặp phải trên da như đường nhăn, nếp nhăn, da không đều màu. Nhờ được nuôi dưỡng từ bên trong, làn da sẽ dần tỏa sáng với vẻ ửng hồng, căng mịn tự nhiên. Phiên bản chứa Serum anh đào giúp dịu da hơn và vỏ sản phẩm có hình cánh hoa anh đào nữ tính, nhẹ nhàng hơn.','10003',' 1013')
,(' 45',' 1725000 ',' 1500 ',' 1000 ','Serum tăng cường tái tạo da toàn diện Tegoder GF FC 30 ml ',' 1 week ','GF FC Revitalising Concentrate giúp phục hồi và tái tạo da hiệu quả. Sản phẩm sẽ cải thiện các chức năng da, tăng sự tổng hợp các dưỡng chất thiếu yếu. Điều này sẽ giúp da khỏe mạnh hơn, săn chắc hơn, nhanh lành các tổn thương. GF FC Revitalising Concentrate được chỉ định sử dụng sau các liệu trình lăn kim, phi kim,… để giúp da phục hồi nhanh chóng hơn.','10004',' 1013')
,(' 46',' 285000 ',' 1500 ',' 1000 ','[Size 55ml] Serum Rau Má Trị Mụn, Phục Hồi Da Skin1004',' 1 week ','Serum Rau Má Hỗ Trợ Trị Mụn, Phục Hồi Da Skin1004 Madagascar Centella Asiatica 100 Ampoule là Serum  với kết cấu cô đặc nhẹ nhàng nhưng mạnh mẽ này được làm từ chiết xuất rau má chứa 30% Asiaticoside, 30% Asiatic Acid và 40% Madecassic  Acid cho làn da tươi sáng,  nuôi dưỡng và phục hồi da thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10004',' 1001')
,(' 47',' 370000 ',' 1500 ',' 1000 ','Serum Rau Má Giảm Mụn, Phục Hồi Cho Da Skin1004',' 1 week ','Serum Rau Má Hỗ Trợ Trị Mụn, Phục Hồi Da Skin1004 Madagascar Centella Asiatica 100 Ampoule là Serum  với kết cấu cô đặc nhẹ nhàng nhưng mạnh mẽ này được làm từ chiết xuất rau má chứa 30% Asiaticoside, 30% Asiatic Acid và 40% Madecassic  Acid cho làn da tươi sáng,  nuôi dưỡng và phục hồi da thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10004',' 1001')
,(' 48',' 261000 ',' 1500 ',' 1000 ','Serum Ốc Sên Phục Hồi Da, Mờ Thâm Sẹo Some By Mi 50ml',' 1 week ','Serum Ốc Sên Phục Hồi Da, Mờ Thâm Sẹo Hàn Quốc Some By Mi Snail Truecica Miracle Repair Serum 50ml là Serum  thuộc dòng Snail Truecica của thương hiệu Some By Mi giúp phục hồi và làm lành sẹo chứa 88% dịch nhầy ốc sên đen và công nghệ độc quyền TrueCica giúp làm lành các tổn thương trên bề mặt da,cải thiện tình trạng sẹo lõm đồng thời ngăn ngừa tình trạng da ửng đỏ do kích ứng,mụn viêm và ô nhiễm môi trường','10004',' 1008')
,(' 49',' 2950000 ',' 1500 ',' 1000 ','Tinh Chất Chống Lão Hóa & Phục Hồi Da Ban Đêm Estee Lauder',' 1 week ','Tinh chất Estee Lauder Advanced Night Repair là loại tinh chất đầu tiên sử dụng Hyaluronic Acid để dưỡng ẩm da và dùng nhịp điệu sinh học để tái tạo da. Với công nghệ phục hồi độc quyền Chronolux CB  Estee Lauder đã mang đến sản phẩm tái tạo da ngay cả trong lúc chúng ta đang ngủ, thanh lọc tế bào và tái tạo mạnh nhất đúng thời điểm, những giọt tinh chất thần kỳ này vẫn làm việc để chúng ta có một làn da tươi sáng mịn màng hơn vào sáng hôm sau.','10004',' 1013')
,(' 50',' 341000 ',' 1500 ',' 1000 ','Serum Dưỡng Ẩm, Làm Sáng Da Skin1004',' 1 week ','Tinh Chất Dưỡng Ẩm, Làm Sáng Da Skin1004 Madagasca Centella Hyalu-Cica là tinh chất  sở hữu công thức "Hyalu-Cica" chứa chiết xuất rau má Madagascar và Hyaluronic Acid giúp làm dịu da nhảy cảm, tăng cường hàng rào bảo vệ da, cung cấp độ ẩm. Ngoài ra còn chứa Niacinamide và Adenoside bộ đôi làm sáng da và ngăn ngừa lão hóa hiệu quả  thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10004',' 1001')
,(' 51',' 265000 ',' 1500 ',' 1000 ','Some By Mi AHA-BHA-PHA 30 Days Miracle Serum 50ml',' 1 week ','Tinh chất đặc trị mụn Some By Mi AHA-BHA-PHA 30 Days Miracle Serum là tinh chất thuộc dòng AHA-BHA-PHA của thương hiệu Some By Mi  được chiết xuất từ rau má,tràm trà giúp kháng viêm kháng khuẩn giảm sưng đỏ đồng thời dưỡng ẩm giúp da mịn màng. Kết hợp các thành phần AHA,BHA,PHA giúp loại bỏ tế bào chết,hòa tan bã nhờn, hỗ trợ điều trị mụn ẩn dưới da','10004',' 1008')
,(' 52',' 397000 ',' 1500 ',' 1000 ','Serum Dưỡng Trắng Da Chuyên Sâu Skin1004',' 1 week ','Tinh Chất Dưỡng Trắng Da Chuyên Sâu Skin1004 Tone Brightening Capture Ampoule 100ml là dòng tinh chất dưỡng da thuộc thương hiệu Skin1004 đến từ Hàn Quốc. Với công thức thành phần được cấp bằng sáng chế Madewhite™ chiết xuất từ rau má cùng với phức hợp dưỡng trắng gấp 3 lần bao gồm Niacinamide, Axit tranexamic và 3-o-Ethyl Ascorbic Acid giúp da trắng sáng đều màu, đồng thời hỗ trợ làm dịu và giảm kích ứng trên làn da nhạy cảm','10004',' 1001')
,(' 53',' 299000 ',' 1500 ',' 1000 ','Serum Mờ Thâm Nám Sau 2 Tuần Loreal',' 1 week ','Tinh Chất Mờ Thâm Nám Sau 2 Tuần Loreal Glycolic-Bright Instant Glowing Serum là tinh chất dưỡng ẩm với giải pháp đột phá, trắng sáng tức thì, mờ thâm nám tận gốc, đem lại làn da tươi trẻ đều màu từ sau 14 ngày. Sản phẩm nhẹ dịu không kích ứng, phù hợp sử dụng hằng ngày thuộc thương hiệu LOreal đến từ Pháp','10004',' 1011')
,(' 54',' 238000 ',' 1500 ',' 1000 ','The Cocoon Winter Melon Serum 70ml',' 1 week ','Tinh Chất Hỗ Trợ Giảm Mụn, Làm Mờ Vết Thâm Xuất Bí Đao The Cocoon Winter Melon Serum là tinh chất thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Việt Nam. Với các thành phần chủ đạo chiết xuất từ thiên nhiên như bí đao, rau má, tràm trà,... Và các thành phần khác có đặc tính kháng khuẩn, làm dịu cao. Cocoon Winter Melon Serum là giải pháp hữu hiệu giúp cải thiện tình trạng mụn và làm mờ vết thâm','10004',' 1004')
,(' 55',' 329000 ',' 1500 ',' 1000 ','Serum Cấp Ẩm, Cải Thiện Nếp Nhăn LOreal',' 1 week ','Tinh Chất Cấp Ẩm, Cải Thiện Nếp Nhăn LOreal Revitalift 1.5% Hyaluronic Acid Serum là tinh chất dưỡng ẩm thuộc thương hiệu LOreal với hàm lượng 1.5% thành phần Hyaluronic Acid có tác dụng bổ sung độ ẩm ngay lập tức và giảm nếp nhăn rõ rệt trong 2 tuần cho làn da trông trẻ trung, căng mọng rõ rệt.','10004',' 1011')
,(' 56',' 265000 ',' 1500 ',' 1000 ','Serum Dưỡng Da Se Khít Lỗ Chân Lông Some By Mi',' 1 week ','Tinh Chất Dưỡng Da Se Khít Lỗ Chân Lông Some By Mi Super Matcha Pore Tightening Serum là tinh chất thuộc dòng Matcha của thương hiệu Some By Mi với thành phần chính từ lá trà xanh kết hợp cùng PHA, BHA cùng hỗn hợp thiên nhiên giúp cải thiện kết cấu da, cung cấp dưỡng ẩm giúp thu nhỏ lỗ chân lông cho làn da căng mọng. Vì có chiết xuất từ thiên nhiên nên rất thân thiện với mọi loại da, đặc biệt da có lỗ chân lông to, da có nhiều dầu nhờn, không đều màu.','10004',' 1008')
,(' 57',' 220000 ',' 1500 ',' 1000 ','The Cocoon Rose Serum 30ml',' 1 week ','Tinh Chất Cấp Ẩm Và Phục Hồi Da Chiết Xuất Hoa Hồng Cocoon Rose Serum là tinh chất sự kết hợp hoàn hảo của các thành phần dưỡng chất có lợi cho da như hoa hồng hữu cơ, vitamin B5, Betaine, Urea, Ectoin và HA đa tầng giúp cung cấp và duy trì độ ẩm sâu cho da luôn ẩm mượt, phục hồi tổn thương khi da bị mất nước, ngăn ngừa lão hóa, mang lại làn da mềm mại, căng tràn sức sống  thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Việt Nam.','10004',' 1004')
,(' 58',' 272000 ',' 1500 ',' 1000 ','Serum Dưỡng Trắng Da Chiết Xuất Quả Thanh Yên Some By Mi',' 1 week ','Tinh Chất Dưỡng Trắng Da Chiết Xuất Quả Thanh Yên Some By Mi Yuja Niacin 30 Days Blemish Care Serum là tinh chất thuộc dòng Yuja Niacin của thương hiệu Some By Mi đặc trị giúp giảm nám và tàn nhang kết hợp cung cấp độ ẩm sâu cho da. Chiết xuất từ 82% tinh chất trái Yuja tươi giàu vitamin C và 5% Niacinamide','10004',' 1008')
,(' 59',' 919000 ',' 1500 ',' 1000 ','Lão Hóa, Dưỡng Da Mềm Mịn SVR',' 1 week ','Tinh Chất Chống Lão Hóa, Dưỡng Da Mềm Mịn SVR A Ampoule Lift là dòng tinh chất dưỡng thuộc thương hiệu dược mỹ phẩm SVR đến từ Pháp. Với công thức chứa Retinol là một hoạt chất chống lão hóa hàng đầu giúp tái cấu trúc da và khắc phục các nếp nhăn sâu mang đến vẻ ngoài tươi trẻ và mịn màng','10004',' 1009')
,(' 60','84000 ',' 1500 ',' 1000 ','Kem Dưỡng Da Ẩm Mịn Simple 125ml',' 1 week ','Kem Dưỡng Da Ẩm Mịn Simple Hydrating Light Moisturiser là kem dưỡng thuộc thương hiệu Simple. Với có công thức đơn giản và lành tính cho da như thành phần Pro - Vitamin B5 và Bisabolol giúp làm dịu, bổ sung gấp đôi độ ẩm cho da ngay tức thì và giúp duy trì làn da ẩm mịn lên đến suốt 24h.','10005',' 1003')
,(' 61','274000 ',' 1500 ',' 1000 ','[40ml] Kem Dưỡng Làm Dịu Và Phục Hồi Da La Roche-Posay',' 1 week ','Kem Dưỡng Làm Dịu Và Phục Hồi Da La Roche-Posay Cicaplast Baume B5 Soothing Repairing Balm với các thành phần chính lành tính có khả năng chữa lành, tái tạo làn da hiệu quả như Madecassoside và Panthenol. Đặc biệt đối với làn da đang có những tổn thương do mụn gây nên và ngăn ngừa các vết thâm mụn','10005',' 1005')
,(' 62','328000 ',' 1500 ',' 1000 ','Kem Dưỡng Giảm Mụn, Ngừa Vết Thâm La Roche-Posay',' 1 week ','Kem Dưỡng Giúp Giảm Mụn, Ngăn Ngừa Vết Thâm La Roche-Posay Effaclar Duo+ Corrective Unclogging Care Antiimperfections Anti-Marks Anti-Reoccurence là kem dưỡng không màu có công thức vượt trội với sự kết hợp của các hoạt chất trong ngành da liễu như Niacinamide, LHA, Pirotone Olamine, Procerad™ giúp giảm mụn, ngăn ngừa vết thâm trong 12h, ngăn ngừa mụn tái phát và thông thoáng lỗ chân lông thuộc thương hiệu dược mỹ phẩm La Roche-Posay đến từ Pháp.','10005',' 1005')
,(' 63','273000 ',' 1500 ',' 1000 ','Kem Dưỡng Làm Dịu, Phục Hồi Da Chiết Xuất Rau Má Skin1004',' 1 week ','Kem Dưỡng Làm Dịu, Phục Hồi Da Chiết Xuất Rau Má Skin1004 Madagascar Centella Soothing Cream là kem dưỡng ẩm chứa 72% chiết xuất rau má cùng với 4 loại Ceramide có nguồn gốc từ thực vật giúp tăng cường hàng rào bảo vệ da, nuôi dưỡng làn da khỏe mạnh  thuộc thương hiệu Skin1004 đến từ Hàn Quốc.','10005',' 1001')
,(' 64','265000 ',' 1500 ',' 1000 ','Kem Dưỡng Some By Mi AHA-BHA-PHA 30 Days Miracle Cream',' 1 week ','Kem Dưỡng "Thần Kỳ" Some By Mi AHA-BHA-PHA 30 Days Miracle Cream là kem dưỡng thuộc dòng AHA-BHA-PHA của thương hiệu Some By Mi kết hợp cả 3 thành phần AHA/BHA/PHA giúp loại bỏ tế bào chết, bổ dung độ ẩm và chứa chiết xuất rau má, tràm trà...giúp làm dịu và chăm sóc da mụn','10005',' 1008')
,(' 65','233000 ',' 1500 ',' 1000 ','Kem Dưỡng Da Mờ Thâm Nám Ban Đêm LOreal',' 1 week ','Kem Dưỡng Da Mờ Thâm Nám Ban Đêm LOreal Glycolic Bright Glowing Cream Night là kem dưỡng ban đêm thuộc thương hiệu LOreal đến từ Pháp. Với sự nâng cấp thành phần Glycolic Acid (AHA) làm mờ các đốm nâu và sáng da sau 14 ngày sử dụng.','10005',' 1011')
,(' 66','351000 ',' 1500 ',' 1000 ','Kem Dưỡng Giảm Mụn, Ngăn Ngừa Mụn Tái Phát Bioderma ',' 1 week ','Kem Dưỡng Giảm Mụn, Ngăn Ngừa Mụn Tái Phát Bioderma Sebium Global là kem dưỡng hỗ trợ điều trị mụn bằng cách giảm thiểu các tác nhân gây mụn phù hợp cho da dầu và da hỗn hợp với công nghệ SeboRestore (Bản quyền Fluidactiv™ - Bakuchiol) sẽ điều chỉnh bã nhờn ở mức độ sinh học, ngăn chặn bít tắc lỗ chân lông và gây ra mụn, cùng với thành phần AHA Esters, Salicylic Acid và Citric acid giúp làm thông thoáng lỗ chân lông, kẽm gluconate kết hợp với enoxolone sẽ làm dịu và giảm ửng đỏ do bị sưng viêm  thuộc thương hiệu dược mỹ phẩm Bioderma đến từ Pháp.','10005',' 1010')
,(' 67','263000 ',' 1500 ',' 1000 ','Some By Mi Snail Truecica Miracle Repair Cream 60g',' 1 week ','Kem Dưỡng Ẩm, Phục Hồi, Giúp Da Săn Chắc, Đàn Hồi Chiết Xuất Ốc Sên Some By Mi Snail Truecica Miracle Repair Cream là kem dưỡng ẩm thuộc dòng Snail Truecica của thương hiệu Some By Mi  giúp phục hồi nuôi dưỡng làn da săn chắc nhờ dịch nhầy ốc sên đen và công nghệ độc quyền TrueCica giúp làm lành các tổn thương trên bề mặt da, cải thiện tình trạng sẹo lõm đồng thời ngăn ngừa tình trạng da ửng đỏ do kích ứng,mụn viêm và ô nhiễm môi trường.','10005',' 1008')
,(' 68','349000 ',' 1500 ',' 1000 ','Kem Dưỡng Giảm Mụn Đầu Đen, Bóng Nhờn La Roche-Posay',' 1 week ','Kem Dưỡng Giảm Mụn Đầu Đen, Bóng Nhờn La Roche-Posay Effaclar K+ Oily Skin Renovating Care Anti-Oxidant Anti-Sebum 8hr là kem dưỡng chứa các hoạt chất như Salicylic acid + LHA giúp làm sạch, lấy đi tế bào chết, ngăn chặn trình tạng bít tắc lỗ chân lông. Ngoài ra còn chứa hợp chất Vitamin E + Carnosine + Airlicium còn tăng cường hiệu quả chống oxy hóa, giảm thiểu và điều tiết bã nhờn thuộc thương hiệu dược mỹ phẩm La Roche-Posay đến từ Pháp.','10005',' 1005')
,(' 69','166000 ',' 1500 ',' 1000 ','Kem Dưỡng Ẩm Dạng Thạch Từ Hoa Hồng The Cocoon 30ml',' 1 week ','Kem Dưỡng Ẩm Dạng Thạch Từ Hoa Hồng The Cocoon Rose Aqua Gel Cream là kem dưỡng với kết cấu mọng nước mang nhiều dưỡng chất từ nước hoa hồng hữu cơ kết hợp với nam châm dưỡng ẩm Pentavitin, các axit amin và HA, thạch hoa hồng sẽ nuôi dưỡng và khóa ẩm suốt 24h, mang lại làn da đầy đặn, ẩm mịn hơn thuộc thương hiệu  mỹ phẩm thuần chay Cocoon đến từ Việt Nam.','10005',' 1004')
,(' 70','40000 ',' 1500 ',' 1000 ','Mặt Nạ Làm Dịu, Phục Hồi, Trị Mụn Chiết Xuất Rau Má Skin1004',' 1 week ','Mặt Nạ Làm Dịu, Phục Hồi, Hỗ Trợ Trị Mụn Chiết Xuất Rau Má Skin1004 Madagascar Centella Watergel Sheet Ampoule Mask  là mặt nạ chứa 51% chiết xuất rau má có khả năng làm dịu, phục hồi da kích ứng, nhạy cảm cùng tinh dầu bạc hà giúp làm giảm nhiệt độ của da, kểm soát bã nhờn hiệu quả. Áp dụng công nghệ độc quyền của Skin1004 khi kết cấu mặt nạ có nguồn gốc từ sợi tre  thuộc thương hiệu Skin1004 đến từ Hàn Quốc','10006',' 1001')
,(' 71','25000 ',' 1500 ',' 1000 ','Mặt Nạ Giấy Ngừa Mụn Some By Mi',' 1 week ','Mặt Nạ Giấy Ngừa Mụn Cao Cấp Hàn Quốc Some By Mi Mask Sheet là mặt nạ giấy Tea Tree Calming, Hyaluron Moisturizing, Diamond Brightening giúp giải quyết các vấn đề của da với lượng tinh chất dồi dào. Thiết kế mặt nạ với chất liệu đạt tiêu chuẩn Chứng nhận OEKO-TEX® Standard 100 mỏng nhẹ và ôm sát bề mặt da đem lại hiệu quả tối đa thuộc thương hiệu Some By Mi  đến từ Hàn Quốc','10006',' 1008')
,(' 72','25000 ',' 1500 ',' 1000 ','Mặt Nạ Giấy Phục Hồi Some By Mi',' 1 week ','Mặt Nạ Giấy Ngừa Mụn Cao Cấp Hàn Quốc Some By Mi Mask Sheet là mặt nạ giấy Hyaluron Moisturizing giúp giải quyết các vấn đề của da với lượng tinh chất dồi dào. Thiết kế mặt nạ với chất liệu đạt tiêu chuẩn Chứng nhận OEKO-TEX® Standard 100 mỏng nhẹ và ôm sát bề mặt da đem lại hiệu quả tối đa thuộc thương hiệu Some By Mi  đến từ Hàn Quốc','10006',' 1008')
,(' 73','25000 ',' 1500 ',' 1000 ','Mặt Nạ Giấy Dưỡng Sáng Da Some By Mi',' 1 week ','Mặt Nạ Giấy Ngừa Mụn Cao Cấp Hàn Quốc Some By Mi Mask Sheet là mặt nạ giấy Diamond Brightening giúp giải quyết các vấn đề của da với lượng tinh chất dồi dào. Thiết kế mặt nạ với chất liệu đạt tiêu chuẩn Chứng nhận OEKO-TEX® Standard 100 mỏng nhẹ và ôm sát bề mặt da đem lại hiệu quả tối đa thuộc thương hiệu Some By Mi  đến từ Hàn Quốc','10006',' 1008')
,(' 74','26000 ',' 17000 ',' 1000 ','Mặt Nạ Giấy Chăm Sóc Da Senka',' 1 week ','Mặt Nạ Giấy Chăm Sóc Da Senka Perfect Aqua Mask là mặt nạ dưỡng da thuộc thương hiệu Senka với công thức Uruoi rich và chiết xuất ngọc trai giúp dưỡng trắng da, làm mờ nếp nhăn, vết sạm, đồng thời cung cấp & phục hồi độ ẩm cho làn da sáng mịn, rạng rỡ, nuôi dưỡng làn da trong 24h giờ liền','10006',' 1006')
,(' 75','19000 ',' 15000 ',' 1000 ','Mặt Nạ Dưỡng Da Some By Mi 20g',' 1 week ','Mặt Nạ Dưỡng Da Some By Mi Real Care Mask là dòng mặt nạ giấy chăm sóc da thuộc thương hiệu mỹ phẩm Some By Mi Hàn Quốc, với các thành phần chiết xuất tự nhiên giàu dưỡng chất và các loại Vitamin giúp phục hồi sức sống và cải thiện kết cấu da, ngoài ra còn góp phần làm dịu, cấp ẩm cho làn da mềm mại và khỏe mạnh','10006',' 1008')
,(' 76','23000 ',' 15000 ',' 1000 ','Mặt Nạ Dưỡng Sáng Chiết Xuất Quả Thanh Yên Some By Mi 25g',' 1 week ','Mặt Nạ Dưỡng Sáng Da Chiết Xuất Quả Thanh Yên Some By Mi Yuja Niacin 30Days Blemish Care Serum Mask là mặt nạ dưỡng chứa các thành phần dưỡng trắng sáng da như chiết xuất từ quýt Yuja (quả thanh yên), Niacinamide 5%, Glutathione, Arbutin và thành phần dưỡng trắng Resmelin được cấp bằng sáng chế giúp dưỡng trắng hiệu quả. thuộc thương hiệu Some By Mi  đến từ Hàn Quốc','10006',' 1008')
,(' 77','113000 ',' 15000 ',' 1000 ','Kem Chống Nắng Dạng Tinh Chất Mỏng Nhẹ Senka 50g',' 1 week ','Kem Chống Nắng Dạng Tinh Chất Mỏng Nhẹ Senka Perfect UV Essence SPF 50+/PA +++ là kem chống nắng thuộc thương hiệu Senka có dạng tinh chất kết cấu mỏng nhẹ, không nhờn rít với phức hợp chiết xuất tơ tằm và thành phần Hyaluronic Acid giúp cấp nước, dưỡng ẩm cho da.','10007',' 1006')
,(' 78','187000 ',' 15000 ',' 1000 ','Kem Chống Nắng Bảo Vệ Da, Chống Lão Hóa LOreal 50ml',' 1 week ','Kem Chống Nắng Mịn Nhẹ, Bảo Vệ Da, Chống Lão Hóa LOreal UV Defender Serum Protector là kem chống nắng với 2 lớp màng bảo vệ ( Màng lọc Mexoryl SX và Mexorul XL) giúp bảo vệ da dưới tác động của tia UVA và UVB cả ngày dài. Kết hợp với thành phần Niacinamide có trong kem chống nắng như một lớp thứ 3 bảo vệ hàng rào da, nâng tông tức thì, giảm thâm, dưỡng trắng hiệu quả thuộc thương hiệu LOreal  đến từ Pháp','10007',' 1011')
,(' 79','405000 ',' 15000 ',' 1000 ','Kem Chống Nắng Giảm Dầu, Không Màu Bioderma',' 1 week ','Kem Chống Nắng Giảm Dầu, Không Màu Bioderma Photoderm Max Aquafluide SPF 50+ là kem chống mang lại hiệu quả bảo vệ cơ thể tránh khỏi tia UV rất cao lên đến SPF 50+ với Cellular Bioprotection™  kết hợp các chất chống tia UVA/UVB, bảo vệ da chống lại tác hại từ các tia UV có trong ánh nắng mặt trời, đồng thời bảo vệ sinh học ngay từ bên trong. Kết cấu mịn màng không gây nhờn dính, khó chịu cho da thuộc thương hiệu dược mỹ phẩm Bioderma đến từ Pháp.','10007',' 1010')
,(' 80','127000 ',' 15000 ',' 1000 ','Gel Sữa Chống Nắng Dưỡng Ẩm Senka',' 1 week ','Gel Sữa Chống Nắng Dưỡng Ẩm Senka Perfect UV Gel SPF 50+/PA++++ là kem chống nắng thuộc thương hiệu Senka chứa các thành phần chính như kén tơ tằm trắng Mayu Haku và gấp đôi hiệu quả dưỡng ẩm của Hyaluronic Acid có kết cấu dạng gel sữa mang lại cảm giác mát mẻ, khô ráo, giúp bảo vệ da, chống nắng với chỉ số chống tia UV vượt trội SPF 50+/PA++++','10007',' 1006')
,(' 81','361000 ',' 15000 ',' 1000 ','Kem Chống Nắng Kiểm Soát Dầu La Roche-Posay',' 1 week ','La Roche-Posay Anthelios Dry Touch Finish Mattifying Effect  là kem chống nắng dành cho da dầu giúp kiểm soát bóng nhờn và bảo vệ da trước tác hại từ ánh nắng & ô nhiễm, ngăn chặn các tác nhân gây lão hóa sớm. Sản phẩm có công thức chống thấm nước thích hợp dùng hằng ngày và cả những hoạt động ngoài trời thuộc thương hiệu dược mỹ phẩm La Roche-Posay đến từ Pháp.','10007',' 1005')
,(' 82','405000 ',' 15000 ',' 1000 ','Kem Chống Nắng Giảm Bóng Nhờn Nâng Tone Bioderma',' 1 week ','Kem Chống Nắng Giảm Bóng Nhờn, Tông Màu Tự Nhiên Bioderma Photoderm Max Aquafluide Teinte Claire SPF50+ làlà kem chống nắng mang lại hiệu quả bảo vệ cơ thể tránh khỏi tia UV rất cao lên đến SPF 50+ với Cellular Bioprotection™  kết hợp các chất chống tia UVA/UVB, bảo vệ da chống lại tác hại từ các tia UV có trong ánh nắng mặt trời, đồng thời bảo vệ sinh học ngay từ bên trong. Kết cấu mịn màng, có tông màu tự nhiên giúp che phủ khuyết điểm một cách nhẹ nhàng thuộc thương hiệu dược mỹ phẩm Bioderma đến từ Pháp.','10007',' 1010')
,(' 83','119000 ',' 15000 ',' 1000 ','Kem Chống Nắng Dưỡng Ẩm LOreal',' 1 week ','Kem Chống Nắng Dưỡng Ẩm LOreal UV Perfect Super Aqua Essence SPF50/PA++++ là kem chống nắng có các thành phần an toàn với làn da, sẽ giúp cho bạn bảo vệ làn da của mình trước tác động của ánh nắng mặt trời, giảm thiểu tình trạng đen xạm, ung thư da. Chứa Vitamin E và Detoxyl giúp dưỡng da sáng trong và mịn màng, mang đến cho làn da vẻ tươi trẻ rực rỡ thuộc thương hiệu LOreal  đến từ Pháp','10007',' 1011')
,(' 84','356000 ',' 15000 ',' 1000 ','Kem Chống Nắng Dạng Sữa Cho Da Nhạy Cảm La Roche-Posay',' 1 week ','LKem Chống Nắng Dạng Sữa Không Nhờn Rít Cho Da Nhạy Cảm La Roche-Posay Anthelios Invisible Fluid SPF50+  là dòng sản phẩm kem chống nắng có khả năng chống nắng phổ rộng, bảo vệ da toàn diện trước tác hại từ tia UVA/UVB thuộc thương hiệu La Roche-Posay. Chất kem dạng sữa với công nghệ Intelimer giúp kháng trôi tối đa với kết cấu lỏng nhẹ, thẩm thấu nhanh, không nhờn rít, không để lại vệt trắng da. Sản phẩm an toàn với mọi loại da, đặc biệt được chuyên gia khuyên dùng cho da nhạy cảm với ánh nắng do cơ địa hoặc tác nhân bên ngoài','10007',' 1005')
,(' 85','240000 ',' 15000 ',' 1000 ','Kem Chống Nắng Some By Mi',' 1 week ','Kem Chống Nắng Some By Mi Truecica Mineral 100 Calming Suncream là kem chống nắng của thương hiệu Some By Mi giúp bảo vệ da khỏi các tác động từ tia UV, đặc biệt được áp dụng công nghệ độc quyền True cica từ hãng giúp mang lại hiệu quả làm dịu da đối với da nhạy cảm.','10007',' 1008');
UNLOCK TABLES;