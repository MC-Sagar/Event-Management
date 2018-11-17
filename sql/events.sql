-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 16, 2018 at 06:35 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
CREATE TABLE IF NOT EXISTS `booking` (
  `book_id` int(3) NOT NULL AUTO_INCREMENT,
  `id` int(3) NOT NULL,
  `cust_id` int(3) NOT NULL,
  `ticket_type` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`book_id`),
  KEY `id` (`id`),
  KEY `cust_id` (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`book_id`, `id`, `cust_id`, `ticket_type`) VALUES
(1, 3, 53, 'pro'),
(2, 1, 51, 'premium'),
(3, 2, 51, 'standard'),
(4, 1, 52, 'standard');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `cust_id` int(3) NOT NULL,
  `cust_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `email`, `password`) VALUES
(51, 'nidhi', 'nidhi@gmail.com', '123'),
(52, 'sagar', 'sagar@gmail.com', '123'),
(53, 'krishna', 'krishna@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(10) NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `video_link` varchar(511) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_id` int(3) NOT NULL,
  `image_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `venue_id` (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `name`, `description`, `date`, `video_link`, `venue_id`, `image_link`) VALUES
(1, 'Sunburn Festival', 'Sunburn festival is a commercial EDM fest held in India every year. This year India\'s most loved DJ Nucleya is back!', '2018-09-01', 'https://www.youtube.com/watch?v=7yzXmLz-Q14', 12, 'img/venue-info-bg.jpg'),
(2, 'Comedy Fest', 'A special showcase of the country\'s best comics. Will surely tickle your funny bone!', '2018-10-04', 'https://www.youtube.com/watch?v=W6Vpf9zmIQE\r\n', 11, 'img/slide.jpg'),
(3, 'Life In disaster', 'Funniest interview ever!!', '2018-12-30', 'https://www.youtube.com/watch?v=hSFWgKl-O-A', 14, 'img/subscribe-bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sponsors`
--

DROP TABLE IF EXISTS `sponsors`;
CREATE TABLE IF NOT EXISTS `sponsors` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `sponsor_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `logo_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sponsors`
--

INSERT INTO `sponsors` (`id`, `sponsor_name`, `logo_link`) VALUES
(1, 'Strider', 'img/sponsors/1.png'),
(1, 'runtastic', 'img/sponsors/2.png'),
(1, 'EditShare', 'img/sponsors/3.png'),
(3, 'cadent', 'img/sponsors/6.png'),
(3, 'gategroup', 'img/sponsors/5.png'),
(1, 'editshare', 'img/sponsors/3.png');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
CREATE TABLE IF NOT EXISTS `ticket` (
  `id` int(3) NOT NULL,
  `standard` int(5) NOT NULL,
  `pro` int(5) NOT NULL,
  `premium` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id`, `standard`, `pro`, `premium`) VALUES
(1, 2000, 3000, 4000),
(2, 100, 200, 300),
(3, 10000, 30000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

DROP TABLE IF EXISTS `venue`;
CREATE TABLE IF NOT EXISTS `venue` (
  `venue_id` int(3) NOT NULL,
  `venue_name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Venue_description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo_link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`venue_id`, `venue_name`, `location`, `Venue_description`, `photo_link`) VALUES
(11, 'Hard Rock Cafe', 'Bangalore', 'It cannot get harder than this!', 'img/venue-gallery/1.jpg'),
(12, 'Palace Grounds', 'Bangalore', 'A huge field and a palace!', 'img/hotels/2.jpg'),
(13, 'Elite grounds', 'Mumbai', 'Only elites and legends allowed!', 'img/hotels/1.jpg'),
(14, 'Paramount studios', 'Delhi', 'Get your pics clicked here!', 'img/gallery/8.jpg'),
(15, 'Amma grounds', 'Chennai', 'Get your meal served for free!!', 'img/venue-gallery/3.jpg');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`venue_id`) REFERENCES `venue` (`venue_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sponsors`
--
ALTER TABLE `sponsors`
  ADD CONSTRAINT `sponsors_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`id`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
