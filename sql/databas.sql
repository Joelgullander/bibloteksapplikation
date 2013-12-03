-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2013 at 02:06 PM
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
('9780253008145', 1, 30, 'Veiling in Africa', 'Edited by Elisha P. Renne', 'a2', 60, 10, '0000-00-00 00:00:00', ''),
('9780253008824', 4, 65, 'Plato on the Limits of Human Life', 'Sara Brill', 'a2', 80, 8, '0000-00-00 00:00:00', ''),
('9780253010001', 4, 61, 'A Phenomenology of Christian Life', 'Felix Murchadha', 'a2', 90, 3, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780262019156', 3, 20, 'The Ringtone Dialectic', 'Sumanth Gopinath', 'a2', 40, 36, '0000-00-00 00:00:00', ''),
('9780262519571', 3, 75, 'The Power of Narrative in Environmental Networks', 'Raul Lejano', 'a2', 120, 20, '0000-00-00 00:00:00', ''),
('9780268020408', 4, 36, 'The Way', 'Antoine Arjakovsky', 'a2', 50, 2, '0000-00-00 00:00:00', ''),
('9780299293406', 1, 49, 'Scattered', 'Diana Howansky Reilly', 'a2', 60, 30, '0000-00-00 00:00:00', ''),
('9780520273528', 1, 36, 'Bone Histology of Fossil Tetrapods', 'Kevin Padian', 'a2', 50, 8, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780520273870', 2, 40, 'New Orleans Suite', 'Lewis Watts', 'a2', 60, 25, '0000-00-00 00:00:00', ''),
('9780520275126', 1, 46, 'Killer Tapes and Shattered Screens', 'Caetlin Benson-Allott', 'a2', 60, 26, '0000-00-00 00:00:00', ''),
('9780807152317', 2, 28, 'The Martyrdom of Abolitionist Charles Torrey', 'E. Fuller Torrey', 'a2', 40, 80, '0000-00-00 00:00:00', ''),
('9780810152335', 3, 25, 'The World Is Round', 'Nikky Finney', 'a2', 40, 35, '0000-00-00 00:00:00', ''),
('9780813144269', 4, 70, 'I Cannot Forget', 'Christina Rice', 'a2', 90, 47, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780813560717', 4, 52, 'Zapotecs on the Move', 'Adriana Cruz-Manjarrez', 'a2', 70, 6, '0000-00-00 00:00:00', ''),
('9780813935126', 3, 74, 'The Poetics of Ethnography in Martinican Narratives', 'Christina Kullberg', 'a2', 90, 62, '0000-00-00 00:00:00', ''),
('9780814336038', 1, 68, 'Old Slow Town', 'Paul Taylor', 'a2', 80, 54, '0000-00-00 00:00:00', ''),
('9780814745311', 1, 87, 'How To Watch Television', 'Ethan Thompson', 'a2', 100, 13, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780816679638', 2, 98, 'Humanesis', 'David Cecchetto', 'a2', 100, 20, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780816680382', 1, 63, 'George Cukor', 'Patrick McGilligan', 'a2', 80, 15, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780816681402', 4, 41, 'Degraded works', 'Marc Doussard', 'a2', 60, 30, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780817317959', 2, 37, 'Frank Norris Remembered', 'Edited by Jesse S. Crisler and Joseph R. McElrath Jr.', 'a2', 40, 1, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780819573452', 3, 42, 'End of the Line', 'Markham Starr', 'a2', 60, 40, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780822353973', 4, 32, 'Centering Animals in Latin American History', 'Edited by Martha Few and Zeb Tortorici', 'a2', 50, 35, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9780823254200', 2, 89, 'Committing the Future to Memory', 'Sarah Clift', 'a2', 100, 14, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9781469607580', 1, 87, 'Trials of Laura Fair: Sex, Murder, and Insanity in the Victorian West', 'Carole Haber', 'a2', 90, 6, '0000-00-00 00:00:00', ''),
('9781574415261', 3, 52, 'Tracking the Texas Rangers', 'Edited by Bruce A. Glasrud and Harold J. Weiss, Jr.', 'a2', 60, 40, '0000-00-00 00:00:00', ''),
('9781597097161', 4, 52, 'The Palace of Contemplating Departure', 'Brynn Saito', 'a2', 70, 10, '0000-00-00 00:00:00', ''),
('9781611172553', 3, 75, 'Understanding Marcel Proust', 'Allen Thiher', 'a2', 90, 23, '0000-00-00 00:00:00', ''),
('9781611172850', 2, 90, 'Palmetto Profiles', 'Paul Taylor', 'a2', 120, 30, '0000-00-00 00:00:00', ''),
('9781611860702', 3, 98, 'In the Kingdom of the Ditch', 'Todd Davis', 'a2', 120, 30, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9781617037740', 2, 53, 'Kathryn Bigelow', 'Peter Keough', 'a2', 70, 8, '0000-00-00 00:00:00', ''),
('9781621039693', 1, 42, 'Chester Brown', 'Dominick Grace', 'a2', 60, 50, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9781623490072', 4, 47, 'I Cannot Forget', 'Judith Fenner Gentry', 'a2', 60, 72, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9781623490133', 2, 85, 'When Things Went Right', 'Chase Untermeyer', 'a2', 100, 20, '0000-00-00 00:00:00', ''),
('9781623490263', 3, 45, 'Identifying and Interpreting Animal Bones', 'April M. Beisaw', 'a2', 60, 7, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9789058679079', 2, 49, 'Handheld XRF for Art and Archaeology', 'Aaron N. Shugar, Jennifer L. Mass', 'a2', 60, 40, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9789144068688', 3, 100, 'Forskningsmetodikens grunder : att planera, genomföra och rapportera en undersökning', 'Runa Patel, Bo Davidson', '3', 238, 10, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9789163876394', 4, 50, 'Bygg med Legoboken : roliga idéer att bygga vidare på', 'Daniel Lipkowitz', 'b9', 156, 5, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.'),
('9789174293180', 1, 20, 'Fasanjägarna', 'Jussi Adler-Olsen', '20b', 51, 20, '0000-00-00 00:00:00', 'Praesent sapien massa, convallis a pellentesque nec, egestas non nisi. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Vivamus suscipit tortor eget felis porttitor volutpat. Proin eget tortor risus. Mauris blandit aliquet elit, eget tincidunt nibh pulvinar a. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Cras ultricies ligula sed magna dictum porta. Vivamus magna justo, lacinia eget consectetur sed, convallis at tellus. Sed porttitor lectus nibh. Cras ultricies ligula sed magna dictum porta.');

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
