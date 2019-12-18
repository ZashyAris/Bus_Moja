SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `Bus Moja`
--


-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(200) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bus_id` int(11) NOT NULL,
  `seats_no` int(11) NOT NULL,
  `total_fare` double NOT NULL,
  `payment_method` varchar(200) NOT NULL,
  PRIMARY KEY (`booking_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `user`, `date`, `bus_id`, `seats_no`, `total_fare`, `payment_method`) VALUES
(1, 'Lenny', '2019-12-04 07:34:38', 15, 2, 2200, 'Cash'),
(2, 'George', '2019-12-05 00:03:02', 18, 1, 350, 'Cash'),
(3, 'Sharon', '2019-12-05 02:52:06', 18, 1, 350, 'Cash'),
(4, 'Monica', '2019-12-06 02:37:32', 10, 2, 2000, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE IF NOT EXISTS `bus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `origin` varchar(200) NOT NULL,
  `destination` varchar(200) NOT NULL,
  `seats` int(11) NOT NULL,
  `departure_time` time NOT NULL,
  `date` date NOT NULL,
  `fare` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `origin`, `destination`, `seats`, `departure_time`, `date`, `fare`) VALUES
(1, 'Twende', 'Nairobi', 'Eldoret', 14,  '16:00:00', '2019-12-20', 800),
(2, 'Nganya', 'Nairobi', 'Mombasa', 20,  '08:00:00', '2019-12-23', 1800),
(3, 'Matatu', 'Mombasa', 'Nairobi', 32,  '19:00:00', '2019-12-25', 800),
(4, 'Mathree', 'Eldoret', 'Kisumu', 20,  '15:00:00', '2019-12-24', 600),
(5, 'Safiri', 'Nairobi', 'Kisumu', 14,  '12:00:00', '2019-12-24', 1800);

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
