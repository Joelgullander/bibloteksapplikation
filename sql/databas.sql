-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2013 at 10:04 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bookstore`
--
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET utf8 COLLATE utf8_swedish_ci;
USE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE IF NOT EXISTS `books` (
  `isbn` varchar(30) NOT NULL,
  `c_id` int(11) NOT NULL,
  `fprice` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `shelf` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `book_delivery` datetime NOT NULL,
  `synopsis` text NOT NULL,
  PRIMARY KEY (`isbn`),
  KEY `category` (`c_id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `c_id`, `fprice`, `title`, `author`, `shelf`, `price`, `stock`, `book_delivery`, `synopsis`) VALUES
('9780099470434', 2, 30, 'The curious incident of the dog in the night-time', 'Mark Haddon', '10a', 78, 40, '0000-00-00 00:00:00', ''),
('9789144068688', 3, 100, 'Forskningsmetodikens grunder : att planera, genomföra och rapportera en undersökning', 'Runa Patel, Bo Davidson', '3', 238, 10, '0000-00-00 00:00:00', ''),
('9789163876394', 4, 50, 'Bygg med Legoboken : roliga idéer att bygga vidare på', 'Daniel Lipkowitz', 'b9', 156, 5, '0000-00-00 00:00:00', ''),
('9789174293180', 1, 20, 'Fasanjägarna', 'Jussi Adler-Olsen', '20b', 51, 20, '0000-00-00 00:00:00', '')
('9780816679638',2,98,'Humanesis','David Cecchetto','', 100, 20, '0000-00-00 00:00:00', ''),
('9780262519571',3,75,'The Power of Narrative in Environmental Networks','Raul Lejano','',120,20,'0000-00-00 00:00:00',''),
('9781597097161',4,52,'The Palace of Contemplating Departure','Brynn Saito','',70,10,'0000-00-00 00:00:00',''),
('9780299293406',1,49,'Scattered','Diana Howansky Reilly','',60,30,'0000-00-00 00:00:00',''),
('9780268020408',4,36,'The Way','Antoine Arjakovsky','',50,2,'0000-00-00 00:00:00',''),
('9781611172553',3,75,'Understanding Marcel Proust','Allen Thiher','',90,23,'0000-00-00 00:00:00',''),
('9780807152317',2,28,'The Martyrdom of Abolitionist Charles Torrey','E. Fuller Torrey','',40,80,'0000-00-00 00:00:00',''),
('9780816680382',1,63,'George Cukor','Patrick McGilligan','',80,15,'0000-00-00 00:00:00',''),
('9780253010001',4,61,'A Phenomenology of Christian Life','Felix Murchadha','',90,3,'0000-00-00 00:00:00',''),
('9780819573452',3,42,'End of the Line','Markham Starr','',60,40,'0000-00-00 00:00:00',''),
('9789058679079',2,49,'Handheld XRF for Art and Archaeology','Aaron N. Shugar, Jennifer L. Mass','',60,40,'0000-00-00 00:00:00',''),
('9780520275126',1,46,'Killer Tapes and Shattered Screens','Caetlin Benson-Allott','',60,26,'0000-00-00 00:00:00',''),
('9780813560717',4,52,'Zapotecs on the Move','Adriana Cruz-Manjarrez','',70,6,'0000-00-00 00:00:00',''),
('9780810152335',3,25,'The World Is Round','Nikky Finney','',40,35,'0000-00-00 00:00:00',''),
('9780817317959',2,37,'Frank Norris Remembered','Edited by Jesse S. Crisler and Joseph R. McElrath Jr.','',40,1,'0000-00-00 00:00:00',''),
('9780520273528',1,36,'Bone Histology of Fossil Tetrapods','Kevin Padian','',50,8,'0000-00-00 00:00:00',''),
('9780822353973',4,32,'Centering Animals in Latin American History','edited by Martha Few and Zeb Tortorici','',50,35,'0000-00-00 00:00:00',''),
('9781611860702',3,98,'In the Kingdom of the Ditch','Todd Davis','',120,30,'0000-00-00 00:00:00',''),
('9780823254200',2,89,'Committing the Future to Memory','Sarah Clift','',100,14,'0000-00-00 00:00:00',''),
('9781469607580',1,87,'Trials of Laura Fair: Sex, Murder, and Insanity in the Victorian West','Carole Haber','',90,6,'0000-00-00 00:00:00',''),
('9780253008824',4,65,'Plato on the Limits of Human Life','Sara Brill','',80,8,'0000-00-00 00:00:00',''),
('9781623490263',3,45,'Identifying and Interpreting Animal Bones','April M. Beisaw','',60,7,'0000-00-00 00:00:00',''),
('9781623490133',2,85,'When Things Went Right','Chase Untermeyer','',100,20,'0000-00-00 00:00:00',''),
('9781621039693',1,42,'Chester Brown','Dominick Grace','',60,50,'0000-00-00 00:00:00',''),
('9780816681402',4,41,'Degraded works','Marc Doussard','',60,30,'0000-00-00 00:00:00',''),
('9780813935126',3,74,'The Poetics of Ethnography in Martinican Narratives','Christina Kullberg','',90,62,'0000-00-00 00:00:00',''),
('9781611172850',2,90,'Palmetto Profiles','Paul Taylor','',120,30,'0000-00-00 00:00:00',''),
('9780814336038',1,68,'Old Slow Town','Paul Taylor','',80,54,'0000-00-00 00:00:00',''),
('9781623490072',4,47,'I Cannot Forget','Judith Fenner Gentry','',60,72,'0000-00-00 00:00:00',''),
('9781574415261',3,52,'Tracking the Texas Rangers','Edited by Bruce A. Glasrud and Harold J. Weiss, Jr.','',60,40,'0000-00-00 00:00:00',''),
('9781617037740',2,53,'Kathryn Bigelow','Peter Keough','',70,8,'0000-00-00 00:00:00',''),
('9780814745311',1,87,'How To Watch Television','Ethan Thompson','',100,13,'0000-00-00 00:00:00',''),
('9780813144269',4,70,'I Cannot Forget','Christina Rice','',90,47,'0000-00-00 00:00:00',''),
('9780262019156',3,20,'The Ringtone Dialectic','Sumanth Gopinath','',40,36,'0000-00-00 00:00:00',''),
('9780520273870',2,40,'New Orleans Suite','Lewis Watts','',60,25,'0000-00-00 00:00:00',''),
('9780253008145',1,30,'Veiling in Africa','Edited by Elisha P. Renne','',60,10,'0000-00-00 00:00:00','');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `name`) VALUES
(1, 'Deckare'),
(2, 'Skonlitteratur'),
(3, 'Student'),
(4, 'Barnbocker');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `isbn` varchar(30) NOT NULL,
  `sold_by` datetime NOT NULL,
  `amount_sold` int(11) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`isbn`, `sold_by`, `amount_sold`) VALUES
('9789163876394', '2013-11-26 16:00:00', 3),
('9789174293180', '2013-11-26 12:00:00', 10);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`c_id`) REFERENCES `category` (`c_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
