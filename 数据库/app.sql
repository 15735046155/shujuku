-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-23 10:18:44
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- 表的结构 `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `area` varchar(30) NOT NULL,
  `location` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `name` varchar(10) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `address`
--

INSERT INTO `address` (`aid`, `uid`, `area`, `location`, `phone`, `name`, `postcode`) VALUES
(2, 2, '山西省-临汾市-曲沃县', '学府街平阳路凯通大厦', '123123123', '张三', '03001'),
(3, 0, '山西省-长治市-屯留县', 'zc', 'cz', 'czzc', '23232'),
(6, 2, '山西省-太原市-未选择', '学校', '121212', '黄', '041500'),
(7, 2, '山西省-太原市-未选择', '速度快V领是', '122', '发的噶', '041500'),
(8, 2, '山西省-太原市-未选择', '辅导班', '1212', '方便十点半', '041500'),
(9, 2, '山西省-太原市-万柏林区', '你嘎哈呢', '2323', '仍热狗', '041500'),
(10, 2, '河北省-石家庄市-桥东区', '地方噶啊', '232323', '发给你说吧', '041500'),
(11, 2, '浙江省-温州市-乐清市', '嘎嘎嘎', '2232323', '小王', '2132232'),
(12, 106, '--', '', '15135791480', '小王', '2132232');

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `di` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`di`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`di`, `username`, `password`) VALUES
(2, 'admin', '123456');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) NOT NULL,
  `cthumb` varchar(100) NOT NULL,
  `corder` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cid`, `cname`, `cthumb`, `corder`) VALUES
