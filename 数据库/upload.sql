-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-23 10:19:57
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `upload`
--

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gpictures` varchar(1000) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gid`, `gpictures`) VALUES
(3, '2018-05-09/4a9a466c988919c3e1e8ab8d0547be81.jpg;2018-05-09/62ef288c40c469fb18236affa615e3ea.jpg;'),
(4, '2018-05-09/4a9a466c988919c3e1e8ab8d0547be81.jpg;2018-05-09/62ef288c40c469fb18236affa615e3ea.jpg;'),
(5, '2018-05-09/4a9a466c988919c3e1e8ab8d0547be81.jpg;2018-05-09/62ef288c40c469fb18236affa615e3ea.jpg;'),
(6, '2018-05-09/4a9a466c988919c3e1e8ab8d0547be81.jpg;2018-05-09/62ef288c40c469fb18236affa615e3ea.jpg;'),
(7, '2018-05-10/95743930be868b50efa1b1969ba24f45.jpg;'),
(8, '2018-05-10/2a85ec217e92b8591f4f9c8b2cb64219.png;2018-05-10/98248ed29df12e3e05d180a7679e3150.png;');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
