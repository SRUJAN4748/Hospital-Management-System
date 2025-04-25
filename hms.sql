-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 01:33 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Srujan@00', '22-10-2024 08:41:10 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 10, 1, 250, '2024-10-22', '11:00 AM', '2024-10-21 12:20:02', 1, 1, NULL),
(2, 'Dental Care', 11, 2, 400, '2024-10-22', '4:15 PM', '2024-10-21 15:50:28', 0, 1, '2025-01-08 17:19:31'),
(3, 'Cardiologist', 2, 3, 500, '2024-10-22', '9:00 AM', '2024-10-21 04:45:17', 1, 1, NULL),
(4, 'Allergists/Immunologists', 1, 1, 300, '2024-10-25', '5:30 PM', '2024-10-24 11:59:05', 0, 1, '2024-10-27 09:33:39'),
(5, 'Allergists/Immunologists', 1, 1, 300, '2024-10-25', '5:30 PM', '2024-10-24 12:04:53', 0, 1, '2024-10-27 09:33:49'),
(6, 'Allergists/Immunologists', 1, 2, 300, '2024-10-25', '5:30 PM', '2024-10-24 12:00:42', 0, 1, '2025-01-08 15:39:30'),
(7, 'ENT', 10, 2, 250, '2024-10-25', '5:45 PM', '2024-10-24 12:04:37', 0, 1, '2024-10-27 09:34:47'),
(8, 'Dental Care', 11, 2, 400, '2024-10-25', '12:00 PM', '2024-10-25 05:14:02', 0, 1, '2024-10-27 09:34:55'),
(9, 'Dental Care', 11, 2, 400, '2024-10-25', '3:00 PM', '2024-10-25 07:15:17', 0, 1, '2024-10-27 09:35:08'),
(10, 'Dermatologists', 3, 2, 300, '2024-10-30', '11:45 AM', '2024-10-25 06:15:46', 0, 1, '2024-10-27 09:35:12'),
(11, 'Critical Care Medicine Specialists', 6, 2, 300, '2024-10-26', '2:45 PM', '2024-10-25 09:13:16', 0, 1, '2025-01-08 17:20:37'),
(12, 'Dental Care', 11, 2, 400, '2024-10-26', '4:15 PM', '2024-10-25 10:43:55', 0, 1, '2025-01-08 17:20:42'),
(13, 'Allergists/Immunologists', 1, 2, 300, '2024-10-26', '11:00 AM', '2024-10-25 16:24:52', 0, 1, '2025-01-08 17:20:45'),
(14, 'Allergists/Immunologists', 1, 2, 300, '2024-10-26', '11:00 AM', '2024-10-25 16:25:49', 0, 1, '2025-01-08 17:20:50'),
(15, 'Allergists/Immunologists', 1, 2, 300, '2024-10-26', '11:00 AM', '2024-10-25 16:48:28', 0, 1, '2025-01-08 17:20:54'),
(17, 'Dental Care', 11, 2, 400, '2025-01-09', '12:00 PM', '2025-01-08 15:24:05', 0, 1, '2025-01-08 17:20:58'),
(18, 'Dental Care', 11, 2, 400, '2025-01-09', '3:15 PM', '2025-01-08 15:38:44', 0, 1, '2025-01-08 17:21:03'),
(19, 'ENT', 10, 2, 250, '2025-01-30', '9:15 PM', '2025-01-08 15:40:51', 0, 1, '2025-01-08 17:21:12'),
(20, 'Family Physicians', 7, 2, 500, '2025-01-31', '10:45 PM', '2025-01-08 17:09:59', 0, 1, '2025-01-08 17:21:17'),
(21, 'Family Physicians', 7, 2, 500, '2025-01-31', '10:45 PM', '2025-01-08 17:12:44', 1, 1, NULL),
(22, 'Family Physicians', 7, 2, 500, '2025-01-22', '11:00 PM', '2025-01-08 17:22:27', 1, 1, NULL),
(23, 'Endocrinologists', 4, 2, 400, '2025-01-26', '11:00 PM', '2025-01-08 17:25:55', 1, 1, NULL),
(24, 'Endocrinologists', 4, 2, 400, '2025-01-26', '11:00 PM', '2025-01-08 17:27:17', 1, 1, NULL),
(25, 'Allergists/Immunologists', 1, 2, 300, '2025-01-30', '11:15 PM', '2025-01-08 17:45:12', 1, 1, NULL),
(26, 'Allergists/Immunologists', 1, 2, 300, '2025-01-26', '11:30 AM', '2025-01-08 17:54:03', 1, 1, NULL),
(27, 'Nephrologists', 8, 2, 500, '2025-01-26', '11:30 AM', '2025-01-08 17:54:33', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Allergists/Immunologists', 'Ravi Venkatesh', '17, Dr Ambedkar Salai, Kodambakkam, Chennai', '300', 8917843182, 'ravi@gmail.com', 'e58cc3fe4b3387c893c8fc9dd43a829a', '2024-10-20 02:06:29', NULL),
(2, 'Cardiologist', 'Jaydev Verma', '42, Montieth Rd, Chennai', '500', 6127981549, 'jaydev@gmail.com', 'aa0b38031d2165ce9566972ec026b4c3', '2024-10-20 02:12:38', NULL),
(3, 'Dermatalogist', 'Rahul Saiekh', '4, B/10, Shanti Nagar, Phase 3, Sector 6, Mira Road, Mumbai', '300', 8707655005, 'rahul@gmail.com', 'ebaaba27b32928a25f2ad6185fc0cc74', '2024-10-20 02:14:33', NULL),
(4, 'Endocrinologists', 'Ramesh Soni', 'A104, Daya Nand Colony, Lajpat Nagar, Delhi ', '400', 6127923816, 'rameshsoni@gmail.com', 'de7cbbdd1b746025d12317fb93389b61', '2024-10-20 02:16:59', NULL),
(5, 'Anesthesiologist', 'Indu Gupta', 'A 302, Sky High, Shankar Lane, Orlam Tank Road, Malad (west), Mumbai', '400', 7979063950, 'indugupta@gmail.com', 'ce6e8111ab004113b635416e0e4aa5f3', '2024-10-20 02:19:46', NULL),
(6, 'Critical Care Medicine Specialists', 'Gopal Sharma', '29, 4th Floor, G C Avenue, Dharmatala, Kolkata', '300', 8917362914, 'gopal@gmail.com', '0d61af9dccfa25fa2de82f9416dd60a0', '2024-10-20 02:33:13', NULL),
(7, 'Family Physicians', 'Venkatesh A', '1630, Opp K R Puram Railway Station, Pushpanjalitent Road, Doorvaninagar, Bangalore', '500', 6319938010, 'venkatesh@gmail.com', 'c76c5dcf0d661f8de789743274f1698a', '2024-10-20 02:35:17', '2024-10-23 07:11:21'),
(8, 'Nephrologists', 'Karthik Varma', '130, 3 Stage, Near Rvv College, B S K, Bangalore', '500', 7979909442, 'karthik@gmail.com', 'e9b26d0811e1a2e36704bb8a797c7ad4', '2024-10-20 02:36:50', NULL),
(9, 'Neurologists', 'Kishore C', '102, Rajaji Road, Ramnagar, Coimbatore', '700', 7280945476, 'kishore@gmail.com', '3f96ac7c2bfa7bee77f3d94a5e083ddb', '2024-10-20 02:38:37', NULL),
(10, 'ENT', 'Ganesh ', '657,gunjal Complex, Near Deccan Gymkhan, Shivaji Nagar, Shivaji Nagar, Pune', '250', 7396591140, 'ganesh@gmail.com', '5a6f9dc330737bc545736a270844dd9e', '2024-10-20 02:48:48', NULL),
(11, 'Dental Care', 'Vipin Sekh', '6, Roosevelt House, Mere Weather Road, Behind Taj Mahal Hotel, Colaba, Mumbai', '400', 6127938176, 'vipin@gmail.com', 'b0ac87e0bfa9fc3a30754cb0233d43d7', '2024-10-20 02:51:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 02:07:29', '23-10-2024 08:36:00 AM', 1),
(2, 3, 'rahul@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 02:53:21', NULL, 1),
(3, 7, 'gopal@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 02:56:58', NULL, 1),
(4, 3, 'rahul@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 03:06:17', NULL, 1),
(5, 9, 'kishore@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-24 03:18:44', '24-10-2024 08:48:48 AM', 1),
(6, 10, 'ganesh@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 03:20:53', NULL, 1),
(7, NULL, 'vipin@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 09:26:15', NULL, 0),
(8, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 09:26:37', NULL, 0),
(9, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 09:31:34', NULL, 1),
(10, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 10:53:36', NULL, 1),
(11, NULL, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 10:54:25', NULL, 0),
(12, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 10:54:39', '25-10-2024 04:29:49 PM', 1),
(13, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 11:12:06', NULL, 1),
(14, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 11:30:38', '25-10-2024 05:03:57 PM', 1),
(15, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 17:00:03', '25-10-2024 10:33:21 PM', 1),
(16, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 17:30:15', '25-10-2024 11:01:48 PM', 1),
(17, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 17:38:50', '25-10-2024 11:11:25 PM', 1),
(18, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 20:09:58', '26-10-2024 01:40:42 AM', 1),
(45, 1, 'ravi@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:30:51', '08-01-2025 09:01:22 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Allergists/Immunologists', '2024-10-20 02:00:43', NULL),
(2, 'Cardiologists', '2024-10-20 02:00:52', NULL),
(3, 'Dermatalogists', '2024-10-20 02:01:02', NULL),
(4, 'Endocrinologists', '2024-10-20 02:01:24', NULL),
(5, 'Anesthesiologists', '2024-10-20 02:01:33', NULL),
(6, 'Critical Care Medicine Specialists', '2024-10-20 02:01:47', NULL),
(7, 'Family Physicians', '2024-10-20 02:01:57', NULL),
(8, 'Nephrologists', '2024-10-20 02:02:16', NULL),
(9, 'Neurologists', '2024-10-20 02:02:33', NULL),
(10, 'ENT', '2024-10-20 02:03:16', NULL),
(11, 'Dental Care', '2024-10-20 02:03:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'Test', 'testing@gmail.com', 9267127291, 'This is for testing purposes.   This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.This is for testing purposes.', '2024-10-20 16:52:03', '.', '2024-10-21 04:48:26', 1),
(2, 'Aditya', 'aditya@gmail.com', 9283889120, 'Help me with login', '2024-10-22 13:13:41', 'Solved', '2024-10-23 04:46:22', 1),
(3, 'Suresh', 'sureshvarma@gmail.com', 9324324222, 'Help me with Communication address', '2024-10-25 01:50:44', 'Solved', '2024-10-25 04:48:54', 1),
(4, 'Siva kumar', 'siva@gmail.com', 9126812729, 'Timings of hospital please', '2024-10-26 11:44:30', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(200) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '120/80', '80', '70', '98', 'Normal', '2024-10-22 11:46:39'),
(2, 2, '120/80', '90', '75', '98', 'Normal', '2024-10-21 04:47:13'),
(3, 3, '140/90', '95', '85', '98', 'Test', '2024-10-21 05:11:22'),
(4, 4, '130/80', '100', '70', '98', 'Test', '2024-10-22 10:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpeningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpeningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2024-10-20 07:21:52', NULL),
(2, 'contactus', 'Contact Details', '177, Kannagi Street, Mahathma Gandhi Nagar, Tharamani, Chennai, Tamil Nadu 600113', 'HMSinfo@gmail.com', '+918688504748', '2024-10-20 07:24:07', '8 am To 10 Pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 10, 'Venkat', 9543931127, 'venkat@gmail.com', 'male', 'Chennai', 25, 'Breathing Problem', '2024-10-22 06:03:37', NULL),
(2, 3, 'Pavan', 7485962013, 'pavan@gmail.com', 'male', 'Bangalore', 21, 'Normal', '2024-10-21 02:54:10', NULL),
(3, 6, 'Surya', 7485120396, 'surya@gmail.com', 'male', 'Hyderabad', 20, 'Fever', '2024-10-21 03:02:30', NULL),
(4, 9, 'Gautham', 7485962013, 'gautham@gmail.com', 'male', 'Coimbatore', 20, 'normal', '2024-10-22 03:08:08', NULL),
(5, 11, 'divya', 8596742103, 'divya@gmail.com', 'female', 'Bangalore', 20, 'Tooth Pain', '2024-10-22 02:32:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'prashanth@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-21 14:52:07', '21-10-2024 08:25:25 PM', 1),
(2, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 14:53:50', '23-10-2024 08:24:06 PM', 1),
(3, NULL, 'pavan@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 14:54:22', NULL, 0),
(4, 4, 'surya@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-23 14:54:29', '23-10-2024 23:27:36 PM', 1),
(5, NULL, 'pavan@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-24 01:47:52', NULL, 0),
(6, 5, 'gautham@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-24 01:51:11', '24-10-2024 07:25:49 AM', 1),
(7, 6, 'divya@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-24 02:34:33', NULL, 1),
(8, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 08:07:05', '25-10-2024 01:37:21 PM', 1),
(9, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 09:12:57', NULL, 1),
(10, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 17:44:29', '25-10-2024 11:15:09 PM', 1),
(11, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-25 20:07:27', '26-10-2024 01:39:43 AM', 1),
(37, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-27 09:53:28', NULL, 0),
(38, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-27 09:53:38', NULL, 0),
(39, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-27 09:54:29', NULL, 0),
(40, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2024-10-27 09:58:29', '27-10-2024 03:29:02 PM', 1),
(41, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:27:46', NULL, 0),
(42, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:28:02', NULL, 0),
(43, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:32:43', NULL, 0),
(44, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:33:23', NULL, 0),
(45, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:34:27', NULL, 0),
(46, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:34:43', NULL, 0),
(47, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:36:25', NULL, 0),
(48, NULL, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:43:10', NULL, 0),
(49, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 14:43:30', NULL, 0),
(50, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:22:59', '08-01-2025 08:56:45 PM', 1),
(51, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:38:14', '08-01-2025 09:09:44 PM', 1),
(52, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:40:17', '08-01-2025 09:13:48 PM', 1),
(53, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:44:54', NULL, 0),
(54, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:45:03', NULL, 0),
(55, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:45:14', NULL, 0),
(56, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:46:36', NULL, 0),
(57, NULL, 'prasanth@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:47:01', NULL, 0),
(58, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 15:47:08', NULL, 1),
(59, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 17:09:41', '08-01-2025 10:49:59 PM', 1),
(60, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 17:20:09', '08-01-2025 10:53:06 PM', 1),
(61, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 17:25:25', NULL, 1),
(62, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 17:44:56', NULL, 1),
(63, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 17:52:13', NULL, 1),
(64, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-08 17:55:33', NULL, 1),
(65, 2, 'venkat@gmail.com', 0x3a3a3100000000000000000000000000, '2025-01-10 10:24:01', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Prashanth', 'Mumbai', 'Mumbai', 'male', 'prashanth@gmail.com', '88532da10e91711983071996768c8c82', '2024-10-22 14:53:36', NULL),
(2, 'Venkat', 'Chennai', 'Chennai', 'male', 'venkat@gmail.com', '64514728e3aa123f549e0b847426247b', '2024-10-22 01:47:23', NULL),
(3, 'Pavan', 'Bangalore', 'Bangalore', 'female', 'pavan@gmail.com', '9a13db2d41e98c8d6c39c67fc90f4283', '2024-10-22 01:50:53', NULL),
(4, 'Surya', 'Bangalore', 'Hyderabad', 'female', 'surya@gmail.com', 'a173bc2387f017706989e4e7e56a54b5', '2024-10-23 01:55:15', NULL),
(5, 'Gautham', 'Coimbatore', 'Coimbatore', 'male', 'gautham@gmail.com', '5015bb6ba58c55834f94eff3a8d319ad', '2024-10-24 01:57:23', NULL),
(6, 'Divya', 'Bangalore', 'Bangalore', 'female', 'divya@gmail.com', 'bdf207a217131e875fa7246076e77b3b', '2024-10-24 02:34:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
