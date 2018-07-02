-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.30-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for uaqflix
CREATE DATABASE IF NOT EXISTS `uaqflix` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `uaqflix`;

-- Dumping structure for table uaqflix.peliculas
CREATE TABLE IF NOT EXISTS `peliculas` (
  `idPelicula` int(100) NOT NULL AUTO_INCREMENT,
  `nombrePelicula` varchar(100) NOT NULL,
  `categoriaPelicula` varchar(100) NOT NULL,
  `duracionPelicula` varchar(100) NOT NULL,
  `descripcionPelicula` varchar(500) NOT NULL,
  `trailerPelicula` varchar(100) NOT NULL,
  `imagenPelicula` varchar(100) NOT NULL,
  PRIMARY KEY (`idPelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table uaqflix.peliculas: ~4 rows (approximately)
/*!40000 ALTER TABLE `peliculas` DISABLE KEYS */;
INSERT IGNORE INTO `peliculas` (`idPelicula`, `nombrePelicula`, `categoriaPelicula`, `duracionPelicula`, `descripcionPelicula`, `trailerPelicula`, `imagenPelicula`) VALUES
	(1, 'Captain America: Winter Soldier', 'Accion', '120 min', 'After the cataclysmic events in New York with his fellow Avengers, Steve Rogers, aka Captain America (Chris Evans), lives in the nation\'s capital as he tries to adjust to modern times. An attack on a S.H.I.E.L.D. colleague throws Rogers into a web of intrigue that places the whole world at risk.', 'mp4/winter_trailer.mp4', 'img/captain.jpg'),
	(2, 'Iron Man', 'Accion', '120 min', 'A billionaire industrialist and genius inventor, Tony Stark (Robert Downey Jr.), is conducting weapons tests overseas, but terrorists kidnap him to force him to build a devastating weapon. Instead, he builds an armored suit and upends his captors. Returning to America, Stark refines the suit and uses it to combat crime and terrorism.', 'mp4/iron_trailer.mp4', 'img/iron.jpg'),
	(3, 'Iron Man 2', 'Accion', '120 min', 'With the world now aware that he is Iron Man, billionaire inventor Tony Stark (Robert Downey Jr.) faces pressure from all sides to share his technology with the military. He is reluctant to divulge the secrets of his armored suit, fearing the information will fall into the wrong hands. ', 'mp4/iron2_trailer.mp4', 'img/iron2.jpg'),
	(4, 'Deadpool 2', 'Accion', '120 min', 'Wisecracking mercenary Deadpool meets Russell, an angry teenage mutant who lives at an orphanage. When Russell becomes the target of Cable -- a genetically enhanced soldier from the future -- Deadpool realizes that he\'ll need some help saving the boy from such a superior enemy. He soon joins forces with Bedlam, Shatterstar, Domino and other powerful mutants to protect young Russell from Cable and his advanced weaponry.', 'mp4/deadpool2_trailer.mp4', 'img/deadpool2.jpg');
/*!40000 ALTER TABLE `peliculas` ENABLE KEYS */;

-- Dumping structure for table uaqflix.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `idUsuario` int(100) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(100) NOT NULL,
  `correoUsuario` varchar(100) NOT NULL,
  `passwordUsuario` varchar(100) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- Dumping data for table uaqflix.usuarios: ~1 rows (approximately)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT IGNORE INTO `usuarios` (`idUsuario`, `nombreUsuario`, `correoUsuario`, `passwordUsuario`) VALUES
	(16, 'Jazmin', 'jaz@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
