-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2013 at 10:12 AM
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
CREATE DATABASE IF NOT EXISTS `bookstore` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
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
  `author_fname` varchar(100) NOT NULL,
  `author_lname` varchar(100) NOT NULL,
  `shelf` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `stock` int(11) DEFAULT NULL,
  `book_delivery` datetime NOT NULL,
  PRIMARY KEY (`isbn`),
  KEY `category` (`c_id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`isbn`, `c_id`, `fprice`, `title`, `author_fname`, `author_lname`, `shelf`, `price`, `stock`) VALUES
('9780099470434', 2, 30, 'The curious incident of the dog in the night-time', 'Mark', 'Haddon', '10a', 78, 40),
('9789144068688', 3, 100, 'Forskningsmetodikens grunder : att planera, genomföra och rapportera en undersökning', 'Rauna, Bo', 'Patel, Davidsson', '3', 238, 10),
('9789163876394', 4, 50, 'Bygg med Legoboken : roliga idéer att bygga vidare på', 'Daniel', 'Lipkowitz', 'b9', 156, 5),
('9789174293180', 1, 20, 'Fasanjägarna', 'Jussi', 'Adler-Olsen', '20b', 51, 20);

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
(2, 'Skönlitteratur'),
(3, 'Student'),
(4, 'Barnböcker');

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
