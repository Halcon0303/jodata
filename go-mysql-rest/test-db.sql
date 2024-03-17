-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.6.5-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table mysql_rest.tbl_admin
DROP TABLE IF EXISTS `tbl_admin`;
CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `admin_id` varchar(32) NOT NULL,
  `name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_admin_priv
DROP TABLE IF EXISTS `tbl_admin_priv`;
CREATE TABLE IF NOT EXISTS `tbl_admin_priv` (
  `admin_id` varchar(32) NOT NULL,
  `priv_seq` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`,`priv_seq`),
  KEY `fk_table1_tbl_admin1_idx` (`admin_id`),
  KEY `fk_table1_tbl_priv1_idx` (`priv_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_admin_priv: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_admin_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_admin_priv` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_alarm
DROP TABLE IF EXISTS `tbl_alarm`;
CREATE TABLE IF NOT EXISTS `tbl_alarm` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `type` char(5) DEFAULT NULL,
  `sender` varchar(45) DEFAULT NULL,
  `receiver` varchar(45) DEFAULT NULL,
  `content` varchar(45) DEFAULT NULL,
  `create_time` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_alarm: ~8 rows (approximately)
/*!40000 ALTER TABLE `tbl_alarm` DISABLE KEYS */;
INSERT INTO `tbl_alarm` (`seq`, `type`, `sender`, `receiver`, `content`, `create_time`) VALUES
	(1, '10301', 'test2', 'test1', '学生@1预约了2015年12月24日与您进行一对一辅导，请尽快与他联系吧', '2015-12-24 21:27:19'),
	(2, '10302', 'test2', 'test1', '您收到了学生@1的评价：非常棒的老师！', '2015-12-24 21:28:56'),
	(3, '10303', 'test2', 'test1', '您获得了100赞币，来源： 学生订阅了您的数学课堂', '2015-12-24 21:34:01'),
	(4, '10306', 'test1', 'test1', '您消费了100赞币，来源：提现', '2015-12-24 21:39:43'),
	(5, '10301', 'test1', 'test2', '您预约了@1的一对一辅导，请保持通讯畅通等待老师联系', '2015-12-24 21:27:19'),
	(6, '10307', 'test1', 'test2', '您订阅了@1的初中语文课程，请按时收听', '2015-12-24 21:34:01'),
	(7, '10302', 'test1', 'test2', ' 您评价了@1老师：非常棒的老师！', '2015-12-24 21:28:56'),
	(8, '10303', 'test2', 'test2', '您消费了100赞币，来源：提现课程', '2015-12-24 21:28:56');
/*!40000 ALTER TABLE `tbl_alarm` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_answers
DROP TABLE IF EXISTS `tbl_answers`;
CREATE TABLE IF NOT EXISTS `tbl_answers` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `questions_seq` int(11) NOT NULL,
  `video_id` int(11) DEFAULT NULL,
  `teacher_id` varchar(32) NOT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `valid_yn` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`seq`),
  KEY `fk_tbl_answers_tbl_questions1_idx` (`questions_seq`),
  KEY `fk_tbl_answers_tbl_teacher1_idx` (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_answers: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_answers` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_answers` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_answers_best
DROP TABLE IF EXISTS `tbl_answers_best`;
CREATE TABLE IF NOT EXISTS `tbl_answers_best` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `answers_seq` int(11) NOT NULL,
  `reg_time` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `fk_tbl_answers_best_tbl_answers1_idx` (`answers_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_answers_best: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_answers_best` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_answers_best` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_answers_web
DROP TABLE IF EXISTS `tbl_answers_web`;
CREATE TABLE IF NOT EXISTS `tbl_answers_web` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `desc` varchar(256) DEFAULT NULL,
  `questions_web_seq` int(11) NOT NULL,
  `user_id` varchar(32) NOT NULL,
  `create_time` varchar(20) DEFAULT NULL,
  `valid_yn` char(1) NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`seq`),
  KEY `fk_tbl_answers_web_tbl_questions_web1_idx` (`questions_web_seq`),
  KEY `fk_tbl_answers_web_tbl_user1_idx` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_answers_web: ~7 rows (approximately)
/*!40000 ALTER TABLE `tbl_answers_web` DISABLE KEYS */;
INSERT INTO `tbl_answers_web` (`seq`, `desc`, `questions_web_seq`, `user_id`, `create_time`, `valid_yn`) VALUES
	(1, '123123123213', 3, 'test2', '2015-12-25 16:39:44', 'Y'),
	(2, 'Answer Answer\nAnswer', 4, 'test2', '2015-12-25 16:52:45', 'Y'),
	(3, '阿斯达十大是倒萨大师傅沙发色肺感染各位给我为噶给我施工是个额外二个人瓦特问啊温柔我', 5, 'test4', '2015-12-25 17:11:16', 'Y'),
	(4, '按时打算倒萨倒萨', 5, 'test2', '2015-12-25 18:20:05', 'Y'),
	(5, '撒打算打算打算亲2234324撒大苏打萨达是的', 5, 'test7', '2015-12-25 18:45:06', 'Y'),
	(6, '我的回答是按时打算打算撒旦撒sad', 5, 'test2', '2015-12-25 18:47:02', 'Y'),
	(7, '很简单的把\n', 7, 'test1', '2015-12-26 11:44:51', 'Y');
/*!40000 ALTER TABLE `tbl_answers_web` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_chat
DROP TABLE IF EXISTS `tbl_chat`;
CREATE TABLE IF NOT EXISTS `tbl_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `chat_group_id` int(11) DEFAULT NULL,
  `content` varchar(256) DEFAULT NULL,
  `file_url` varchar(45) DEFAULT NULL,
  `user_id` varchar(32) NOT NULL,
  `state` char(1) DEFAULT NULL COMMENT '1:read,2:unread',
  PRIMARY KEY (`chat_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_chat: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chat` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_chat_group
DROP TABLE IF EXISTS `tbl_chat_group`;
CREATE TABLE IF NOT EXISTS `tbl_chat_group` (
  `chat_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `receiver_id` varchar(32) DEFAULT NULL,
  `sender_id` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`chat_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_chat_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `tbl_chat_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_chat_group` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_code
DROP TABLE IF EXISTS `tbl_code`;
CREATE TABLE IF NOT EXISTS `tbl_code` (
  `code_id` char(5) NOT NULL,
  `code_group_id` char(3) NOT NULL,
  `code_name` varchar(45) DEFAULT NULL,
  `valid_yn` char(1) DEFAULT 'Y',
  PRIMARY KEY (`code_id`),
  KEY `fk_tbl_code_tbl_code_group1_idx` (`code_group_id`),
  CONSTRAINT `fk_tbl_code_tbl_code_group1` FOREIGN KEY (`code_group_id`) REFERENCES `tbl_code_group` (`code_group_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_code: ~25 rows (approximately)
/*!40000 ALTER TABLE `tbl_code` DISABLE KEYS */;
INSERT INTO `tbl_code` (`code_id`, `code_group_id`, `code_name`, `valid_yn`) VALUES
	('10001', '100', '小学', 'Y'),
	('10002', '100', '初中一年', 'Y'),
	('10003', '100', '初中二年', 'Y'),
	('10004', '100', '初中三年', 'Y'),
	('10005', '100', '高中一年', 'Y'),
	('10006', '100', '高中二年', 'Y'),
	('10007', '100', '高中三年', 'Y'),
	('10101', '101', '数学', 'Y'),
	('10102', '101', '语文', 'Y'),
	('10103', '101', '英语', 'Y'),
	('10104', '101', '化学', 'Y'),
	('10105', '101', '科学', 'Y'),
	('10106', '101', '物理', 'Y'),
	('10107', '101', '生物', 'Y'),
	('10201', '102', '老师', 'Y'),
	('10202', '102', '学生', 'Y'),
	('10203', '102', '社会教育', 'Y'),
	('10301', '103', '预约消息', 'Y'),
	('10302', '103', '评价消息', 'Y'),
	('10303', '103', '系统消息', 'Y'),
	('10304', '103', '聊天消息', 'Y'),
	('10306', '103', '提现消息', 'Y'),
	('10307', '103', '订阅消息', 'Y'),
	('10310', '103', 'Test1', 'Y'),
	('10311', '103', 'Test2', 'N');
/*!40000 ALTER TABLE `tbl_code` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_code_group
DROP TABLE IF EXISTS `tbl_code_group`;
CREATE TABLE IF NOT EXISTS `tbl_code_group` (
  `code_group_id` char(3) NOT NULL,
  `code_group_name` varchar(45) DEFAULT NULL,
  `valid_yn` char(1) DEFAULT 'Y',
  PRIMARY KEY (`code_group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_code_group: ~4 rows (approximately)
/*!40000 ALTER TABLE `tbl_code_group` DISABLE KEYS */;
INSERT INTO `tbl_code_group` (`code_group_id`, `code_group_name`, `valid_yn`) VALUES
	('100', '年级', 'Y'),
	('101', '科目', 'Y'),
	('102', '角色', 'Y'),
	('103', '消息类型', 'Y');
/*!40000 ALTER TABLE `tbl_code_group` ENABLE KEYS */;

-- Dumping structure for table mysql_rest.tbl_user
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` varchar(32) NOT NULL COMMENT '교육체계사용자(선생,학생,일반) 유일아이디',
  `password` varchar(32) NOT NULL,
  `phoneNum` varchar(20) NOT NULL COMMENT '전화번호는 유일해야 함',
  `name` varchar(32) DEFAULT NULL,
  `type` char(1) NOT NULL DEFAULT '1' COMMENT '1:teacher, 2:student, 3:others',
  `money` int(11) DEFAULT 0,
  `coin` int(11) DEFAULT 0 COMMENT '현재 보유량',
  `credit` int(11) DEFAULT 0 COMMENT '현재 보유량',
  `create_time` varchar(20) DEFAULT NULL,
  `update_time` varchar(20) DEFAULT NULL,
  `status` char(1) DEFAULT '2' COMMENT '1:online, 2:offline',
  `valid_yn` char(1) NOT NULL DEFAULT 'Y',
  `photo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- Dumping data for table mysql_rest.tbl_user: ~12 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`id`, `password`, `phoneNum`, `name`, `type`, `money`, `coin`, `credit`, `create_time`, `update_time`, `status`, `valid_yn`, `photo`) VALUES
	('asdasd', '213213213', '213213213', 'asdsad', '2', 0, 0, 0, '2015-12-22 17:34:33', NULL, '2', 'Y', '/media/images/1450834473677.png'),
	('asdsaasd', '1', '21312321', '阿撒旦撒旦', '2', 0, 0, 0, '2015-12-23 00:00:36', NULL, '2', 'Y', '/media/images/1450857636209.png'),
	('asdsad2', '2', '123213213', 'é¿å«å¤§èæ', '2', 0, 0, 0, '2015-12-22 23:52:25', NULL, '2', 'Y', '/media/images/1450857145952.png'),
	('asdsadasd', '1', '123213213', '王老师', '1', 0, 0, 0, '2015-12-22 23:32:26', NULL, '2', 'Y', '/media/images/1450855946347.png'),
	('teachertest', '123', '17076738078', '李老师', '1', 0, 0, 0, '2015-12-25 18:10:10', NULL, '2', 'Y', '/media/images/1451095810592.png'),
	('test1', '123', '231241214', '张玫瑰', '1', 0, 0, 0, '2015-12-23 17:14:51', NULL, '2', 'Y', '/media/images/1450919691258.png'),
	('test2', '111', '12345678901', '东阿平', '2', 0, 0, 0, '2015-12-23 17:25:45', NULL, '2', 'Y', '/media/images/1450920345591.jpg'),
	('test3', '123', '17076738077', '李东', '1', 0, 0, 0, '2015-12-25 17:06:06', NULL, '2', 'Y', '/media/images/1450857145952.png'),
	('test4', '123', '13022343552', '李东', '2', 0, 0, 0, '2015-12-25 17:10:17', NULL, '2', 'Y', '/media/images/1451092217632.png'),
	('test5', '12345', '17076738079', '李懂啊', '1', 0, 0, 0, '2015-12-25 18:16:41', NULL, '2', 'Y', '/media/images/1451096201350.png'),
	('test6', '123', '21321321454', '阿斯顿撒旦', '2', 0, 0, 0, '2015-12-25 18:37:12', NULL, '2', 'Y', '/media/images/1451097432376.jpg'),
	('test7', '12345', '17076738080', '李里', '1', 0, 0, 0, '2015-12-25 18:42:16', NULL, '2', 'Y', '/media/images/1451097736701.png');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
