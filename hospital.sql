-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 26, 2017 at 02:12 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountant`
--

CREATE TABLE `accountant` (
  `id` int(11) NOT NULL,
  `name` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `password` varchar(32) NOT NULL,
  `sex` varchar(23) NOT NULL,
  `address` varchar(23) NOT NULL,
  `phone` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accountant`
--

INSERT INTO `accountant` (`id`, `name`, `email`, `password`, `sex`, `address`, `phone`) VALUES
(1, 'amin', 'amin@gmail.com', '123', 'male', 'Khilkhet, Dhaka', 93274309);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(23) NOT NULL,
  `admin_username` varchar(23) NOT NULL,
  `admin_email` varchar(23) NOT NULL,
  `admin_password` varchar(23) NOT NULL,
  `photo` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_username`, `admin_email`, `admin_password`, `photo`) VALUES
(1, 'Abdullah Al Mahfuz', 'bt.mahfuz@gmail.com', '12345', '');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctor_name` varchar(23) NOT NULL,
  `doctor_email` varchar(23) NOT NULL,
  `patient_name` varchar(23) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctor_name`, `doctor_email`, `patient_name`, `date`) VALUES
(1, 'Dr.abul Hasan', 'hasan@gmail.com', 'titu', '2017-03-08'),
(2, 'Dr.abul Hasan', 'hasan@gmail.com', 'Abdul Hakim', '2017-03-08'),
(3, 'Dr. Abdur Rashid', 'rashid@gmail.com', 'sifat', '2017-03-08'),
(16, 'Dr.abul Hasan', 'hasan@gmail.com', 'hjm', '2017-03-22'),
(18, 'Dr.abul Hasan', 'hasan@gmail.com', 'jhon', '2017-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `bed`
--

CREATE TABLE `bed` (
  `id` int(11) NOT NULL,
  `bed_type` varchar(23) NOT NULL,
  `total_bed` int(23) NOT NULL DEFAULT '0',
  `bed_description` varchar(500) NOT NULL,
  `rate` int(23) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed`
--

INSERT INTO `bed` (`id`, `bed_type`, `total_bed`, `bed_description`, `rate`) VALUES
(9, 'cabin', 1, 'sdafe', 10000),
(10, 'ward', 2, 'sadfsaf', 3333),
(11, 'cabin', 3, 'this is icu bed description', 10000),
(12, 'icu', 4, 'this is icu bed description', 10000),
(13, 'ward', 5, 'this is a description', 3333),
(14, 'icu', 6, 'this is a description', 23333);

-- --------------------------------------------------------

--
-- Table structure for table `bed_allotment`
--

