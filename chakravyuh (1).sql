-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2018 at 08:16 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chakravyuh`
--

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `company` text NOT NULL,
  `location` text NOT NULL,
  `package` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`id`, `title`, `description`, `company`, `location`, `package`) VALUES
(1, 'ASE', 'ASFJOIDDHKWS', 'dhfkjaf', 'dslahdkjas', 12341),
(2, 'fljlf', 'mdfanfnak', 'fdjfnksjdbf', 'fedkjndfkj', 132353);

-- --------------------------------------------------------

--
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `SNO` int(10) NOT NULL,
  `NAME` text NOT NULL,
  `LIKES` int(10) NOT NULL DEFAULT '0',
  `DISLIKES` int(10) NOT NULL DEFAULT '0',
  `IMAGE` text NOT NULL,
  `sex` char(1) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`SNO`, `NAME`, `LIKES`, `DISLIKES`, `IMAGE`, `sex`, `price`, `category`) VALUES
(2, 'Saumya Kishan Singh', 0, 0, '../assets/img/player/Saumya Kishen Singh.jpg', 'M', '900000', NULL),
(3, 'Eesha Kaushal', 0, 0, '../assets/img/player/Eesha.jpg', 'F', '725000', NULL),
(4, 'Love Narwar', 0, 0, '../assets/img/player/Love Narwar.jpg', 'M', '650000', NULL),
(5, 'Ashikant Davidar', 0, 0, '../assets/img/player/Aashikanth Davidar.jpg', 'M', '550000', 'FOOTBALL,Football,Football'),
(6, 'Ayotakshi Roy', 0, 0, '../assets/img/player/Ayotakshee.jpg', 'F', '550000', NULL),
(7, 'Avni Duggal', 0, 0, '../assets/img/player/Avni Duggal.jpg', 'F', '500000', NULL),
(8, 'Rashi Gupta', 0, 0, '../assets/img/player/Rashi.jpg', 'F', '500000', NULL),
(9, 'Kartik Ganesh', 0, 0, '../assets/img/player/Kartik Ganesh.jpg', 'M', '475000', 'FOOTBALL,Football,Football'),
(10, 'Mansi Verma', 0, 0, '../assets/img/player/Mansi.jpg', 'F', '475000', NULL),
(11, 'Aakanksha Siwach', 0, 0, '../assets/img/player/aakanksha.jpg', 'F', '475000', NULL),
(12, 'Himanshu Saxena', 0, 0, '../assets/img/player/Himanshu Saxena - 8.jpg', 'M', '475000', NULL),
(13, 'Mayank Bansal', 0, 0, '../assets/img/player/Mayank Bansal.jpg', 'M', '450000', NULL),
(14, 'Harshit Talesra', 0, 0, '../assets/img/player/Harshit Talesara.jpg', 'M', '450000', 'FOOTBALL,Football,Football'),
(15, 'Sharmishtha Chatterjee', 0, 0, '../assets/img/player/sharmistha Chatterjee.jpg', 'F', '400000', NULL),
(16, 'Nitish Parashar', 0, 0, '../assets/img/player/Nitish Parashar.jpg', 'M', '400000', NULL),
(17, 'Aditya Jishnu', 0, 0, '../assets/img/player/Adi_Jishnu.jpg', 'M', '375000', 'FOOTBALL,Football,Football'),
(18, 'Radhika Dua', 0, 0, '../assets/img/player/Radhika.jpg', 'F', '375000', NULL),
(19, 'Sebi Bawa', 0, 0, '../assets/img/player/Sebi.jpg', 'F', '375000', NULL),
(20, 'Sonali', 0, 0, '../assets/img/player/Sonali.jpg', 'F', '375000', NULL),
(21, 'Kumar Gaurav', 0, 0, '../assets/img/player/Kumar Gaurav.jpg', 'M', '375000', NULL),
(22, 'Apurv Kansal', 0, 0, '../assets/img/player/Apurv Kansal.jpg', 'M', '375000', NULL),
(23, 'Saunil Gupta', 0, 0, '../assets/img/player/saunil.jpg', 'M', '350000', NULL),
(24, 'Simran Gupta', 0, 0, '../assets/img/player/simran gupta.jpg', 'F', '325000', NULL),
(25, 'Aman Kamdar', 0, 0, '../assets/img/player/Aman Kamdar.jpg', 'M', '325000', NULL),
(26, 'Sriram Kamath', 0, 0, '../assets/img/player/Sriram_Kamath.jpg', 'M', '300000', 'FOOTBALL,Football,Football'),
(27, 'Varun Gupta', 0, 0, '../assets/img/player/Varun Gupta.jpg', 'M', '300000', NULL),
(28, 'Shivani Gupta', 0, 0, '../assets/img/player/shivani gupta.jpg', 'F', '275000', NULL),
(29, 'Dirgha Prasad', 0, 0, '../assets/img/player/dirgah prasad.jpg', 'F', '275000', NULL),
(30, 'Utkarsh Aggarwal', 0, 0, '../assets/img/player/utkarsh_agarwal.jpg', 'M', '275000', 'FOOTBALL,Football,Football'),
(31, 'Jay Trivedi', 0, 0, '../assets/img/player/Jay Trivedi.jpg', 'M', '275000', NULL),
(32, 'Jayesh Nagar', 0, 0, '../assets/img/player/Jayesh Nagar.jpg', 'M', '275000', NULL),
(33, 'Nitin Grover', 0, 0, '../assets/img/player/Nitin Grover.jpg', 'M', '275000', NULL),
(34, 'Anubhav Rana', 0, 0, '../assets/img/player/Anubhav Rana.jpg', 'M', '250000', 'FOOTBALL,Football,Football'),
(35, 'Ruchir Gupta', 0, 0, '../assets/img/player/Ruchir.jpg', 'M', '250000', 'FOOTBALL,Football,Football'),
(36, 'Aayush Poddar', 0, 0, '../assets/img/player/aayush_poddar.jpg', 'M', '250000', NULL),
(37, 'Dhruv Adlakha', 0, 0, '../assets/img/player/dhruv adla.jpg', 'M', '250000', NULL),
(38, 'Shubham Sharma', 0, 0, '../assets/img/player/FB_IMG_1515268978474.jpg', 'M', '250000', NULL),
(39, 'Shreyas Suyal', 0, 0, '../assets/img/player/Shreyas Suyal.jpg', 'M', '250000', NULL),
(40, 'Keshav Kumar', 0, 0, '../assets/img/player/Keshav.jpg', 'M', '225000', NULL),
(41, 'Anmol singh', 0, 0, '../assets/img/player/Anmol Kular.jpg', 'M', '225000', NULL),
(42, 'Ankit Anuraj', 0, 0, '../assets/img/player/Ankit anuraj.jpg', 'M', '225000', 'FOOTBALL,Football,Football'),
(43, 'Roshni Khatri', 0, 0, '../assets/img/player/roshni khatri.jpg', 'F', '225000', NULL),
(44, 'Ashutosh Chaubey', 0, 0, '../assets/img/player/Ashutosh Chaubey.jpg', 'M', '225000', NULL),
(45, 'Dhruv Dhul', 0, 0, '../assets/img/player/Dhruv Dhull.jpg', 'M', '200000', NULL),
(46, 'Sabari Charan', 0, 0, '../assets/img/player/Sabari.jpg', 'M', '200000', NULL),
(47, 'Viaresh salooja', 0, 0, '../assets/img/player/Viraesh.jpg', 'M', '200000', NULL),
(48, 'Deepanshu Dheer', 0, 0, '../assets/img/player/Deepanshu Dheer.jpg', 'M', '200000', NULL),
(49, 'Parijat Singh', 0, 0, '../assets/img/player/Parijat.jpg', 'M', '200000', NULL),
(50, 'Rishab Mangla', 0, 0, '../assets/img/player/mangla.jpg', 'M', '200000', NULL),
(51, 'Viraj Agarwal', 0, 0, '../assets/img/player/viraj.jpg', 'M', '200000', NULL),
(52, 'Bhaskar Maheshwari', 0, 0, '../assets/img/player/Bhaskar Maheshwari - 8.jpg', 'M', '200000', NULL),
(53, 'Pratham Ramani', 0, 0, '../assets/img/player/Pratham Ramani - 8.jpg', 'M', '200000', NULL),
(54, 'Shivalingesh', 0, 0, '../assets/img/player/FB_IMG_1515269673538.jpg', 'M', '200000', NULL),
(55, 'P Hareesh', 0, 0, '../assets/img/player/Hareesh P.jpg', 'M', '200000', NULL),
(56, 'Prasang Pirodia', 0, 0, '../assets/img/player/Prasang Pirodia.jpg', 'M', '200000', NULL),
(57, 'Raghav Singh', 0, 0, '../assets/img/player/Raghav Singh.jpg', 'M', '200000', NULL),
(58, 'Ankit Singla', 0, 0, '../assets/img/player/Ankit Singla.jpg', 'F', '175000', NULL),
(59, 'Shubendhu Saurabh', 0, 0, '../assets/img/player/Shubhendu Saurabh.jpg', 'M', '175000', NULL),
(60, 'Shikha Tichkoo', 0, 0, '../assets/img/player/Shikha.jpg', 'F', '175000', NULL),
(61, 'Sravya', 0, 0, '../assets/img/player/Sravya.jpg', 'F', '175000', NULL),
(62, 'Akhil Sundar', 0, 0, '../assets/img/player/Akhil_Sundar.jpg', 'M', '175000', 'FOOTBALL,Football,Football'),
(63, 'James Sigi', 0, 0, '../assets/img/player/James_Sigi.jpg', 'M', '175000', 'FOOTBALL,Football,Football'),
(64, 'Yatharth', 0, 0, '../assets/img/player/Yatharth.jpg', 'M', '175000', 'FOOTBALL,Football,Football'),
(65, 'Achyut Murarka', 0, 0, '../assets/img/player/Achyut_Murarka.jpg', 'M', '175000', 'FOOTBALL,Football,Football'),
(66, 'Abhinav Natani', 0, 0, '../assets/img/player/Abhinav_Natani.jpg', 'M', '175000', 'FOOTBALL,Football,Football'),
(67, 'Saurabh', 0, 0, '../assets/img/player/saurabh.jpg', 'M', '175000', NULL),
(68, 'parth', 0, 0, '../assets/img/player/parth.jpg', 'M', '175000', NULL),
(69, 'Ankit Goyal', 0, 0, '../assets/img/player/ankit goyal.jpg', 'M', '175000', NULL),
(70, 'Vibhor Pratap', 0, 0, '../assets/img/player/Vibhor.jpg', 'M', '175000', NULL),
(71, 'Manu Sharma', 0, 0, '../assets/img/player/manu_sharma.jpg', 'M', '175000', NULL),
(72, 'Dhruv Mittal', 0, 0, '../assets/img/player/dhruv_mittal.jpg', 'M', '175000', NULL),
(73, 'Dhruv Dhingra', 0, 0, '../assets/img/player/dhruv.jpg', 'M', '175000', NULL),
(74, 'Somil Maheshwari', 0, 0, '../assets/img/player/Somil Maheshwari - 7.jpg', 'M', '175000', NULL),
(75, 'Anjali Seetha', 0, 0, '../assets/img/player/Anjali Seetha - 7.jpg', 'F', '175000', NULL),
(76, 'Lakshay Lakhanpal', 0, 0, '../assets/img/player/FB_IMG_1515269724206.jpg', 'M', '175000', NULL),
(77, 'Anup Agarwal', 0, 0, '../assets/img/player/FB_IMG_1515269148683.jpg', 'M', '175000', NULL),
(78, 'Neelesh Gupta', 0, 0, '../assets/img/player/Neelesh Gupta.jpg', 'M', '175000', NULL),
(79, 'Varun Kapahi', 0, 0, '../assets/img/player/Varun Kapahi.jpg', 'M', '175000', NULL),
(80, 'chiranjeev Ranjan', 0, 0, '../assets/img/player/Chiranjeev Ranjan.jpg', 'M', '175000', NULL),
(81, 'Harshit Gupta', 0, 0, '../assets/img/player/Harshit Gupta.jpg', 'M', '175000', NULL),
(82, 'Pranshu Singh', 0, 0, '../assets/img/player/Pranshu Singh.jpg', 'M', '175000', NULL),
(83, 'Aman Kumar Jha', 0, 0, '../assets/img/player/Aman Jha.jpg', 'M', '175000', NULL),
(84, 'Rohan Dhingra', 0, 0, '../assets/img/player/rohan.jpg', 'M', '175000', NULL),
(85, 'Sanchit Gupta', 0, 0, '../assets/img/player/Sanchit Gupta.jpg', 'M', '175000', NULL),
(86, 'Lakshay Pathak', 0, 0, '../assets/img/player/Lakshay.jpg', 'M', '150000', NULL),
(87, 'Gaurav Bansal', 0, 0, '../assets/img/player/Gaurav Bansal.jpg', 'M', '150000', NULL),
(88, 'Edwin Edward', 0, 0, '../assets/img/player/edwin.jpg', 'M', '150000', NULL),
(89, 'Anchit Rastogi', 0, 0, '../assets/img/player/Anchit Rastogi.jpg', 'M', '150000', NULL),
(90, 'Khushboo Acharya', 0, 0, '../assets/img/player/khusboo acharya.jpg', 'M', '150000', NULL),
(91, 'Rishika Choudhary', 0, 0, '../assets/img/player/rishika choudhary.jpg', 'M', '150000', NULL),
(92, 'Jagriti Chaudhary', 0, 0, '../assets/img/player/jagriti Chaudhary.jpg', 'F', '150000', NULL),
(93, 'Diksha Miharia', 0, 0, '../assets/img/player/Diksha.jpg', 'F', '150000', NULL),
(94, 'Abhishek Nambiar', 0, 0, '../assets/img/player/Abhishek_Nambiar.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(95, 'Chirag Sharma', 0, 0, '../assets/img/player/Chirag_Sharma.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(96, 'Janmejaya Shukla', 0, 0, '../assets/img/player/Janmejaya_Shukla.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(97, 'Varun Sharma', 0, 0, '../assets/img/player/Varun_Sharma.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(98, 'Shubham Jindal', 0, 0, '../assets/img/player/Shubham_Jindal.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(99, 'Prashant Tyagi', 0, 0, '../assets/img/player/Prashant_Tyagi.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(100, 'Harshvardhan Singh', 0, 0, '../assets/img/player/Harshvardhan_Singh.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(101, 'Anurag Lohokona', 0, 0, '../assets/img/player/anurag_lohokna.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(102, 'Nitesh Nilakar', 0, 0, '../assets/img/player/nitesh.jpg', 'M', '150000', NULL),
(103, 'Amish Gupta', 0, 0, '../assets/img/player/Amish Gupta  - 6.jpg', 'M', '150000', NULL),
(104, 'Shritam Samantray', 0, 0, '../assets/img/player/FB_IMG_1515269757212.jpg', 'M', '150000', NULL),
(105, 'Priya Singh', 0, 0, '../assets/img/player/FB_IMG_1515270558804.jpg', 'M', '150000', NULL),
(106, 'Harshita Sahu', 0, 0, '../assets/img/player/FB_IMG_1515269887831.jpg', 'F', '150000', NULL),
(107, 'Chinmay Deshmukh', 0, 0, '../assets/img/player/Chinmay Deshmukh.jpg', 'M', '150000', NULL),
(108, 'akhil sunder', 0, 0, '../assets/img/player/Akhil Sunder.jpg', 'M', '150000', NULL),
(109, 'Manav Lakhina', 0, 0, '../assets/img/player/Manav Lakhina.jpg', 'M', '150000', NULL),
(110, 'Harsh Khandelwal', 0, 0, '../assets/img/player/Harsh Khandelwal.jpg', 'M', '150000', NULL),
(111, 'Vishal Patel', 0, 0, '../assets/img/player/vishal Pat.jpg', 'M', '150000', 'FOOTBALL,Football,Football'),
(112, 'Sumit Kajal', 0, 0, '../assets/img/player/Sumit Kajal.jpg', 'M', '125000', NULL),
(113, 'Utkarsh Tripathi', 0, 0, '../assets/img/player/Utkarsh Tripathi.jpg', 'M', '125000', NULL),
(114, 'Utkarsh Wadhwa', 0, 0, '../assets/img/player/utkarsh Wadhwa.jpg', 'M', '125000', NULL),
(115, 'Pranav', 0, 0, '../assets/img/player/Pranav Jatia.jpg', 'M', '125000', NULL),
(116, 'Anubhav Sharma', 0, 0, '../assets/img/player/Anubhav Sharma.jpg', 'M', '125000', NULL),
(117, 'Sanya Jain', 0, 0, '../assets/img/player/Sanya Jain.jpg', 'M', '125000', NULL),
(118, 'Ritam', 0, 0, '../assets/img/player/RITAM.jpg', 'M', '125000', 'FOOTBALL,Football,Football'),
(119, 'Kunal Dutta', 0, 0, '../assets/img/player/Kunal_D.jpg', 'M', '125000', 'FOOTBALL,Football,Football'),
(120, 'Saikat Maity', 0, 0, '../assets/img/player/Saikat_Maity.jpg', 'M', '125000', 'FOOTBALL,Football,Football'),
(121, 'Shubham', 0, 0, '../assets/img/player/Shubham Jain - 5.jpg', 'M', '125000', NULL),
(122, 'Aayush Vats', 0, 0, '../assets/img/player/Aayush Vats - 6.jpg', 'M', '150000', NULL),
(123, 'Gaurav Nagpal', 0, 0, '../assets/img/player/Gaurav Nagpal - 5.jpg', 'M', '125000', NULL),
(124, 'Rahul Agarwal', 0, 0, '../assets/img/player/Rahul Agarwal - 5.jpg', 'M', '125000', NULL),
(125, 'Abhinav Bakre', 0, 0, '../assets/img/player/FB_IMG_1515270406938 (1).jpg', 'M', '125000', NULL),
(126, 'Rupali Mittal', 0, 0, '../assets/img/player/FB_IMG_1515269924091.jpg', 'M', '125000', NULL),
(127, 'Akshay Natu', 0, 0, '../assets/img/player/akshay_n.jpg', 'M', '125000', NULL),
(128, 'Manik Bhatia', 0, 0, '../assets/img/player/manik.jpg', 'M', '125000', NULL),
(129, 'Ranjeet Rajpurohit', 0, 0, '../assets/img/player/ranjeet.jpg', 'M', '125000', NULL),
(130, 'Vivek Arora', 0, 0, '../assets/img/player/vivek.jpg', 'M', '175000', NULL),
(131, 'Shankar AVBS', 0, 0, '../assets/img/player/Shankar.jpg', 'M', '100000', NULL),
(132, 'Anand Iyer', 0, 0, '../assets/img/player/Anand_iyer.jpg', 'M', '100000', 'FOOTBALL,Football,Football'),
(133, 'Himanish Bhandari', 0, 0, '../assets/img/player/Himanish_Bhandari.jpg', 'M', '100000', 'FOOTBALL,Football,Football'),
(134, 'Gaurav Mhatre', 0, 0, '../assets/img/player/gaurav.jpg', 'M', '100000', 'Football'),
(135, 'Bipin Sai', 0, 0, '../assets/img/player/bipin.jpg', 'M', '100000', NULL),
(136, 'Nakul Mehra', 0, 0, '../assets/img/player/nakul.jpg', 'M', '175000', NULL),
(137, 'Shivang Katurka', 0, 0, '../assets/img/player/shivang.jpg', 'M', '150000', NULL),
(138, 'Luv Shukla', 0, 0, '../assets/img/player/luv.jpg', 'M', '125000', NULL),
(139, 'Deepak Singh', 0, 0, '../assets/img/player/deepak.jpg', 'M', '125000', NULL),
(140, 'Anish Miglani', 0, 0, '../assets/img/player/anish.jpg', 'M', '100000', NULL),
(141, 'Shashank Malla', 0, 0, '../assets/img/player/shashank.jpg', 'M', '100000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `relation`
--

CREATE TABLE `relation` (
  `relation_pk` int(11) NOT NULL,
  `player_sno_fk` int(11) NOT NULL,
  `user_sno_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `SNO` int(11) NOT NULL,
  `NAME` text NOT NULL,
  `EMAIL` text NOT NULL,
  `CONTACT` text NOT NULL,
  `PASSWORD` text NOT NULL,
  `amount` double NOT NULL DEFAULT '1000000',
  `male` int(11) NOT NULL DEFAULT '0',
  `team` int(11) NOT NULL DEFAULT '0',
  `teamsubmitflag` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`SNO`, `NAME`, `EMAIL`, `CONTACT`, `PASSWORD`, `amount`, `male`, `team`, `teamsubmitflag`) VALUES
(8, 'Testing', 'testing@gmail.com', '123456789', 'pass@1234', -350000, 7, 9, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`SNO`);

--
-- Indexes for table `relation`
--
ALTER TABLE `relation`
  ADD PRIMARY KEY (`relation_pk`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`SNO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `SNO` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `relation`
--
ALTER TABLE `relation`
  MODIFY `relation_pk` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `SNO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
