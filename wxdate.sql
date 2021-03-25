/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.1.38-community : Database - wxdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wxdata` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wxdata`;

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `AreaId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `Province` varchar(10) NOT NULL COMMENT '所属省份',
  PRIMARY KEY (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `area` */

/*Table structure for table `evaluate` */

DROP TABLE IF EXISTS `evaluate`;

CREATE TABLE `evaluate` (
  `EvaluateId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '学员评价id',
  `TeacherId` int(11) NOT NULL COMMENT '教师id',
  `Evaluate` varchar(50) NOT NULL COMMENT '学员评价',
  PRIMARY KEY (`EvaluateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `evaluate` */

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `GradeId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '年级id',
  `Grade` varchar(10) NOT NULL COMMENT '年级',
  PRIMARY KEY (`GradeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ItemId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '订单表id',
  `TeacherId` int(11) NOT NULL COMMENT '教师id',
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `SetData` date NOT NULL COMMENT '创建日期',
  `Price` int(11) NOT NULL COMMENT '价格',
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item` */

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `SalaryId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '薪资表id',
  `GradeId` int(11) NOT NULL COMMENT '教学年级id',
  `UniversitySalary` varchar(10) NOT NULL COMMENT '大学生家教薪资',
  `SignUniversitySalary` varchar(10) NOT NULL COMMENT '签约大学生薪资',
  `ProfessionalTeacherSalary` varchar(10) NOT NULL COMMENT '专职教师薪资',
  `SignTeacherSalary` varchar(10) NOT NULL COMMENT '签约专职教师薪资',
  `InserviceTeacherSalary` varchar(10) NOT NULL COMMENT '在职教师薪资',
  PRIMARY KEY (`SalaryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salary` */

/*Table structure for table `smallsubject` */

DROP TABLE IF EXISTS `smallsubject`;

CREATE TABLE `smallsubject` (
  `Sid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '小类学科id',
  `Sname` varchar(10) NOT NULL COMMENT '小类学科',
  `SubjectId` int(11) NOT NULL COMMENT '所属大类id',
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `smallsubject` */

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `StateId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '目前状态',
  `State` varchar(10) NOT NULL COMMENT '目前身份',
  PRIMARY KEY (`StateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT COMMENT '学员id',
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `AreaId` int(11) NOT NULL COMMENT '地区id',
  `DemandSubjectsId` varchar(10) NOT NULL COMMENT '需求科目id',
  `AskTeacherQualification` varchar(10) NOT NULL COMMENT '要求教师资历',
  `AskTeacherSex` char(2) DEFAULT NULL COMMENT '要求教师性别',
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `SubjectId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '学科id',
  `Subject` varchar(10) NOT NULL COMMENT '学科',
  `GradeId` int(11) NOT NULL COMMENT '年级id',
  PRIMARY KEY (`SubjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `TeacherId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '教师id',
  `UserName` varchar(10) NOT NULL COMMENT '用户名',
  `PassWord` varchar(20) NOT NULL COMMENT '密码',
  `RealName` varchar(10) NOT NULL COMMENT '真实姓名',
  `Sex` char(2) NOT NULL COMMENT '性别',
  `Age` int(11) NOT NULL COMMENT '年龄',
  `Img` longblob COMMENT '照片路径',
  `Phone` int(11) NOT NULL COMMENT '手机号',
  `AreaId` int(11) NOT NULL COMMENT '地区id',
  `IdCard` varchar(20) NOT NULL COMMENT '身份证',
  PRIMARY KEY (`TeacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

/*Table structure for table `teacherinfo` */

DROP TABLE IF EXISTS `teacherinfo`;

CREATE TABLE `teacherinfo` (
  `InfoId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '教师信息id',
  `TeacherId` int(11) NOT NULL COMMENT '教师id',
  `SubjectId` int(11) NOT NULL COMMENT '教学科目id',
  `StatusId` int(11) NOT NULL COMMENT '目前状态(在校或者毕业)',
  `SId` int(11) NOT NULL COMMENT '教学科目下面小类id',
  `GraduateId` int(11) NOT NULL COMMENT '毕业院校id',
  `MaxEducation` varchar(10) NOT NULL COMMENT '最高学历',
  `Adept` varchar(20) NOT NULL COMMENT '特长',
  `ExpectedSalary` varchar(10) NOT NULL COMMENT '预期薪资',
  `FreeTime` date NOT NULL COMMENT '空闲时间',
  `Introduction` varchar(50) NOT NULL COMMENT '自我描述',
  PRIMARY KEY (`InfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherinfo` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `UserName` varchar(10) NOT NULL COMMENT '用户名',
  `RealName` varchar(10) DEFAULT NULL COMMENT '真实姓名',
  `PassWord` varchar(20) DEFAULT NULL COMMENT '密码',
  `Sex` char(2) DEFAULT NULL COMMENT '性别',
  `Age` int(11) DEFAULT NULL COMMENT '年龄',
  `img` longblob COMMENT '照片',
  `Grade` varchar(10) DEFAULT NULL COMMENT '年级',
  `Phone` int(11) DEFAULT NULL COMMENT '手机号',
  `Address` varchar(20) DEFAULT NULL COMMENT '家庭住址',
  `IdCard` varchar(20) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`UserId`,`UserName`,`RealName`,`PassWord`,`Sex`,`Age`,`img`,`Grade`,`Phone`,`Address`,`IdCard`) values (1,'zs','张三','zs','男',18,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0 \0\0\0szz�\0\0�IDATXG��]�c��Pr �H909@ȼKX�;S�r��\'JQ�0q����Rs4L���K�0�b��(�`y�2��O׵�����\\���v�}�����{�������y��7���1�<��v�C�:���p)�,���<�W��g�2^o��\n܊3�6�́�g�r\\����d��p�,ώ�]� ܇{�4n�	��8������]�s���}1�\0���8s���n������X������\n/\"���.���{a���MX��j�.�g��r�\Z�.S\Z{�n@~���m�#ͪ�xt|g�щw\n�G��	�/n�}��᱄�#��D넾�؍za�!M�<�\0�\'ޱ[��\Z|î���+���8�����o�n��\r����\n`�m,���C�\0�ؼ�P�(���8�T�e%�x��E���glA��8��Ho���KT��ˤ���_�f|QTZ�]\rAN��8��~:���%�#z?V\0�aO���5���� 4|��ȁ\rl�F��ad2;Y>P�8e�FtҰCkv����Ϊ7�\0n,�괁�i���\'&��E�O���\nQ~o-�����Pc�j�Wɣ�D<�\Zu���S.!���d�\nQ������4V�mT�)��#�M�Wm����\n���3��W����A���CGP�ۯ����ADn3~����wfD����Z��y&\0J#�J���p��:e�܄#��2}_F��)y�u?J&A�̀p^Ϸa�s�z�P���Z+�l.F��s�!��d\0\0\0\0IEND�B`�','9',2147483647,'江苏省苏州市XX区',NULL),(2,'ls','ls','ls',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
