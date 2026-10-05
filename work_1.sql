CREATE DATABASE  IF NOT EXISTS `e1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `e1`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: e1
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Category_ID` varchar(10) NOT NULL,
  `Category_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Category_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('CAT001','Electronics'),('CAT002','Fashion'),('CAT003','Home'),('CAT004','Kitchen'),('CAT005','Beauty'),('CAT006','Sports'),('CAT007','Books'),('CAT008','Furniture'),('CAT009','Toys'),('CAT010','Groceries');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `CouponID` varchar(10) NOT NULL,
  `Code` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CouponID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
INSERT INTO `coupons` VALUES ('CP1','WELCOME100');
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomerID` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `SignupDate` date DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('C001','Amit Sharma','Male',28,'Delhi','2024-01-15'),('C002','Priya Verma','Female',25,'Mumbai','2024-02-10'),('C003','Ravi Kumar','Male',32,'Bangalore','2024-03-05'),('C004','Neha Singh','Female',27,'Lucknow','2024-03-20'),('C005','Suresh Patel','Male',35,'Ahmedabad','2024-04-02'),('C006','Anjali Mehta','Female',29,'Jaipur','2024-04-18'),('C007','Vikram Das','Male',31,'Kolkata','2024-05-01'),('C008','Pooja Nair','Female',26,'Chennai','2024-05-12'),('C009','Rajesh Gupta','Male',33,'Pune','2024-06-03'),('C010','Meena Joshi','Female',30,'Indore','2024-06-25'),('C011','Deepak Yadav','Male',24,'Kanpur','2024-07-10'),('C012','Kavita Rao','Female',28,'Hyderabad','2024-07-22'),('C013','Manish Tiwari','Male',34,'Surat','2024-08-05'),('C014','Sneha Roy','Female',23,'Patna','2024-08-18'),('C015','Arjun Singh','Male',29,'Varanasi','2024-09-01'),('C016','Divya Jain','Female',27,'Bhopal','2024-09-14'),('C017','Karan Malhotra','Male',31,'Delhi','2024-09-28'),('C018','Ritika Shah','Female',25,'Mumbai','2024-10-10'),('C019','Harish Reddy','Male',33,'Hyderabad','2024-10-22'),('C020','Nisha Agarwal','Female',26,'Kolkata','2024-11-05'),('C021','Ajay Chauhan','Male',30,'Lucknow','2024-11-18'),('C022','Tanya Kapoor','Female',24,'Chandigarh','2024-12-01'),('C023','Rohit Bansal','Male',28,'Delhi','2024-12-15'),('C024','Simran Kaur','Female',27,'Amritsar','2025-01-05'),('C025','Vivek Mishra','Male',32,'Agra','2025-01-20'),('C026','Aarti Deshmukh','Female',29,'Nagpur','2025-02-02'),('C027','Nitin Joshi','Male',34,'Pune','2025-02-16'),('C028','Shreya Iyer','Female',25,'Chennai','2025-03-01'),('C029','Gaurav Pandey','Male',30,'Noida','2025-03-15'),('C030','Renu Bhattacharya','Female',28,'Kolkata','2025-03-30');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_partner`
--

DROP TABLE IF EXISTS `delivery_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_partner` (
  `PartnerID` varchar(10) NOT NULL,
  `Partner` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PartnerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_partner`
--

