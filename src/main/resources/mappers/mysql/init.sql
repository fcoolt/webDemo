-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.6.21-log - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 db_webdemo 的数据库结构
CREATE DATABASE IF NOT EXISTS `db_webdemo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `db_webdemo`;

-- 导出  表 db_webdemo.t_resource 结构
CREATE TABLE IF NOT EXISTS `t_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceName` varchar(50) DEFAULT NULL,
  `href` varchar(200) DEFAULT NULL,
  `order_no` int(11) NOT NULL DEFAULT '0',
  `parentid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- 正在导出表  db_webdemo.t_resource 的数据：~16 rows (大约)
/*!40000 ALTER TABLE `t_resource` DISABLE KEYS */;
REPLACE INTO `t_resource` (`id`, `resourceName`, `href`, `order_no`, `parentid`) VALUES
	(1, '系统菜单', 'mainMenu', 1, 0),
	(2, '功能操作', 'functionalOperation', 1, 1),
	(3, '数据分析', 'dataAnalysis', 1, 2),
	(4, '处理方案', 'dealPlan', 2, 2),
	(5, '基础管理', 'basicManagement', 2, 1),
	(6, '数据管理', 'dataManagement', 1, 5),
	(7, '问题管理', 'issuesManagement', 2, 5),
	(8, '系统设置', 'systemSetting', 3, 1),
	(9, '权限管理', 'authorityManagement', 1, 8),
	(10, '用户管理', 'userManagement', 1, 9),
	(11, '角色管理', 'roleManagement', 2, 9),
	(12, '功能管理', 'functionManagement', 3, 9),
	(13, '系统日志', 'systemLog', 2, 8),
	(14, '其他页面', 'otherPage', 4, 1),
	(15, '空白页', 'blankPage', 1, 14),
	(16, '禁止访问', 'error403', 2, 14);
/*!40000 ALTER TABLE `t_resource` ENABLE KEYS */;

-- 导出  表 db_webdemo.t_role 结构
CREATE TABLE IF NOT EXISTS `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- 正在导出表  db_webdemo.t_role 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `t_role` DISABLE KEYS */;
REPLACE INTO `t_role` (`id`, `roleName`, `description`) VALUES
	(1, 'root', '超级管理员'),
	(2, 'admin', '管理员'),
	(3, 'user', '用户'),
	(4, 'guest', '游客');
/*!40000 ALTER TABLE `t_role` ENABLE KEYS */;

-- 导出  表 db_webdemo.t_role_resource 结构
CREATE TABLE IF NOT EXISTS `t_role_resource` (
  `roleId` int(11) NOT NULL,
  `resourceId` int(11) NOT NULL,
  KEY `roleId` (`roleId`),
  KEY `resourceId` (`resourceId`),
  CONSTRAINT `FK_t_role_resource_t_resource` FOREIGN KEY (`resourceId`) REFERENCES `t_resource` (`id`),
  CONSTRAINT `FK_t_role_resource_t_role` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  db_webdemo.t_role_resource 的数据：~46 rows (大约)
/*!40000 ALTER TABLE `t_role_resource` DISABLE KEYS */;
REPLACE INTO `t_role_resource` (`roleId`, `resourceId`) VALUES
	(1, 1),
	(1, 2),
	(1, 3),
	(1, 4),
	(1, 5),
	(1, 6),
	(1, 7),
	(1, 8),
	(1, 9),
	(1, 10),
	(1, 11),
	(1, 12),
	(1, 13),
	(1, 14),
	(1, 15),
	(1, 16),
	(2, 1),
	(2, 2),
	(2, 3),
	(2, 4),
	(2, 5),
	(2, 6),
	(2, 7),
	(2, 8),
	(2, 9),
	(2, 10),
	(2, 11),
	(2, 12),
	(2, 13),
	(2, 14),
	(2, 15),
	(2, 16),
	(3, 1),
	(3, 2),
	(3, 3),
	(3, 4),
	(3, 8),
	(3, 9),
	(3, 10),
	(3, 12),
	(4, 1),
	(4, 2),
	(4, 3),
	(4, 5),
	(4, 6),
	(4, 7);
/*!40000 ALTER TABLE `t_role_resource` ENABLE KEYS */;

-- 导出  表 db_webdemo.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleId` (`roleId`),
  CONSTRAINT `t_user_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `t_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- 正在导出表  db_webdemo.t_user 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
REPLACE INTO `t_user` (`id`, `userName`, `password`, `roleId`) VALUES
	(1, 'admin', '0cb506c8c95a66e87c463bf1a270446c', 1),
	(2, 'user', 'bc779bb47c40b3e2251f90db68b875ac', 3),
	(3, 'guest', '1ed74879582e10e7af2758ebdf0d1b50', 4);
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
