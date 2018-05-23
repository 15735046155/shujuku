-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-05-23 10:19:21
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mt`
--

-- --------------------------------------------------------

--
-- 表的结构 `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(10) NOT NULL,
  `cthumb` varchar(100) NOT NULL,
  `corder` int(11) NOT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `category`
--

INSERT INTO `category` (`cid`, `cname`, `cthumb`, `corder`) VALUES
(1, '美食', 'dao1.png', 1),
(2, '电影/演出', 'dao2.png', 2),
(3, '酒店住宿', 'dao3.png', 3),
(4, '休闲娱乐', 'dao4.png', 4),
(5, '外卖', 'dao5.png', 5),
(6, 'KTV', 'dao2.1.png', 6),
(7, '机票/火车票', 'dao2.2.png', 7),
(8, '周边游', 'dao2.3.png', 8),
(9, '丽人/美发', 'dao2.4.png', 9),
(10, '民宿/公寓', 'dao2.5.png', 10),
(11, '洗浴/汗蒸', 'dao2.6.png', 11),
(12, '结婚/摄影', 'dao2.7.png', 12),
(13, '美甲美睫', 'dao2.8.png', 13),
(14, '景点门票', 'dao2.9.png', 14),
(15, '全部分类', 'dao2.10.png', 15);

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `gid` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品的id',
  `gname` varchar(20) NOT NULL COMMENT '商品名称',
  `gthumb` varchar(100) NOT NULL COMMENT '商品的缩略图',
  `gprice` float NOT NULL COMMENT '商品的价格',
  `gnumber` int(11) NOT NULL COMMENT '库存总量',
  `tid` int(11) NOT NULL COMMENT '商品所属分类',
  `gcount` int(11) NOT NULL DEFAULT '0' COMMENT '表示当亲选中的个数',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`gid`, `gname`, `gthumb`, `gprice`, `gnumber`, `tid`, `gcount`) VALUES
(1, '招牌酸豆角（单点不送）', 'si1.png', 3, 100, 1, 1),
(2, '矮大紧油条（2根）单点不送', 'si2.png', 3, 100, 1, 0),
(3, '旺仔迷你小花卷（单点不送', 'si3.png', 3, 100, 1, 0),
(4, '香菇青菜包（单点小吃不送）', 'si4.png', 3, 100, 1, 0),
(5, '地瓜粥+菌菇三鲜蒸饺+杂菜丝', 'x1.png', 3, 100, 2, 0),
(6, '南瓜粥+猪肉包+酸豆角', 'x2.png', 3, 100, 2, 0),
(7, '青菜蛋花粥+油条+酸豆角', 'x1.png', 16.8, 100, 2, 0),
(8, '四红粥+猪肉包+香甜黄瓜', 'si2.png', 15.17, 100, 2, 0),
(9, '皮蛋瘦肉粥+油条+杂菜丝', 'si3.png', 16.1, 100, 2, 0),
(10, '白粥+油条+杂菜丝', 'si1.png', 9.9, 100, 2, 0),
(11, '皮蛋瘦肉粥+猪肉包+咸鸭蛋+英潮虎邦辣酱', 'si3.png', 60, 100, 2, 0),
(12, '皮蛋瘦肉粥+潼关肉夹馍+虎邦辣酱+油条', 'x1.png', 68, 100, 2, 0),
(13, '南瓜粥+猪肉包+海白菜', 'si1.png', 16.1, 100, 3, 0),
(14, '皮蛋瘦肉粥+油条++杂菜丝', 'si3.png', 16.1, 100, 3, 0),
(15, '四红粥+猪肉包+咸鸭蛋', 'si2.png', 32, 100, 3, 0),
(16, '白粥（优惠）', 'si3.png', 1, 100, 4, 0),
(17, '白粥', 'x1.png', 5, 100, 4, 0),
(18, '青菜蛋花粥', 'si3.png', 13, 100, 4, 0),
(19, '香菇青菜粥', 'si1.png', 13, 20, 4, 0),
(20, '皮蛋瘦肉粥（优惠）', 'x1.png', 7.8, 20, 5, 0),
(21, '滑蛋鸡丝粥', 'si2.png', 16, 20, 5, 0);

-- --------------------------------------------------------

--
-- 表的结构 `goodstype`
--

CREATE TABLE IF NOT EXISTS `goodstype` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `tname` varchar(10) NOT NULL COMMENT '食物类型的名称',
  `torder` int(11) NOT NULL COMMENT '类型的排序',
  `sid` int(11) NOT NULL COMMENT '类型所属商家',
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- 转存表中的数据 `goodstype`
--

