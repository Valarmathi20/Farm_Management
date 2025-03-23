-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: farmmanagement
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `crop`
--

DROP TABLE IF EXISTS `crop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crop` (
  `crop_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `planting_date` varchar(50) DEFAULT NULL,
  `harvesting_date` varchar(50) DEFAULT NULL,
  `farm_id` int DEFAULT NULL,
  PRIMARY KEY (`crop_id`),
  KEY `fk_crop` (`farm_id`),
  CONSTRAINT `fk_crop` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crop`
--

LOCK TABLES `crop` WRITE;
/*!40000 ALTER TABLE `crop` DISABLE KEYS */;
INSERT INTO `crop` VALUES (1,'Wheat','2025-01-10','2025-06-15',1),(2,'Corn','2025-02-05','2025-07-20',2),(3,'Rice','2025-03-15','2025-09-25',3),(4,'Sugarcane','2024-11-20','2025-10-10',4),(5,'Barley','2025-04-01','2025-08-30',5),(6,'Cotton','2025-05-10','2025-10-25',6),(7,'Soybean','2025-06-15','2025-11-10',7),(8,'Potato','2025-07-01','2025-12-05',8),(9,'Tomato','2025-02-20','2025-06-30',9),(10,'Onion','2025-03-05','2025-07-15',10),(11,'Carrot','2025-04-10','2025-08-20',11),(12,'Peas','2025-05-05','2025-09-15',12),(13,'Chickpea','2025-06-10','2025-10-30',13),(14,'Groundnut','2025-07-20','2025-12-15',14),(15,'Mustard','2025-08-05','2026-01-10',15),(16,'Sunflower','2025-09-01','2026-02-20',16),(17,'Apple','2024-10-15','2025-09-30',17),(18,'Banana','2025-01-25','2025-07-25',18),(19,'Pineapple','2025-02-10','2025-08-05',19),(20,'Mango','2025-03-20','2025-07-30',20),(21,'Guava','2025-04-15','2025-09-25',21),(22,'Grapes','2025-05-01','2025-10-05',22),(23,'Strawberry','2025-06-05','2025-11-10',23),(24,'Pomegranate','2025-07-10','2025-12-15',24),(25,'Cabbage','2025-08-20','2026-01-20',25),(26,'Cauliflower','2025-09-10','2026-02-10',26),(27,'Spinach','2025-10-05','2026-03-15',27),(28,'Brinjal','2025-11-15','2026-04-25',28),(29,'Pumpkin','2025-12-01','2026-05-10',29),(30,'Lettuce','2025-12-20','2026-06-01',30);
/*!40000 ALTER TABLE `crop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employee_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `farm_id` int DEFAULT NULL,
  PRIMARY KEY (`employee_id`),
  KEY `fk_employee` (`farm_id`),
  CONSTRAINT `fk_employee` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ramesh Kumar','Farm Manager',45000.00,1),(2,'Suresh Yadav','Agricultural Worker',25000.00,2),(3,'Anita Sharma','Veterinarian',50000.00,3),(4,'Rajesh Verma','Irrigation Specialist',35000.00,4),(5,'Sunita Devi','Dairy Supervisor',40000.00,5),(6,'Mukesh Singh','Crop Specialist',38000.00,6),(7,'Pooja Rani','Accountant',42000.00,7),(8,'Vikram Chauhan','Mechanic',30000.00,8),(9,'Geeta Mishra','Harvesting Worker',27000.00,9),(10,'Mahesh Patel','Pest Control Officer',33000.00,10),(11,'Arjun Das','Farm Manager',46000.00,11),(12,'Meena Joshi','Veterinarian',51000.00,12),(13,'Naveen Reddy','Dairy Worker',29000.00,13),(14,'Kiran Rao','Agricultural Worker',26000.00,14),(15,'Prakash Yadav','Machinery Operator',37000.00,15),(16,'Swati Mehta','Soil Scientist',55000.00,16),(17,'Deepak Sharma','Farm Supervisor',43000.00,17),(18,'Anjali Kapoor','Horticulturist',47000.00,18),(19,'Pankaj Gupta','Warehouse Manager',36000.00,19),(20,'Jyoti Sinha','Labor Supervisor',32000.00,20),(21,'Manoj Tiwari','Veterinary Assistant',34000.00,21),(22,'Shalini Desai','Farm Manager',45500.00,22),(23,'Amit Bansal','Tractor Operator',28500.00,23),(24,'Seema Saxena','Accountant',41500.00,24),(25,'Ravi Shankar','Poultry Farm Worker',30500.00,25),(26,'Neha Goyal','Agri Consultant',56000.00,26),(27,'Suraj Kumar','Greenhouse Supervisor',39500.00,27),(28,'Lavanya Pillai','Seed Specialist',52000.00,28),(29,'Gopal Nair','Water Management Expert',44000.00,29),(30,'Komal Choudhary','Fertilizer Expert',48000.00,30);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipment`
--

DROP TABLE IF EXISTS `equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipment` (
  `equipment_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `purchase_date` varchar(50) DEFAULT NULL,
  `condition_level` varchar(50) DEFAULT NULL,
  `farm_id` int DEFAULT NULL,
  PRIMARY KEY (`equipment_id`),
  KEY `fk_equipment` (`farm_id`),
  CONSTRAINT `fk_equipment` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipment`
--

LOCK TABLES `equipment` WRITE;
/*!40000 ALTER TABLE `equipment` DISABLE KEYS */;
INSERT INTO `equipment` VALUES (1,'Tractor','2023-01-10','Good',1),(2,'Plow','2022-12-05','Fair',2),(3,'Seeder','2023-02-15','Excellent',3),(4,'Harvester','2023-03-20','Good',4),(5,'Irrigation Pump','2023-04-10','Needs Repair',5),(6,'Combine Harvester','2022-11-25','Excellent',6),(7,'Rotavator','2023-06-15','Good',7),(8,'Sprayer','2023-07-01','Fair',8),(9,'Cultivator','2023-05-20','Good',9),(10,'Baler','2023-08-05','Needs Repair',10),(11,'Seed Drill','2023-09-10','Excellent',11),(12,'Water Tank','2023-10-05','Good',12),(13,'Milking Machine','2023-11-15','Good',13),(14,'Weeder','2023-12-01','Fair',14),(15,'Trolley','2024-01-20','Good',15),(16,'Disc Harrow','2024-02-05','Excellent',16),(17,'Power Tiller','2024-03-10','Good',17),(18,'Grain Storage Bin','2024-04-15','Needs Repair',18),(19,'Chaff Cutter','2024-05-10','Good',19),(20,'Fertilizer Spreader','2024-06-05','Fair',20),(21,'Hoe','2024-07-01','Good',21),(22,'Shovel','2024-08-10','Excellent',22),(23,'Drip Irrigation System','2024-09-15','Needs Repair',23),(24,'Threshing Machine','2024-10-05','Good',24),(25,'Soil Testing Kit','2024-11-20','Fair',25),(26,'Water Sprinkler','2024-12-10','Good',26),(27,'Hydroponic Setup','2025-01-05','Excellent',27),(28,'Fogger Machine','2025-02-20','Good',28),(29,'Grain Moisture Meter','2025-03-15','Fair',29),(30,'Livestock Feeder','2025-04-01','Good',30);
/*!40000 ALTER TABLE `equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expenses` (
  `expense_id` int NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `expense_date` varchar(50) DEFAULT NULL,
  `farm_id` int DEFAULT NULL,
  PRIMARY KEY (`expense_id`),
  KEY `fk_expenses` (`farm_id`),
  CONSTRAINT `fk_expenses` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expenses`
--

LOCK TABLES `expenses` WRITE;
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` VALUES (1,'Fertilizer',15000.00,'2024-01-05',1),(2,'Pesticides',7000.00,'2024-01-10',2),(3,'Labor Wages',25000.00,'2024-01-15',3),(4,'Irrigation',12000.00,'2024-01-20',4),(5,'Seeds',18000.00,'2024-01-25',5),(6,'Fuel',9000.00,'2024-02-01',6),(7,'Animal Feed',22000.00,'2024-02-05',7),(8,'Electricity',5000.00,'2024-02-10',8),(9,'Transport',8000.00,'2024-02-15',9),(10,'Storage Rent',15000.00,'2024-02-20',10),(11,'Veterinary',14000.00,'2024-02-25',11),(12,'Greenhouse',10000.00,'2024-03-01',12),(13,'Equipment Purchase',35000.00,'2024-03-05',13),(14,'Organic Compost',12000.00,'2024-03-10',14),(15,'Fence Repair',8000.00,'2024-03-15',15),(16,'Labor Insurance',10000.00,'2024-03-20',16),(17,'Milk Processing',18000.00,'2024-03-25',17),(18,'Marketing',11000.00,'2024-04-01',18),(19,'Machinery Repair',16000.00,'2024-04-05',19),(20,'Poultry Feed',13000.00,'2024-04-10',20),(21,'Water Maintenance',7000.00,'2024-04-15',21),(22,'Fertilizer',12000.00,'2024-04-20',22),(23,'Equipment Rental',15000.00,'2024-04-25',23),(24,'Animal Vaccination',10000.00,'2024-05-01',24),(25,'Soil Testing',5000.00,'2024-05-05',25),(26,'Plastic Mulching',9000.00,'2024-05-10',26),(27,'Drip Irrigation',25000.00,'2024-05-15',27),(28,'Warehouse Cleaning',7000.00,'2024-05-20',28),(29,'Pest Control',8000.00,'2024-05-25',29),(30,'Training for Workers',15000.00,'2024-05-30',30);
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farm`
--

DROP TABLE IF EXISTS `farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farm` (
  `farm_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  PRIMARY KEY (`farm_id`),
  KEY `fk_farm` (`owner_id`),
  CONSTRAINT `fk_farm` FOREIGN KEY (`owner_id`) REFERENCES `farmer` (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farm`
--

LOCK TABLES `farm` WRITE;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
INSERT INTO `farm` VALUES (1,'Green Valley Farm','Delhi, India',45.50,1),(2,'Sunrise Farm','Mumbai, India',50.00,2),(3,'Harvest Field','Pune, India',60.30,3),(4,'Golden Wheat Farm','Jaipur, India',40.80,4),(5,'Fresh Harvest Farm','Lucknow, India',55.20,5),(6,'Organic Bliss Farm','Bhopal, India',48.60,6),(7,'AgroTech Farm','Ahmedabad, India',72.40,7),(8,'Sunshine Acres','Chandigarh, India',39.90,8),(9,'Nature’s Gift Farm','Surat, India',68.50,9),(10,'Riverside Farm','Patna, India',51.30,10),(11,'Evergreen Farm','Varanasi, India',64.70,11),(12,'Golden Harvest','Hyderabad, India',75.00,12),(13,'BlueSky Farm','Kochi, India',38.40,13),(14,'Nature’s Bounty Farm','Bangalore, India',70.10,14),(15,'Hilltop Farm','Nagpur, India',42.90,15),(16,'Sunflower Farm','Chennai, India',58.60,16),(17,'Verdant Fields','Mysore, India',61.20,17),(18,'Golden Fields','Goa, India',44.50,18),(19,'Green Land Farm','Kolhapur, India',52.70,19),(20,'Fruitful Acres','Nashik, India',47.30,20),(21,'Highland Farms','Vadodara, India',73.50,21),(22,'Royal Farms','Ranchi, India',55.90,22),(23,'Eco Green Farm','Gorakhpur, India',66.00,23),(24,'AgriGrow Farm','Raipur, India',41.10,24),(25,'Blue River Farm','Indore, India',57.80,25),(26,'Harvest Haven','Guwahati, India',60.50,26),(27,'Serene Valley Farm','Udaipur, India',49.20,27),(28,'Fresh Farm Fields','Faridabad, India',65.80,28),(29,'Nature’s Pride Farm','Kolkata, India',53.40,29),(30,'Golden Agro Farm','Shimla, India',74.30,30);
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farmer`
--

DROP TABLE IF EXISTS `farmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmer` (
  `farmer_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `contact_number` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmer`
--

LOCK TABLES `farmer` WRITE;
/*!40000 ALTER TABLE `farmer` DISABLE KEYS */;
INSERT INTO `farmer` VALUES (1,'Amit Sharma','9876543201','Delhi, India'),(2,'Rajesh Kumar','9876543202','Mumbai, India'),(3,'Suresh Yadav','9876543203','Pune, India'),(4,'Manoj Verma','9876543204','Jaipur, India'),(5,'Arun Singh','9876543205','Lucknow, India'),(6,'Deepak Joshi','9876543206','Bhopal, India'),(7,'Rakesh Chauhan','9876543207','Ahmedabad, India'),(8,'Vinod Mehta','9876543208','Chandigarh, India'),(9,'Sanjay Patel','9876543209','Surat, India'),(10,'Kamal Thakur','9876543210','Patna, India'),(11,'Mukesh Pandey','9876543211','Varanasi, India'),(12,'Dinesh Reddy','9876543212','Hyderabad, India'),(13,'Mahesh Nair','9876543213','Kochi, India'),(14,'Ravi Iyer','9876543214','Bangalore, India'),(15,'Sunil Deshmukh','9876543215','Nagpur, India'),(16,'Narayan Pillai','9876543216','Chennai, India'),(17,'Lokesh Bhat','9876543217','Mysore, India'),(18,'Shankar Rao','9876543218','Goa, India'),(19,'Anil Kulkarni','9876543219','Kolhapur, India'),(20,'Jagdish Shinde','9876543220','Nashik, India'),(21,'Bhavesh Shah','9876543221','Vadodara, India'),(22,'Jitendra Jha','9876543222','Ranchi, India'),(23,'Surendra Tiwari','9876543223','Gorakhpur, India'),(24,'Gopal Mishra','9876543224','Raipur, India'),(25,'Prakash Dubey','9876543225','Indore, India'),(26,'Shivam Choudhary','9876543226','Guwahati, India'),(27,'Harish Saxena','9876543227','Udaipur, India'),(28,'Naveen Bansal','9876543228','Faridabad, India'),(29,'Chandresh Tripathi','9876543229','Kolkata, India'),(30,'Rohit Agrawal','9876543230','Shimla, India');
/*!40000 ALTER TABLE `farmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `farmexpenses`
--

DROP TABLE IF EXISTS `farmexpenses`;
/*!50001 DROP VIEW IF EXISTS `farmexpenses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `farmexpenses` AS SELECT 
 1 AS `farm_id`,
 1 AS `category`,
 1 AS `total_expenses`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `farmtotalsales`
--

DROP TABLE IF EXISTS `farmtotalsales`;
/*!50001 DROP VIEW IF EXISTS `farmtotalsales`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `farmtotalsales` AS SELECT 
 1 AS `farm_id`,
 1 AS `total_sales`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `goodconditionequipment`
--

DROP TABLE IF EXISTS `goodconditionequipment`;
/*!50001 DROP VIEW IF EXISTS `goodconditionequipment`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `goodconditionequipment` AS SELECT 
 1 AS `equipment_id`,
 1 AS `name`,
 1 AS `farm_id`,
 1 AS `condition_level`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `highsellingproducts`
--

DROP TABLE IF EXISTS `highsellingproducts`;
/*!50001 DROP VIEW IF EXISTS `highsellingproducts`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `highsellingproducts` AS SELECT 
 1 AS `product`,
 1 AS `total_sold`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `livestock`
--

DROP TABLE IF EXISTS `livestock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livestock` (
  `livestock_id` int NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `bread` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `farm_id` int DEFAULT NULL,
  PRIMARY KEY (`livestock_id`),
  KEY `fk_livestock` (`farm_id`),
  CONSTRAINT `fk_livestock` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livestock`
--

LOCK TABLES `livestock` WRITE;
/*!40000 ALTER TABLE `livestock` DISABLE KEYS */;
INSERT INTO `livestock` VALUES (1,'Cow','Jersey',10,1),(2,'Cow','Holstein Friesian',12,2),(3,'Buffalo','Murrah',8,3),(4,'Goat','Jamunapari',20,4),(5,'Sheep','Merino',15,5),(6,'Chicken','Broiler',100,6),(7,'Chicken','Layer',120,7),(8,'Duck','Pekin',50,8),(9,'Turkey','Broad Breasted White',30,9),(10,'Pig','Yorkshire',25,10),(11,'Horse','Thoroughbred',5,11),(12,'Donkey','Indian',3,12),(13,'Rabbit','New Zealand White',40,13),(14,'Camel','Bikaneri',2,14),(15,'Cow','Sahiwal',11,15),(16,'Buffalo','Jaffarabadi',9,16),(17,'Goat','Beetal',18,17),(18,'Sheep','Dorper',13,18),(19,'Chicken','Desi',140,19),(20,'Duck','Indian Runner',60,20),(21,'Turkey','Bronze',28,21),(22,'Pig','Duroc',22,22),(23,'Horse','Arabian',6,23),(24,'Rabbit','Flemish Giant',35,24),(25,'Camel','Jaisalmeri',3,25),(26,'Cow','Gir',14,26),(27,'Buffalo','Mehsana',10,27),(28,'Goat','Osmanabadi',21,28),(29,'Sheep','Suffolk',17,29),(30,'Chicken','Kadaknath',130,30);
/*!40000 ALTER TABLE `livestock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `sale_id` int NOT NULL,
  `product` varchar(50) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `sale_date` varchar(50) DEFAULT NULL,
  `farm_id` int DEFAULT NULL,
  PRIMARY KEY (`sale_id`),
  KEY `fk_sales` (`farm_id`),
  CONSTRAINT `fk_sales` FOREIGN KEY (`farm_id`) REFERENCES `farm` (`farm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,'Wheat',500,25000.00,'2024-01-05',1),(2,'Milk',200,8000.00,'2024-01-10',2),(3,'Eggs',1000,5000.00,'2024-01-15',3),(4,'Tomatoes',300,4500.00,'2024-01-20',4),(5,'Rice',600,30000.00,'2024-01-25',5),(6,'Cotton',200,12000.00,'2024-02-01',6),(7,'Carrots',250,3750.00,'2024-02-05',7),(8,'Potatoes',700,10500.00,'2024-02-10',8),(9,'Onions',400,6000.00,'2024-02-15',9),(10,'Maize',500,20000.00,'2024-02-20',10),(11,'Bananas',350,7000.00,'2024-02-25',11),(12,'Strawberries',100,5000.00,'2024-03-01',12),(13,'Oranges',300,9000.00,'2024-03-05',13),(14,'Soybeans',450,27000.00,'2024-03-10',14),(15,'Chickpeas',250,12500.00,'2024-03-15',15),(16,'Milk',220,8800.00,'2024-03-20',16),(17,'Eggs',1100,5500.00,'2024-03-25',17),(18,'Grapes',200,10000.00,'2024-04-01',18),(19,'Mangoes',300,12000.00,'2024-04-05',19),(20,'Peanuts',350,17500.00,'2024-04-10',20),(21,'Cabbage',500,7500.00,'2024-04-15',21),(22,'Brinjals',400,6000.00,'2024-04-20',22),(23,'Chillies',150,4500.00,'2024-04-25',23),(24,'Sugarcane',800,32000.00,'2024-05-01',24),(25,'Coffee Beans',200,24000.00,'2024-05-05',25),(26,'Tea Leaves',300,18000.00,'2024-05-10',26),(27,'Pineapples',150,7500.00,'2024-05-15',27),(28,'Watermelons',250,10000.00,'2024-05-20',28),(29,'Coconuts',200,8000.00,'2024-05-25',29),(30,'Mustard Seeds',400,16000.00,'2024-05-30',30);
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'farmmanagement'
--

--
-- Dumping routines for database 'farmmanagement'
--
/*!50003 DROP PROCEDURE IF EXISTS `GetAllFarms` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetAllFarms`()
begin

select * from farm;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetEmployeeEarning` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetEmployeeEarning`()
begin

select * from employee where salary > 40000;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFarmWithCrops` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFarmWithCrops`()
begin
 SELECT c.crop_id, c.name AS crop_name, c.planting_date, c.harvesting_date, f.name AS farm_name 
    FROM Crop c
    JOIN Farm f ON c.farm_id = f.farm_id;
    
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFarmWithEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFarmWithEmployees`()
begin

SELECT e.employee_id, e.name AS employee_name, e.role, f.name AS farm_name 
FROM Employee e
JOIN Farm f ON e.farm_id = f.farm_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFarmWithExpenses` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFarmWithExpenses`()
begin
select * from employee
order by salary asc
limit 1;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFarmWithFertilizer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFarmWithFertilizer`()
begin
SELECT farm_id, SUM(amount) AS total_fertilizer_expense 
FROM Expenses 
WHERE category = 'Fertilizer' 
GROUP BY farm_id 
HAVING total_fertilizer_expense > 5000;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetFarmWithTotalCrops` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetFarmWithTotalCrops`()
begin

SELECT farm_id, COUNT(*) AS total_crops 
FROM Crop 
GROUP BY farm_id;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetManager` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetManager`()
begin

     SELECT * FROM Employee WHERE role LIKE '%Manager%';

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetMostSoldProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMostSoldProduct`()
begin
select product,sum(quantity)AS total_sold from sales
group by product 
order by total_sold desc
limit 1;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTotalEmployees` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTotalEmployees`()
begin
select farm_id , count(*) 
as total_employees
from employee
group by farm_id;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `GetTotalQuantityProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetTotalQuantityProduct`()
begin

SELECT product, SUM(quantity) AS total_quantity 
FROM Sales 
GROUP BY product;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `farmexpenses`
--

/*!50001 DROP VIEW IF EXISTS `farmexpenses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `farmexpenses` AS select `expenses`.`farm_id` AS `farm_id`,`expenses`.`category` AS `category`,sum(`expenses`.`amount`) AS `total_expenses` from `expenses` group by `expenses`.`farm_id`,`expenses`.`category` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `farmtotalsales`
--

/*!50001 DROP VIEW IF EXISTS `farmtotalsales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `farmtotalsales` AS select `sales`.`farm_id` AS `farm_id`,sum(`sales`.`price`) AS `total_sales` from `sales` group by `sales`.`farm_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `goodconditionequipment`
--

/*!50001 DROP VIEW IF EXISTS `goodconditionequipment`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `goodconditionequipment` AS select `equipment`.`equipment_id` AS `equipment_id`,`equipment`.`name` AS `name`,`equipment`.`farm_id` AS `farm_id`,`equipment`.`condition_level` AS `condition_level` from `equipment` where (`equipment`.`condition_level` = 'Good') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `highsellingproducts`
--

/*!50001 DROP VIEW IF EXISTS `highsellingproducts`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `highsellingproducts` AS select `sales`.`product` AS `product`,sum(`sales`.`quantity`) AS `total_sold` from `sales` group by `sales`.`product` having (`total_sold` > 100) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-23 10:10:34
