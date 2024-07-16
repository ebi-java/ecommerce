-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Details` text,
  `Image` varchar(200) DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `Interest_rate` decimal(4,2) DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `product_category_idx` (`Category_id`),
  CONSTRAINT `product_category` FOREIGN KEY (`Category_id`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES
(1,'Debit Card','Payment card that deducts money directly from your account','https://www.shutterstock.com/image-illustration/debit-card-isolated-on-white-260nw-542784994.jpg',12,0.21,7),
(2,'Saving Account','Deposit accounts designed to store funds securely while earning interest on the deposited money','https://www.nj.com/personal-finance/static/53a4e3dff0e918cc1de8f39c5b99adac/f61e6/types-of-savings-accounts.webp',2,0.21,3),
(5,'Current Account','An account that businesses or individuals to deposit and withdraw funds as needed.','https://legaldocs.co.in/img/blog/What%20is%20current%20account-min.webp',5,0.00,4),
(6,'Small Business Loan','Tailored for small and medium-sized businesses.','https://www.merchantmaverick.com/wp-content/uploads/2018/10/bigstock-Small-Business-Loan-Form-Finan-168847004.jpg',4,0.21,2),
(8,'Current Account','A checking account with no minimum balance requirement.','current_account_image.jpg',NULL,0.00,3),
(9,'1-Year Certificate of Deposit','Earn a fixed interest rate over a 1-year term.','1_year_certificate_image.jpg',1,0.08,5),
(10,'3-Year Certificate of Deposit','Lock in your funds for 3 years at a higher interest rate.','3_year_certificate_image.jpg',3,0.10,5),
(11,'5-Year Certificate of Deposit','Maximize your savings with a long-term CD.','5_year_certificate_image.jpg',5,0.12,5),
(12,'3-Year Certificate of Deposit','Lock in your funds for 3 years at a higher interest rate.','3_year_certificate_image.jpg',3,0.10,6),
(13,'5-Year Certificate of Deposit','Maximize your savings with a long-term CD.','5_year_certificate_image.jpg',5,0.12,6),
(14,'Personal Loan','Flexible borrowing options for personal expenses.','personal_loan_image.jpg',3,0.07,1),
(15,'Auto Loan','Finance your new or used vehicle purchase with competitive rates.','auto_loan_image.jpg',5,0.05,1),
(16, 'Credit Card', 'Credit cards can be used to make purchases, and balance transfers and require that you pay back the loan amount in the future.', '', 5, 0.21, 7);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-26 10:15:33
