-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 02, 2024 at 07:44 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smart_surveillance`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `location` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `email`, `mobile`, `location`) VALUES
('admin', 'admin', 'admin', '', 0, ''),
('control', '1234', 'dept', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `detect_info`
--

CREATE TABLE `detect_info` (
  `id` int(11) NOT NULL,
  `detect_img` varchar(20) NOT NULL,
  `date_time` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detect_info`
--


-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`) VALUES
(1, 'abnormal');

-- --------------------------------------------------------

--
-- Table structure for table `ss_location`
--

CREATE TABLE `ss_location` (
  `id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_location`
--

INSERT INTO `ss_location` (`id`, `city`, `area`, `address`, `location`) VALUES
(1, 'Chennai', 'T.Nagar', 'Panagal Park', '13.04179,  80.23253'),
(2, 'Trichy', 'Palakkarai', 'Market', '10.81098,  78.69475');

-- --------------------------------------------------------

--
-- Table structure for table `ss_police`
--

CREATE TABLE `ss_police` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `station` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `area` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_police`
--

INSERT INTO `ss_police` (`id`, `name`, `station`, `mobile`, `email`, `area`, `city`) VALUES
(1, 'Dinesh Kumar.M', 'B3', 9894442716, 'dineshb3@gmail.com', 'T.Nagar', 'Chennai'),
(2, 'Subash.S', 'T5', 9894442716, 'subasht5@gmail.com', 'Palakkarai', 'Trichy');

-- --------------------------------------------------------

--
-- Table structure for table `ss_video`
--

CREATE TABLE `ss_video` (
  `id` int(11) NOT NULL,
  `city` varchar(30) NOT NULL,
  `area` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `gid` int(11) NOT NULL,
  `video` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ss_video`
--

INSERT INTO `ss_video` (`id`, `city`, `area`, `location`, `gid`, `video`) VALUES
(1, 'Chennai', 'T.Nagar', 'Panagal Park', 1, 'video1.mp4'),
(2, 'Chennai', 'T.Nagar', 'Panagal Park', 1, 'video2.mp4'),
(3, 'Chennai', 'T.Nagar', 'Panagal Park', 1, 'video3.mp4'),
(4, 'Trichy', 'Palakkarai', 'Market', 2, 'video4.mp4'),
(5, 'Trichy', 'Palakkarai', 'Market', 2, 'video5.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `location` varchar(20) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `name`, `mobile`, `email`, `location`, `uname`, `pass`) VALUES
(1, 'Surya', 8812706225, 'surya@gmail.com', '15,SS Nagar', 'user1', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `vt_face`
--

CREATE TABLE `vt_face` (
  `id` int(11) NOT NULL,
  `vid` int(11) NOT NULL,
  `vface` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vt_face`
--

