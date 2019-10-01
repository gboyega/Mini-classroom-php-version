-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2018 at 03:31 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asphalt`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `password`) VALUES
(1, 'asphalt', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE IF NOT EXISTS `tbl_blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `catId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `views` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`id`, `catId`, `title`, `author`, `body`, `image`, `date`, `views`) VALUES
(1, 5, 'FUNAAB Mancot on fire', 'Asphalt', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod&lt;br /&gt; tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt; cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 'blog-images/892b08fac5.jpg', '2018-06-30 21:09:50', 4),
(2, 5, 'My Stay At Isaga Orile', 'Samuel', '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,&lt;br /&gt; quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo&lt;br /&gt; consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse&lt;br /&gt; cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non&lt;br /&gt; proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&lt;/p&gt;', 'blog-images/cd2359dc63.jpg', '2018-07-01 10:24:31', 36);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category`) VALUES
(1, 'Technology'),
(2, 'Business'),
(3, 'Education'),
(4, 'Entertainment'),
(5, 'News &amp; Gist'),
(6, 'Sport');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE IF NOT EXISTS `tbl_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE IF NOT EXISTS `tbl_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `subject`, `body`, `status`, `date`) VALUES
(4, '', '', '', '', 0, '2018-07-02 22:30:24'),
(5, '', '', '', '', 0, '2018-07-03 11:45:18');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sliderone`
--

CREATE TABLE IF NOT EXISTS `tbl_sliderone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_sliderone`
--

INSERT INTO `tbl_sliderone` (`id`, `image`) VALUES
(2, 'sliders/3590f2a3e8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sliderthree`
--

CREATE TABLE IF NOT EXISTS `tbl_sliderthree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tbl_sliderthree`
--

INSERT INTO `tbl_sliderthree` (`id`, `image`) VALUES
(2, 'sliders/43f8044bef.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slidertwo`
--

CREATE TABLE IF NOT EXISTS `tbl_slidertwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tbl_slidertwo`
--

INSERT INTO `tbl_slidertwo` (`id`, `image`) VALUES
(3, 'sliders/92c10e3c5e.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE IF NOT EXISTS `tbl_social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `facebook` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `google` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `facebook`, `twitter`, `google`) VALUES
(1, 'facebook.com', 'twitter.com', 'googleplus.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE IF NOT EXISTS `tbl_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'blue');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
