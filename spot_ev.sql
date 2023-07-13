-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 13, 2023 at 09:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spot_ev`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint_tb`
--

CREATE TABLE `complaint_tb` (
  `complaint_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `complain_type` varchar(100) NOT NULL,
  `other_complaints` varchar(100) NOT NULL,
  `description` varchar(250) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_tb`
--

INSERT INTO `complaint_tb` (`complaint_id`, `station_id`, `user_id`, `complain_type`, `other_complaints`, `description`, `date`, `status`) VALUES
(1, 29, 12, 'Slow Charging', '2023-07-03 12:52:52.854740', 'qwertyuilkmnjkmdnfjdks', '2023-07-02 18:47:34', ''),
(2, 19, 12, 'Charger Faculty', '2023-07-03 13:02:47.863417', 'Charging and front shocker regarding, Wrong Product sold with safety, Quality and Security compromised, battery mileage issue, Battery Issues, Battery replacement issue', '1900-01-02 18:47:47', ''),
(3, 19, 12, 'Slow Charging', '[Charging and front shocker regarding, Wrong Product sold with safety, Quality and Security compromi', 'avbnjgfd', '2023-07-03 13:05:05', ''),
(4, 19, 12, 'Charger Faculty', '[Charging and front shocker regarding, Wrong Product sold with safety, Quality and Security compromi', 'avbnjgfd', '2023-07-03 13:06:16', ''),
(5, 19, 12, 'Charger Faculty', '[Charging and front shocker regarding, Wrong Product sold with safety, Quality and Security compromi', 'avbnjgfd', '2023-07-03 13:09:36', ''),
(6, 28, 12, 'Network Issue', '[Charging and front shocker regarding, Wrong Product sold with safety, Quality and Security compromi', 'asdfhklmnbbccxzzswwrtyuoopllkhg', '2023-07-03 13:10:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `connector_tb`
--

CREATE TABLE `connector_tb` (
  `connector_id` int(11) NOT NULL,
  `connector_type` varchar(50) NOT NULL,
  `power_capacity` int(11) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `connector_tb`
--

INSERT INTO `connector_tb` (`connector_id`, `connector_type`, `power_capacity`, `price`) VALUES
(1, 'CHAdeMo', 50, 200),
(2, 'CHAdeMo', 22, 110),
(3, 'CHAdeMo', 110, 100),
(4, 'CCS2', 22, 200),
(12, 'CCS', 22, 200),
(13, 'GB/T', 50, 100),
(14, 'TYPE-2', 22, 100),
(15, 'TYPE-2', 50, 150),
(16, 'CCS2', 50, 150),
(17, 'GB/T', 110, 150);

-- --------------------------------------------------------

--
-- Table structure for table `login_tb`
--

CREATE TABLE `login_tb` (
  `login_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `user_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_tb`
--

INSERT INTO `login_tb` (`login_id`, `email`, `password`, `user_type`) VALUES
(1, 'shafna.pmna@gmail.com', 'shaf1234', 'station'),
(2, 'shafna.pmna@gmail.com', 'shaf1234', 'station'),
(3, 'shafna.pmna@gmail.com', 'shaf1234', 'station'),
(4, 'sss@gmail.com', 'sss123', 'station'),
(5, 'sss@gmail.com', 'sss123', 'station'),
(6, 'sss@gmail.com', 'sss123', 'station'),
(7, 'tansi@gmail.com', 'tanseer', 'user'),
(8, 't@gmail.com', 't123', 'user'),
(9, 'swalih@gmail.com', 'swalih123', 'station'),
(10, 'shastation@gmail.com', 'sha123', 'station'),
(11, 'dilumolu@gmail.com', '123', 'user'),
(12, 'shaf@gmail.com', '123', 'user'),
(13, '', '123123', 'user'),
(14, '', '123', 'user'),
(15, '', 'aa123', 'user'),
(16, 'shafna.pmna@gmail.com', '123456898', 'user'),
(17, 'shaf@gmail.com', 'shaf12345', 'user'),
(18, 'vtestby@gmail.com', '123456789', 'station'),
(19, 'chargeby@gmail.com', 'chargeby123', 'station'),
(20, 'vestBy@gmail.com', '112233445', 'station'),
(21, 'vestBy@gmail.com', '11223445', 'station'),
(22, 'vestBy@gmail.com', '1122335', 'station'),
(23, 'liyaniya@gmail.com', 'liya12345', 'user'),
(24, 'www.22204255vt@gmail.com', '123123123', 'user'),
(25, 'www.qwertyuiopasdfghjklzxcvbnm@gmail.com', '123123123', 'user'),
(26, 'hshhs', 'bhhs56677', 'user'),
(27, 'evstation@gmail.com', 'ev1234567', 'station'),
(28, 'www.qwertyuiopasdfghjklzxcvbnm@gmail.com', '123123123', 'station'),
(29, 'electro@gmail.com', '112233445', 'station'),
(30, 'evcharge@gmail.com', 'evcharge12345', 'station');

-- --------------------------------------------------------

--
-- Table structure for table `review_tb`
--

CREATE TABLE `review_tb` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review_tb`
--

INSERT INTO `review_tb` (`review_id`, `user_id`, `station_id`, `rating`, `comment`, `timestamp`) VALUES
(1, 17, 19, 3, 'qwertyuiopsldkfhgnxmvnjssif', '2023-07-13 00:00:00'),
(2, 0, 0, 4, '', '0000-00-00 00:00:00'),
(3, 0, 0, 4, '', '0000-00-00 00:00:00'),
(4, 17, 19, 3, 'qwertyuiopsldkfhgnxmvnjssif', '2023-07-13 00:00:00'),
(5, 17, 12, 0, '', '2023-07-13 12:56:17'),
(6, 17, 12, 0, 'gggggg', '2023-07-13 12:56:17'),
(7, 17, 12, 5, 'gggggg', '2023-07-13 12:56:17'),
(8, 17, 12, 2, 'gggggg', '2023-07-13 12:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `slot_tb`
--

CREATE TABLE `slot_tb` (
  `slot_id` int(11) NOT NULL,
  `station_id` int(11) NOT NULL,
  `connector_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `slot_tb`
--

INSERT INTO `slot_tb` (`slot_id`, `station_id`, `connector_id`) VALUES
(1, 8, 1),
(2, 19, 4),
(3, 18, 4),
(4, 18, 12),
(12, 18, 3),
(13, 18, 2),
(14, 18, 1),
(15, 19, 3),
(16, 18, 14),
(22, 19, 12),
(23, 19, 17),
(24, 19, 14),
(25, 30, 14),
(26, 30, 3),
(27, 30, 4),
(28, 30, 1),
(29, 30, 4),
(30, 30, 16),
(31, 29, 3),
(32, 29, 15),
(33, 29, 16);

-- --------------------------------------------------------

--
-- Table structure for table `station_tb`
--

CREATE TABLE `station_tb` (
  `station_id` int(11) NOT NULL,
  `login_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `place` varchar(50) NOT NULL,
  `location` varchar(20) NOT NULL,
  `lattitude` float NOT NULL,
  `longitude` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `station_tb`
--

INSERT INTO `station_tb` (`station_id`, `login_id`, `name`, `mobile_no`, `place`, `location`, `lattitude`, `longitude`) VALUES
(1, 18, 'Vestyby', 9900887711, 'Angadipuram', 'Angadipuram,X6H3+52P', 10.9779, 76.2026),
(2, 19, 'chargeby', 6633009987, 'Angadipuram', 'Angadipuram,X6H3+52P', 10.978, 76.2026),
(3, 9, 'Swali Station', 9876543210, '', 'Pattikkad', 0.3345, 12.7708),
(4, 10, 'ShaStation', 8790654321, '', 'Perithalmanna', 60.9887, 49.7654),
(5, 5, 'VestyBy', 9900887766, '', 'Angadipuram,X6H3+52P', 10.9779, 76.2026),
(6, 21, 'VestyBy', 9900965240, '', 'Angadipuram,X6H3+533', 10.9779, 76.2026),
(7, 22, 'VestyBy', 9900887766, 'Nenmini', 'Nenmini,26RF+VQ8,,', 11.0425, 76.2252),
(8, 27, 'Evsatation', 7896541230, '', 'Angadipuram,X6H3+533', 10.9779, 76.2026),
(9, 28, 'pmna', 9074230412, 'Angadipuram', 'Angadipuram,X6H3+533', 10.9779, 76.2026),
(10, 29, 'ElectroStation', 8065329865, 'Nenmini', 'Nenmini,26RF+VQ8,,', 11.0417, 76.2253),
(11, 30, 'EV charging', 9876543210, 'Angadipuram', 'Angadipuram,X6H3+52P', 10.978, 76.2026);

-- --------------------------------------------------------

--
-- Table structure for table `user_register_tb`
--

CREATE TABLE `user_register_tb` (
  `reg_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile_no` bigint(10) NOT NULL,
  `login_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_register_tb`
--

INSERT INTO `user_register_tb` (`reg_id`, `name`, `mobile_no`, `login_id`) VALUES
(1, 'shafna', 8289816332, 2),
(2, 'sijil', 9087650909, 6),
(3, 'Thanseer', 9900887651, 7),
(4, 'thansii', 9900088765, 8),
(5, '', 0, 9),
(6, 'shafna', 9900765432, 10),
(7, 'Dilumoluu', 9807654355, 11),
(8, 'Shafna', 8899509843, 12),
(9, 'vgjj', 0, 13),
(10, '', 0, 14),
(11, '', 0, 15),
(12, 'shafna', 0, 16),
(13, 'shaf', 9900903513, 17),
(14, 'Liyana Niyas', 9924365278, 23),
(15, 'Mohammed Swalih VT', 9074230412, 24),
(16, 'vt', 1234567890, 25),
(17, 'hshhs', 964649, 26);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `complaint_tb`
--
ALTER TABLE `complaint_tb`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `connector_tb`
--
ALTER TABLE `connector_tb`
  ADD PRIMARY KEY (`connector_id`);

--
-- Indexes for table `login_tb`
--
ALTER TABLE `login_tb`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `review_tb`
--
ALTER TABLE `review_tb`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `slot_tb`
--
ALTER TABLE `slot_tb`
  ADD PRIMARY KEY (`slot_id`);

--
-- Indexes for table `station_tb`
--
ALTER TABLE `station_tb`
  ADD PRIMARY KEY (`station_id`);

--
-- Indexes for table `user_register_tb`
--
ALTER TABLE `user_register_tb`
  ADD PRIMARY KEY (`reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `complaint_tb`
--
ALTER TABLE `complaint_tb`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `connector_tb`
--
ALTER TABLE `connector_tb`
  MODIFY `connector_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `login_tb`
--
ALTER TABLE `login_tb`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `review_tb`
--
ALTER TABLE `review_tb`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `slot_tb`
--
ALTER TABLE `slot_tb`
  MODIFY `slot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `station_tb`
--
ALTER TABLE `station_tb`
  MODIFY `station_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_register_tb`
--
ALTER TABLE `user_register_tb`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
