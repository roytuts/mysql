-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.17 - MySQL Community Server - GPL
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

-- Dumping structure for function roytuts.get_key
DELIMITER //
CREATE DEFINER=`root`@`localhost` FUNCTION `get_key`() RETURNS varchar(4) CHARSET utf8mb4 COLLATE utf8mb4_unicode_ci
    DETERMINISTIC
BEGIN
	 DECLARE gen_key VARCHAR(4);
    INSERT INTO key_generator() VALUE();
    SELECT CONVERT(MAX(key_id),CHAR(4)) INTO gen_key FROM key_generator;
    RETURN LPAD(gen_key,4,'0');
END//
DELIMITER ;

-- Dumping structure for table roytuts.key_generator
CREATE TABLE IF NOT EXISTS `key_generator` (
  `key_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`key_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roytuts.key_generator: ~13 rows (approximately)
/*!40000 ALTER TABLE `key_generator` DISABLE KEYS */;
INSERT INTO `key_generator` (`key_id`) VALUES
	(1),
	(9),
	(10),
	(11),
	(12),
	(13),
	(14),
	(15),
	(16),
	(17),
	(18),
	(19),
	(20),
	(21),
	(22);
/*!40000 ALTER TABLE `key_generator` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