LOCK TABLES `delivery_partner` WRITE;
/*!40000 ALTER TABLE `delivery_partner` DISABLE KEYS */;
INSERT INTO `delivery_partner` VALUES ('DP1','Delhivery');
/*!40000 ALTER TABLE `delivery_partner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` varchar(10) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('E001','Emp1','Sales'),('E002','Emp2','Sales'),('E003','Emp3','Sales'),('E004','Emp4','Sales'),('E005','Emp5','Sales'),('E006','Emp6','Sales'),('E007','Emp7','Sales'),('E008','Emp8','Sales'),('E009','Emp9','Sales'),('E010','Emp10','Sales');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `WarehouseID` varchar(10) NOT NULL,
  `ProductID` varchar(10) NOT NULL,
  `Stock` int DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`,`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('W001','P001',320),('W001','P002',150),('W001','P003',480),('W001','P004',95),('W001','P005',410),('W001','P006',275),('W001','P007',190),('W001','P008',360),('W001','P009',225),('W001','P010',310),('W001','P011',400),('W001','P012',260),('W001','P013',180),('W001','P014',500),('W001','P015',340),('W001','P016',290),('W001','P017',410),('W001','P018',370),('W001','P019',450),('W001','P020',210),('W001','P021',330),('W001','P022',275),('W001','P023',195),('W001','P024',420),('W001','P025',385),('W001','P026',260),('W001','P027',310),('W001','P028',440),('W001','P029',355),('W001','P030',280);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `OrderItemID` varchar(10) NOT NULL,
  `OrderID` varchar(10) DEFAULT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Quantity` int DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`OrderItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES ('OI001','O001','P001',2,1599.00),('OI002','O001','P005',1,499.00),('OI003','O002','P003',3,299.00),('OI004','O002','P010',1,999.00),('OI005','O003','P007',4,199.00),('OI006','O003','P002',2,799.00),('OI007','O004','P008',1,1299.00),('OI008','O004','P004',5,99.00),('OI009','O005','P006',2,699.00),('OI010','O005','P009',1,349.00),('OI011','O006','P011',3,450.00),('OI012','O006','P012',2,650.00),('OI013','O007','P013',1,1200.00),('OI014','O007','P014',2,2200.00),('OI015','O008','P015',4,350.00),('OI016','O008','P016',1,1800.00),('OI017','O009','P017',2,999.00),('OI018','O009','P018',3,450.00),('OI019','O010','P019',1,2500.00),('OI020','O010','P020',2,799.00),('OI021','O011','P021',5,150.00),('OI022','O011','P022',2,999.00),('OI023','O012','P023',1,1250.00),('OI024','O012','P024',3,499.00),('OI025','O013','P025',2,899.00),('OI026','O013','P026',1,1750.00),('OI027','O014','P027',4,299.00),('OI028','O014','P028',2,1450.00),('OI029','O015','P029',1,2100.00),('OI030','O015','P030',3,399.00);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `WarehouseID` varchar(10) DEFAULT NULL,
  `EmployeeID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES ('O001','C001','2024-01-15','Delivered','W001','E001'),('O002','C002','2024-02-10','Pending','W001','E002'),('O003','C003','2024-03-05','Shipped','W001','E003'),('O004','C004','2024-03-20','Delivered','W001','E004'),('O005','C005','2024-04-02','Cancelled','W001','E005'),('O006','C006','2024-04-18','Delivered','W001','E006'),('O007','C007','2024-05-01','Pending','W001','E007'),('O008','C008','2024-05-12','Delivered','W001','E008'),('O009','C009','2024-06-03','Shipped','W001','E009'),('O010','C010','2024-06-25','Delivered','W001','E010'),('O011','C011','2024-07-10','Pending','W001','E001'),('O012','C012','2024-07-22','Delivered','W001','E002'),('O013','C013','2024-08-05','Shipped','W001','E003'),('O014','C014','2024-08-18','Delivered','W001','E004'),('O015','C015','2024-09-01','Cancelled','W001','E005'),('O016','C016','2024-09-14','Delivered','W001','E006'),('O017','C017','2024-09-28','Pending','W001','E007'),('O018','C018','2024-10-10','Delivered','W001','E008'),('O019','C019','2024-10-22','Shipped','W001','E009'),('O020','C020','2024-11-05','Delivered','W001','E010'),('O021','C021','2024-11-18','Pending','W001','E001'),('O022','C022','2024-12-01','Delivered','W001','E002'),('O023','C023','2024-12-15','Shipped','W001','E003'),('O024','C024','2025-01-05','Delivered','W001','E004'),('O025','C025','2025-01-20','Cancelled','W001','E005'),('O026','C026','2025-02-02','Delivered','W001','E006'),('O027','C027','2025-02-16','Pending','W001','E007'),('O028','C028','2025-03-01','Delivered','W001','E008'),('O029','C029','2025-03-15','Shipped','W001','E009'),('O030','C030','2025-03-30','Delivered','W001','E010');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` varchar(10) NOT NULL,
  `OrderID` varchar(10) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Method` varchar(20) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES ('PAY001','O001',2098.00,'Credit Card','Completed'),('PAY002','O002',799.00,'UPI','Pending'),('PAY003','O003',1299.00,'Netbanking','Completed'),('PAY004','O004',499.00,'Debit Card','Completed'),('PAY005','O005',999.00,'Cash on Delivery','Cancelled'),('PAY006','O006',1450.00,'Credit Card','Completed'),('PAY007','O007',650.00,'UPI','Pending'),('PAY008','O008',1800.00,'Netbanking','Completed'),('PAY009','O009',999.00,'Debit Card','Completed'),('PAY010','O010',2500.00,'Credit Card','Completed'),('PAY011','O011',999.00,'UPI','Pending'),('PAY012','O012',1250.00,'Netbanking','Completed'),('PAY013','O013',899.00,'Debit Card','Completed'),('PAY014','O014',2200.00,'Credit Card','Completed'),('PAY015','O015',350.00,'Cash on Delivery','Cancelled'),('PAY016','O016',1750.00,'Netbanking','Completed'),('PAY017','O017',999.00,'UPI','Pending'),('PAY018','O018',1450.00,'Credit Card','Completed'),('PAY019','O019',2100.00,'Debit Card','Completed'),('PAY020','O020',799.00,'UPI','Completed'),('PAY021','O021',999.00,'Netbanking','Pending'),('PAY022','O022',1250.00,'Credit Card','Completed'),('PAY023','O023',899.00,'Debit Card','Completed'),('PAY024','O024',2200.00,'UPI','Completed'),('PAY025','O025',350.00,'Cash on Delivery','Cancelled'),('PAY026','O026',1750.00,'Netbanking','Completed'),('PAY027','O027',999.00,'UPI','Pending'),('PAY028','O028',1450.00,'Credit Card','Completed'),('PAY029','O029',2100.00,'Debit Card','Completed'),('PAY030','O030',799.00,'UPI','Completed');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` varchar(10) NOT NULL,
  `ProductName` varchar(50) DEFAULT NULL,
  `CategoryID` varchar(10) DEFAULT NULL,
  `MRP` decimal(10,2) DEFAULT NULL,
  `SellingPrice` decimal(10,2) DEFAULT NULL,
  `SupplierID` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('P001','Smartphone','CAT001',25000.00,22999.00,'S001'),('P002','Laptop','CAT001',55000.00,49999.00,'S002'),('P003','T-Shirt','CAT002',999.00,799.00,'S003'),('P004','Sofa Set','CAT008',35000.00,31999.00,'S004'),('P005','Mixer Grinder','CAT004',4500.00,3999.00,'S005'),('P006','Lipstick','CAT005',799.00,699.00,'S006'),('P007','Football','CAT006',1200.00,999.00,'S007'),('P008','Novel Book','CAT007',499.00,399.00,'S008'),('P009','Dining Table','CAT008',18000.00,16500.00,'S009'),('P010','Toy Car','CAT009',899.00,749.00,'S010'),('P011','Rice Bag 10kg','CAT010',650.00,599.00,'S011'),('P012','Headphones','CAT001',2500.00,2199.00,'S001'),('P013','Jeans','CAT002',1999.00,1799.00,'S003'),('P014','Curtains','CAT003',1499.00,1299.00,'S004'),('P015','Pressure Cooker','CAT004',2800.00,2499.00,'S005'),('P016','Perfume','CAT005',2200.00,1999.00,'S006'),('P017','Yoga Mat','CAT006',899.00,749.00,'S007'),('P018','Notebook','CAT007',120.00,99.00,'S008'),('P019','Office Chair','CAT008',9500.00,8999.00,'S009'),('P020','Doll Set','CAT009',1499.00,1299.00,'S010'),('P021','Cooking Oil 5L','CAT010',850.00,799.00,'S011'),('P022','Smartwatch','CAT001',12000.00,10999.00,'S001'),('P023','Dress','CAT002',2499.00,2199.00,'S003'),('P024','Wall Clock','CAT003',999.00,849.00,'S004'),('P025','Blender','CAT004',3200.00,2899.00,'S005'),('P026','Face Cream','CAT005',999.00,899.00,'S006'),('P027','Cricket Bat','CAT006',2500.00,2199.00,'S007'),('P028','Textbook','CAT007',699.00,599.00,'S008'),('P029','Bookshelf','CAT008',8500.00,7999.00,'S009'),('P030','Chocolate Pack','CAT010',499.00,449.00,'S011');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `returns`
--

DROP TABLE IF EXISTS `returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `returns` (
  `ReturnID` varchar(10) NOT NULL,
  `OrderID` varchar(10) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ReturnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `returns`
--

LOCK TABLES `returns` WRITE;
/*!40000 ALTER TABLE `returns` DISABLE KEYS */;
INSERT INTO `returns` VALUES ('R1','O001','Damaged');
/*!40000 ALTER TABLE `returns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `ReviewID` varchar(10) NOT NULL,
  `CustomerID` varchar(10) DEFAULT NULL,
  `ProductID` varchar(10) DEFAULT NULL,
  `Rating` int DEFAULT NULL,
  PRIMARY KEY (`ReviewID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES ('RV1','C001','P001',5);
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `SupplierID` varchar(10) NOT NULL,
  `SupplierName` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SupplierID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('SUP001','Supplier 1','Maharashtra'),('SUP002','Supplier 2','Maharashtra'),('SUP003','Supplier 3','Maharashtra'),('SUP004','Supplier 4','Maharashtra'),('SUP005','Supplier 5','Maharashtra'),('SUP006','Supplier 6','Maharashtra'),('SUP007','Supplier 7','Maharashtra'),('SUP008','Supplier 8','Maharashtra'),('SUP009','Supplier 9','Maharashtra'),('SUP010','Supplier 10','Maharashtra');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `WarehouseID` varchar(10) NOT NULL,
  `Warehouse` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES ('W001','Nagpur'),('W002','Pune');
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-05 19:15:46
