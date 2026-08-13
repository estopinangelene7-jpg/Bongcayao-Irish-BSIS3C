-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for irish
CREATE DATABASE IF NOT EXISTS `irish` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `irish`;

-- Dumping structure for table irish.appointment
CREATE TABLE IF NOT EXISTS `appointment` (
  `AppointmentID` int NOT NULL,
  `PatientID` varchar(50) DEFAULT NULL,
  `DoctorID` varchar(50) DEFAULT NULL,
  `AppointmentDate` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AppointmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table irish.appointment: ~0 rows (approximately)
INSERT INTO `appointment` (`AppointmentID`, `PatientID`, `DoctorID`, `AppointmentDate`) VALUES
	(1, '01', '01', '2026-07-05'),
	(2, '02', '02', '2026-07-06');

-- Dumping structure for table irish.billing
CREATE TABLE IF NOT EXISTS `billing` (
  `BillID` int NOT NULL,
  `PatientID` varchar(50) DEFAULT NULL,
  `Amount` varchar(50) DEFAULT NULL,
  `PaymentStatus` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`BillID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table irish.billing: ~0 rows (approximately)
INSERT INTO `billing` (`BillID`, `PatientID`, `Amount`, `PaymentStatus`) VALUES
	(1, '01', '2500', 'Paid'),
	(2, '02', '1800', '	Unpaid');

-- Dumping structure for table irish.department
CREATE TABLE IF NOT EXISTS `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table irish.department: ~0 rows (approximately)
INSERT INTO `department` (`DepartmentID`, `DepartmentName`) VALUES
	(1, 'Pediatrics'),
	(2, 'Cardiology');

-- Dumping structure for table irish.doctor
CREATE TABLE IF NOT EXISTS `doctor` (
  `DoctorID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Specialization` varchar(50) DEFAULT NULL,
  `DepartmentID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`DoctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table irish.doctor: ~0 rows (approximately)
INSERT INTO `doctor` (`DoctorID`, `FirstName`, `LastName`, `Specialization`, `DepartmentID`) VALUES
	(1, 'Anna', 'Reyes', 'Pediatrics', 'Dep01'),
	(2, 'Mari', 'Garcia', 'Cardiology', 'Dep02');

-- Dumping structure for table irish.patient
CREATE TABLE IF NOT EXISTS `patient` (
  `PatientID` int NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Gender` varchar(50) DEFAULT NULL,
  `Age` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PatientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table irish.patient: ~0 rows (approximately)
INSERT INTO `patient` (`PatientID`, `FirstName`, `LastName`, `Gender`, `Age`, `username`, `password`) VALUES
	(1, 'Maria', 'Santos', 'Female', '28', 'irish', '123'),
	(2, 'Arjemar', 'Gornez', 'Male', '35', 'arjemar', '456');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
