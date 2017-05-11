-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versione server:              5.6.10 - MySQL Community Server (GPL)
-- S.O. server:                  Win64
-- HeidiSQL Versione:            8.1.0.4545
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dump della struttura del database tesi
CREATE DATABASE IF NOT EXISTS `tesi` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `tesi`;


-- Dump della struttura di tabella tesi.reservations
CREATE TABLE IF NOT EXISTS `reservations` (
  `id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `family` char(50) NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `extra` enum('STANDARD','SUITE') NOT NULL DEFAULT 'STANDARD',
  `room` char(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `family` (`family`),
  KEY `FK_reservations_rooms` (`room`),
  CONSTRAINT `FK_reservations_rooms` FOREIGN KEY (`room`) REFERENCES `rooms` (`idRoom`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella tesi.reservations: ~89 rows (circa)
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` (`id`, `family`, `arrival`, `departure`, `extra`, `room`) VALUES
	(0001, 'Piccard', '2013-07-13', '2013-07-27', 'STANDARD', '1 Giuggiolo'),
	(0002, 'Kuit', '2013-07-13', '2013-07-20', 'STANDARD', '2 Gelso'),
	(0003, 'Blauw', '2013-07-13', '2013-07-27', 'STANDARD', '4 Quercia'),
	(0004, 'Dubois', '2013-07-14', '2013-07-27', 'STANDARD', '5 Sambuco'),
	(0005, 'Maaike', '2013-07-13', '2013-07-20', 'STANDARD', '8 Leccio'),
	(0006, 'Adelmann', '2013-07-13', '2013-07-20', 'STANDARD', '9 Olivo'),
	(0007, 'Simone', '2013-07-15', '2013-08-03', 'STANDARD', '10 Corniolo'),
	(0008, 'Krik', '2013-07-13', '2013-07-27', 'STANDARD', '11 Tiglio'),
	(0009, 'Marinus', '2013-07-13', '2013-07-27', 'SUITE', '13 Suite S Olmo'),
	(0010, 'Angelique', '2013-07-20', '2013-07-27', 'STANDARD', '2 Gelso'),
	(0011, 'Kuppers', '2013-07-20', '2013-08-03', 'STANDARD', '3 Diospero'),
	(0012, 'De Schepper', '2013-07-20', '2013-08-03', 'STANDARD', '6 Susino'),
	(0013, 'Karsten', '2013-07-20', '2013-07-27', 'STANDARD', '5 Sambuco'),
	(0014, 'Thomas', '2013-07-20', '2013-07-27', 'STANDARD', '9 Olivo'),
	(0015, 'Deper', '2013-07-27', '2013-07-10', 'STANDARD', '1 Giuggiolo'),
	(0016, 'Jensen', '2013-07-27', '2013-08-03', 'STANDARD', '2 Gelso'),
	(0017, 'Versteeg', '2013-07-27', '2013-08-03', 'STANDARD', '4 Quercia'),
	(0018, 'Haas', '2013-07-27', '2013-08-03', 'STANDARD', '5 Sambuco'),
	(0019, 'Haerens', '2013-07-27', '2013-08-03', 'STANDARD', '6 Susino'),
	(0020, 'Neumann', '2013-07-27', '2013-08-03', 'STANDARD', '8 Leccio'),
	(0021, 'Linderod', '2013-07-27', '2013-08-03', 'STANDARD', '9 Olivo'),
	(0022, 'Van Dam', '2013-07-27', '2013-08-03', 'STANDARD', '11 Tiglio'),
	(0023, 'Meijer', '2013-07-27', '2013-08-10', 'STANDARD', '13 Suite S Olmo'),
	(0024, 'Carrara', '2013-07-31', '2013-08-03', 'SUITE', '14 Suite Noce'),
	(0025, 'Chevrolet', '2013-08-03', '2013-08-17', 'STANDARD', '2 Gelso'),
	(0026, 'Prano', '2013-08-04', '2013-08-17', 'STANDARD', '15 Corbezzolo Cottage'),
	(0027, 'Weda', '2013-08-03', '2013-08-10', 'STANDARD', '3 Diospero'),
	(0028, 'Van Onselen', '2013-08-03', '2013-08-10', 'STANDARD', '4 Quercia'),
	(0029, 'Tulleners', '2013-08-03', '2013-08-10', 'STANDARD', '5 Sambuco'),
	(0030, 'Ferrand', '2013-08-03', '2013-08-10', 'STANDARD', '6 Susino'),
	(0031, 'Smal', '2013-08-03', '2013-08-10', 'STANDARD', '9 Olivo'),
	(0032, 'Ruggiu', '2013-08-03', '2013-08-17', 'STANDARD', '10 Corniolo'),
	(0033, 'Vezzalini', '2013-08-10', '2013-08-17', 'STANDARD', '1 Giuggiolo'),
	(0034, 'Bologna', '2013-08-10', '2013-08-17', 'STANDARD', '3 Diospero'),
	(0035, 'Ferrand', '2013-08-10', '2013-08-17', 'STANDARD', '4 Quercia'),
	(0036, 'Van der Tol', '2013-08-10', '2013-08-17', 'STANDARD', '5 Sambuco'),
	(0037, 'Santarossa', '2013-08-10', '2013-08-21', 'STANDARD', '6 Susino'),
	(0038, 'Tittel', '2013-08-10', '2013-08-24', 'STANDARD', '8 Leccio'),
	(0039, 'Sbriccoli', '2013-08-10', '2013-08-24', 'STANDARD', '11 Tiglio'),
	(0040, 'Mitra', '2013-08-10', '2013-08-17', 'SUITE', '13 Suite S Olmo'),
	(0041, 'Bremicker', '2013-08-10', '2013-08-17', 'SUITE', '14 Suite Noce'),
	(0042, 'Westeneng', '2013-08-17', '2013-08-24', 'STANDARD', '2 Gelso'),
	(0043, 'Hanson', '2013-08-17', '2013-08-24', 'STANDARD', '3 Diospero'),
	(0044, 'Nanninga', '2013-08-17', '2013-08-24', 'SUITE', '13 Suite S Olmo'),
	(0045, 'Di Marco', '2013-08-13', '2013-08-24', 'SUITE', '14 Suite Noce'),
	(0046, 'Ferrari', '2013-08-24', '2013-08-31', 'STANDARD', '5 Sambuco'),
	(0047, 'Melucci', '2013-08-17', '2013-08-24', 'STANDARD', '5 Sambuco'),
	(0048, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '1 Giuggiolo'),
	(0049, 'Falzo', '2013-09-21', '2013-09-22', 'SUITE', '14 Suite Noce'),
	(0050, 'Gervasi', '2013-08-03', '2013-08-10', 'SUITE', '14 Suite Noce'),
	(0051, 'Mastellone', '2013-08-10', '2013-08-23', 'STANDARD', '9 Olivo'),
	(0053, 'Belotti', '2013-08-17', '2013-08-20', 'STANDARD', '3 Diospero'),
	(0054, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '2 Gelso'),
	(0055, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '3 Diospero'),
	(0056, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '4 Quercia'),
	(0057, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '5 Sambuco'),
	(0058, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '6 Susino'),
	(0059, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '8 Leccio'),
	(0060, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '9 Olivo'),
	(0061, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '10 Corniolo'),
	(0062, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '11 Tiglio'),
	(0063, 'Di Clemente', '2013-09-07', '2013-09-08', 'SUITE', '13 Suite S Olmo'),
	(0064, 'Di Clemente', '2013-09-07', '2013-09-08', 'SUITE', '14 Suite Noce'),
	(0065, 'Di Clemente', '2013-09-07', '2013-09-08', 'STANDARD', '15 Corbezzolo Cottage'),
	(0066, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '5 SAMBUCO'),
	(0067, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '4 QUERCIA'),
	(0068, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '3 DIOSPERO'),
	(0069, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '9 OLIVO'),
	(0070, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '11 TIGLIO'),
	(0071, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '2 GELSO'),
	(0072, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '1 GIUGGIOLO'),
	(0073, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '10 CORNIOLO'),
	(0074, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '6 SUSINO'),
	(0075, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '8 LECCIO'),
	(0076, 'Acquafresca', '2013-10-28', '2013-11-03', 'SUITE', '13 SUITE S OLMO'),
	(0077, 'Acquafresca', '2013-10-28', '2013-11-03', 'SUITE', '14 SUITE NOCE'),
	(0078, 'Acquafresca', '2013-10-28', '2013-11-03', 'STANDARD', '15 CORBEZZOLO COTTAGE'),
	(0079, 'Baldelli', '2013-10-01', '2013-10-06', 'STANDARD', '5 SAMBUCO'),
	(0080, 'Baldelli', '2013-10-01', '2013-10-06', 'STANDARD', '4 QUERCIA'),
	(0081, 'Baldelli', '2013-10-01', '2013-10-06', 'STANDARD', '15 CORBEZZOLO COTTAGE'),
	(0082, 'Rossi', '2013-10-26', '2013-10-27', 'STANDARD', '5 SAMBUCO'),
	(0083, 'Rossi', '2013-10-26', '2013-10-27', 'STANDARD', '4 QUERCIA'),
	(0084, 'Rossi', '2013-10-26', '2013-10-27', 'STANDARD', '3 DIOSPERO'),
	(0085, 'Rossi', '2013-10-26', '2013-10-27', 'STANDARD', '9 OLIVO'),
	(0086, 'Bianchi', '2013-10-26', '2013-10-27', 'STANDARD', '11 TIGLIO'),
	(0087, 'Bianchi', '2013-10-26', '2013-10-27', 'STANDARD', '2 GELSO'),
	(0088, 'Bianchi', '2013-10-26', '2013-10-27', 'STANDARD', '1 GIUGGIOLO'),
	(0089, 'Bianchi', '2013-10-26', '2013-10-27', 'STANDARD', '8 LECCIO'),
	(0090, 'Verdi', '2013-10-26', '2013-10-27', 'STANDARD', '10 CORNIOLO');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;


-- Dump della struttura di tabella tesi.rooms
CREATE TABLE IF NOT EXISTS `rooms` (
  `idRoom` char(50) NOT NULL,
  `letti` tinyint(1) NOT NULL,
  `tipo` enum('STANDARD','SUITE') NOT NULL DEFAULT 'STANDARD',
  PRIMARY KEY (`idRoom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dump dei dati della tabella tesi.rooms: ~13 rows (circa)
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` (`idRoom`, `letti`, `tipo`) VALUES
	('1 Giuggiolo', 6, 'STANDARD'),
	('10 Corniolo', 6, 'STANDARD'),
	('11 Tiglio', 6, 'STANDARD'),
	('13 Suite S Olmo', 4, 'SUITE'),
	('14 Suite Noce', 3, 'SUITE'),
	('15 Corbezzolo Cottage', 2, 'STANDARD'),
	('2 Gelso', 6, 'STANDARD'),
	('3 Diospero', 6, 'STANDARD'),
	('4 Quercia', 7, 'STANDARD'),
	('5 Sambuco', 7, 'STANDARD'),
	('6 Susino', 6, 'STANDARD'),
	('8 Leccio', 5, 'STANDARD'),
	('9 Olivo', 6, 'STANDARD');
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
