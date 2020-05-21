CREATE DATABASE  IF NOT EXISTS `team2_project` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `team2_project`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: team2_project
-- ------------------------------------------------------
-- Server version	5.6.45-log

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
-- Table structure for table `team2_animals`
--

DROP TABLE IF EXISTS `team2_animals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team2_animals` (
  `num` int(11) NOT NULL,
  `category` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category_index` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a_morph` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `a_sex` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a_status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `a_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `a_thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `a_amount` int(11) NOT NULL,
  `a_price_origin` int(11) DEFAULT NULL,
  `a_discount_rate` int(11) DEFAULT NULL,
  `a_price_sale` int(11) DEFAULT NULL,
  `a_mileage` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `a_view_count` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_animals`
--

LOCK TABLES `team2_animals` WRITE;
/*!40000 ALTER TABLE `team2_animals` DISABLE KEYS */;
INSERT INTO `team2_animals` VALUES (1,'파충류','도마뱀','리자드/모니터','그린 바실리스크','성별없음','베이비','a-10','그린 바실리스크1.jpg',50,65000,10,58500,900,'<p><br>\r\n							<span style=\"font-weight: bold\"> 학명 </span> : <span style=\"font-family: 함초롬바탕; text-align: center; background-color: rgb(255, 255, 255);\">Basiliscus plumifrons</span><br>\r\n							<span style=\"font-weight: bold\"> 서식지 </span> : <span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">중앙아메리카 남부</span><br>\r\n							<span style=\"font-weight: bold\"> 크기 </span> : <span lang=\"EN-US\" style=\"letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255); font-family: 함초롬바탕;\">70cm</span><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">정도</span><br>\r\n							<span style=\"font-weight: bold\"> 온도 </span> : <span lang=\"EN-US\" style=\"letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255); font-family: 함초롬바탕;\">31</span><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">도 이상으로 맞추어주고 습도는&nbsp;</span><span lang=\"EN-US\" style=\"letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255); font-family: 함초롬바탕;\">80%</span><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">이상이 되도록 합니다.</span><br>	\r\n							<span style=\"font-weight: bold\"> 특징 </span> : <span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">수컷은 머리</span><span lang=\"EN-US\" style=\"background-color: rgb(255, 255, 255); text-align: center; letter-spacing: 0pt; font-family: 함초롬바탕;\">,&nbsp;</span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">등</span><span lang=\"EN-US\" style=\"background-color: rgb(255, 255, 255); text-align: center; letter-spacing: 0pt; font-family: 함초롬바탕;\">,&nbsp;</span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">꼬리 부분에 볏이 있다.<span id=\"husky_bookmark_start_1588428765890\"></span></span></p><p><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\"><span id=\"husky_bookmark_end_1588428765890\"></span></span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">겁이 많은 종이기 때문에 사육장</span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">&nbsp;</span><span lang=\"EN-US\" style=\"background-color: rgb(255, 255, 255); text-align: center; letter-spacing: 0pt; font-family: 함초롬바탕;\">3</span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">면을 가려주는 것이 좋으며&nbsp;숨을 곳을 많이 만들어주고 사육장 크기를 크게 해줍니다.</span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\"><br></span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">물 위를 걷는 예수 도마뱀으로 유명한 종입니다.</span></p><p><img src=\"/Team2/upload/multiupload/202005022313007ff6dc23-f1b6-4f5e-a3a7-ac1bb9b521b2.jpg\r\n\" title=\"%EA%B8%B0%EB%B3%B8%EB%B0%B0%EC%86%A1%EC%A0%95%EC%B1%85%2C%EA%B5%90%ED%99%98%ED%99%98%EB%B6%88%EC%A0%95%EC%B1%85.jpg\"><br style=\"clear:both;\"><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\"></span><br><br>\r\n						<br>\r\n					</p>',192,'2020-05-02'),(2,'파충류','도마뱀','레오파드 게코','Thecadactylus oskrobapreinorum','성별없음','','a-100','Thecadactylus oskrobapreinorum.jpg',0,800000,10,720000,11200,'<p><span style=\"background-color: rgb(255, 255, 255); color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">세인트 마틴 섬에서 2011년 발견된 신종 게코입니다. 최대 20cm 내외로 자라며 북미의 소수 브리더들이 브리딩하고 있습니다.&nbsp;</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\"></span><span style=\"background-color: rgb(255, 255, 255); color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">벨벳 질감의 가죽과 순한 성격이 매력적이며 눈이 여타 게코에 비해 매우 커 더욱 예쁩니다.</span></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center;\">크레스티드 게코와 토케이 게코를 섞어놓은 듯한 녀석들입니다. 암수 구분이 가능합니다.&nbsp;</span></p><p><img src=\"/Team2/upload/multiupload/202005030042150c7616ac-b72a-4fc5-85fd-0dcac37a7f0b.jpg\r\n\" title=\"202005022313007ff6dc23-f1b6-4f5e-a3a7-ac1bb9b521b2.jpg\"><br style=\"clear:both;\"><br><br>\r\n						<br>\r\n					</p>',6,'2020-05-03'),(3,'파충류','도마뱀','리자드/모니터','주얼드 라세타','성별없음','베이비','a-11','주얼드 라세타.jpg',80,160000,10,144000,2200,'<p><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">영명 : Ocellated lizard or Jeweled Lacerta</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">학명 : Timon lepidus</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">원산지 : 이베리아반도 프랑스 이탈리아</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">특징 : 초록색 몸에 스팟 무늬가 아주 예쁜 도마뱀입니다. 새끼 때에는 사바나 모니터의 체색과 무늬를 띄다가</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">성장함에 따라 발색이 나오는 재미있는 종입니다.성체는 몸통 길이20cm 최대 80cm 까지 성장합니다.</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">새끼 때에는 습하게 키우다가 성체가 되면 건조하게 사육하면 되며 다른 사육법은 비어디 드레곤과 비슷합니다.</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">육식이나 식물이나 과일 또한 섭취하며 미국에서는 아름다운 발색을 위해 방목 사육을 하는 종입니다.</span><br style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><span style=\"font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">새끼때에 어떻게 키웠냐에 따라 성체의 발색이 달라진다고 합니다.&nbsp;</span></p><p>&nbsp;</p><p><img src=\"/Team2/upload/multiupload/2020050301103269cd11bd-edfd-4fd3-8235-1716acdd8f9d.jpg\r\n\" title=\"202005022313007ff6dc23-f1b6-4f5e-a3a7-ac1bb9b521b2.jpg\"><br style=\"clear:both;\"><br><br>\r\n						<br>\r\n					</p>',98,'2020-05-03'),(4,'파충류','도마뱀','카멜레온','베일드 카멜레온','성별없음','베이비','a-150','베일드 카멜레온.jpg',0,120000,10,108000,1700,'<span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center;\">학명</span><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center;\">&nbsp;</span><span lang=\"EN-US\" style=\"background-color: rgb(255, 255, 255); letter-spacing: 0pt; text-align: center; font-family: 함초롬바탕;\">: Chamaeleo clayptratus</span><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">영명&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">: Veiled chameleon</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">최대크기&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">: 60cm&nbsp;</span>미만</font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">서식지&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">:&nbsp;</span>사우디아라비아<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">,&nbsp;</span>예멘 등<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">(</span>아라비아 반도 남서쪽 고원지대<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">)</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">사육장 크기&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">: 2</span>자 이상의 사육장을 권장합니다<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">.</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\"><span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">(</span>가로보단 높이가 높아야 하고 통풍이 잘 되야 합니다<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">)</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">온<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">/</span>습도&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">: 25~32</span>도 정도로 맞춰주시면 됩니다<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">.&nbsp;</span>습도는&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">70%</span>정도를 유지하는 것이 좋습니다<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">.</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">바닥재&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">:&nbsp;</span>에코 등 습계형 바닥재</font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">열원&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">:&nbsp;</span>스팟<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">,UVB</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">먹이&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">:&nbsp;</span>밀웜<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">,&nbsp;</span>귀뚜라미 등</font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">특징&nbsp;<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">:&nbsp;</span>머리에 가면을 쓴 것 과 같은 형상이며 베이비 때에는 합사가 가능하나 준성체 이상 부터는 암컷끼리의 합사만 가능합니다<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">.</span></font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">카멜레온 특성상 고인물을 잘 먹지 않기 때문에 드리퍼를 이용하여 물 방울을 떨어트리거나</font></p><p class=\"0\" style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center; background-color: rgb(255, 255, 255);\"><font color=\"#000000\">사육장 벽면에 분무질을 하여 수분을 공급하는 것이 좋습니다<span lang=\"EN-US\" style=\"letter-spacing: 0pt; font-family: 함초롬바탕;\">.</span></font></p><p><span style=\"background-color: rgb(255, 255, 255); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; letter-spacing: 0pt; text-align: center;\">간혹 식물을 먹는 경우가 있으므로 사육장 내에 식물을 배치 할 때에는 독이 없는 식물을 배치해야 합니다</span><span lang=\"EN-US\" style=\"background-color: rgb(255, 255, 255); letter-spacing: 0pt; text-align: center; font-family: 함초롬바탕;\">.</span></p><p><img src=\"/Team2/upload/multiupload/202005030112561689524a-ba29-4145-951d-22250f2766e1.jpg\r\n\" title=\"202005022313007ff6dc23-f1b6-4f5e-a3a7-ac1bb9b521b2.jpg\"><br style=\"clear:both;\"><br>\r\n						<br>\r\n					</p>',26,'2020-05-03'),(5,'파충류','도마뱀','크레스티드 게코','플레임 할리퀸','성별없음','베이비','a-200','플레임 할리퀸.jpg',150,100000,20,80000,1400,'<p style=\"color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; text-align: center; background-color: rgb(255, 255, 255);\">&nbsp;</p><p style=\"text-align: center; color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\" align=\"center\">크레스티드 게코 베이비 개체들입니다.&nbsp;</p><p style=\"text-align: center; color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\" align=\"center\">&nbsp; 해당 분양 개체들의 모프는 플레임과 할리퀸이 섞여 있으며,</p><p style=\"text-align: center; color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\" align=\"center\">&nbsp; 크레스티드 게코 특성 상 모프 구분이 명확하지 못해, 일부 다른 모프가 섞여 있을 수 있습니다.</p><p style=\"text-align: center; color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\" align=\"center\">&nbsp;</p><p style=\"text-align: center; color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif; background-color: rgb(255, 255, 255);\" align=\"center\">&nbsp; 사진의 개체는 사육장에서 랜덤으로 꺼낸 개체로, 평균적으로 사진 상의 퀄리티로 분양됩니다.</p><span style=\"background-color: rgb(255, 255, 255); color: rgb(53, 53, 53); font-family: Roboto, Arial, &quot;Nanum Gothic&quot;, &quot;Malgun Gothic&quot;, &quot;맑은 고딕&quot;, Dotum, 돋움, &quot;Apple SD Gothic Neo&quot;, AppleGothic, sans-serif;\"><div style=\"text-align: center;\" align=\"center\">&nbsp; (사진의 개체는 습도를 높여 파이어업시킨 상태입니다)</div><div style=\"text-align: center;\" align=\"center\"><img src=\"/Team2/upload/multiupload/20200503013643e3c94871-9152-4b62-a28a-291c669f4396.jpg\r\n\" title=\"202005022313007ff6dc23-f1b6-4f5e-a3a7-ac1bb9b521b2.jpg\"><br style=\"clear:both;\"><br></div></span><div style=\"text-align: center;\" align=\"center\"><br></div>\r\n						<div style=\"text-align: center;\"><br></div>\r\n					',131,'2020-05-03');
/*!40000 ALTER TABLE `team2_animals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team2_basket`
--

DROP TABLE IF EXISTS `team2_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team2_basket` (
  `b_num` int(11) NOT NULL,
  `id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_amount` int(11) DEFAULT NULL,
  `b_option` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `b_delivery_method` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`b_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_basket`
--

LOCK TABLES `team2_basket` WRITE;
/*!40000 ALTER TABLE `team2_basket` DISABLE KEYS */;
INSERT INTO `team2_basket` VALUES (4,'coduo25','a-11',1,'','지하철'),(5,'coduo25','g-102',1,'8.5인치','일반포장'),(6,'coduo25','a-200',1,'','일반포장'),(7,'coduo25','a-200',2,'','퀵서비스');
/*!40000 ALTER TABLE `team2_basket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team2_coupon_admin`
--

DROP TABLE IF EXISTS `team2_coupon_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team2_coupon_admin` (
  `num` int(11) NOT NULL,
  `co_target` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_rate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_startDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_endDate` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_image` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_coupon_admin`
--

LOCK TABLES `team2_coupon_admin` WRITE;
/*!40000 ALTER TABLE `team2_coupon_admin` DISABLE KEYS */;
INSERT INTO `team2_coupon_admin` VALUES (1,'양서류','모든 양서류 특별 쿠폰 3,000원','3000','2020-05-20','2020-05-30','true','test_banner.jpg'),(2,'먹이','모든 먹이 특별 쿠폰 1,000원','1000','2020-05-20','2020-05-30','true','test_banner.jpg'),(3,'사육용품','모든 사육용품 특별 쿠폰 2,000원','2000','2020-05-20','2020-06-10','true','test_banner.jpg'),(4,'파충류','모든 파충류 특별 쿠폰 5,000원','5000','2020-05-20','2020-05-30','true','test_banner.jpg');
/*!40000 ALTER TABLE `team2_coupon_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team2_coupon_member`
--

DROP TABLE IF EXISTS `team2_coupon_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team2_coupon_member` (
  `num` int(11) NOT NULL,
  `id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `co_num` int(11) DEFAULT NULL,
  `used` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_coupon_member`
--

LOCK TABLES `team2_coupon_member` WRITE;
/*!40000 ALTER TABLE `team2_coupon_member` DISABLE KEYS */;
INSERT INTO `team2_coupon_member` VALUES (1,'coduo25',1,'NO'),(2,'coduo25',2,'NO'),(3,'coduo25',3,'NO'),(4,'coduo25',4,'NO');
/*!40000 ALTER TABLE `team2_coupon_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team2_goods`
--

DROP TABLE IF EXISTS `team2_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team2_goods` (
  `num` int(11) NOT NULL,
  `category` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `sub_category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_category_index` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `g_code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `g_thumbnail` text COLLATE utf8_unicode_ci NOT NULL,
  `g_amount` int(11) NOT NULL,
  `g_price_origin` int(11) NOT NULL,
  `g_discount_rate` int(11) DEFAULT NULL,
  `g_price_sale` int(11) DEFAULT NULL,
  `g_mileage` int(11) DEFAULT NULL,
  `g_delivery` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_option` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `g_option_price` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `g_view_count` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_goods`
--

LOCK TABLES `team2_goods` WRITE;
/*!40000 ALTER TABLE `team2_goods` DISABLE KEYS */;
INSERT INTO `team2_goods` VALUES (1,'사육용품','사육장','유리/테라리움','NOMOY 우드 렙타일 케이지 50cm(서랍형)','g-100','374f96c6effc1ee3895ad64ea8aac2be.jpg',150,70000,5,66500,1000,'일반포장','',0,'		   		   <br>\r\n					<span style=\"font-weight: bold\"> 관련 동물(종) </span> :  \r\n				   <br>\r\n		   		',10,'2020-05-05'),(2,'먹이','칼슘/약품','-','엑소테라 칼슘 비타민D3 0%','g-101','e28add91001352c222f715598ff95077.jpg',0,6500,10,5850,100,'일반포장','',0,'		   		   <br>\r\n					<span style=\"font-weight: bold\"> 관련 동물(종) </span> :  \r\n				   <br>\r\n		   		',28,'2020-05-05'),(3,'사육용품','램프','소켓','줄스 라이트 커버','g-102','db082d79ceb5136508d237d35cc338a3.jpg',0,25000,20,20000,400,'일반포장','5.5인치',0,'		   		   <br>\r\n					<span style=\"font-weight: bold\"> 관련 동물(종) </span> :  \r\n				   <br>\r\n		   		',71,'2020-05-05'),(4,'먹이','인공사료','-','테트라 렙토민 250ml','g-103','c86248059f920bb4f7c884608d598f5f.jpg',100,7500,10,6750,100,'일반포장','',0,'		   		   <br>\r\n					<span style=\"font-weight: bold\"> 관련 동물(종) </span> :  \r\n				   <br>\r\n		   		',9,'2020-05-05'),(5,'먹이','칼슘/약품','-','렙칼 멀티 비타민','g-104','ccbdce702d8ee41c3a8e2be6cebd1663.jpg',200,23800,20,19040,300,'일반포장','',0,'		   		   <br>\r\n					<span style=\"font-weight: bold\"> 관련 동물(종) </span> :  \r\n				   <br>\r\n		   		',21,'2020-05-05'),(7,'사육용품','온/습도 관련','온도조절기','test2','g-105','thumb-202020_500x500.jpg',100,10000,0,10000,100,'일반포장','',0,'		   		   <br>\r\n					<span style=\"font-weight: bold\"> 관련 동물(종) </span> :  \r\n				   <br>\r\n		   		',26,'2020-05-05'),(8,'먹이','생먹이','-','test','g-106','thumb-202020_500x500.jpg',10,10,0,10,0,'일반포장','20cm',0,'<br>\r\n				<span style=\"font-weight: bold\"> 관련 동물(종) </span> : rest<br><br>\r\n				  <br>\r\n		   		',36,'2020-05-06'),(9,'먹이','생먹이','-','test','g-106','thumb-202020_500x500.jpg',0,10,0,10,0,'일반포장','40cm',2000,'<br>\r\n				<span style=\"font-weight: bold\"> 관련 동물(종) </span> : rest<br><br>\r\n				  <br>\r\n		   		',36,'2020-05-06'),(10,'먹이','생먹이','-','test','g-106','thumb-202020_500x500.jpg',20,10,0,10,0,'일반포장','60cm',4000,'<br>\r\n				<span style=\"font-weight: bold\"> 관련 동물(종) </span> : rest<br><br>\r\n				  <br>\r\n		   		',36,'2020-05-06'),(11,'사육용품','램프','소켓','줄스 라이트 커버','g-102','db082d79ceb5136508d237d35cc338a3.jpg',100,25000,20,20000,400,'일반포장','8.5인치',5000,'<br>\r\n				<span style=\"font-weight: bold\"> 관련 동물(종) </span> : <br><br>\r\n				  <br>\r\n		   		',67,'2020-05-06');
/*!40000 ALTER TABLE `team2_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team2_member`
--

DROP TABLE IF EXISTS `team2_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team2_member` (
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `zipcode` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addr1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addr2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  `reg_date` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team2_member`
--

LOCK TABLES `team2_member` WRITE;
/*!40000 ALTER TABLE `team2_member` DISABLE KEYS */;
INSERT INTO `team2_member` VALUES ('admin','1234','관리자','010',NULL,NULL,NULL,'coduo25@gmail.com',0,'2020-04-28 15:00:00'),('coduo25','1234','coduo25','01062419520','46294','부산광역시 금정구 금강로 225','208동 2104호','coduo250@gmail.com',12000,'2020-04-28 15:00:00'),('coduo26','Qwer1234','박정훈','01062419520','46294','부산 금정구 금강로 225 (장전동, 벽산블루밍디자인시티)','208동 2104호','coduo25@gmail.com',0,'2020-05-20 08:07:24'),('test','qwer1234','테스트','4141221111','','','','',0,'2020-05-03 04:03:32'),('test1','qwer1234','홍길동','4141221111','','','','1132@u.uyfg',0,'2020-05-03 04:04:34');
/*!40000 ALTER TABLE `team2_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'team2_project'
--

--
-- Dumping routines for database 'team2_project'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-21 16:43:42