(8, '蛋糕', '//localhost/mvc/upload/2018-04-21/b7fa642ed7a6f2f60ac9026bf906143a.png', 0),
(9, '鲜花', '//localhost/mvc/upload/2018-04-21/12671d301581ba94d4ff4688d6b15708.png', 0),
(10, '浪漫组合', '//localhost/mvc/upload/2018-04-21/ce58181fb81e0515fc4cff4935bc0386.png', 0),
(11, '红酒', '//localhost/mvc/upload/2018-04-21/6aaa706c5d6feb44d51f7027f61c97b9.png', 0),
(12, '巧克力', '//localhost/mvc/upload/2018-04-21/26c6e1bfa76a8a266e9acbf771003d8c.png', 0),
(13, '卡通花束', '//localhost/mvc/upload/2018-04-21/aa955464c006f5880ad6c2d1093bf206.png', 0),
(14, '毛绒玩具', '//localhost/mvc/upload/2018-04-21/bc72c90a0b93af8a5d625df6d3524568.png', 0),
(15, '商业花篮', '//localhost/mvc/upload/2018-04-21/67700d451b1de7e1ef1cefef36815e12.png', 0),
(16, '果篮', '//localhost/mvc/upload/2018-04-21/b96273f64a3ba11390fac72850909387.png', 0);

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `gname` varchar(20) NOT NULL,
  `gthumb` varchar(100) NOT NULL,
  `gpictures` varchar(500) NOT NULL,
  `gprice` float NOT NULL,
  `gdescription` varchar(500) NOT NULL,
  `tid` int(11) NOT NULL COMMENT '商品属于哪个小分类',
  `grecommend` int(11) NOT NULL COMMENT '是否推荐',
  `gorder` int(11) NOT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gid`, `gname`, `gthumb`, `gpictures`, `gprice`, `gdescription`, `tid`, `grecommend`, `gorder`) VALUES
(1, '1', '//localhost/mvc/upload/2018-04-27/d54a1f4cbcd19696b2d5cd9a0a0028c5.png', '//localhost/mvc/upload/2018-04-27/9b8957daab63b232064180c768e0199d.png;//localhost/mvc/upload/2018-04-27/e5f56ce7b4fae9486a074ef50f502099.png;//localhost/mvc/upload/2018-04-27/5c718ac992707213c3894521b1b27ca9.png', 45, '女神最爱的小清新', 7, 0, 0),
(2, 'hello女神', '//localhost/mvc/upload/2018-04-25/1d34357f0a1d824be05e20ec6a8efff2.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 2, 1, 0),
(3, 'hello女神', '//localhost/mvc/upload/2018-04-25/d2b4a4e033bcfd54b0b54251e3ca7014.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 56, '女神最爱的小清新', 8, 0, 0),
(4, 'hello女神', '//localhost/mvc/upload/2018-04-25/2fc2e8dce907ec29a23c4c449c2133b9.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 666, '对方公司的可能', 9, 1, 0),
(5, 'hello女神', '//localhost/mvc/upload/2018-04-25/db89e142356ae5dcdc83b314859de20e.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 56, '女神最爱的小清新', 7, 1, 1),
(6, '6', '//localhost/mvc/upload/2018-04-27/ab665e097d7d9e6e01688169640349bb.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 7, 0, 2),
(7, 'hello女神', '//localhost/mvc/upload/2018-04-25/1d34357f0a1d824be05e20ec6a8efff2.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 7, 1, 3),
(8, 'hello女神', '//localhost/mvc/upload/2018-04-25/1d34357f0a1d824be05e20ec6a8efff2.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 1, 1, 0),
(9, 'hello女神', '//localhost/mvc/upload/2018-04-25/1d34357f0a1d824be05e20ec6a8efff2.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 2, 1, 0),
(10, 'hello女神', '//localhost/mvc/upload/2018-04-25/1d34357f0a1d824be05e20ec6a8efff2.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 2, 1, 0),
(11, 'hello女神', '//localhost/mvc/upload/2018-04-25/1d34357f0a1d824be05e20ec6a8efff2.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 45, '女神最爱的小清新', 2, 1, 0),
(12, 'AA', '//localhost/mvc/upload/2018-04-27/6d98e0a635dcd1880c29294b6d73fb55.png', '//localhost/mvc/upload/2018-04-27/00a5b2a0a9689a34c9ab3b86a8cb4dac.png;//localhost/mvc/upload/2018-04-27/5ac196c5896d81bba3042f5cbfe5cb39.png;//localhost/mvc/upload/2018-04-27/1c5fa37a0b8599e52e4eee727be129ff.png', 12, 'fdger', 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `gid` int(11) NOT NULL COMMENT '商品id',
  `uid` int(11) NOT NULL COMMENT '用户id',
  `gnumber` int(11) NOT NULL COMMENT '商品个数',
  `gprice` float NOT NULL COMMENT '商品总价格',
  `aid` int(11) NOT NULL COMMENT '配送地址id',
  `ostate` varchar(20) NOT NULL COMMENT '配送状态',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `orders`
--

INSERT INTO `orders` (`oid`, `gid`, `uid`, `gnumber`, `gprice`, `aid`, `ostate`) VALUES
(1, 3, 3, 2, 666, 3, '1'),
(3, 1, 29, 3, 0, 8, '3');

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(20) NOT NULL,
  `tthumb` varchar(100) NOT NULL,
  `cid` int(11) NOT NULL COMMENT '所属的分类id',
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`tid`, `tname`, `tthumb`, `cid`) VALUES
(1, '生日13', '//localhost/mvc/upload/2018-04-27/c248b8eae5d0f2855cda71f8edd28f42.png', 8),
(2, '玫瑰', '//localhost/mvc/upload/2018-04-27/2c8eccc2d3dd290659412581eaadfa75.png', 9),
(7, '情感', '//localhost/mvc/upload/2018-04-21/59d1ab747325cd35159baaf12d2a343e.png', 9),
(8, '生日13', '//localhost/mvc/upload/2018-04-27/120a8d918a7cad1ace4be11eecd1a1e9.png', 0),
(9, '玫瑰', '//localhost/mvc/upload/2018-04-27/fed2b13b3449eab9c85fb46cabd2a624.png', 9),
(10, '玫瑰', '//localhost/mvc/upload/2018-04-21/e7591bd264c102d0f3c493d8d9aae729.png', 9),
(11, '爱情', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 9),
(12, '祝福', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 9),
(13, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 9),
(14, '生日1', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 8),
(15, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 10),
(16, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 10),
(17, '生日1', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 8),
(18, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 11),
(19, '情感', '//localhost/mvc/upload/2018-04-21/59d1ab747325cd35159baaf12d2a343e.png', 11),
(20, '红酒', '//localhost/mvc/upload/2018-04-21/25285354e2f58350180b2cc31c0b7b67.jpg', 11),
(21, '电脑', '//localhost/mvc/upload/2018-04-21/c45967cde330b54eaa0e4584aa388ff7.jpg', 11),
(22, '祝福', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 11),
(23, '祝福', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 11),
(24, '生日1', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 11),
(25, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 12),
(26, '情感', '//localhost/mvc/upload/2018-04-21/59d1ab747325cd35159baaf12d2a343e.png', 12),
(27, '红酒', '//localhost/mvc/upload/2018-04-21/25285354e2f58350180b2cc31c0b7b67.jpg', 12),
(28, '电脑', '//localhost/mvc/upload/2018-04-21/c45967cde330b54eaa0e4584aa388ff7.jpg', 12),
(29, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 13),
(30, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 13),
(31, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 13),
(32, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 13),
(33, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 14),
(34, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 14),
(35, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 14),
(36, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 14),
(37, '玫瑰', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 15),
(38, '情感', '//localhost/mvc/upload/2018-04-21/59d1ab747325cd35159baaf12d2a343e.png', 15),
(39, '情感', '//localhost/mvc/upload/2018-04-21/59d1ab747325cd35159baaf12d2a343e.png', 15),
(40, '情感', '//localhost/mvc/upload/2018-04-21/59d1ab747325cd35159baaf12d2a343e.png', 15),
(41, '祝福', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 16),
(42, '祝福', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 16),
(43, '祝福', '//localhost/mvc/upload/2018-04-21/c34bb201fb247d6fc646726295a13dbc.png', 16),
(44, 'dwf', '//localhost/mvc/upload/2018-04-27/1c8a9193ee1cc367328e06f9ee9369ed.png', 8),
(45, 'fff', '//localhost/mvc/upload/2018-04-27/ab709de08b48b6fffae62e266bdfbe8a.png', 8);

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `sex` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=107 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `password`, `picture`, `phone`, `sex`, `username`) VALUES
(2, 'c9130efba1317c16406d67270f657af3', '', '123123123', 0, '急急急11'),
(3, 'e10adc3949ba59abbe56e057f20f883e', '//localhost/mvc/upload/2018-04-20/6b2660f4cfe1133dee26e07fedc0faf9.jpg', '123123', 1, ''),
(29, 'e3ceb5881a0a1fdaad01296d7554868d', '//localhost/mvc/upload/2018-04-19/bceaad6afacb9dfc8e9a2021d39a43e0.jpg', '222222', 0, ''),
(30, '14e1b600b1fd579f47433b88e8d85291', '//localhost/mvc/upload/2018-04-20/4b8f4000635fa0068ca21a2f28238ada.jpg', '121212', 1, ''),
(31, 'e10adc3949ba59abbe56e057f20f883e', '//localhost/mvc/upload/2018-04-20/6af792582f14732647027eb077481b2b.jpg', '1212', 0, ''),
(32, 'e10adc3949ba59abbe56e057f20f883e', '//localhost/mvc/upload/2018-04-20/abb6d0becc03cda0bd43877ef5fc5099.jpg', '121221', 0, ''),
(33, '14e1b600b1fd579f47433b88e8d85291', '//localhost/mvc/upload/2018-04-20/fceaa6ca9ba88aa37e2fb3262cce7168.jpg', '21212', 0, ''),
(97, 'c26be8aaf53b15054896983b43eb6a65', '//localhost/mvc/upload/2018-05-03/4beb36748dad6430b8528d76cf4cfd5d.png', '15536612251', 1, '黄佳佳'),
(103, '14e1b600b1fd579f47433b88e8d85291', '//localhost/mvc/upload/2018-04-29/05688248c1a4e7d5c8a7e19d670b55f6.png', '15536612252', 0, 'aa'),
(104, 'e10adc3949ba59abbe56e057f20f883e', '', '15536612253', 0, ''),
(105, '81dc9bdb52d04dc20036dbd8313ed055', '', '1234', 0, ''),
(106, 'e10adc3949ba59abbe56e057f20f883e', '//localhost/mvc/upload/2018-05-23/65d25aa88222e01a03f787e565cf10eb.jpg', '15135791480', 0, '小王');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
