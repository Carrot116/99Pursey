-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.13-0ubuntu0.16.04.2 - (Ubuntu)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 db_pursey 的数据库结构
DROP DATABASE IF EXISTS `db_pursey`;
CREATE DATABASE IF NOT EXISTS `db_pursey` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_pursey`;


-- 导出  表 db_pursey.tb_admin 结构
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE IF NOT EXISTS `tb_admin` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `name` varchar(50) NOT NULL COMMENT '管理员名',
  `pwd` varchar(50) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

-- 正在导出表  db_pursey.tb_admin 的数据：~0 rows (大约)
DELETE FROM `tb_admin`;
/*!40000 ALTER TABLE `tb_admin` DISABLE KEYS */;
INSERT INTO `tb_admin` (`id`, `name`, `pwd`) VALUES
	(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');
/*!40000 ALTER TABLE `tb_admin` ENABLE KEYS */;


-- 导出  表 db_pursey.tb_advertising 结构
DROP TABLE IF EXISTS `tb_advertising`;
CREATE TABLE IF NOT EXISTS `tb_advertising` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `title` varchar(50) NOT NULL COMMENT '广告标题',
  `content` varchar(500) NOT NULL COMMENT '广告内容',
  `fdate` datetime NOT NULL COMMENT '发布时间',
  `flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '推荐状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='企业广告信息表';

-- 正在导出表  db_pursey.tb_advertising 的数据：~0 rows (大约)
DELETE FROM `tb_advertising`;
/*!40000 ALTER TABLE `tb_advertising` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_advertising` ENABLE KEYS */;


-- 导出  表 db_pursey.tb_info 结构
DROP TABLE IF EXISTS `tb_info`;
CREATE TABLE IF NOT EXISTS `tb_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `type` varchar(50) NOT NULL COMMENT '信息类型',
  `title` varchar(50) NOT NULL COMMENT '信息标题',
  `content` varchar(500) NOT NULL COMMENT '信息内容',
  `linkman` varchar(50) NOT NULL COMMENT '联系人',
  `tel` varchar(50) NOT NULL COMMENT '联系电话',
  `checkstate` tinyint(4) NOT NULL COMMENT '审核状态',
  `edate` datetime NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='免费供求信息表';

-- 正在导出表  db_pursey.tb_info 的数据：~14 rows (大约)
DELETE FROM `tb_info`;
/*!40000 ALTER TABLE `tb_info` DISABLE KEYS */;
INSERT INTO `tb_info` (`id`, `type`, `title`, `content`, `linkman`, `tel`, `checkstate`, `edate`) VALUES
	(1, '招聘信息', '招聘hr', '1.必须是美女\r\n2.前凸后翘', '张三', '13245679089', 0, '2016-08-17 22:47:29'),
	(2, '求职信息', 'C++开发', '1.C++/C\r\n2.Linux\r\n3.windows\r\n4.mfc', '李四', '15311112345', 1, '2016-08-17 23:05:23'),
	(3, '求职信息', 'dfsafds', 'fdasfdsa', '12e1321321', '1231312', 0, '2016-08-18 23:40:04'),
	(4, '求职信息', '1321312', '1322141', '14214141', 'safwtrweqtew', 0, '2016-08-18 23:40:21'),
	(5, '招聘信息', 'asgwe', 'afewtasfds', '124fdsafdsaf', '23424235', 0, '2016-08-18 23:40:35'),
	(6, '求职信息', 'wrwerew', 'trvjyteiuyte', 'fgsdfgsdf1', '1313131312', 0, '2016-08-18 23:40:49'),
	(7, '培训信息', 'rtynm7t7t', 'y453yfgjhefhre', 'wyrewetyerw', '23523645743', 0, '2016-08-18 23:41:01'),
	(8, '家教信息', 'ytryryr', 'fsdafjsd;lfmaslf', 'ewtetyrwey', 'qewqrwewrwqwq', 0, '2016-08-18 23:41:17'),
	(9, '房屋信息', 'ffangwu', 'fsadgsawunxinxn', 'fangwu', '111111', 0, '2016-08-18 23:41:35'),
	(10, '车辆信息', 'cheliang1', 'cheliang1', 'cheliang', '656745433', 1, '2016-08-18 23:41:52'),
	(11, '求购信息', 'qiugou', 'qiugoufdsafdsa', 'qiugou1', '200809348543', 0, '2016-08-18 23:42:10'),
	(12, '出售信息', 'chusou', 'chusouxinxi\r\nfdslsa;j', 'chusou', '68997693', 0, '2016-08-18 23:42:35'),
	(13, '招商引资', 'zhaoshang', 'zhaoshang\r\nzhaoshang1\r\nzhansan2\r\nzhaoo\r\n', 'zhaoshang1', '387987997', 0, '2016-08-18 23:43:05'),
	(14, '公寓信息', 'gongyu', 'gongyuxinxi', 'gongyu', '78651986', 0, '2016-08-18 23:43:23'),
	(15, '寻人/物启示', 'xunren', 'xunrenqishi', 'xunren', '9867972342', 0, '2016-08-18 23:43:45');
/*!40000 ALTER TABLE `tb_info` ENABLE KEYS */;


-- 导出  表 db_pursey.tb_leaguerinfo 结构
DROP TABLE IF EXISTS `tb_leaguerinfo`;
CREATE TABLE IF NOT EXISTS `tb_leaguerinfo` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自动编号',
  `type` varchar(50) NOT NULL COMMENT '信息类型',
  `title` varchar(50) NOT NULL COMMENT '信息标题',
  `content` varchar(500) NOT NULL COMMENT '信息内容',
  `linkman` varchar(50) NOT NULL COMMENT '联系人',
  `tel` varchar(50) NOT NULL COMMENT '联系电话',
  `state` date NOT NULL COMMENT '发布日期',
  `showday` date NOT NULL COMMENT '截止日期',
  `checkstate` tinyint(4) NOT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='免费供求信息表';

-- 正在导出表  db_pursey.tb_leaguerinfo 的数据：~0 rows (大约)
DELETE FROM `tb_leaguerinfo`;
/*!40000 ALTER TABLE `tb_leaguerinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_leaguerinfo` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
