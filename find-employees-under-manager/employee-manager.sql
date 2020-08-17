-- Query to find out employees under each manager

SELECT mgr.emp_id AS manager_id, COUNT(mgr.emp_id) AS no_of_employees
	FROM employee mgr, employee e
		WHERE e.emp_mgr_id = mgr.emp_id
			GROUP BY mgr.emp_id;


-- Dumping database structure for roytuts
CREATE DATABASE IF NOT EXISTS `roytuts` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `roytuts`;

-- Dumping structure for table roytuts.employee
CREATE TABLE IF NOT EXISTS `employee` (
  `emp_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `emp_first_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_last_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_mgr_id` int(11) DEFAULT NULL,
  `emp_designation` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7975 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table roytuts.employee: ~16 rows (approximately)
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` (`emp_id`, `emp_first_name`, `emp_last_name`, `emp_mgr_id`, `emp_designation`) VALUES
	(7369, 'SMITH', 'JHON', 7902, 'CLERK'),
	(7499, 'ALLEN', 'BORDER', 7698, 'SALESMAN'),
	(7521, 'WARD', 'SPACE', 7698, 'SALESMAN'),
	(7654, 'MARTIN', 'FOWLER', 7698, 'SALESMAN'),
	(7698, 'BLAKE', 'RAY', NULL, 'MANAGER'),
	(7782, 'CLARK', 'MICHAEL', NULL, 'MANAGER'),
	(7788, 'SCOTT', 'TIGER', 7566, 'ANALYST'),
	(7839, 'KING', 'ROY', NULL, 'VICE PRESIDENT'),
	(7844, 'TURNER', 'RICK', 7698, 'SALESMAN'),
	(7876, 'ADAMS', 'EVE', 7788, 'CLERK'),
	(7900, 'JAMES', 'BOND', 7698, 'CLERK'),
	(7902, 'FORD', 'LAMBDA', 7566, 'ANALYST'),
	(7934, 'MILLER', 'JOHN', 7782, 'CLERK'),
	(7954, 'FRANK', 'JOHN', NULL, 'MANAGER'),
	(7964, 'MARTIN', 'HIKMAN', NULL, 'CLERK'),
	(7974, 'APRIL', 'HICKMAN', NULL, 'SALESMAN');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
