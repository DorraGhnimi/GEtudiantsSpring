-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2017 at 02:57 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `GEtudiants`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `id` bigint(20) NOT NULL,
  `datenaissance` datetime DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `nom` varchar(70) NOT NULL,
  `photo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`id`, `datenaissance`, `email`, `nom`, `photo`) VALUES
(1, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Ouuuucef1', NULL),
(2, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(3, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', 'hahahaa.jpg'),
(5, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5555555', NULL),
(8, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', 'img6.jpg'),
(9, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', 'img1.jpg'),
(10, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(11, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(12, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(13, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(14, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(15, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(16, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(17, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(18, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(19, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg'),
(20, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Oucef1', '/images/img1.jpg'),
(21, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(22, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', '/images/img3.jpg'),
(23, '1990-01-01 00:00:00', 'oucef4@gmail.com', 'Oucef4', '/images/img4.jpg'),
(24, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5', '/images/img5.jpg'),
(25, '1990-01-01 00:00:00', 'oucef6@gmail.com', 'Oucef6', '/images/img6.jpg'),
(26, '1990-01-01 00:00:00', 'oucef7@gmail.com', 'Oucef7', '/images/img7.jpg'),
(27, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', '/images/img8.jpg'),
(28, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', '/images/img9.jpg'),
(29, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(30, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(31, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(32, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(33, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(34, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(35, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(36, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(37, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(38, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg'),
(39, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Oucef1', '/images/img1.jpg'),
(40, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(41, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', '/images/img3.jpg'),
(42, '1990-01-01 00:00:00', 'oucef4@gmail.com', 'Oucef4', '/images/img4.jpg'),
(43, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5', '/images/img5.jpg'),
(44, '1990-01-01 00:00:00', 'oucef6@gmail.com', 'Oucef6', '/images/img6.jpg'),
(45, '1990-01-01 00:00:00', 'oucef7@gmail.com', 'Oucef7', '/images/img7.jpg'),
(46, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', '/images/img8.jpg'),
(47, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', '/images/img9.jpg'),
(48, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(49, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(50, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(51, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(52, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(53, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(54, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(55, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(56, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(57, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg'),
(58, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Oucef1', '/images/img1.jpg'),
(59, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(60, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', '/images/img3.jpg'),
(61, '1990-01-01 00:00:00', 'oucef4@gmail.com', 'Oucef4', '/images/img4.jpg'),
(62, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5', '/images/img5.jpg'),
(63, '1990-01-01 00:00:00', 'oucef6@gmail.com', 'Oucef6', '/images/img6.jpg'),
(64, '1990-01-01 00:00:00', 'oucef7@gmail.com', 'Oucef7', '/images/img7.jpg'),
(65, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', '/images/img8.jpg'),
(66, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', '/images/img9.jpg'),
(67, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(68, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(69, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(70, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(71, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(72, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(73, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(74, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(75, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(76, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg'),
(77, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Oucef1', '/images/img1.jpg'),
(78, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(79, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', '/images/img3.jpg'),
(80, '1990-01-01 00:00:00', 'oucef4@gmail.com', 'Oucef4', '/images/img4.jpg'),
(81, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5', '/images/img5.jpg'),
(82, '1990-01-01 00:00:00', 'oucef6@gmail.com', 'Oucef6', '/images/img6.jpg'),
(83, '1990-01-01 00:00:00', 'oucef7@gmail.com', 'Oucef7', '/images/img7.jpg'),
(84, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', '/images/img8.jpg'),
(85, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', '/images/img9.jpg'),
(86, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(87, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(88, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(89, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(90, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(91, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(92, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(93, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(94, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(95, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg'),
(96, '2000-10-23 00:00:00', 'aza@aza.com', 'aza', 'img20.jpg'),
(97, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Oucef1', '/images/img1.jpg'),
(98, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(99, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', '/images/img3.jpg'),
(100, '1990-01-01 00:00:00', 'oucef4@gmail.com', 'Oucef4', '/images/img4.jpg'),
(101, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5', '/images/img5.jpg'),
(102, '1990-01-01 00:00:00', 'oucef6@gmail.com', 'Oucef6', '/images/img6.jpg'),
(103, '1990-01-01 00:00:00', 'oucef7@gmail.com', 'Oucef7', '/images/img7.jpg'),
(104, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', '/images/img8.jpg'),
(105, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', '/images/img9.jpg'),
(106, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(107, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(108, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(109, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(110, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(111, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(112, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(113, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(114, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(115, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg'),
(116, '1990-01-01 00:00:00', 'oucef1@gmail.com', 'Oucef1', '/images/img1.jpg'),
(117, '1990-01-01 00:00:00', 'oucef2@gmail.com', 'Oucef2', '/images/img2.jpg'),
(118, '1990-01-01 00:00:00', 'oucef3@gmail.com', 'Oucef3', '/images/img3.jpg'),
(119, '1990-01-01 00:00:00', 'oucef4@gmail.com', 'Oucef4', '/images/img4.jpg'),
(120, '1990-01-01 00:00:00', 'oucef5@gmail.com', 'Oucef5', '/images/img5.jpg'),
(121, '1990-01-01 00:00:00', 'oucef6@gmail.com', 'Oucef6', '/images/img6.jpg'),
(122, '1990-01-01 00:00:00', 'oucef7@gmail.com', 'Oucef7', '/images/img7.jpg'),
(123, '1990-01-01 00:00:00', 'oucef8@gmail.com', 'Oucef8', '/images/img8.jpg'),
(124, '1990-01-01 00:00:00', 'oucef9@gmail.com', 'Oucef9', '/images/img9.jpg'),
(125, '1990-01-01 00:00:00', 'oucef10@gmail.com', 'Oucef10', '/images/img10.jpg'),
(126, '1990-01-01 00:00:00', 'oucef11@gmail.com', 'Oucef11', '/images/img11.jpg'),
(127, '1990-01-01 00:00:00', 'oucef12@gmail.com', 'Oucef12', '/images/img12.jpg'),
(128, '1990-01-01 00:00:00', 'oucef13@gmail.com', 'Oucef13', '/images/img13.jpg'),
(129, '1990-01-01 00:00:00', 'oucef14@gmail.com', 'Oucef14', '/images/img14.jpg'),
(130, '1990-01-01 00:00:00', 'oucef15@gmail.com', 'Oucef15', '/images/img15.jpg'),
(131, '1990-01-01 00:00:00', 'oucef16@gmail.com', 'Oucef16', '/images/img16.jpg'),
(132, '1990-01-01 00:00:00', 'oucef17@gmail.com', 'Oucef17', '/images/img17.jpg'),
(133, '1990-01-01 00:00:00', 'oucef18@gmail.com', 'Oucef18', '/images/img18.jpg'),
(134, '1990-01-01 00:00:00', 'oucef19@gmail.com', 'Oucef19', '/images/img19.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `etudiant`
--
ALTER TABLE `etudiant`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
