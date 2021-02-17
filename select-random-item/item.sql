-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.22 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for roytuts
CREATE DATABASE IF NOT EXISTS `roytuts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `roytuts`;

-- Dumping structure for table roytuts.items
CREATE TABLE IF NOT EXISTS `items` (
  `item_id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int NOT NULL,
  `item_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roytuts.items: ~10 rows (approximately)
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` (`item_id`, `category_id`, `item_name`, `item_date`) VALUES
	(1, 1, 'item1', '2014-04-11 08:43:06'),
	(2, 1, 'item2', '2014-04-11 08:43:07'),
	(3, 2, 'item3', '2014-04-11 08:43:08'),
	(4, 2, 'item4', '2014-04-11 08:43:09'),
	(5, 3, 'item5', '2014-04-11 08:43:10'),
	(6, 3, 'item6', '2014-04-11 08:43:11'),
	(7, 4, 'item7', '2014-04-11 08:43:12'),
	(8, 4, 'item8', '2014-04-11 08:43:13'),
	(9, 5, 'item9', '2014-04-11 08:43:14'),
	(10, 5, 'item10', '2014-04-11 08:43:15');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;

-- Dumping structure for table roytuts.item_categories
CREATE TABLE IF NOT EXISTS `item_categories` (
  `category_id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roytuts.item_categories: ~5 rows (approximately)
/*!40000 ALTER TABLE `item_categories` DISABLE KEYS */;
INSERT INTO `item_categories` (`category_id`, `category_name`, `category_date`) VALUES
	(1, 'cat1', '2014-04-11 08:42:06'),
	(2, 'cat2', '2014-04-11 08:42:07'),
	(3, 'cat3', '2014-04-11 08:42:08'),
	(4, 'cat4', '2014-04-11 08:42:09'),
	(5, 'cat5', '2014-04-11 08:42:10');
/*!40000 ALTER TABLE `item_categories` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