INSERT INTO `goodstype` (`gid`, `tname`, `torder`, `sid`) VALUES
(1, '热销', 1, 1),
(2, '优惠套餐', 2, 1),
(3, '折扣', 3, 1),
(4, '素粥', 4, 1),
(5, '品质粥', 5, 1),
(6, '美颜甜粥', 6, 1),
(7, '海鲜粥', 7, 1),
(8, '无肉不欢', 8, 1),
(9, '精品美味蒸饺', 9, 1),
(10, '配粥点心蒸着吃', 10, 1),
(11, '配粥点心煎着吃', 11, 1),
(12, '小菜配清粥', 12, 1),
(13, '全国连锁 值得信赖', 13, 1),
(14, '中午爆单，请提前下单', 14, 1);

-- --------------------------------------------------------

--
-- 表的结构 `sat`
--

CREATE TABLE IF NOT EXISTS `sat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sid` int(11) NOT NULL COMMENT '店铺id',
  `tid` int(11) NOT NULL COMMENT '类型id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='店铺和类型的关系' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `sat`
--

INSERT INTO `sat` (`id`, `sid`, `tid`) VALUES
(1, 1, 1),
(2, 3, 2),
(3, 4, 3),
(4, 1, 4),
(5, 5, 5),
(6, 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `shop`
--

CREATE TABLE IF NOT EXISTS `shop` (
  `sid` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺id',
  `sname` varchar(20) NOT NULL COMMENT '店铺名称',
  `slogo` varchar(100) NOT NULL COMMENT '店铺logo',
  `sbg` varchar(50) NOT NULL COMMENT '店铺背景',
  `sdescription` varchar(500) NOT NULL COMMENT '店铺描述',
  `sstar` float NOT NULL COMMENT '店铺的评分',
  `sbrand` int(11) NOT NULL COMMENT '是否是品牌',
  `stype` int(11) NOT NULL COMMENT '配送方式',
  `schargingfee` float NOT NULL COMMENT '起送费',
  `sdistributionfee` float NOT NULL COMMENT '配送费',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `shop`
--

INSERT INTO `shop` (`sid`, `sname`, `slogo`, `sbg`, `sdescription`, `sstar`, `sbrand`, `stype`, `schargingfee`, `sdistributionfee`) VALUES
(1, '四季粥铺', 'liebiao_13.png', 'bg.png', '一家不添加任何鸡精味精的粥铺，为您的健康保驾护航。', 5, 0, 0, 20, 3),
(2, '麦当劳', 'liebiao_16.png', 'bg.png', '一家不添加任何鸡精味精的粥铺，为您的健康保驾护航。', 5, 1, 0, 20, 3),
(3, '谈骨论斤大盆骨（学府街店）', 'liebiao_16.png', 'bg.png', '欢迎光临，用餐高峰期请提前下单，谢谢。', 5, 0, 0, 20, 0),
(4, '额娘春饼(华宇百花谷店）(华宇百花谷店)', 'liebiao_16.png', 'bg.png', '欢迎光临，用餐高峰期请提前下单，谢谢。', 5, 1, 0, 20, 0),
(5, '黄焖鸡烤肉饭(达喜亭寇庄西路店)', 'liebiao_16.png', 'bg.png', '欢迎光临，用餐高峰期请提前下单，谢谢。', 5, 0, 0, 20, 0),
(6, '汉堡王(太原华宇百花谷餐厅23933)', 'liebiao_16.png', 'bg.png', '安格斯厚牛登基，100%澳洲进口，醇香/厚实/多汁。安格斯牛肉原产于苏格兰北部的阿佰丁，金卡和安格斯郡，是英国古老的肉用品种之一，体躯矮而结实，出肉率高，是牛肉中的精品。', 5, 1, 0, 20, 0),
(7, '米當家（锦绣苑店）', 'liebiao_16.png', 'bg.png', '欢迎光临，用餐高峰期请提前下单，谢谢。', 5, 0, 0, 20, 0);

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '小分类的id',
  `tname` varchar(10) NOT NULL COMMENT '小分类的名称',
  `torder` int(11) NOT NULL COMMENT '小分类的排序',
  `cid` int(11) NOT NULL COMMENT '当前的小分类属于哪个大分类',
  `tthumb` varchar(100) NOT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`tid`, `tname`, `torder`, `cid`, `tthumb`) VALUES
(1, '汉堡', 1, 1, 'dao1.png'),
(2, '小吃炸串', 2, 1, 'dao2.png'),
(3, '简餐便当', 3, 1, 'dao3.png'),
(4, '香锅冒菜', 3, 1, 'dao4.png'),
(5, '简餐便当', 3, 1, 'dao1.png'),
(6, '简餐便当', 3, 1, 'dao2.png'),
(7, '汉堡', 1, 2, 'dao1.png'),
(8, '小吃炸串', 2, 2, 'dao2.png'),
(9, '简餐便当', 3, 2, 'dao3.png'),
(10, '香锅冒菜', 3, 3, 'dao4.png'),
(11, '简餐便当', 3, 3, 'dao1.png'),
(12, '汉堡', 1, 3, 'dao1.png');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(20) NOT NULL,
  `upass` int(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `upass`) VALUES
(1, 'admin', 123456);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
