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

-- Dumping structure for table roytuts.cat
CREATE TABLE IF NOT EXISTS `cat` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `p_id` int(11) DEFAULT '0',
  `cat_path` tinytext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roytuts.cat: ~17 rows (approximately)
/*!40000 ALTER TABLE `cat` DISABLE KEYS */;
INSERT INTO `cat` (`cat_id`, `cat_name`, `p_id`, `cat_path`) VALUES
	(1, 'Java', 0, NULL),
	(2, 'PHP', 0, NULL),
	(3, 'Frameworks', 0, NULL),
	(4, 'JSF', 3, 'Frameworks'),
	(5, 'Struts', 3, 'Frameworks'),
	(6, 'Spring', 3, 'Frameworks'),
	(7, 'Hibernate', 3, 'Frameworks'),
	(8, 'Webservices', 0, NULL),
	(9, 'REST', 8, 'Webservices'),
	(10, 'SOAP', 8, 'Webservices'),
	(11, 'Database', 0, NULL),
	(12, 'MySQL', 11, 'Database'),
	(13, 'Oracle', 11, 'Database'),
	(14, 'Tutorials', 0, NULL),
	(15, 'Scripts', 14, 'Tutorials'),
	(16, 'JavaScript', 15, 'Tutorials->Scripts'),
	(17, 'JQuery', 15, 'Tutorials->Scripts');
/*!40000 ALTER TABLE `cat` ENABLE KEYS */;

-- Dumping structure for procedure roytuts.nested_path
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `nested_path`()
BEGIN
	DECLARE path_count, p_count INT;
    SELECT COUNT(*) INTO p_count FROM cat WHERE p_id = 0;
    UPDATE cat SET cat_path = NULL;
    UPDATE cat a, cat b SET a.cat_path = b.cat_name WHERE b.p_id = 0 AND a.p_id = b.cat_id;
    SELECT COUNT(*) INTO path_count FROM cat WHERE cat_path IS NULL;
    
    WHILE path_count > p_count DO
        UPDATE cat a, cat b SET a.cat_path = CONCAT(b.cat_path, '->', b.cat_name)
        WHERE b.cat_path IS NOT NULL AND a.p_id = b.cat_id;
        SELECT COUNT(*) INTO path_count FROM cat WHERE cat_path IS NULL;
    END WHILE;
END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
