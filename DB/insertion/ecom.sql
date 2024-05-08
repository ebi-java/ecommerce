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
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Loans','Banking Loans are financial instruments where a lender provides funds to a borrower, who agrees to repay the borrowed amount along with interest and any applicable fees over a specified period.','Retail'),(2,'Loans','Banking loans for corporations are financial products that provide businesses with access to funds for various purposes, such as expansion, working capital, equipment purchases, or refinancing existing debt.','CORPORATE'),(3,'Accounts','Banking Accounts, refers to various types of financial accounts that individuals might have with a bank or financial institution.','Retail'),(4,'Accounts','Corporate Banking Accounts are essential financial tools that enable businesses to manage their funds, conduct transactions, and achieve their financial objectives.','CORPORATE'),(5,'Certificates','Banking Certificates, typically referring to \"Certificates of Deposit\" (CDs) in a financial context, are fixed-term deposits offered by banks and credit unions.','Retail'),(6,'Certificates','Banking Certificates for corporations, also known as corporate certificates of deposit (CDs), offer businesses a way to earn interest on their surplus funds while maintaining a degree of liquidity.','CORPORATE'),(7,'Cards','Banking Cards are financial tools providing convenience and security in personal finance management.','Retail'),(8,'Cards','Banking Cards for corporate use, banks typically offer a range of cards tailored to business needs. These cards often come with features like expense tracking, spending limits, and rewards geared toward business expenses.','CORPORATE');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('28001104563214','EBusiness Company','corporate','EBusiness','859632','01245896321','1980-01-10','EBusiness@gmail.com',_binary '\0'),('29005227845123','IT technology','corporate','IT_Technology','785236','01578945612','1990-05-22','IT_Technology@gmail.com',_binary '\0'),('29509218745123','Hani Loay','Retail','Hani_Loay','857412','01178541236','1995-09-21','HaniLoay@gmail.com',_binary ''),('30003089456123','Yousef Shawkey','Retail','Yousef_Shawkey','789456','01078945612','2000-03-08','YousefShawkey@gmail.com',_binary ''),('3010227961456','Mohamed Ahmed','Retail','Mohamed_Ahmed','123456','01024465291','2001-02-27','MohamedAhmed@gmail.com',_binary ''),('30102279614564','Mohamed Ahmed','Retail','Mohamed_Ahmed','123456','01024465291','2001-02-27','MohamedAhmed@gmail.com',_binary '');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `operationns`
--

LOCK TABLES `operationns` WRITE;
/*!40000 ALTER TABLE `operationns` DISABLE KEYS */;
/*!40000 ALTER TABLE `operationns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-08 14:27:13
