-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `project`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `project`;

--
-- Table structure for table `nutrition_checker`
--

DROP TABLE IF EXISTS `nutrition_checker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutrition_checker` (
  `Id` int NOT NULL,
  `Symptom` varchar(100) DEFAULT NULL,
  `Nutrient` varchar(50) DEFAULT NULL,
  `Daily_requirement` varchar(20) DEFAULT NULL,
  `Food_remedy` text,
  `Category` varchar(20) DEFAULT NULL,
  `Description` text,
  `Lifestyle_remedies` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutrition_checker`
--

LOCK TABLES `nutrition_checker` WRITE;
/*!40000 ALTER TABLE `nutrition_checker` DISABLE KEYS */;
INSERT INTO `nutrition_checker` VALUES (1,'Night blindness','Vitamin A','700-900 µg','Carrots, sweet potatoes, spinach','Vitamin','Essential for vision and immune function.','Ensure adequate eye rest, avoid prolonged screen exposure, include safe sun exposure'),(2,'Cracked lips','Vitamin B2 (Riboflavin)','1.1-1.3 mg','Eggs, almonds, spinach','Vitamin','Supports energy metabolism and cellular function. Deficiency can cause dry, cracked lips and mouth sores.','Avoid spicy foods, stay hydrated, apply lip balm, avoid smoking'),(3,'Dry skin','Omega-3 fatty acids','250-500 mg EPA + DHA','Fatty fish, flaxseeds, walnuts','Fatty Acid','Essential for skin hydration and elasticity. Deficiency can cause flaky, rough skin.','Use gentle skincare, avoid long hot showers, include healthy fats in diet'),(4,'Numbness or tingling','Vitamin B12','2.4 µg','Meat, eggs, dairy, fortified cereals','Vitamin','Supports nerve health and red blood cell formation.','Regular stretching, ergonomic sitting posture, avoid prolonged inactivity'),(5,'Trouble sleeping','Magnesium','310-420 mg','Pumpkin seeds, dark chocolate, bananas','Mineral','Magnesium regulates melatonin and supports nervous system relaxation. Deficiency can lead to insomnia.','Maintain a consistent bedtime, limit caffeine intake, meditate before sleep, include magnesium-rich foods at dinner'),(6,'Fatigue','Iron','8-18 mg','Red meat, spinach, lentils','Mineral','Transports oxygen in blood; prevents anemia.','Maintain a regular sleep schedule, stress reduction (yoga, meditation), hydration'),(7,'Muscle cramps','Magnesium','310-420 mg','Nuts, whole grains, leafy greens','Mineral','Aids muscle and nerve function.','Stay hydrated, stretch before sleeping, use massage or warm compress for relief'),(8,'Tooth decay','Calcium','1000 mg','Milk, cheese, yogurt','Mineral','Strengthens teeth and bones.','Maintain oral hygiene, reduce sugary foods, regular dental checkups'),(9,'Weak immune system','Zinc','8-11 mg','Meat, shellfish, legumes','Mineral','Supports immune system and wound healing.','Practice stress management, maintain adequate sleep, follow hygiene routines'),(10,'Poor blood clotting','Vitamin K','90-120 µg','Leafy greens, broccoli, Brussels sprouts','Vitamin','Vital for blood clotting and bone metabolism.','Avoid excessive alcohol, maintain healthy liver function, regular medical checkups'),(11,'Irritability','Vitamin B6','1.3-2.0 mg','Bananas, poultry, potatoes','Vitamin','Supports metabolism and brain function.','Follow relaxation techniques, ensure proper sleep, practice mindfulness'),(12,'Hair loss','Biotin','30 µg','Egg yolk, nuts, seeds','Vitamin','Helps with hair, skin, and metabolism.','Gentle scalp massage, avoid harsh chemicals, reduce stress and heat styling'),(13,'Bone pain','Phosphorus','700 mg','Meat, fish, dairy products','Mineral','Supports bone health and energy storage.','Do regular exercise, yoga for flexibility, ensure proper posture'),(14,'Depression','Folate (B9)','400 µg','Leafy greens, legumes, citrus fruits','Vitamin','Supports mood regulation and DNA synthesis.','Maintain regular physical activity, exposure to sunlight, stress management activities'),(15,'Growth retardation','Protein','46-56 g','Eggs, meat, beans, tofu','Macronutrient','Essential for growth, repair, and body maintenance.','Maintain regular physical activity, ensure adequate sleep, monitor growth regularly');
/*!40000 ALTER TABLE `nutrition_checker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutritionchecker`
--

DROP TABLE IF EXISTS `nutritionchecker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutritionchecker` (
  `Id` int NOT NULL,
  `Nutrient` varchar(50) DEFAULT NULL,
  `Symptom` varchar(100) DEFAULT NULL,
  `Food_remedy` text,
  `Daily_requirement` varchar(20) DEFAULT NULL,
  `Category` varchar(50) DEFAULT NULL,
  `Description` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutritionchecker`
--

LOCK TABLES `nutritionchecker` WRITE;
/*!40000 ALTER TABLE `nutritionchecker` DISABLE KEYS */;
INSERT INTO `nutritionchecker` VALUES (1,'Iron','Fatigue','Red meat, spinach','8–18 mg','Mineral','Helps carry oxygen in blood'),(2,'Vitamin B12','Numbness','Eggs, dairy','2.4 µg','Vitamin','Supports nerve function'),(3,'Vitamin D','Bone pain','Sunlight, fatty fish','600 IU','Vitamin','Boosts calcium absorption'),(4,'Calcium','Tooth decay','Milk, cheese, yogurt','1000 mg','Mineral','Essential for bones and teeth'),(5,'Vitamin C','Bleeding gums','Citrus fruits, guava','65–90 mg','Vitamin','Promotes tissue repair');
/*!40000 ALTER TABLE `nutritionchecker` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-21 20:36:31
