-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2017 at 09:07 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `anti`
--

-- --------------------------------------------------------

--
-- Table structure for table `law_citizenreg`
--

CREATE TABLE IF NOT EXISTS `law_citizenreg` (
  `uid` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `area` varchar(20) NOT NULL,
  `mandalam` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `law_citizenreg`
--

INSERT INTO `law_citizenreg` (`uid`, `name`, `username`, `password`, `cpassword`, `gender`, `date`, `contact`, `email`, `area`, `mandalam`, `district`, `state`, `country`, `pincode`) VALUES
('B42EB7B3', 'Vijay', 'Vijay', '12345', '12345', 'male', '12-12-1991', '988776655', 'vijay@gmail.com', 'dsnr', 'sarror nagar', 'hyd', 'ts', 'ind', '542125'),
('AEFFD20D', 'bhavani', 'bhavani', 'bhavani', 'bhavani', 'female', '2017-03-01', '9908455231', 'bhavani.bandari511@gmail.com', 'bachannapet', 'bachannapet', 'waranagl', 'telangana', 'india', '506223');

-- --------------------------------------------------------

--
-- Table structure for table `law_complaintsreg`
--

CREATE TABLE IF NOT EXISTS `law_complaintsreg` (
  `uid` varchar(20) NOT NULL,
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `comp` varchar(20) NOT NULL,
  `prob` varchar(20) NOT NULL,
  `dis` varchar(20) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL,
  `by` varchar(30) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `law_complaintsreg`
--

INSERT INTO `law_complaintsreg` (`uid`, `cid`, `comp`, `prob`, `dis`, `contact`, `status`, `by`) VALUES
('B42EB7B3', 9, 'Traffic and Control', 'bike missing', 'bike no: 123456', 'vijay@gmail.com', 'accept', 'Ramesh'),
('60AE9225', 13, 'Others', 'kkkk', 'uuuu', 'bhavani.bandari511@gmail.com', 'PENDING', 'Not Applicable');

-- --------------------------------------------------------

--
-- Table structure for table `law_policereg`
--

CREATE TABLE IF NOT EXISTS `law_policereg` (
  `pid` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `cpassword` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `area` varchar(20) NOT NULL,
  `mandalam` varchar(20) NOT NULL,
  `district` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `country` varchar(20) NOT NULL,
  `pincode` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `law_policereg`
--

INSERT INTO `law_policereg` (`pid`, `name`, `username`, `password`, `cpassword`, `gender`, `date`, `contact`, `email`, `area`, `mandalam`, `district`, `state`, `country`, `pincode`) VALUES
('A5F7CA85', 'Ramesh', 'Ramesh', '123456', '123456', 'Male', '11-11-1990', '9876543211', 'ramesh@gmail.com', 'uppal', 'uppal', 'rr', 'telangana', 'ind', '501665');

-- --------------------------------------------------------

--
-- Table structure for table `law_stationreg`
--

CREATE TABLE IF NOT EXISTS `law_stationreg` (
  `stationid` varchar(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `npofficer` varchar(20) NOT NULL,
  `depthead` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `law_stationreg`
--

INSERT INTO `law_stationreg` (`stationid`, `name`, `npofficer`, `depthead`, `address`) VALUES
('30663DC7', 'Tarnaka', '20', 'Ramesh', 'Hyderabad'),
('7BAA52A7', 'jangaon', '10', 'bhanu', 'warangal');
