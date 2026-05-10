/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for osx10.21 (arm64)
--
-- Host: localhost    Database: Kitchen
-- ------------------------------------------------------
-- Server version	12.1.2-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `Ingredient`
--

DROP TABLE IF EXISTS `Ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Ingredient` (
  `IngredientID` int(11) NOT NULL AUTO_INCREMENT,
  `IngdName` varchar(100) NOT NULL,
  `MeasurementUnit` varchar(50) DEFAULT NULL,
  `Quantity` decimal(5,2) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`IngredientID`),
  CONSTRAINT `CHK_Quantity` CHECK (`Quantity` >= 0)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ingredient`
--

LOCK TABLES `Ingredient` WRITE;
/*!40000 ALTER TABLE `Ingredient` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Ingredient` VALUES
(1,'Sugar','cups',10.00,'upper cabinet'),
(2,'Brown sugar','cups',7.00,'upper cabinet'),
(3,'Flour','cups',12.00,'upper cabinet'),
(4,'Walnuts','cups',3.00,'freezer'),
(5,'Yeast','teaspoons',15.00,'freezer'),
(6,'Baking powder','teaspoons',25.00,'upper cabinet'),
(7,'Baking soda','teaspoons',24.00,'upper cabinet'),
(8,'salt','teaspoons',40.00,'upper cabinet'),
(9,'peanut butter','cups',2.50,'refrigerator'),
(10,'butter','lbs',5.00,'freezer'),
(11,'vanilla','teaspoons',14.00,'small cabinet'),
(12,'eggs',NULL,12.00,'refrigerator'),
(13,'shortening','cups',13.00,'upper cabinet'),
(14,'graham crackers','cups',NULL,NULL),
(15,'cream cheese','oz',24.00,'refrigerator'),
(16,'sour cream','oz',16.00,'refrigerator'),
(17,'Sugar','cups',10.00,'upper cabinet'),
(18,'Brown sugar','cups',7.00,'upper cabinet'),
(19,'Flour','cups',12.00,'upper cabinet'),
(20,'Walnuts','cups',3.00,'freezer'),
(21,'Yeast','teaspoons',15.00,'freezer'),
(22,'Baking powder','teaspoons',25.00,'upper cabinet'),
(23,'Baking soda','teaspoons',24.00,'upper cabinet'),
(24,'salt','teaspoons',40.00,'upper cabinet'),
(25,'peanut butter','cups',2.50,'refrigerator'),
(26,'butter','lbs',5.00,'freezer'),
(27,'vanilla','teaspoons',14.00,'small cabinet'),
(28,'eggs',NULL,12.00,'refrigerator'),
(29,'shortening','cups',13.00,'upper cabinet'),
(30,'graham crackers','cups',NULL,NULL),
(31,'cream cheese','oz',24.00,'refrigerator'),
(32,'sour cream','oz',16.00,'refrigerator');
/*!40000 ALTER TABLE `Ingredient` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Recipe`
--

DROP TABLE IF EXISTS `Recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Recipe` (
  `RecipeID` int(11) NOT NULL AUTO_INCREMENT,
  `RcpName` varchar(100) NOT NULL,
  `RcpNote` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`RecipeID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recipe`
--

LOCK TABLES `Recipe` WRITE;
/*!40000 ALTER TABLE `Recipe` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Recipe` VALUES
(1,'Sandies Cookies',NULL),
(2,'Peanut Butter Cookies','delicious'),
(3,'Cheese Cake','the best'),
(4,'Sandies Cookies',NULL),
(5,'Peanut Butter Cookies','delicious'),
(6,'Cheese Cake','the best');
/*!40000 ALTER TABLE `Recipe` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `RecipeIngredient`
--

DROP TABLE IF EXISTS `RecipeIngredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeIngredient` (
  `RecipeID` int(11) NOT NULL,
  `IngredientID` int(11) NOT NULL,
  `Amount` decimal(5,2) NOT NULL,
  PRIMARY KEY (`RecipeID`,`IngredientID`),
  KEY `IngredientID` (`IngredientID`),
  CONSTRAINT `1` FOREIGN KEY (`RecipeID`) REFERENCES `Recipe` (`RecipeID`),
  CONSTRAINT `2` FOREIGN KEY (`IngredientID`) REFERENCES `Ingredient` (`IngredientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeIngredient`
--

LOCK TABLES `RecipeIngredient` WRITE;
/*!40000 ALTER TABLE `RecipeIngredient` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `RecipeIngredient` VALUES
(1,1,0.50),
(1,3,2.00),
(1,4,1.00),
(1,10,0.50),
(1,11,1.00),
(2,1,1.00),
(2,2,1.00),
(2,3,3.00),
(2,7,2.00),
(2,8,0.13),
(2,9,1.00),
(2,10,0.50),
(2,11,1.00),
(2,12,2.00),
(2,13,0.50),
(3,1,1.87),
(3,8,0.13),
(3,10,0.50),
(3,11,2.00),
(3,12,4.00),
(3,14,1.50),
(3,15,24.00),
(3,16,16.00);
/*!40000 ALTER TABLE `RecipeIngredient` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `RecipeInstruction`
--

DROP TABLE IF EXISTS `RecipeInstruction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeInstruction` (
  `RecipeID` int(11) NOT NULL,
  `Number` int(11) NOT NULL,
  `Instruction` varchar(5000) NOT NULL,
  PRIMARY KEY (`RecipeID`,`Number`),
  CONSTRAINT `1` FOREIGN KEY (`RecipeID`) REFERENCES `Recipe` (`RecipeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeInstruction`
--

LOCK TABLES `RecipeInstruction` WRITE;
/*!40000 ALTER TABLE `RecipeInstruction` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `RecipeInstruction` VALUES
(1,1,'Cream butter and sugar'),
(1,2,'Add vanilla and flour, mix well'),
(1,3,'Add nuts, mix'),
(1,4,'Drop by teaspoon onto ungreesed cookie sheet'),
(1,5,'Cook at 325 F for 18-20 mins. Do not brown'),
(2,1,'Preheat oven to 350 F'),
(2,2,'Thoroughly cream shortening, vanilla, sugar, brown sugar'),
(2,3,'Add eggs and beat well'),
(2,4,'Stir in peanut butter'),
(2,5,'In a separate bowl, mix together flour, salt, baking soda'),
(2,6,'Add flour mixture to peanut butter mixture, combine thoroughly'),
(2,7,'Form into tiny balls and place on cookie sheets'),
(2,8,'Press each cookie twice with the back of a fork to make a crisscross design'),
(2,9,'Bake 8-10 mins'),
(3,1,'Crumb crust: Mix graham cracker crumbs, 1/4 c sugar (scant), butter. Press firmly over the bottom and up the sides 2 1/2 inches of a heavily buttered spring-form pan. Chill.'),
(3,2,'Filling: Let cream cheese soften in a bowl'),
(3,3,'Blend 1 1/2 c sugar with cream cheese'),
(3,4,'Add salt. Beat until fluffy'),
(3,5,'Add eggs one at a time beating well at low speed after each addition'),
(3,6,'Beat in 1 tsp. vanilla and 8 oz sour cream'),
(3,7,'Pour into crumb crust'),
(3,8,'Bake at 350 F for 50 mins or more until up to the rim of the pan and slightly browned'),
(3,9,'Remove from oven and let stand for 15 mins'),
(3,10,'Topping: Mix remaining 8 oz. sour cream with 1 tsp vanilla and 2 tblsp sugar'),
(3,11,'Spead topping on cake. Return to oven for 10 minutes'),
(3,12,'CHILL completely');
/*!40000 ALTER TABLE `RecipeInstruction` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `RecipeTool`
--

DROP TABLE IF EXISTS `RecipeTool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `RecipeTool` (
  `RecipeID` int(11) NOT NULL,
  `ToolID` int(11) NOT NULL,
  PRIMARY KEY (`RecipeID`,`ToolID`),
  KEY `ToolID` (`ToolID`),
  CONSTRAINT `1` FOREIGN KEY (`RecipeID`) REFERENCES `Recipe` (`RecipeID`),
  CONSTRAINT `2` FOREIGN KEY (`ToolID`) REFERENCES `Tool` (`ToolID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RecipeTool`
--

LOCK TABLES `RecipeTool` WRITE;
/*!40000 ALTER TABLE `RecipeTool` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `RecipeTool` VALUES
(1,3),
(2,3),
(3,3),
(2,4),
(3,5),
(3,6),
(1,8),
(2,8),
(3,8),
(2,9),
(3,9),
(3,12),
(1,14),
(2,14),
(3,14),
(2,16),
(3,16),
(1,18),
(2,18),
(2,21),
(1,22),
(2,22),
(3,23);
/*!40000 ALTER TABLE `RecipeTool` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `Tool`
--

DROP TABLE IF EXISTS `Tool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `Tool` (
  `ToolID` int(11) NOT NULL AUTO_INCREMENT,
  `ToolName` varchar(100) NOT NULL,
  `Note` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ToolID`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tool`
--

LOCK TABLES `Tool` WRITE;
/*!40000 ALTER TABLE `Tool` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `Tool` VALUES
(1,'Large Frying Pan','non-stick; left cabinet'),
(2,'Small Frying Pan','non-stick; left cabinet'),
(3,'Large mixing bowl','left island cabinet'),
(4,'Medium mixing bowl','left island cabinet'),
(5,'Small mixing bowl','left island cabinet'),
(6,'Whisk','middle drawer'),
(7,'Scraper','middle drawer'),
(8,'1 cup measure','left drawer'),
(9,'1/2 cup measure','left drawer'),
(10,'1/3 cup measure','left drawer'),
(11,'1/4 cup measure','left drawer'),
(12,'1 tablespoon measure','left drawer'),
(13,'1/2 tablespoon measure','left drawer'),
(14,'1 teaspoon measure','left drawer'),
(15,'1/2 teaspoon measure','left drawer'),
(16,'1/4 teaspoon measure','left drawer'),
(17,'liquid measure','pyrex; 2 cups; top left cabinet'),
(18,'cookie pan','blue; cooks fast; middle bottom cabinet'),
(19,'dutch oven','iron; 100 yrs old; right bottom cabinet'),
(20,'pie pan','pyrex; left bottom cabinet'),
(21,'fork','cutlery drawer'),
(22,'mixing spoon','right drawer'),
(23,'spring-form pan','left bottom cabinet'),
(24,'Large Frying Pan','non-stick; left cabinet'),
(25,'Small Frying Pan','non-stick; left cabinet'),
(26,'Large mixing bowl','left island cabinet'),
(27,'Medium mixing bowl','left island cabinet'),
(28,'Small mixing bowl','left island cabinet'),
(29,'Whisk','middle drawer'),
(30,'Scraper','middle drawer'),
(31,'1 cup measure','left drawer'),
(32,'1/2 cup measure','left drawer'),
(33,'1/3 cup measure','left drawer'),
(34,'1/4 cup measure','left drawer'),
(35,'1 tablespoon measure','left drawer'),
(36,'1/2 tablespoon measure','left drawer'),
(37,'1 teaspoon measure','left drawer'),
(38,'1/2 teaspoon measure','left drawer'),
(39,'1/4 teaspoon measure','left drawer'),
(40,'liquid measure','pyrex; 2 cups; top left cabinet'),
(41,'cookie pan','blue; cooks fast; middle bottom cabinet'),
(42,'dutch oven','iron; 100 yrs old; right bottom cabinet'),
(43,'pie pan','pyrex; left bottom cabinet'),
(44,'fork','cutlery drawer'),
(45,'mixing spoon','right drawer'),
(46,'spring-form pan','left bottom cabinet');
/*!40000 ALTER TABLE `Tool` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Temporary table structure for view `shoppinglist`
--

DROP TABLE IF EXISTS `shoppinglist`;
/*!50001 DROP VIEW IF EXISTS `shoppinglist`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `shoppinglist` AS SELECT
 1 AS `IngredientID`,
  1 AS `IngdName`,
  1 AS `Quantity` */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `shoppinglist`
--

/*!50001 DROP VIEW IF EXISTS `shoppinglist`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_uca1400_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `kitchen`.`shoppinglist` AS select `kitchen`.`ingredient`.`IngredientID` AS `IngredientID`,`kitchen`.`ingredient`.`IngdName` AS `IngdName`,`kitchen`.`ingredient`.`Quantity` AS `Quantity` from `kitchen`.`ingredient` where `kitchen`.`ingredient`.`Quantity` < 1 or `kitchen`.`ingredient`.`Quantity` is null */;
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
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-04-21  9:22:02
