-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-23 10:19:15
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lx`
--

-- --------------------------------------------------------

--
-- 表的结构 `class`
--

CREATE TABLE IF NOT EXISTS `class` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) NOT NULL,
  `croom` varchar(10) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `class`
--

INSERT INTO `class` (`cid`, `cname`, `croom`) VALUES
(1, 'wuiw1711', '711'),
(2, 'wuiw1712', '712');

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(10) NOT NULL,
  `gprice` double DEFAULT NULL,
  `gnumber` int(11) NOT NULL,
  `tid` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gid`, `gname`, `gprice`, `gnumber`, `tid`) VALUES
(1, '外套a', 99, 1000, 1),
(2, '外套b', 199, 200, 1),
(3, '裤子a', 205, 300, 2),
(4, '裤子b', 49, 500, 2),
(9, '鞋b', 36.5, 1000, 3),
(10, '其他a', 89.9, 600, 4),
(11, '鞋a', 56.9, 3000, 3),
(12, '其他b', 299.9, 700, 4);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `mesage`
--
CREATE TABLE IF NOT EXISTS `mesage` (
`sid` int(11)
,`sname` varchar(10)
,`ssex` varchar(10)
);
-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` int(11) NOT NULL AUTO_INCREMENT,
  `sname` varchar(10) NOT NULL,
  `sage` int(11) NOT NULL,
  `ssex` varchar(10) NOT NULL,
  `cid` int(11) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`sid`, `sname`, `sage`, `ssex`, `cid`) VALUES
(2, '小红', 15, 'woman', 1),
(3, '大哥', 89, 'man', 1),
(4, '大哥', 89, 'man', 2),
(5, '张九英', 23, 'woman', 1),
(6, '丽丽', 25, 'woamn', 2),
(7, '张三', 0, 'man', 0);

-- --------------------------------------------------------

--
-- 替换视图以便查看 `studentclass`
--
CREATE TABLE IF NOT EXISTS `studentclass` (
`sid` int(11)
,`sname` varchar(10)
,`sage` int(11)
,`ssex` varchar(10)
,`cid` int(11)
,`cname` varchar(10)
,`croom` varchar(10)
);
-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(10) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`tid`, `tname`) VALUES
(1, '外套'),
(2, '裤子'),
(3, '鞋'),
(4, '其他');

-- --------------------------------------------------------

--
-- 视图结构 `mesage`
--
DROP TABLE IF EXISTS `mesage`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mesage` AS select `student`.`sid` AS `sid`,`student`.`sname` AS `sname`,`student`.`ssex` AS `ssex` from `student`;

-- --------------------------------------------------------

--
-- 视图结构 `studentclass`
--
DROP TABLE IF EXISTS `studentclass`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `studentclass` AS select `student`.`sid` AS `sid`,`student`.`sname` AS `sname`,`student`.`sage` AS `sage`,`student`.`ssex` AS `ssex`,`student`.`cid` AS `cid`,`class`.`cname` AS `cname`,`class`.`croom` AS `croom` from (`student` join `class`) where (`student`.`cid` = `class`.`cid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
