
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `account_number` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Balance` decimal(10,2) NOT NULL,
  `Creation_date` date NOT NULL,
  `Customer_id` varchar(45) NOT NULL,
  PRIMARY KEY (`account_number`),
  KEY `Customer_account_idx` (`Customer_id`),
  CONSTRAINT `Customer_account` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `ID` varchar(45) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `Username` varchar(45) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Birth_date` date NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Details` TEXT,
  `Image` varchar(45) DEFAULT NULL,
  `Duration` int DEFAULT NULL,
  `Interest_rate` decimal(4,2) DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `product_category_idx` (`Category_id`),
  CONSTRAINT `product_category` FOREIGN KEY (`Category_id`) REFERENCES `category` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `operationns`;

CREATE TABLE `operationns` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Type` varchar(45) NOT NULL,
  `Product_id` int DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  `Admin_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Product_operations_idx` (`Product_id`),
  KEY `Category_operations_idx` (`Category_id`),
  KEY `Admin_operation_idx` (`Admin_id`),
  CONSTRAINT `Admin_operation` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Id`),
  CONSTRAINT `Category_operations` FOREIGN KEY (`Category_id`) REFERENCES `category` (`ID`),
  CONSTRAINT `Product_operations` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `subscription`;

CREATE TABLE `subscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `Account_id` varchar(45) NOT NULL,
  `Product_id` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Product_subscription_idx` (`Product_id`),
  KEY `Account_subscription_idx` (`Account_id`),
  CONSTRAINT `Account_subscription` FOREIGN KEY (`Account_id`) REFERENCES `account` (`account_number`),
  CONSTRAINT `Product_subscription` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
