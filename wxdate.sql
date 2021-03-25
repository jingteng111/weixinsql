/*
SQLyog ä¼ä¸šç‰ˆ - MySQL GUI v8.14 
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
  `AreaId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'åœ°åŒºid',
  `Province` varchar(10) NOT NULL COMMENT 'æ‰€å±çœä»½',
  PRIMARY KEY (`AreaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `area` */

/*Table structure for table `evaluate` */

DROP TABLE IF EXISTS `evaluate`;

CREATE TABLE `evaluate` (
  `EvaluateId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'å­¦å‘˜è¯„ä»·id',
  `TeacherId` int(11) NOT NULL COMMENT 'æ•™å¸ˆid',
  `Evaluate` varchar(50) NOT NULL COMMENT 'å­¦å‘˜è¯„ä»·',
  PRIMARY KEY (`EvaluateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `evaluate` */

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `GradeId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'å¹´çº§id',
  `Grade` varchar(10) NOT NULL COMMENT 'å¹´çº§',
  PRIMARY KEY (`GradeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `ItemId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'è®¢å•è¡¨id',
  `TeacherId` int(11) NOT NULL COMMENT 'æ•™å¸ˆid',
  `UserId` int(11) NOT NULL COMMENT 'ç”¨æˆ·id',
  `SetData` date NOT NULL COMMENT 'åˆ›å»ºæ—¥æœŸ',
  `Price` int(11) NOT NULL COMMENT 'ä»·æ ¼',
  PRIMARY KEY (`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item` */

/*Table structure for table `salary` */

DROP TABLE IF EXISTS `salary`;

CREATE TABLE `salary` (
  `SalaryId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'è–ªèµ„è¡¨id',
  `GradeId` int(11) NOT NULL COMMENT 'æ•™å­¦å¹´çº§id',
  `UniversitySalary` varchar(10) NOT NULL COMMENT 'å¤§å­¦ç”Ÿå®¶æ•™è–ªèµ„',
  `SignUniversitySalary` varchar(10) NOT NULL COMMENT 'ç­¾çº¦å¤§å­¦ç”Ÿè–ªèµ„',
  `ProfessionalTeacherSalary` varchar(10) NOT NULL COMMENT 'ä¸“èŒæ•™å¸ˆè–ªèµ„',
  `SignTeacherSalary` varchar(10) NOT NULL COMMENT 'ç­¾çº¦ä¸“èŒæ•™å¸ˆè–ªèµ„',
  `InserviceTeacherSalary` varchar(10) NOT NULL COMMENT 'åœ¨èŒæ•™å¸ˆè–ªèµ„',
  PRIMARY KEY (`SalaryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `salary` */

/*Table structure for table `smallsubject` */

DROP TABLE IF EXISTS `smallsubject`;

CREATE TABLE `smallsubject` (
  `Sid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'å°ç±»å­¦ç§‘id',
  `Sname` varchar(10) NOT NULL COMMENT 'å°ç±»å­¦ç§‘',
  `SubjectId` int(11) NOT NULL COMMENT 'æ‰€å±å¤§ç±»id',
  PRIMARY KEY (`Sid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `smallsubject` */

/*Table structure for table `state` */

DROP TABLE IF EXISTS `state`;

CREATE TABLE `state` (
  `StateId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ç›®å‰çŠ¶æ€',
  `State` varchar(10) NOT NULL COMMENT 'ç›®å‰èº«ä»½',
  PRIMARY KEY (`StateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `state` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'å­¦å‘˜id',
  `UserId` int(11) NOT NULL COMMENT 'ç”¨æˆ·id',
  `AreaId` int(11) NOT NULL COMMENT 'åœ°åŒºid',
  `DemandSubjectsId` varchar(10) NOT NULL COMMENT 'éœ€æ±‚ç§‘ç›®id',
  `AskTeacherQualification` varchar(10) NOT NULL COMMENT 'è¦æ±‚æ•™å¸ˆèµ„å†',
  `AskTeacherSex` char(2) DEFAULT NULL COMMENT 'è¦æ±‚æ•™å¸ˆæ€§åˆ«',
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `SubjectId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'å­¦ç§‘id',
  `Subject` varchar(10) NOT NULL COMMENT 'å­¦ç§‘',
  `GradeId` int(11) NOT NULL COMMENT 'å¹´çº§id',
  PRIMARY KEY (`SubjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `TeacherId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'æ•™å¸ˆid',
  `UserName` varchar(10) NOT NULL COMMENT 'ç”¨æˆ·å',
  `PassWord` varchar(20) NOT NULL COMMENT 'å¯†ç ',
  `RealName` varchar(10) NOT NULL COMMENT 'çœŸå®å§“å',
  `Sex` char(2) NOT NULL COMMENT 'æ€§åˆ«',
  `Age` int(11) NOT NULL COMMENT 'å¹´é¾„',
  `Img` longblob COMMENT 'ç…§ç‰‡è·¯å¾„',
  `Phone` int(11) NOT NULL COMMENT 'æ‰‹æœºå·',
  `AreaId` int(11) NOT NULL COMMENT 'åœ°åŒºid',
  `IdCard` varchar(20) NOT NULL COMMENT 'èº«ä»½è¯',
  PRIMARY KEY (`TeacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacher` */

/*Table structure for table `teacherinfo` */

DROP TABLE IF EXISTS `teacherinfo`;

CREATE TABLE `teacherinfo` (
  `InfoId` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'æ•™å¸ˆä¿¡æ¯id',
  `TeacherId` int(11) NOT NULL COMMENT 'æ•™å¸ˆid',
  `SubjectId` int(11) NOT NULL COMMENT 'æ•™å­¦ç§‘ç›®id',
  `StatusId` int(11) NOT NULL COMMENT 'ç›®å‰çŠ¶æ€(åœ¨æ ¡æˆ–è€…æ¯•ä¸š)',
  `SId` int(11) NOT NULL COMMENT 'æ•™å­¦ç§‘ç›®ä¸‹é¢å°ç±»id',
  `GraduateId` int(11) NOT NULL COMMENT 'æ¯•ä¸šé™¢æ ¡id',
  `MaxEducation` varchar(10) NOT NULL COMMENT 'æœ€é«˜å­¦å†',
  `Adept` varchar(20) NOT NULL COMMENT 'ç‰¹é•¿',
  `ExpectedSalary` varchar(10) NOT NULL COMMENT 'é¢„æœŸè–ªèµ„',
  `FreeTime` date NOT NULL COMMENT 'ç©ºé—²æ—¶é—´',
  `Introduction` varchar(50) NOT NULL COMMENT 'è‡ªæˆ‘æè¿°',
  PRIMARY KEY (`InfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `teacherinfo` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `UserId` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ç”¨æˆ·id',
  `UserName` varchar(10) NOT NULL COMMENT 'ç”¨æˆ·å',
  `RealName` varchar(10) DEFAULT NULL COMMENT 'çœŸå®å§“å',
  `PassWord` varchar(20) DEFAULT NULL COMMENT 'å¯†ç ',
  `Sex` char(2) DEFAULT NULL COMMENT 'æ€§åˆ«',
  `Age` int(11) DEFAULT NULL COMMENT 'å¹´é¾„',
  `img` longblob COMMENT 'ç…§ç‰‡',
  `Grade` varchar(10) DEFAULT NULL COMMENT 'å¹´çº§',
  `Phone` int(11) DEFAULT NULL COMMENT 'æ‰‹æœºå·',
  `Address` varchar(20) DEFAULT NULL COMMENT 'å®¶åº­ä½å€',
  `IdCard` varchar(20) DEFAULT NULL COMMENT 'èº«ä»½è¯',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`UserId`,`UserName`,`RealName`,`PassWord`,`Sex`,`Age`,`img`,`Grade`,`Phone`,`Address`,`IdCard`) values (1,'zs','å¼ ä¸‰','zs','ç”·',18,'‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0 \0\0\0 \0\0\0szzô\0\0ıIDATXGÅ×]ècğÏPr ÊH909@È¼KXÌ;Sór‚\'JQØ0qÀ¶ÂÊRs4L†˜ÉK²0Âb¢•(æ`yÉ2…¾O×µîîûÿ\\ÿ¿§vÕ}ğÜÏïå{ı®ß÷û»îyöñš7Çü‹1¿<‰ñvâCü:›˜³p)ò,Ãø¹<ÉWÁìgñ2^oÒà\nÜŠ3ğ6âÍàgár\\†°¯Íd€§p,Ï–]á Ü‡{ñ4nò›	À»8ª”üƒÆÄ]³sñ¾Ç}1†\0¬Äé8s‰»náÜÑı£ÀXŠ¦”¼†ù\n/\"ñ÷®.€…¥{aû”‡MX‚Ïjì.€gğîrò\Zî.S\Z{ôn@~“°m€#ÍªÙxt|gşÑ‰w\n­G³	/nØ}ôàá±„ç#¬™Dë„¾¿ØzaÜ!MÊ<Ş\0à\'Ş±[ë\Z|Ã®µµÉ+€Çï8µ¡ŒÉñoÏnûŞ\ráù‡â\n`¾m,á±ØĞCÓ\0ˆØ¼×P…(ê…ø®8ŸT e%Ùxµ®EšøÁglA±¥8¹™HoËÊôKTÿ÷Ë¤ü³Å_âf|QTZ‚]\rANÄÛ8¬Ø~:‹êÅ%à#z?V\0ûaOÃ®Æ5ø÷àã 4|¬èÈ\rlÈFş§ad2;Y>P8eÄFtÒ°CkvÏĞ—àÎª7ã\0n,Óê´Èiœë\'&áùE¶Oª¯ë\nQ~o-»ÜÜãüPcòjÖWÉ£ËD<¥\Zu¥óœS.!³Ì×d¾\nQÜ½ÑêÓî4VšmT¢)®Ş#îMøWm˜†«ğ\nïŞ3†¦W‘ÛíÿAšñ­¾äCGPó…Û¯–±ûÈADn3~¯š“æwfDÆóÁåZ¾·y&\0J#çJş¢¡pïš :eØÜ„#Š¦2}_F™†)y®u?J&AâÌ€p^Ï·a¾sİz¾P­éÔZ+Ğl.FûÀs‘!—˜d\0\0\0\0IEND®B`‚','9',2147483647,'æ±Ÿè‹çœè‹å·å¸‚XXåŒº',NULL),(2,'ls','ls','ls',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