CREATE TABLE `bed_allotment` (
  `id` int(11) NOT NULL,
  `bed_number` int(23) NOT NULL,
  `bed_type` varchar(23) NOT NULL,
  `patient_name` varchar(23) NOT NULL,
  `allotment_date` varchar(23) NOT NULL,
  `discharge_date` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bed_allotment`
--

INSERT INTO `bed_allotment` (`id`, `bed_number`, `bed_type`, `patient_name`, `allotment_date`, `discharge_date`) VALUES
(7, 2, 'ward', 'titu', '2017-03-22', '2017-03-29'),
(8, 4, 'icu', 'sifat', '2017-03-22', '2017-03-24'),
(9, 1, 'cabin', 'jhon', '2017-03-18', '2017-03-20'),
(10, 3, 'cabin', 'Max', '2017-04-05', '2017-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `id` int(11) NOT NULL,
  `blood_group` varchar(23) NOT NULL,
  `status` int(23) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`id`, `blood_group`, `status`) VALUES
(1, 'A+', 15),
(2, 'A-', 7),
(3, 'AB+', 6),
(4, 'AB-', 7),
(5, 'O+', 2),
(6, 'O-', 11),
(7, 'B+', 12),
(8, 'B-', 6);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donor`
--

CREATE TABLE `blood_donor` (
  `id` int(11) NOT NULL,
  `name` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `address` varchar(23) NOT NULL,
  `phone` int(23) NOT NULL,
  `sex` varchar(23) NOT NULL,
  `age` int(23) NOT NULL,
  `blood_group` varchar(23) NOT NULL,
  `last_donation` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_donor`
--

INSERT INTO `blood_donor` (`id`, `name`, `email`, `address`, `phone`, `sex`, `age`, `blood_group`, `last_donation`) VALUES
(1, 'sifat', 'bt.sifat@gmail.com', 'Mohakhali, Dhaka', 1212112, 'male', 23, 'O-', 'lfsh'),
(4, 'Mahfuz', 'bt.mahfuz@gmail.com', 'Mohakhali, Dhaka', 209839, 'male', 23, 'B+', 'lfsh');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `contact_id` int(11) NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `photo` mediumblob
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `dep_name` varchar(23) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `dep_name`, `description`) VALUES
(2, 'New Dep', 'The use of New Department techniques has been particularly important for injured patients. Arthroscopy was pioneered in the early 1950s by Dr. Masaki Watanabe of Japan to perform minimally invasive cartilage surgery and reconstructions of torn ligaments.'),
(3, 'New Departm', 'The use of New Department techniques has been particularly important for injured patients. Arthroscopy was pioneered in the early 1950s by Dr. Masaki Watanabe of Japan to perform minimally invasive cartilage surgery and reconstructions of torn ligaments.'),
(4, 'New Departm', 'The use of New Department techniques has been particularly important for injured patients. Arthroscopy was pioneered in the early 1950s by Dr. Masaki Watanabe of Japan to perform minimally invasive cartilage surgery and reconstructions of torn ligaments.'),
(5, 'New Departm', 'The use of New Department techniques has been particularly important for injured patients. Arthroscopy was pioneered in the early 1950s by Dr. Masaki Watanabe of Japan to perform minimally invasive cartilage surgery and reconstructions of torn ligaments.');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `d_id` int(11) NOT NULL,
  `d_name` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `gender` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  `address` varchar(23) NOT NULL,
  `phone` varchar(23) NOT NULL,
  `department` varchar(23) NOT NULL,
  `d_degree` varchar(23) NOT NULL,
  `treatment_fee` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`d_id`, `d_name`, `email`, `gender`, `password`, `address`, `phone`, `department`, `d_degree`, `treatment_fee`) VALUES
(2, 'Dr.abul Hasan', 'hasan@gmail.com', 'male', '123', 'Dhaka', '1212112', 'Kardio specialist', 'FRCS', 600),
(3, 'Dr. Abdur Rashid', 'rashid@gmail.com', 'male', '123', 'Dhaka,kafrul', '013224432', 'Heart Specialist', 'MBBS', 1000),
(4, 'Dr.karim', 'karim@gmail.com', 'male', '1234', 'Dhaka', '324121323', 'Medicine Specialist', 'MBBS,BCS Health', 500),
(5, 'Dr. Mohit', 'mohit@gmail.com', 'male', '123', 'Dhaka,kafrul', '2313213', 'Neuro Sergon', 'MBBS, FCPS', 500),
(6, 'Mahfuz', 'bt.mahfuz@gmail.com', 'male', '23we', 'sdf', 'sfae', 'Medicine Specialist', 'fae', 500),
(7, 'Abdullah', 'abdullah@gmail.com', 'male', '123', 'Farmgate, Dhaka', '2213211', 'Heart Specialist', 'fcps', 600),
(9, 'Mahfuz', 'bt.mahfuz@gmail.com', 'male', '12345', 'sdf', '2213211', 'Heart Specialist', 'sf', 600),
(10, 'Prokash Das', 'prokash@gmail.com', 'male', '123', 'Khulna', '123456', 'Medicine Specialist', 'MBBS', 600),
(11, 'Rakib', 'rakib@gmail.com', 'male', '123', 'Farmgate, Dhaka', '12222222', 'Cardiologist', 'MBBS', 600);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(11) NOT NULL,
  `donor_name` varchar(23) NOT NULL,
  `blood_group` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `donor_name`, `blood_group`) VALUES
(7, 'sifat', 'O+'),
(8, 'Mahfuz', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `amount` double NOT NULL,
  `patient_name` varchar(45) NOT NULL,
  `pres_id` int(11) NOT NULL,
  `date` varchar(23) NOT NULL,
  `status` varchar(45) NOT NULL DEFAULT 'UnPaid'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id`, `title`, `amount`, `patient_name`, `pres_id`, `date`, `status`) VALUES
(1, 'Treatment,Operation,Bed,Medicine,Test Fee', 34434, 'titu', 1, '2017-04-06', 'Paid'),
(2, 'Treatment,Operation,,Medicine,Test Fee', 7800, 'Abdul Hakim', 2, '2017-04-06', 'Paid'),
(3, 'Treatment,Operation,,, Fee', 8600, 'hjm', 3, '2017-04-06', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `labrotorist`
--

CREATE TABLE `labrotorist` (
  `id` int(11) NOT NULL,
  `name` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  `sex` varchar(23) NOT NULL,
  `address` varchar(23) NOT NULL,
  `phone` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `labrotorist`
--

INSERT INTO `labrotorist` (`id`, `name`, `email`, `password`, `sex`, `address`, `phone`) VALUES
(1, 'nayeem', 'nayeem@gmail.com', '123', 'male', 'Dhaka', '1111111');

-- --------------------------------------------------------

--
-- Table structure for table `medicine`
--

CREATE TABLE `medicine` (
  `id` int(11) NOT NULL,
  `medicine_name` varchar(23) NOT NULL,
  `category` varchar(23) NOT NULL,
  `description` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `company` varchar(23) NOT NULL,
  `status` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine`
--

INSERT INTO `medicine` (`id`, `medicine_name`, `category`, `description`, `price`, `company`, `status`) VALUES
(2, 'Napa-Extra', 'categoryN', 'this is a description', 22, 'squre', 490),
(3, 'ciprocin', 'category', 'description', 20, 'squre', 3);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_category`
--

CREATE TABLE `medicine_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(23) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_category`
--

INSERT INTO `medicine_category` (`id`, `category_name`, `description`) VALUES
(4, 'categoryName', 'this is a description'),
(5, 'another category name', 'another description'),
(6, 'category', 'description');

-- --------------------------------------------------------

--
-- Table structure for table `medicine_sale`
--

CREATE TABLE `medicine_sale` (
  `id` int(11) NOT NULL,
  `pres_id` int(23) NOT NULL DEFAULT '0',
  `patient_name` varchar(23) NOT NULL,
  `price` double NOT NULL,
  `date` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicine_sale`
--

INSERT INTO `medicine_sale` (`id`, `pres_id`, `patient_name`, `price`, `date`) VALUES
(15, 1, 'titu', 203, '2017-03-22'),
(16, 2, 'Abdul Hakim', 300, '2017-03-22'),
(20, 0, 'Rakib', 300, '2017-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `subject` varchar(111) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

INSERT INTO `notice` (`id`, `subject`, `description`, `date`) VALUES
(1, 'esaf', 'sfae', 'dfa'),
(2, 'Appointment Text Reminder Service – Important Information', 'Patients do have the option of opting out of the text reminder service, either by notifying a member of the clinic reception team or replying ‘STOP’ upon receipt of a text reminder. Please note, by opting out you will not receive reminders for any hospital appointments', '2017-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `n_id` int(23) NOT NULL,
  `n_name` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `gender` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  `address` varchar(23) NOT NULL,
  `phone` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`n_id`, `n_name`, `email`, `gender`, `password`, `address`, `phone`) VALUES
(3, 'Sifat', 'sifat2@gmail.com', '0', '123', 'Mohakhali, Dhaka', '232323'),
(4, 'Keya', 'keya@gmail.com', 'female', '123', 'Kafrul, Dhaka', '320940830'),
(5, 'Laboni', 'laboni@gmail.com', 'female', '1234', 'Kafrul, Dhaka', '11112222');

-- --------------------------------------------------------

--
-- Table structure for table `operation`
--

CREATE TABLE `operation` (
  `id` int(11) NOT NULL,
  `operation_type` varchar(111) NOT NULL,
  `doctor_name` varchar(111) NOT NULL,
  `patient_name` varchar(111) NOT NULL,
  `operation_fee` double NOT NULL,
  `date` varchar(111) NOT NULL,
  `description` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operation`
--

INSERT INTO `operation` (`id`, `operation_type`, `doctor_name`, `patient_name`, `operation_fee`, `date`, `description`) VALUES
(3, 'General Surgery', 'Dr.abul Hasan', 'titu', 10000, '2017-03-22', 'birth report Description'),
(4, 'Neurosurgery', 'Dr.abul Hasan', 'Abdul Hakim', 6000, '2017-03-09', 'surgery Description'),
(5, 'Colon and Rectal Surgery', 'Dr.abul Hasan', 'hjm', 0, '2017-03-09', 'surgery Description'),
(6, 'Colon and Rectal Surgery', 'Dr.abul Hasan', 'hjm', 8000, '2017-03-09', 'surgery Description');

-- --------------------------------------------------------

--
-- Table structure for table `operation_type`
--

CREATE TABLE `operation_type` (
  `id` int(11) NOT NULL,
  `operation_type` varchar(100) NOT NULL,
  `operation_fee` double NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operation_type`
--

INSERT INTO `operation_type` (`id`, `operation_type`, `operation_fee`, `description`) VALUES
(4, 'Bariatric Surgery', 10000, 'this is a description'),
(5, 'Breast Surgery', 30000, 'Breast augmentation surgery ,Breast reduction surgery'),
(8, 'Colon and Rectal Surgery', 5000, 'this is a description'),
(9, 'Endocrine Surgery', 15000, 'surgery Description'),
(10, 'General Surgery', 10000, 'surgery Description'),
(11, 'Neurosurgery', 100000, 'surgery Description');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `p_id` int(23) NOT NULL,
  `p_name` varchar(23) NOT NULL,
  `p_email` varchar(23) NOT NULL,
  `p_password` varchar(23) NOT NULL,
  `p_address` varchar(23) NOT NULL,
  `p_phone` int(23) NOT NULL,
  `p_gender` varchar(23) NOT NULL,
  `p_birthday` varchar(23) NOT NULL,
  `p_age` int(23) NOT NULL,
  `p_bloodgroup` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`p_id`, `p_name`, `p_email`, `p_password`, `p_address`, `p_phone`, `p_gender`, `p_birthday`, `p_age`, `p_bloodgroup`) VALUES
(7, 'Abdul Hakim', 'hakim@gmail.com', '2q3erwdfs', 'Banani, Dhaka', 1232443, 'male', '07-23-1988', 34, 'AB+'),
(12, 'titu', 'titu@gmail.com', '1223', 'Banani, Dhaka', 123244313, 'male', '07-23-1988', 34, 'O+'),
(15, 'sifat2', 'sifat@gmail.com', '12q3w4', 'Banani, Dhaka', 123244313, 'male', '07-23-1988', 34, 'AB+'),
(16, 'sifat', 'sifat@gmail.com', 'fds', 'Banani, Dhaka', 123244313, 'male', '07-23-1988', 34, 'A+'),
(18, 'jhon', 'jhon@gmail.com', '123', 'washington', 232323, 'male', '2017/23/03', 23, 'B-'),
(19, 'Max', 'max@gmail.com', '123', 'washington', 23232323, 'male', '2017/23/03', 23, 'A+');

-- --------------------------------------------------------

--
-- Table structure for table `prescription`
--

CREATE TABLE `prescription` (
  `id` int(11) NOT NULL,
  `doctor_name` varchar(23) NOT NULL,
  `patient_name` varchar(23) NOT NULL,
  `case_history` varchar(500) NOT NULL,
  `medication` varchar(500) NOT NULL,
  `medi_phermacist` varchar(500) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prescription`
--

INSERT INTO `prescription` (`id`, `doctor_name`, `patient_name`, `case_history`, `medication`, `medi_phermacist`, `description`, `date`) VALUES
(1, 'Dr.abul Hasan', 'titu', 'new case history', 'medication report', 'medication from phermacist', 'new description', '2017-03-12'),
(2, 'Dr. Abdur Rashid', 'Abdul Hakim', 'dsf', 'asdfea', 'afeawf', 'sdfaea', '2017-03-27'),
(3, 'Dr.abul Hasan', 'hjm', 'case history', 'medication', 'medication from phermacist', 'description', '2017-03-22'),
(4, 'Dr.abul Hasan', 'jhon', 'grgt', 'gegt', 'fre', 'htr', '2017-04-05');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `type` varchar(23) NOT NULL,
  `description` varchar(500) NOT NULL,
  `date` varchar(23) NOT NULL,
  `doctor` varchar(23) NOT NULL,
  `patient` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `type`, `description`, `date`, `doctor`, `patient`) VALUES
(1, 'operation', 'the operation report', '2017-03-015', 'Dr. Mohit', 'sifat'),
(3, 'death', 'death report Description', '2017-03-015', 'Prokash Das', 'jhon'),
(5, 'birth', 'birth report Description', '2017-03-015', 'Abdullah', 'Max'),
(6, 'other', 'other report Description', '2017-03-015', 'Prokash Das', 'sifat2'),
(7, 'operation', 'this is a description', '2017-03-27', 'Dr.abul Hasan', 'jhon');

-- --------------------------------------------------------

--
-- Table structure for table `stuff`
--

CREATE TABLE `stuff` (
  `st_id` int(23) NOT NULL,
  `st_name` varchar(23) NOT NULL,
  `email` varchar(23) NOT NULL,
  `gender` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL,
  `address` varchar(23) NOT NULL,
  `phone` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuff`
--

INSERT INTO `stuff` (`st_id`, `st_name`, `email`, `gender`, `password`, `address`, `phone`) VALUES
(1, 'Sadek', 'sadek@gmail.com', '', '123', '', ''),
(2, 'Tarek', 'tarek@gmail.com', '', '1234', '', ''),
(3, 'Ali Hasan', 'ali@gmail.com', 'male', '123', 'Dhaka', '1111111');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `pres_id` int(11) NOT NULL,
  `patient_name` varchar(23) NOT NULL,
  `test_type` varchar(45) NOT NULL,
  `lab_fee` double NOT NULL,
  `date` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `pres_id`, `patient_name`, `test_type`, `lab_fee`, `date`) VALUES
(1, 1, 'titu', 'Blood Test', 300, '2017-03-09'),
(2, 2, 'Abdul Hakim', 'X-ray', 500, '2017-03-015'),
(3, 0, 'Abdul', 'Blood Test', 300, '2017-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `test_type`
--

CREATE TABLE `test_type` (
  `id` int(11) NOT NULL,
  `type` varchar(23) NOT NULL,
  `test_fee` double NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_type`
--

INSERT INTO `test_type` (`id`, `type`, `test_fee`, `description`) VALUES
(1, 'X-ray', 500, 'this is x-ray description'),
(3, 'Blood Test', 300, 'this is test description');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountant`
--
ALTER TABLE `accountant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed`
--
ALTER TABLE `bed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bed_allotment`
--
ALTER TABLE `bed_allotment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blood_group` (`blood_group`);

--
-- Indexes for table `blood_donor`
--
ALTER TABLE `blood_donor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`d_id`),
  ADD UNIQUE KEY `d_id` (`d_id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `labrotorist`
--
ALTER TABLE `labrotorist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine`
--
ALTER TABLE `medicine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_category`
--
ALTER TABLE `medicine_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `medicine_sale`
--
ALTER TABLE `medicine_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`n_id`);

--
-- Indexes for table `operation`
--
ALTER TABLE `operation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operation_type`
--
ALTER TABLE `operation_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`p_id`),
  ADD UNIQUE KEY `p_name` (`p_name`);

--
-- Indexes for table `prescription`
--
ALTER TABLE `prescription`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stuff`
--
ALTER TABLE `stuff`
  ADD PRIMARY KEY (`st_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test_type`
--
ALTER TABLE `test_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accountant`
--
ALTER TABLE `accountant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `bed`
--
ALTER TABLE `bed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `bed_allotment`
--
ALTER TABLE `bed_allotment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `blood_bank`
--
ALTER TABLE `blood_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `blood_donor`
--
ALTER TABLE `blood_donor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `labrotorist`
--
ALTER TABLE `labrotorist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `medicine`
--
ALTER TABLE `medicine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `medicine_category`
--
ALTER TABLE `medicine_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `medicine_sale`
--
ALTER TABLE `medicine_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `notice`
--
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `n_id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `operation`
--
ALTER TABLE `operation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `operation_type`
--
ALTER TABLE `operation_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `p_id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `prescription`
--
ALTER TABLE `prescription`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `stuff`
--
ALTER TABLE `stuff`
  MODIFY `st_id` int(23) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `test_type`
--
ALTER TABLE `test_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
