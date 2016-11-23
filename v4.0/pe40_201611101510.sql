-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2016 年 11 月 10 日 07:05
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `pe40`
--

-- --------------------------------------------------------

--
-- 表的结构 `x2_app`
--

CREATE TABLE IF NOT EXISTS `x2_app` (
  `appid` varchar(24) NOT NULL,
  `appname` varchar(48) NOT NULL DEFAULT '',
  `appthumb` varchar(240) NOT NULL DEFAULT '',
  `appstatus` int(1) NOT NULL DEFAULT '0',
  `appsetting` text NOT NULL,
  PRIMARY KEY (`appid`),
  KEY `appstatus` (`appstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_app`
--

INSERT INTO `x2_app` (`appid`, `appname`, `appthumb`, `appstatus`, `appsetting`) VALUES
('user', '用户模块', 'files/attach/images/content/20130401/13647895355562.png.png', 1, ''),
('exam', '考试模块', '', 1, ''),
('core', '全局', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('document', '文件模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('content', '内容模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('item', '商品模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('bank', '财务模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}'),
('course', '课程模块', '', 1, 'a:1:{s:3:"seo";a:3:{s:5:"title";s:0:"";s:8:"keywords";s:0:"";s:11:"description";s:0:"";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_area`
--

CREATE TABLE IF NOT EXISTS `x2_area` (
  `areaid` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(120) NOT NULL DEFAULT '',
  `areacode` int(12) NOT NULL DEFAULT '0',
  `arealevel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`areaid`),
  KEY `area` (`area`,`arealevel`),
  KEY `areacode` (`areacode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- 转存表中的数据 `x2_area`
--

INSERT INTO `x2_area` (`areaid`, `area`, `areacode`, `arealevel`) VALUES
(1, '全国', 1, 1),
(3, '河南', 373, 0),
(4, '北京', 10, 0),
(5, '陕西', 29, 0),
(6, '河北', 311, 0),
(7, '天津', 22, 0),
(8, '山东', 531, 0),
(9, '江苏', 25, 0),
(10, '湖北', 27, 0),
(11, '辽宁', 24, 0),
(12, '贵州', 851, 0),
(13, '北京春雪', 1001, 0),
(14, '云南', 871, 0),
(15, '四川', 28, 0),
(16, '安徽', 551, 0),
(17, '深圳', 755, 0),
(18, '吉林', 431, 0),
(19, '广东', 20, 0),
(20, '新疆', 991, 0),
(21, '广西', 771, 0),
(22, '福建', 591, 0),
(23, '湖南', 731, 0),
(24, '上海', 21, 0),
(25, '重庆', 23, 0),
(26, '江西', 791, 0),
(27, '浙江', 571, 0),
(28, '山西', 351, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_attach`
--

CREATE TABLE IF NOT EXISTS `x2_attach` (
  `attid` int(11) NOT NULL AUTO_INCREMENT,
  `attpath` varchar(240) NOT NULL DEFAULT '',
  `atttitle` varchar(240) NOT NULL DEFAULT '',
  `attext` varchar(12) NOT NULL DEFAULT '',
  `attinputtime` int(11) NOT NULL DEFAULT '0',
  `attsize` int(11) NOT NULL DEFAULT '0',
  `attmd5` varchar(32) NOT NULL DEFAULT '',
  `attuserid` int(11) NOT NULL DEFAULT '0',
  `attcntype` varchar(12) NOT NULL DEFAULT '',
  PRIMARY KEY (`attid`),
  KEY `attext` (`attext`,`attinputtime`),
  KEY `attuserid` (`attuserid`),
  KEY `attcntype` (`attcntype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `x2_attach`
--

INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES
(1, 'files/attach/images/content/20161110/14787558358831.jpg', 'Tulips.jpg', 'jpg', 1478755834, 620888, '', 1, 'image/jpeg'),
(2, 'files/attach/images/content/20161110/14787543825725.jpg', 'Penguins.jpg', 'jpg', 1478754380, 777835, '', 1, 'image/jpeg'),
(3, 'files/attach/images/content/20161110/14787544324708.jpg', 'Jellyfish.jpg', 'jpg', 1478754431, 775702, '', 1, 'image/jpeg'),
(4, 'files/attach/images/content/20161110/14787544515448.jpg', 'Chrysanthemum.jpg', 'jpg', 1478754450, 879394, '', 1, 'image/jpeg'),
(5, 'files/attach/images/content/20161110/14787544807263.jpg', 'Koala.jpg', 'jpg', 1478754479, 780831, '', 1, 'image/jpeg'),
(6, 'files/attach/images/content/20161110/14787544994727.jpg', 'Desert.jpg', 'jpg', 1478754498, 845941, '', 1, 'image/jpeg'),
(7, 'files/attach/images/content/20161110/14787545844193.jpg', 'Koala.jpg', 'jpg', 1478754583, 780831, '', 1, 'image/jpeg'),
(8, 'files/attach/images/content/20161110/14787546111102.jpg', 'Hydrangeas.jpg', 'jpg', 1478754610, 595284, '', 1, 'image/jpeg'),
(9, 'files/attach/images/content/20161110/14787546602096.jpg', 'Penguins.jpg', 'jpg', 1478754659, 777835, '', 1, 'image/jpeg'),
(10, 'files/attach/images/content/20161110/14787550365041.jpg', 'Desert.jpg', 'jpg', 1478755035, 845941, '', 1, 'image/jpeg'),
(11, 'files/attach/images/content/20161110/14787573798484.jpg', 'Lighthouse.jpg', 'jpg', 1478757378, 561276, '', 1, 'image/jpeg'),
(12, 'files/attach/images/content/20161110/14787579458525.jpg', 'Lighthouse.jpg', 'jpg', 1478757944, 561276, '', 1, 'image/jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `x2_attachtype`
--

CREATE TABLE IF NOT EXISTS `x2_attachtype` (
  `atid` int(11) NOT NULL AUTO_INCREMENT,
  `attachtype` varchar(120) NOT NULL,
  `attachexts` tinytext NOT NULL,
  PRIMARY KEY (`atid`),
  KEY `attachtype` (`attachtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_attachtype`
--

INSERT INTO `x2_attachtype` (`atid`, `attachtype`, `attachexts`) VALUES
(1, '图片', 'jpg,png,gif,bmp'),
(2, '音频', 'mp3'),
(3, '多媒体', 'flv,wmv,mp4,avi');

-- --------------------------------------------------------

--
-- 表的结构 `x2_basic`
--

CREATE TABLE IF NOT EXISTS `x2_basic` (
  `basicid` int(11) NOT NULL AUTO_INCREMENT,
  `basic` varchar(120) NOT NULL DEFAULT '',
  `basicareaid` int(4) NOT NULL DEFAULT '0',
  `basicsubjectid` int(11) NOT NULL DEFAULT '0',
  `basicsection` text NOT NULL,
  `basicknows` text NOT NULL,
  `basicexam` text NOT NULL,
  `basicapi` varchar(32) NOT NULL DEFAULT '',
  `basicdemo` int(1) NOT NULL DEFAULT '0',
  `basicthumb` varchar(240) NOT NULL DEFAULT '',
  `basicprice` tinytext NOT NULL,
  `basicclosed` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`basicid`),
  KEY `basicexamid` (`basicareaid`),
  KEY `basicsubjectid` (`basicsubjectid`),
  KEY `basicapi` (`basicapi`),
  KEY `basicdemo` (`basicdemo`),
  KEY `basicclosed` (`basicclosed`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_basic`
--

INSERT INTO `x2_basic` (`basicid`, `basic`, `basicareaid`, `basicsubjectid`, `basicsection`, `basicknows`, `basicexam`, `basicapi`, `basicdemo`, `basicthumb`, `basicprice`, `basicclosed`) VALUES
(1, '危化品安全', 1, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:1:{i:1;s:1:"1";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"1";s:4:"auto";s:1:"1";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:1:"1";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";}', '', 1, 'files/attach/images/content/20161110/14787579458525.jpg', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_block`
--

CREATE TABLE IF NOT EXISTS `x2_block` (
  `blockid` int(11) NOT NULL AUTO_INCREMENT,
  `block` varchar(120) NOT NULL DEFAULT '',
  `blocktype` int(1) NOT NULL DEFAULT '0',
  `blockposition` varchar(120) NOT NULL DEFAULT '',
  `blockcontent` text NOT NULL,
  PRIMARY KEY (`blockid`),
  KEY `blocktype` (`blocktype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_block`
--

INSERT INTO `x2_block` (`blockid`, `block`, `blocktype`, `blockposition`, `blockcontent`) VALUES
(1, '测试SQL', 3, '多处', 'a:8:{s:7:"dbtable";s:4:"user";s:5:"query";s:60:"AND|usergroupid=:usergroupid|usergroupid|v:_user[\\''userid\\'']";s:5:"order";s:0:"";s:5:"limit";a:2:{i:0;s:1:"0";i:1;s:1:"5";}s:3:"sql";s:0:"";s:5:"index";s:0:"";s:6:"serial";s:0:"";s:8:"template";s:31:"{x2;eval: print_r(v:blockdata)}";}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_category`
--

CREATE TABLE IF NOT EXISTS `x2_category` (
  `catid` int(11) NOT NULL AUTO_INCREMENT,
  `catapp` varchar(24) NOT NULL DEFAULT '',
  `catlite` int(11) NOT NULL DEFAULT '0',
  `catname` varchar(240) NOT NULL DEFAULT '',
  `catimg` varchar(240) NOT NULL DEFAULT '',
  `caturl` varchar(120) NOT NULL DEFAULT '',
  `catuseurl` int(1) NOT NULL DEFAULT '0',
  `catparent` int(11) DEFAULT '0',
  `catdes` text NOT NULL,
  `cattpl` varchar(36) NOT NULL DEFAULT '',
  `catmanager` text NOT NULL,
  `catinmenu` int(1) NOT NULL DEFAULT '0',
  `catindex` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`catid`),
  KEY `catlite` (`catlite`,`catparent`),
  KEY `catappid` (`catapp`),
  KEY `catuseurl` (`catuseurl`),
  KEY `catinmenu` (`catinmenu`,`catindex`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- 转存表中的数据 `x2_category`
--

INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`) VALUES
(1, 'content', 0, '学习资料', 'files/attach/images/content/20161110/14787544994727.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 10),
(2, 'content', 0, '滚动图片', 'files/attach/images/content/20161110/14787544807263.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 3),
(3, 'content', 0, '考试信息', 'files/attach/images/content/20161110/14787544515448.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 10),
(4, 'content', 0, '使用帮助', 'files/attach/images/content/20161110/14787544324708.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10),
(5, 'course', 3, '危化品安全', 'files/attach/images/content/20161110/14787543825725.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10),
(6, 'course', 2, '医学护理', 'files/attach/images/content/20161110/14787550365041.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10),
(7, 'course', 1, '基础会计', 'files/attach/images/content/20161110/14787558358831.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 10);

-- --------------------------------------------------------

--
-- 表的结构 `x2_comment`
--

CREATE TABLE IF NOT EXISTS `x2_comment` (
  `cmtid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtapp` varchar(24) NOT NULL DEFAULT '',
  `cmtcontentid` int(11) NOT NULL DEFAULT '0',
  `cmtcontent` text NOT NULL,
  `cmttime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cmtid`),
  KEY `cmtapp` (`cmtapp`,`cmtcontentid`,`cmttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_config`
--

CREATE TABLE IF NOT EXISTS `x2_config` (
  `cfgapp` varchar(36) NOT NULL,
  `cfgsetting` text NOT NULL,
  PRIMARY KEY (`cfgapp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_content`
--

CREATE TABLE IF NOT EXISTS `x2_content` (
  `contentid` int(11) NOT NULL AUTO_INCREMENT,
  `contentcatid` int(11) NOT NULL DEFAULT '0',
  `contentmoduleid` int(11) NOT NULL DEFAULT '0',
  `contentuserid` int(11) NOT NULL DEFAULT '0',
  `contentusername` varchar(48) NOT NULL DEFAULT '',
  `contenttitle` varchar(240) NOT NULL DEFAULT '',
  `contentthumb` varchar(120) NOT NULL DEFAULT '',
  `contentlink` varchar(240) NOT NULL DEFAULT '',
  `contentinputtime` int(11) NOT NULL DEFAULT '0',
  `contentmodifytime` int(11) NOT NULL DEFAULT '0',
  `contentsequence` int(4) NOT NULL DEFAULT '0',
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) NOT NULL DEFAULT '',
  `contenttext` mediumtext NOT NULL,
  `cizhuan_guige` varchar(60) NOT NULL,
  `cizhuan_brand` varchar(24) NOT NULL,
  `cizhuan_thumb` varchar(120) NOT NULL,
  `tester` text NOT NULL,
  PRIMARY KEY (`contentid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_coupon`
--

CREATE TABLE IF NOT EXISTS `x2_coupon` (
  `couponsn` varchar(16) NOT NULL,
  `couponvalue` int(11) NOT NULL DEFAULT '0',
  `couponstatus` int(1) NOT NULL DEFAULT '0',
  `couponaddtime` int(11) NOT NULL DEFAULT '0',
  `couponendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`couponsn`),
  KEY `couponstatus` (`couponstatus`,`couponendtime`),
  KEY `couponaddtime` (`couponaddtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_course`
--

CREATE TABLE IF NOT EXISTS `x2_course` (
  `courseid` int(11) NOT NULL AUTO_INCREMENT,
  `coursetitle` varchar(240) DEFAULT NULL,
  `coursemoduleid` int(11) DEFAULT NULL,
  `coursecsid` int(11) DEFAULT NULL,
  `coursethumb` varchar(240) DEFAULT NULL,
  `courseuserid` int(11) DEFAULT NULL,
  `courseinputtime` int(11) DEFAULT NULL,
  `coursemodifytime` int(11) DEFAULT NULL,
  `coursesequence` int(11) DEFAULT NULL,
  `coursedescribe` text,
  `course_files` varchar(240) NOT NULL,
  PRIMARY KEY (`courseid`),
  KEY `coursecsid` (`coursecsid`,`courseuserid`,`courseinputtime`,`coursemodifytime`,`coursesequence`),
  KEY `coursemoduleid` (`coursemoduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_coursesubject`
--

CREATE TABLE IF NOT EXISTS `x2_coursesubject` (
  `csid` int(11) NOT NULL AUTO_INCREMENT,
  `cstitle` varchar(240) DEFAULT '',
  `cscatid` int(11) DEFAULT NULL,
  `csuserid` int(11) DEFAULT '0',
  `csbasicid` int(11) DEFAULT '0',
  `cssubjectid` int(11) DEFAULT '0',
  `cstime` int(11) DEFAULT '0',
  `csthumb` varchar(120) DEFAULT '',
  `cssequence` int(11) DEFAULT NULL,
  `csdescribe` text,
  PRIMARY KEY (`csid`),
  KEY `csbasicid` (`csbasicid`,`cssubjectid`,`cstime`),
  KEY `cscatid` (`cscatid`),
  KEY `cuserid` (`csuserid`),
  KEY `cssequence` (`cssequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_dochistory`
--

CREATE TABLE IF NOT EXISTS `x2_dochistory` (
  `dhid` int(11) NOT NULL AUTO_INCREMENT,
  `dhcontent` text NOT NULL,
  `dhtime` int(11) NOT NULL,
  `dhstatus` tinyint(4) NOT NULL,
  `dhtop` tinyint(4) NOT NULL,
  PRIMARY KEY (`dhid`),
  KEY `dhtime` (`dhtime`),
  KEY `dhstatus` (`dhstatus`),
  KEY `dhtop` (`dhtop`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_docs`
--

CREATE TABLE IF NOT EXISTS `x2_docs` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `doctitle` varchar(240) NOT NULL,
  `doccatid` int(11) NOT NULL,
  `dockeywords` varchar(240) NOT NULL,
  `doccontentid` int(11) NOT NULL,
  `docinputtime` int(11) NOT NULL,
  `docmodifytime` int(11) NOT NULL,
  `docdescribe` varchar(240) NOT NULL,
  `doclock` tinyint(4) NOT NULL,
  PRIMARY KEY (`docid`),
  KEY `doctitle` (`doctitle`),
  KEY `doccatid` (`doccatid`),
  KEY `doccontentid` (`doccontentid`),
  KEY `docinputtime` (`docinputtime`),
  KEY `docmodifytime` (`docmodifytime`),
  KEY `doclock` (`doclock`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_examhistory`
--

CREATE TABLE IF NOT EXISTS `x2_examhistory` (
  `ehid` int(11) NOT NULL AUTO_INCREMENT,
  `ehexamid` int(11) NOT NULL DEFAULT '0',
  `ehexam` varchar(240) NOT NULL DEFAULT '',
  `ehtype` int(11) NOT NULL DEFAULT '0',
  `ehbasicid` int(11) NOT NULL DEFAULT '0',
  `ehquestion` longtext NOT NULL,
  `ehsetting` text,
  `ehscorelist` text,
  `ehuseranswer` text,
  `ehtime` int(11) NOT NULL DEFAULT '0',
  `ehscore` decimal(10,2) NOT NULL DEFAULT '0.00',
  `ehuserid` int(11) NOT NULL DEFAULT '0',
  `ehusername` varchar(120) NOT NULL DEFAULT '',
  `ehstarttime` int(11) NOT NULL DEFAULT '0',
  `ehstatus` int(1) NOT NULL DEFAULT '1',
  `ehdecide` int(1) NOT NULL DEFAULT '0',
  `ehtimelist` text,
  PRIMARY KEY (`ehid`),
  KEY `ehtype` (`ehtype`,`ehbasicid`,`ehtime`,`ehuserid`),
  KEY `ehdecide` (`ehdecide`),
  KEY `ehexamid` (`ehexamid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_exams`
--

CREATE TABLE IF NOT EXISTS `x2_exams` (
  `examid` int(11) NOT NULL AUTO_INCREMENT,
  `examsubject` tinyint(4) NOT NULL DEFAULT '0',
  `exam` varchar(120) NOT NULL DEFAULT '',
  `examsetting` text NOT NULL,
  `examquestions` text NOT NULL,
  `examscore` text NOT NULL,
  `examstatus` int(1) NOT NULL DEFAULT '0',
  `examtype` int(11) NOT NULL DEFAULT '0',
  `examauthorid` int(11) NOT NULL DEFAULT '0',
  `examauthor` varchar(120) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL DEFAULT '',
  `examtime` int(11) NOT NULL DEFAULT '0',
  `examkeyword` varchar(240) NOT NULL DEFAULT '',
  `examdecide` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`examid`),
  KEY `examstatus` (`examstatus`),
  KEY `examtype` (`examtype`,`examauthorid`),
  KEY `examtime` (`examtime`),
  KEY `examsubject` (`examsubject`),
  KEY `examdecide` (`examdecide`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_exams`
--

INSERT INTO `x2_exams` (`examid`, `examsubject`, `exam`, `examsetting`, `examquestions`, `examscore`, `examstatus`, `examtype`, `examauthorid`, `examauthor`, `examtime`, `examkeyword`, `examdecide`) VALUES
(1, 1, '危化品安全试卷', 'a:7:{s:8:"examtime";s:2:"10";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:2:"80";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:2:"10";s:5:"score";s:1:"5";s:8:"describe";s:0:"";s:10:"easynumber";s:2:"10";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}', '', '', 0, 1, 1, 'peadmin', 1478759565, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_examsession`
--

CREATE TABLE IF NOT EXISTS `x2_examsession` (
  `examsessionid` varchar(32) NOT NULL,
  `examsessionuserid` int(11) NOT NULL DEFAULT '0',
  `examsession` varchar(240) NOT NULL DEFAULT '',
  `examsessionsetting` text NOT NULL,
  `examsessionsign` text,
  `examsessionbasic` tinyint(4) NOT NULL DEFAULT '0',
  `examsessiontype` int(1) NOT NULL,
  `examsessionkey` varchar(32) NOT NULL DEFAULT '',
  `examsessionquestion` longtext NOT NULL,
  `examsessionuseranswer` text,
  `examsessionstarttime` int(11) NOT NULL DEFAULT '0',
  `examsessiontime` int(11) NOT NULL DEFAULT '0',
  `examsessionstatus` int(1) NOT NULL DEFAULT '0',
  `examsessionscore` decimal(10,1) NOT NULL DEFAULT '0.0',
  `examsessionscorelist` text,
  `examsessionissave` int(1) NOT NULL DEFAULT '0',
  `examsessiontimelist` text,
  PRIMARY KEY (`examsessionid`),
  KEY `examsessionstarttime` (`examsessionstarttime`),
  KEY `examsessionstatus` (`examsessionstatus`),
  KEY `examsessiontype` (`examsessiontype`),
  KEY `examsessionkey` (`examsessionkey`),
  KEY `examsubject` (`examsessionbasic`),
  KEY `examsessionissave` (`examsessionissave`),
  KEY `examsessionuserid` (`examsessionuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_exercise`
--

CREATE TABLE IF NOT EXISTS `x2_exercise` (
  `exerid` int(11) NOT NULL AUTO_INCREMENT,
  `exeruserid` int(11) NOT NULL,
  `exerbasicid` int(11) NOT NULL,
  `exerknowsid` int(11) NOT NULL,
  `exernumber` int(11) NOT NULL,
  `exerqutype` int(11) NOT NULL,
  PRIMARY KEY (`exerid`),
  KEY `exeruserid` (`exeruserid`),
  KEY `exerbasicid` (`exerbasicid`),
  KEY `exerknowsid` (`exerknowsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_favor`
--

CREATE TABLE IF NOT EXISTS `x2_favor` (
  `favorid` int(11) NOT NULL AUTO_INCREMENT,
  `favoruserid` int(11) NOT NULL DEFAULT '0',
  `favorsubjectid` int(11) NOT NULL DEFAULT '0',
  `favorquestionid` int(11) NOT NULL DEFAULT '0',
  `favortime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`favorid`),
  KEY `favoruserid` (`favoruserid`,`favorquestionid`,`favortime`),
  KEY `favorsubjectid` (`favorsubjectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_gbook`
--

CREATE TABLE IF NOT EXISTS `x2_gbook` (
  `gbid` int(11) NOT NULL AUTO_INCREMENT,
  `gbinfo` text NOT NULL,
  `gbcontent` text NOT NULL,
  `gbreply` text NOT NULL,
  `gbtime` int(11) NOT NULL DEFAULT '0',
  `gbreplytime` int(11) NOT NULL DEFAULT '0',
  `gbstatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gbid`),
  KEY `gbtime` (`gbtime`),
  KEY `gbreplytime` (`gbreplytime`),
  KEY `gbstatus` (`gbstatus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_knows`
--

CREATE TABLE IF NOT EXISTS `x2_knows` (
  `knowsid` int(11) NOT NULL AUTO_INCREMENT,
  `knows` varchar(120) NOT NULL DEFAULT '',
  `knowssectionid` int(11) NOT NULL DEFAULT '0',
  `knowsdescribe` text NOT NULL,
  `knowsstatus` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`knowsid`),
  KEY `knows` (`knows`,`knowssectionid`),
  KEY `knowsstatus` (`knowsstatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_knows`
--

INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`) VALUES
(1, '基础知识点', 1, '', 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_log`
--

CREATE TABLE IF NOT EXISTS `x2_log` (
  `logid` int(11) NOT NULL AUTO_INCREMENT,
  `loguserid` int(11) DEFAULT '0',
  `logcourseid` int(11) DEFAULT '0',
  `logtime` int(11) DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `loguserid` (`loguserid`,`logcourseid`),
  KEY `logtime` (`logtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_module`
--

CREATE TABLE IF NOT EXISTS `x2_module` (
  `moduleid` int(11) NOT NULL AUTO_INCREMENT,
  `modulecode` varchar(24) NOT NULL DEFAULT '',
  `modulename` varchar(60) NOT NULL DEFAULT '',
  `moduledescribe` tinytext NOT NULL,
  `moduleapp` varchar(24) NOT NULL DEFAULT '',
  `moduletable` varchar(24) NOT NULL DEFAULT '',
  `moduleallowreg` tinyint(1) DEFAULT '0',
  `modulestatus` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`),
  UNIQUE KEY `modulecode` (`modulecode`),
  KEY `modulename` (`modulename`),
  KEY `moduleapp` (`moduleapp`),
  KEY `moduleallowreg` (`moduleallowreg`),
  KEY `modulestatus` (`modulestatus`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `x2_module`
--

INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`) VALUES
(1, 'manager', '管理员模型', '管理员', 'user', 'user_data', 0, 0),
(2, 'teacher', '教师模型', '教师模型', 'user', '', 0, 0),
(3, 'normal', '普通用户', '普通用户', 'user', '', 0, 0),
(4, 'news', '新闻', '新闻', 'content', 'content_data', 0, 0),
(5, 'spnormal', '普通信息', '普通信息', 'special', '', 0, 0),
(6, 'course', '视频课程', '', 'course', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module_fields`
--

CREATE TABLE IF NOT EXISTS `x2_module_fields` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `fieldappid` varchar(12) NOT NULL DEFAULT '',
  `fieldmoduleid` int(4) NOT NULL DEFAULT '0',
  `fieldsequence` tinyint(4) NOT NULL DEFAULT '0',
  `field` varchar(24) NOT NULL DEFAULT '',
  `fieldtitle` varchar(60) NOT NULL DEFAULT '',
  `fieldlength` varchar(12) NOT NULL DEFAULT '',
  `fielddescribe` text NOT NULL,
  `fieldtype` varchar(24) NOT NULL DEFAULT '',
  `fieldhtmltype` varchar(24) NOT NULL DEFAULT '',
  `fieldhtmlproperty` text NOT NULL,
  `fieldvalues` text NOT NULL,
  `fielddefault` text NOT NULL,
  `fieldlock` tinyint(1) NOT NULL DEFAULT '0',
  `fieldindextype` varchar(12) NOT NULL DEFAULT '',
  `fieldforbidactors` tinytext NOT NULL,
  `fieldsystem` int(1) NOT NULL DEFAULT '0',
  `fieldpublic` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `field` (`field`,`fieldlock`),
  KEY `fieldmoduleid` (`fieldmoduleid`),
  KEY `fieldsequence` (`fieldsequence`),
  KEY `fieldsystem` (`fieldsystem`),
  KEY `fieldpublic` (`fieldpublic`),
  KEY `fieldappid` (`fieldappid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `x2_module_fields`
--

INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES
(1, 'user', 1, 0, 'manager_apps', '可管理模块', '120', '', 'varchar', 'select', 'class=form-control\r\nstyle=width:30%', '用户=user\r\n内容=content', '', 0, '0', ',-1,', 0, 0),
(2, 'user', 1, 0, 'photo', '用户肖像', '120', '', 'varchar', 'thumb', '', '', '', 0, '0', ',,', 0, 1),
(3, 'user', 1, 0, 'usertruename', '真实姓名', '24', '', 'varchar', 'text', 'class=form-control\r\nstyle=width:25%', '', '', 0, '0', ',,', 0, 1),
(4, 'user', 3, 0, 'normal_favor', '爱好', '250', '', 'varchar', 'checkboxarray', '', '吃=吃\r\n喝=喝\r\n拉=拉\r\n撒=撒\r\n睡=睡', '吃', 0, '0', ',,', 0, 0),
(5, 'user', 2, 0, 'teacher_subjects', '可管理科目', '', '', 'text', 'checkboxarray', '', '请修改科目名称=1', '', 0, '0', ',-1,', 0, 0),
(6, 'content', 7, 0, 'cizhuan_guige', '规格', '60', '', 'varchar', 'radio', '', '90*90=1\r\n60*60=2', '', 0, '', ',,', 1, 0),
(7, 'content', 7, 0, 'cizhuan_brand', '品牌', '24', '', 'varchar', 'checkboxarray', '', '阿里=阿里\r\n阿里1=阿里1', '', 0, '', ',,', 0, 0),
(8, 'content', 7, 0, 'cizhuan_thumb', '缩略图', '120', '', 'varchar', 'thumb', '', '', '', 0, '', ',,', 0, 0),
(9, 'course', 6, 0, 'course_files', '视频文件', '240', '', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.mp4\r\nfilesize=120 MB', '', '', 0, '', ',,', 0, 0),
(10, 'content', 4, 0, 'tester', '测试字段', '', '', 'text', 'picture', 'class=form-control', '', '', 0, '', ',,', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_openbasics`
--

CREATE TABLE IF NOT EXISTS `x2_openbasics` (
  `obid` int(11) NOT NULL AUTO_INCREMENT,
  `obuserid` int(11) NOT NULL DEFAULT '0',
  `obbasicid` int(11) NOT NULL DEFAULT '0',
  `obtime` int(11) NOT NULL DEFAULT '0',
  `obendtime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`obid`),
  KEY `oluserid` (`obuserid`,`obbasicid`,`obtime`,`obendtime`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_openbasics`
--

INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES
(1, 1, 1, 1478758076, 1481350076),
(2, 2, 1, 1478758091, 1481350091),
(3, 3, 1, 1478758104, 1481350104);

-- --------------------------------------------------------

--
-- 表的结构 `x2_orders`
--

CREATE TABLE IF NOT EXISTS `x2_orders` (
  `ordersn` varchar(15) NOT NULL,
  `ordertitle` varchar(240) NOT NULL,
  `orderdescribe` text NOT NULL,
  `orderitems` text NOT NULL,
  `orderprice` decimal(10,2) NOT NULL,
  `orderuserid` int(11) NOT NULL,
  `orderuserinfo` text NOT NULL,
  `orderstatus` int(2) NOT NULL,
  `orderfullprice` decimal(10,2) NOT NULL,
  `ordercreatetime` int(11) NOT NULL,
  `orderpaytime` int(11) NOT NULL,
  `orderouttime` int(11) NOT NULL,
  `orderrecivetime` int(11) NOT NULL,
  `orderfaq` text NOT NULL,
  `orderpost` text NOT NULL,
  PRIMARY KEY (`ordersn`),
  KEY `orderprice` (`orderprice`,`ordercreatetime`,`orderpaytime`),
  KEY `orderuserid` (`orderuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_poscontent`
--

CREATE TABLE IF NOT EXISTS `x2_poscontent` (
  `pcid` int(11) NOT NULL AUTO_INCREMENT,
  `pcposid` int(11) NOT NULL DEFAULT '0',
  `pccontentid` int(11) NOT NULL DEFAULT '0',
  `pcthumb` varchar(120) NOT NULL DEFAULT '',
  `pcsequence` int(11) NOT NULL DEFAULT '0',
  `pctitle` varchar(240) NOT NULL DEFAULT '',
  `pctime` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pcid`),
  KEY `pcposid` (`pcposid`,`pccontentid`,`pcsequence`),
  KEY `pctime` (`pctime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_position`
--

CREATE TABLE IF NOT EXISTS `x2_position` (
  `posid` int(11) NOT NULL AUTO_INCREMENT,
  `posname` varchar(120) NOT NULL DEFAULT '',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_product`
--

CREATE TABLE IF NOT EXISTS `x2_product` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
  `producttype` varchar(24) NOT NULL DEFAULT '',
  `productpartnerid` int(11) NOT NULL DEFAULT '0',
  `productname` varchar(240) NOT NULL DEFAULT '',
  `productcode` int(11) NOT NULL DEFAULT '0',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productdescribe` text NOT NULL,
  `productlesson` varchar(40) NOT NULL DEFAULT '',
  `producttry` varchar(240) NOT NULL DEFAULT '',
  PRIMARY KEY (`productid`),
  KEY `partnercode` (`productcode`),
  KEY `productpartnerid` (`productpartnerid`),
  KEY `producttype` (`producttype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_quest2knows`
--

CREATE TABLE IF NOT EXISTS `x2_quest2knows` (
  `qkid` int(11) NOT NULL AUTO_INCREMENT,
  `qkquestionid` int(11) NOT NULL DEFAULT '0',
  `qkknowsid` int(11) NOT NULL DEFAULT '0',
  `qktype` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qkid`),
  KEY `qkquestionid` (`qkquestionid`,`qkknowsid`),
  KEY `qktype` (`qktype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- 转存表中的数据 `x2_quest2knows`
--

INSERT INTO `x2_quest2knows` (`qkid`, `qkquestionid`, `qkknowsid`, `qktype`) VALUES
(1, 1, 1, 0),
(2, 2, 1, 0),
(3, 3, 1, 0),
(4, 4, 1, 0),
(5, 5, 1, 0),
(6, 6, 1, 0),
(7, 7, 1, 0),
(8, 8, 1, 0),
(9, 9, 1, 0),
(10, 10, 1, 0),
(11, 11, 1, 0),
(12, 12, 1, 0),
(13, 13, 1, 0),
(14, 14, 1, 0),
(15, 15, 1, 0),
(16, 16, 1, 0),
(17, 17, 1, 0),
(18, 18, 1, 0),
(19, 19, 1, 0),
(20, 20, 1, 0),
(21, 21, 1, 0),
(22, 22, 1, 0),
(23, 23, 1, 0),
(24, 24, 1, 0),
(25, 25, 1, 0),
(26, 26, 1, 0),
(27, 27, 1, 0),
(28, 28, 1, 0),
(29, 29, 1, 0),
(30, 30, 1, 0),
(31, 31, 1, 0),
(32, 32, 1, 0),
(33, 33, 1, 0),
(34, 34, 1, 0),
(35, 35, 1, 0),
(36, 36, 1, 0),
(37, 37, 1, 0),
(38, 38, 1, 0),
(39, 39, 1, 0),
(40, 40, 1, 0),
(41, 41, 1, 0),
(42, 42, 1, 0),
(43, 43, 1, 0),
(44, 44, 1, 0),
(45, 45, 1, 0),
(46, 46, 1, 0),
(47, 47, 1, 0),
(48, 48, 1, 0),
(49, 49, 1, 0),
(50, 50, 1, 0),
(51, 51, 1, 0),
(52, 52, 1, 0),
(53, 53, 1, 0),
(54, 54, 1, 0),
(55, 55, 1, 0),
(56, 56, 1, 0),
(57, 57, 1, 0),
(58, 58, 1, 0),
(59, 59, 1, 0),
(60, 60, 1, 0),
(61, 61, 1, 0),
(62, 62, 1, 0),
(63, 63, 1, 0),
(64, 64, 1, 0),
(65, 65, 1, 0),
(66, 66, 1, 0),
(67, 67, 1, 0),
(68, 68, 1, 0),
(69, 69, 1, 0),
(70, 70, 1, 0),
(71, 71, 1, 0),
(72, 72, 1, 0),
(73, 73, 1, 0),
(74, 74, 1, 0),
(75, 75, 1, 0),
(76, 76, 1, 0),
(77, 77, 1, 0),
(78, 78, 1, 0),
(79, 79, 1, 0),
(80, 80, 1, 0),
(81, 81, 1, 0),
(82, 82, 1, 0),
(83, 83, 1, 0),
(84, 84, 1, 0),
(85, 85, 1, 0),
(86, 86, 1, 0),
(87, 87, 1, 0),
(88, 88, 1, 0),
(89, 89, 1, 0),
(90, 90, 1, 0),
(91, 91, 1, 0),
(92, 92, 1, 0),
(93, 93, 1, 0),
(94, 94, 1, 0),
(95, 95, 1, 0),
(96, 96, 1, 0),
(97, 97, 1, 0),
(98, 98, 1, 0),
(99, 99, 1, 0),
(100, 100, 1, 0),
(101, 101, 1, 0),
(102, 102, 1, 0),
(103, 103, 1, 0),
(104, 104, 1, 0),
(105, 105, 1, 0),
(106, 106, 1, 0),
(107, 107, 1, 0),
(108, 108, 1, 0),
(109, 109, 1, 0),
(110, 110, 1, 0),
(111, 111, 1, 0),
(112, 112, 1, 0),
(113, 113, 1, 0),
(114, 114, 1, 0),
(115, 115, 1, 0),
(116, 116, 1, 0),
(117, 117, 1, 0),
(118, 118, 1, 0),
(119, 119, 1, 0),
(120, 120, 1, 0),
(121, 121, 1, 0),
(122, 122, 1, 0),
(123, 123, 1, 0),
(124, 124, 1, 0),
(125, 125, 1, 0),
(126, 126, 1, 0),
(127, 127, 1, 0),
(128, 128, 1, 0),
(129, 129, 1, 0),
(130, 130, 1, 0),
(131, 131, 1, 0),
(132, 132, 1, 0),
(133, 133, 1, 0),
(134, 134, 1, 0),
(135, 135, 1, 0),
(136, 136, 1, 0),
(137, 137, 1, 0),
(138, 138, 1, 0),
(139, 139, 1, 0),
(140, 140, 1, 0),
(141, 141, 1, 0),
(142, 142, 1, 0),
(143, 143, 1, 0),
(144, 144, 1, 0),
(145, 145, 1, 0),
(146, 146, 1, 0),
(147, 147, 1, 0),
(148, 148, 1, 0),
(149, 149, 1, 0),
(150, 150, 1, 0),
(151, 151, 1, 0),
(152, 152, 1, 0),
(153, 153, 1, 0),
(154, 154, 1, 0),
(155, 155, 1, 0),
(156, 156, 1, 0),
(157, 157, 1, 0),
(158, 158, 1, 0),
(159, 159, 1, 0),
(160, 160, 1, 0),
(161, 161, 1, 0),
(162, 162, 1, 0),
(163, 163, 1, 0),
(164, 164, 1, 0),
(165, 165, 1, 0),
(166, 166, 1, 0),
(167, 167, 1, 0),
(168, 168, 1, 0),
(169, 169, 1, 0),
(170, 170, 1, 0),
(171, 171, 1, 0),
(172, 172, 1, 0),
(173, 173, 1, 0),
(174, 174, 1, 0),
(175, 175, 1, 0),
(176, 176, 1, 0),
(177, 177, 1, 0),
(178, 178, 1, 0),
(179, 179, 1, 0),
(180, 180, 1, 0),
(181, 181, 1, 0),
(182, 182, 1, 0),
(183, 183, 1, 0),
(184, 184, 1, 0),
(185, 185, 1, 0),
(186, 186, 1, 0),
(187, 187, 1, 0),
(188, 188, 1, 0),
(189, 189, 1, 0),
(190, 190, 1, 0),
(191, 191, 1, 0),
(192, 192, 1, 0),
(193, 193, 1, 0),
(194, 194, 1, 0),
(195, 195, 1, 0),
(196, 196, 1, 0),
(197, 197, 1, 0),
(198, 198, 1, 0),
(199, 199, 1, 0),
(200, 200, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questionrows`
--

CREATE TABLE IF NOT EXISTS `x2_questionrows` (
  `qrid` int(11) NOT NULL AUTO_INCREMENT,
  `qrtype` tinyint(4) NOT NULL DEFAULT '2',
  `qrquestion` mediumtext NOT NULL,
  `qrknowsid` tinytext NOT NULL,
  `qrlevel` int(1) NOT NULL DEFAULT '0',
  `qrnumber` int(4) NOT NULL DEFAULT '0',
  `qruserid` int(11) NOT NULL DEFAULT '0',
  `qrusername` varchar(120) NOT NULL DEFAULT '',
  `qrlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `qrtime` int(11) NOT NULL DEFAULT '0',
  `qrstatus` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`qrid`),
  KEY `qrlevel` (`qrlevel`,`qrnumber`),
  KEY `qruserid` (`qruserid`),
  KEY `qrtime` (`qrtime`),
  KEY `qrstatus` (`qrstatus`),
  KEY `qrtype` (`qrtype`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_questions`
--

CREATE TABLE IF NOT EXISTS `x2_questions` (
  `questionid` int(11) NOT NULL AUTO_INCREMENT,
  `questiontype` int(3) NOT NULL DEFAULT '0',
  `question` text NOT NULL,
  `questionuserid` int(11) NOT NULL DEFAULT '0',
  `questionusername` varchar(120) NOT NULL DEFAULT '',
  `questionlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `questionselect` text NOT NULL,
  `questionselectnumber` tinyint(11) NOT NULL DEFAULT '0',
  `questionanswer` text NOT NULL,
  `questiondescribe` text NOT NULL,
  `questionknowsid` text NOT NULL,
  `questioncreatetime` int(11) NOT NULL DEFAULT '0',
  `questionstatus` int(1) NOT NULL DEFAULT '1',
  `questionhtml` text NOT NULL,
  `questionparent` int(11) NOT NULL DEFAULT '0',
  `questionsequence` int(3) NOT NULL DEFAULT '0',
  `questionlevel` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questionid`),
  KEY `questioncreatetime` (`questioncreatetime`),
  KEY `questiontype` (`questiontype`),
  KEY `questionstatus` (`questionstatus`),
  KEY `questionuserid` (`questionuserid`),
  KEY `questionparent` (`questionparent`,`questionsequence`),
  KEY `questionlevel` (`questionlevel`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=201 ;

--
-- 转存表中的数据 `x2_questions`
--

INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(1, 1, '()安全阀可用于移动式的压力容器上。', 0, '', '', 'A、重锤杠杆式  B、弹簧式  C、脉冲式', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(2, 1, '()安全阀由主阀和辅阀构成,通过辅阀的脉冲作用带动主阀动作。', 0, '', '', 'A、重锤杠杆式 B、弹簧式 C、脉冲式', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(3, 1, '()安全阀主要用于介质为有毒、易燃气体的容器。', 0, '', '', 'A、开放式 B、半封闭式 C、全封闭式', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(4, 1, '()安全技术措施有消除危险源、限制能量或危险物质、隔离等。', 0, '', '', 'A、减少事故损失的 B、电气C、防止事故发生的', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(5, 1, '()不可能发生爆炸。', 0, '', '', 'A、生石灰  B、面粉  C、铝粉', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(6, 1, '()不属于与劳动过程有关的职业性危害因素。', 0, '', '', 'A、劳动组织不合理  B、操作体位不良   \nC、照明不良', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(7, 1, '()对本岗位的安全生产负直接责任。', 0, '', '', 'A、班组长  B、岗位工人  C、基层技术人员', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(8, 1, '()告诉我们,构成管理系统的各要素是运动和发展的,它们相互联系又相互制约。在生产经营单位建立、健全安全生产责任制是对这一原则的应用。', 0, '', '', 'A、动力相关性原则 B、动力原则 C、人本原理', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(9, 1, '()根据演练事故情景设计以及具体分工,在演练现场实施过程中展开演练评估工作,记录演练中发现的问题或不足,收集演练评估需要的各种信息和资料。', 0, '', '', 'A、演练模拟人员                       B、演练评估人员                       C、演练观摩人员', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(10, 1, '()即根据演练工作需要,采取必要安全防护措施,确保参演、观摩等人员以及生产运行系统安全。', 0, '', '', 'A、演练工作安全保障 B、安全防护措施  C、系统安全', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(11, 1, '()就是根据事故情景,召开新闻发布会或事故情况通报会,通报事故有关情况。', 0, '', '', 'A、新闻发布  B、社会沟通  C、信息发布', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(12, 1, '()就是生产经营单位的生产管理者、经营者,为实现安全生产目标,按照一定的安全管理原则,科学地组织、指挥和协调全体员工进行安全生产的活动。', 0, '', '', 'A、安全生产 B、安全管理 C、安全生产管理', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(13, 1, '()灭火器不适于扑灭电气火灾。', 0, '', '', 'A、二氧化碳  B、干粉  C、泡沫', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(14, 1, '()认为,推动安全管理活动的基本力量是人,必须有能够激发人的工作能力的动力。', 0, '', '', 'A、激励原则  B、动力原则  C、能级原则', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(15, 1, '()是高温物体不通过接触或流动,直接将热量向四周散发给低温物体的过程。', 0, '', '', 'A、传导   B、对流  C、辐射', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(16, 1, '()是事故隐患排查治理和防控的责任主体。', 0, '', '', 'A、安全监管监察部门   B、生产经营单位\nC、政府有关部门', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(17, 1, '()是通过有计划、有组织、有目的的形式来实现的。', 0, '', '', 'A、定期安全生产检查  B、季节性及节假日前后安全生产检查  C、专业(项)安全生产检查', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(18, 1, '()是应急演练工作方案具体操作实施的文件,帮助参演人员全面掌握演练进程和内容。', 0, '', '', 'A、演练脚本 B、演练手册 C、演练详细方案', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(19, 1, '()是运用工程技术手段消除物的不安全因素,实现生产工艺和机械设备等生产条件本质安全的措施。', 0, '', '', 'A、安全技术措施  B、安全管理方案  C、安全保障方案', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(20, 1, '()是指危害和整改难度较大,应当全部或局部停产停业,并经过一定时间整改治理方能排除的隐患,或者因外界因素影响致使生产经营单位自身难以排除的隐患。', 0, '', '', 'A、重大危险源  B、一般事故隐患  C、重大事故隐患', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(21, 1, '()是指液体或气体依靠其本身的流动来达到热量传递的过程。', 0, '', '', 'A、传导  B、对流  C、辐射', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(22, 1, '()适用于发生粉尘事故后,在事故调查和处理过程中的监测。', 0, '', '', 'A、评价监测  B、日常监测  C、事故性监测', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(23, 1, '()适用于作业现场粉尘动态监测。', 0, '', '', 'A、评价监测  B、日常监测  C、监督监测', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(24, 1, '()选择(或模拟)生产经营活动中的设备、设施、装置或场所,设定事故情景,依据应急预案而模拟开展的演练活动。', 0, '', '', 'A、综合演练 B、单项演练 C、现场演练', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(25, 1, '()要针对本企业事故特点加大应急救援装备及物资储备力度,尤其是重点工艺流程中应急物料、应急器材、应急装备和物资的准备。', 0, '', '', 'A、国家   B、社会   C、企业', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(26, 1, '()应当包括危险性分析、可能发生的事故特征、应急组织机构与职责、预防措施、应急处置程序和应急保障等内容。', 0, '', '', 'A、综合应急预案 B、专项应急预案 C、现场处置方案', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(27, 1, '()应当采取多种形式开展应急预案的宣传教育,普及生产安全事故预防、避险、自救和互救知识,提高从业人员安全意识和应急处置技能。', 0, '', '', 'A、生产经营单位\nB、各级安全生产监督管理部门\nC、事业单位', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(28, 1, '()应当为劳动者创造符合国家职业卫生标准和卫生要求的工作环境和条件,并采取措施保障劳动者获得职业卫生保护。', 0, '', '', 'A、各级工会组织 B、用人单位\nC、企业、科研单位、政府机关', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(29, 1, '()针对应急预案中多项或全部应急响应功能开展的演练活动。', 0, '', '', 'A、综合演练  B、单项演练  C、现场演练', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(30, 1, '()针对应急预案中某项应急响应功能开展的演练活动。', 0, '', '', 'A、综合演练 B、单项演练 C、现场演练', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(31, 1, '()属于化学性危害因素。', 0, '', '', 'A、工业毒物  B、振动  C、高温', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(32, 1, '()属于物理爆炸。', 0, '', '', 'A、锅炉爆炸  B、面粉爆炸  C、乙炔爆炸', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(33, 1, '()属于物理性危害因素。', 0, '', '', 'A、生产粉尘  B、噪声  C、真菌', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(34, 1, '()属于易燃气体。', 0, '', '', 'A、二氧化碳  B、乙炔  C、氧气', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(35, 1, '()作为防止事故发生和减少事故损失的安全技术,是发现系统故障和异常的重要手段。', 0, '', '', 'A、安全监控系统  B、安全管理系统  C、安全技术措施', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(36, 1, '《安全生产法》规定,生产经营单位采用新工艺、新技术、新材料或者使用新设备,必须了解、掌握其()特性,采取有效的安全防护措施,并对从业人员进行专门的安全生产教育和培训。', 0, '', '', 'A、商品 B、材料 C、安全技术', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(37, 1, '《安全生产法》规定,生产经营单位的安全生产管理人员应当根据本单位的生产经营特点,对安全生产状况进行经常性检查;对检查中发现的(),应当立即处理;不能处理的,应当及时报告本单位有关负责人,有关负责人应当及时处理。检查及处理情况应当记录在案。', 0, '', '', 'A、质量问题  B、安全问题  C、工作问题', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(38, 1, '《安全生产法》规定,生产经营单位的特种作业人员必须按照国家有关规定经专门的安全作业培训,取得(),方可上岗作业。', 0, '', '', 'A、工作证  B、毕业证书  C、相应资格', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(39, 1, '《安全生产法》规定,生产经营单位对()应当登记建档,进行定期检测、评估、监控,并制定应急预案,告知从业人员和相关人员在紧急情况下应当采取的应急措施。', 0, '', '', 'A、设备  B、重大危险源  C、危险化学品', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(40, 1, '《安全生产法》规定,生产经营单位用于生产、储存危险物品的建设项目竣工投入生产或者使用前,()未经验收合格的,责令停止建设或者停产停业整顿,限期改正;逾期未改正的,处五十万元以上一百万元以下的罚款;构成犯罪的,依照刑法有关规定追究刑事责任。', 0, '', '', 'A、生产设备  B、储存设施  C、安全设施', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(41, 1, '《安全生产法》规定,危险物品的生产、经营、储存单位以及矿山、金属冶炼、城市轨道交通运营、建筑施工单位应当建立();生产经营规模较小,可以不建立的,应当指定兼职的应急救援人员。', 0, '', '', 'A、应急救援组织  B、安全组织  C、工作组织', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(42, 1, '《安全生产法》规定,危险物品的生产、经营、储存单位以及矿山、金属冶炼、建筑施工、道路运输单位的主要负责人和安全生产管理人员未按照规定经()合格的,责令限期改正,可以处五万元以下的罚款;逾期未改正的,责令停产停业整顿,并处五万元以上十万元以下的罚款,对其直接负责的主管人员和其他直接责任人处一万元以上的罚款。', 0, '', '', 'A、培训  B、考核  C、审查', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(43, 1, '《安全生产法》规定了生产经营单位的主要负责人对本单位安全生产工作负有()条的职责。', 0, '', '', 'A、5   B、6   C、7', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(44, 1, '《安全生产许可证条例》规定,安全生产许可证有效期满需要延期的,企业应当于期满前()个月向原安全生产许可证颁发管理机关办理延期手续。', 0, '', '', 'A、1         B、2        C、3', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(45, 1, '《安全生产许可证条例》规定,企业在安全生产许可证有效期内,严格遵守有关安全生产的法律法规,未发生死亡事故的,安全生产许可证有效期届满时,经原安全生产许可证颁发管理机关同意,不再审查,安全生产许可证有效期延期()年。', 0, '', '', 'A、1   B、2   C、3', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(46, 1, '《常用危险化学品分类及标志》按易燃液体闪点的高低分为()易燃液体。', 0, '', '', 'A、二项 B、三项 C、四项', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(47, 1, '《常用危险化学品分类及标志》定义腐蚀品系指能灼伤人体组织并对金属等物品造成损坏的固体或液体的化学品,腐蚀品与皮肤接触在()h内出现可见坏死现象。', 0, '', '', 'A、4     B、8      C、24', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(48, 1, '《常用危险化学品分类及标志》规定:易燃液体的闭杯试验闪点应等于或低于()℃。', 0, '', '', 'A、25  B、40  C、61', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(49, 1, '《常用危险化学品分类及标志》中根据压缩气体和液化气体的理化性质,将压缩气体和液化气体分为三项即易燃气体、不燃气体、()', 0, '', '', 'A、有毒气体 B、助燃气体 C、窒息气体', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(50, 1, '《非药品类易制毒化学品的分类和品种目录》中,非药品类易制毒化学品分为()类。', 0, '', '', 'A、2    B、3      C、4', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(51, 1, '《非药品类易制毒化学品生产、经营许可办法》规定,国家对非药品类易制毒化学品的生产、经营实行()制度。', 0, '', '', 'A、申请  B、许可  C、备案', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(52, 1, '《工作场所安全使用化学品规定》规定,盛装危险化学品的容器在未净化处理前,不得更换()。', 0, '', '', 'A、标签  B、原安全标签  C、包装', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(53, 1, '《工作场所安全使用化学品规定》规定,使用单位对工作场所使用的危险化学品产生的危害应定期进行检测和评估,对检测和评估结果应建立档案。作业人员接触的危险化学品()不得高于国家规定的标准暂没有规定的,使用单位应在保证安全作业的情况下使用。', 0, '', '', 'A、毒性  B、有害性  C、浓度', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(54, 1, '《工作场所安全使用化学品规定》规定,使用单位在危险化学品工作场所应设有急救设施,并提供()的方法。', 0, '', '', 'A、应急处理  B、救护  C、灭火', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(55, 1, '《工作场所安全使用化学品规定》是为保障工作场所安全使用化学品,保护劳动者的(),根据《劳动法》和有关法规而制定的。', 0, '', '', 'A、安全与健康  B、权益  C、身体', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(56, 1, '《化学品安全标签编写规定》中规定标签必须包括()方面内容。', 0, '', '', 'A、 7     B、 8     C、 9', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(57, 1, '《火灾分类》(GB4968—2008)标准把火灾分为()类。', 0, '', '', 'A、 4     B、 5     C、 6', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(58, 1, '《气瓶安全监察规程》规定气瓶水压试验的压力为公称工作压力的()倍。', 0, '', '', 'A、 A、2   B、 A、3   C、 A、5', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(59, 1, '《全国人民代表大会常务委员会关于修改〈中华人民共和国安全生产法〉的决定》已由中华人民共和国第十二届全国人民代表大会常务委员会第十次会议于2014年8月31日通过,自2014年()起施行。', 0, '', '', 'A、10月1日   B、11月1日   C、12月1日', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(60, 1, '《生产安全事故报告和调查处理条例》规定,安全生产监督管理部门和负有安全生产监督管理职责的有关部门应当建立值班制度,并向社会公布值班电话,受理事故报告和()。', 0, '', '', 'A、咨询 B、上诉 C、举报', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(61, 1, '《生产安全事故报告和调查处理条例》规定,事故发生单位对事故发生负有责任的,应依法处罚,发生一般事故的,处()以下的罚款。', 0, '', '', 'A、5万元以上20万元以下  B、10万元以上20万元以下  C、15万元以上20万元以下', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(62, 1, '《生产安全事故报告和调查处理条例》规定,事故发生单位负责人接到事故报告后,应当()或者采取有效措施,组织抢救,防止事故扩大,减少人员伤亡和财产损失。', 0, '', '', 'A、立即拨打110                      B、立即启动事故相应应急预案         C、立即拨打119', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(63, 1, '《生产安全事故报告和调查处理条例》规定,事故发生地()根据事故的情况,对涉嫌犯罪的,应当依法立案侦查,采取强制措施和侦查措施。', 0, '', '', 'A、人民检察院\nB、安全监督管理局\nC、公安机关', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(64, 1, '《生产安全事故报告和调查处理条例》规定,事故发生后,如果情况紧急,事故现场有关人员可以直接向事故发生地县级以上人民政府()和负有安全生产监督管理职责的有关部门报告。', 0, '', '', 'A、企业生产主管部门 B、公安部门 C、安全生产监督管理部门', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(65, 1, '《生产安全事故报告和调查处理条例》规定,一般事故是指造成()死亡,或者10人以下重伤,或者1000万元以下直接经济损失的事故', 0, '', '', 'A、3人以上  B、3人以下  C、5人以下', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(66, 1, '《生产安全事故报告和调查处理条例》规定的罚款的行政处罚,由()决定。', 0, '', '', 'A、质监部门  B、公安部门  C、安监部门', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(67, 1, '《生产安全事故报告和调查处理条例》中,根据生产安全事故造成的人员伤亡或者直接经济损失,事故一般分为()等级。', 0, '', '', 'A、三   B、四   C、五', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(68, 1, '《生产安全事故报告和调查处理条例》中要求,事故报告应当及时、准确、()。', 0, '', '', 'A、完整 B、详细 C、全面', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(69, 1, '《生产安全事故应急演练指南》(AQ/T9007—2011)规定了生产安全事故应急演练(以下简称应急演练)的目的、原则、类型、内容和()。', 0, '', '', 'A、综合应急演练的组织\nB、综合应急演练的组织与实施\nC、专项应急演练的组织与实施', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(70, 1, '《使用有毒物品作业场所劳动保护条例》规定,按照有毒物品产生的职业中毒危害程度,有毒品分为一般有毒品和()。', 0, '', '', 'A、剧毒化学品 B、高毒物品 C、普通化学品', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(71, 1, '《使用有毒物品作业场所劳动保护条例》规定,从事使用高毒物品作业的用人单位应当设置淋浴间和更衣室,并设置清洗、存放或者处理从事使用高毒物品作业劳动者的工作服、工作鞋帽等物品的专用间。劳动者结束作业时,其使用的工作服、工作鞋帽等物品必须存放在()。', 0, '', '', 'A、高毒作业区域内\nB、一般毒物作业区域内\nC、黄色警示区域内', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(72, 1, '《使用有毒物品作业场所劳动保护条例》规定,从事使用有毒物品作业的用人单位,应当使用符合()的有毒物品。', 0, '', '', 'A、省级标准 B、国家标准C、企业标准', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(73, 1, '《使用有毒物品作业场所劳动保护条例》规定,存在高毒作业的建设项目的职业中毒危害防护设施设计,应当经()部门进行卫生审查;经审查,符合国家职业卫生标准和卫生要求的,方可施工。', 0, '', '', 'A、卫生行政 B、安监 C、公安', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(74, 1, '《使用有毒物品作业场所劳动保护条例》规定,劳动者应当学习和掌握相关职业卫生知识,遵守有关劳动保护的法律、法规和操作规程,正确使用和维护职业中毒危害防护设施及其用品;发现()时,应当及时报告。', 0, '', '', 'A、职业中毒事故隐患                   B、新装备\nC、新情况', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(75, 1, '《使用有毒物品作业场所劳动保护条例》规定,劳动者在已订立劳动合同期间因工作岗位或者工作内容变更,从事劳动合同中未告知的存在()的作业时,用人单位应当如实告知劳动者,并协商变更原劳动合同有关条款。', 0, '', '', 'A、危险  B、有毒  C、职业中毒危害', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(76, 1, '《使用有毒物品作业场所劳动保护条例》规定,劳动者职业健康检查和医学观察的费用,由()承担。', 0, '', '', 'A、用人单位  B、个人  C、中介机构', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(77, 1, '《使用有毒物品作业场所劳动保护条例》规定,使用有毒物品作业场所应当设置警示标识、中文警示说明和()。', 0, '', '', 'A、黄色区域警示线\nB、红色区域警示线   C、黄色警示牌', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(78, 1, '《使用有毒物品作业场所劳动保护条例》规定,使用有毒物品作业的用人单位维护、检修存在高毒物品的生产装置,必须事先制订维护、检修方案,明确(),确保维护、检修人员的生命安全和身体健康', 0, '', '', 'A、安全措施   B、救护措施  \nC、职业中毒危害防护措施', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(79, 1, '《使用有毒物品作业场所劳动保护条例》规定,使用有毒物品作业的用人单位应当对从事使用有毒物品作业的劳动者进行定期()。', 0, '', '', 'A、职业健康检查  B、培训  C、身体检查', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(80, 1, '《使用有毒物品作业场所劳动保护条例》规定,使用有毒物品作业的用人单位应当为从事使用有毒物品作业的劳动者提供符合国家职业卫生标准的(),并确保劳动者正确使用。', 0, '', '', 'A、设备 B、防护用品 C、工具', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(81, 1, '《使用有毒物品作业场所劳动保护条例》规定,使用有毒物品作业的用人单位有关()应当熟悉有关职业病防治的法律、法规以及确保劳动者安全使用有毒物品作业的知识。', 0, '', '', 'A、管理人员  B、业务员  C、办事员', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(82, 1, '《使用有毒物品作业场所劳动保护条例》规定,用人单位变更名称、法定代表人或者负责人的,应当向原受理申报的()部门备案。', 0, '', '', 'A、卫生行政  B、安监  C、质检', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(83, 1, '《使用有毒物品作业场所劳动保护条例》规定,用人单位发生分立、合并、解散、破产等情形的,应当对从事使用有毒物品作业的劳动者进行(),并按照国家有关规定妥善安置职业病病人。', 0, '', '', 'A、健康检查 B、培训 C、登记', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(84, 1, '《使用有毒物品作业场所劳动保护条例》规定,用人单位应当按照规定对从事使用高毒物品作业的劳动者()。', 0, '', '', 'A、进行调离   B、妥善安置\nC、进行岗位轮换', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(85, 1, '《使用有毒物品作业场所劳动保护条例》规定,用人单位应当依照本条例和其他有关法律、行政法规的规定,采取有效的防护措施,预防()的发生,依法参加工伤保险,保障劳动者的生命安全和身体健康', 0, '', '', 'A、事故  B、职业中毒事故  C、火灾', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(86, 1, '《危险化学品安全管理条例》规定,()不得在托运的普通货物中夹带危险化学品,不得将危险化学品匿报或者谎报为普通货物托运。', 0, '', '', 'A、托运人  B、运输单位  C、承运人', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(87, 1, '《危险化学品安全管理条例》规定,()负责废弃危险化学品处置的监督管理。', 0, '', '', 'A、安全生产监督管理部门   B、公安机关                          C、环境保护主管部门', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(88, 1, '《危险化学品安全管理条例》规定,()级以上人民政府应当建立危险化学品安全监督管理工作协调机制,支持、督促负有危险化学品安全监督管理职责的部门依法履行职责,协调、解决危险化学品安全监督管理工作中的重大问题。', 0, '', '', 'A、省   B、市   C、县', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(89, 1, '《危险化学品安全管理条例》规定,除运输工具加油站、加气站外,危险化学品生产装置或者储存数量构成()的危险化学品储存设施,与居民区、商业中心、公园、人口密集区域等场所、区域的距离必须符合国家标准或者国家有关规定。', 0, '', '', 'A、重大危险源  B、一定规模  C、环境危害', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(90, 1, '《危险化学品安全管理条例》规定,公安机关负责危险化学品的()管理。', 0, '', '', 'A、日常监督  B、综合监督  C、公共安全', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(91, 1, '《危险化学品安全管理条例》规定,国家对危险化学品生产实行()制度。', 0, '', '', 'A、审批  B、资质  C、许可', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(92, 1, '《危险化学品安全管理条例》规定,国家实行危险化学品()制度,为危险化学品安全管理以及危险化学品事故预防和应急救援提供技术、信息支持。', 0, '', '', 'A、登记  B、注册  C、备案', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(93, 1, '《危险化学品安全管理条例》规定,化学品安全技术说明书和化学品安全标签所载明的内容应当符合()的要求。', 0, '', '', 'A、国家标准   B、行业标准   C、企业标准', 3, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(94, 1, '《危险化学品安全管理条例》规定,剧毒化学品道路运输通行证管理办法由国务院()部门制定。', 0, '', '', 'A、安监  B、公安  C、质检', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(95, 1, '《危险化学品安全管理条例》规定,剧毒化学品以及储存数量构成重大危险源的其他危险化学品,应当在专用仓库内单独存放,并实行双人收发、()保管制度。', 0, '', '', 'A、一人  B、三人  C、双人', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(96, 1, '《危险化学品安全管理条例》规定,申请()道路运输通行证,托运人应当向县级人民政府公安机关提交拟运输的剧毒化学品品种、数量的说明、目的地、运输时间和运输路线的说明承运人取得危险货物道路运输许可等相关材料。', 0, '', '', 'A、化学品  B、危险化学品  C、剧毒化学品', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(97, 1, '《危险化学品安全管理条例》规定,生产、储存危险化学品的单位,应当在其作业场所设置()装置,并保证处于适用状态。', 0, '', '', 'A、通风防爆  B、通信报警  C、通风报警', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(98, 1, '《危险化学品安全管理条例》规定,生产、储存危险化学品的单位未在作业场所和安全设施、设备上设置明显的安全警示标志,或者未在作业场所设置()装置的,由安全生产监督管理部门责令改正,可以处5万元以下的罚款。', 0, '', '', 'A、摄录  B、通讯、报警  C、电器控制', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(99, 1, '《危险化学品安全管理条例》规定,施行《危险化学品安全管理条例》的目的是:为了加强()的安全管理,预防和减少危险化学品事故,保障人民群众生命财产安全,保护环境。', 0, '', '', 'A、化学危险品                       \nB、危险化学物品\nC、危险化学品', 3, 'C', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(100, 1, '《危险化学品安全管理条例》规定,通过道路运输剧毒化学品的,()应当向运输始发地或者目的地县级人民政府公安机关申请剧毒化学品道路运输通行证。', 0, '', '', 'A、承运人  B、托运人  C、运输单位', 3, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(101, 3, '材料的强度性能不是一成不变的,而是随着温度、加工方法、热处理工艺的改变而改变。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(102, 3, '采取湿式作业、密闭、通风、除尘系统是控制粉尘危害的有效措施。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(103, 3, '采样器内剩余的油样及洗刷采样器的油品必须倒回罐内。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(104, 3, '参加应急预案评审人员与所评审预案的生产经营单位有利害关系的,可以参加。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(105, 3, '参与演练单位不可对本单位的演练情况进行总结。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(106, 3, '测量绝缘电阻时,被测设备或线路可以停电、不放电。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(107, 3, '产生静电最常见的方式是接触-分离起电。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(108, 3, '产生职业病危害的用人单位工作场所还应当有配套的更衣间、洗浴间、孕妇休息间等卫生设施。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(109, 3, '常压的容器是不能贮存压缩气体和加压液体的。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(110, 3, '成年男性平均感知电流比女性大,因此男性比女性对电流更敏感。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(111, 3, '城镇燃气辅助的储存等建设项目,不适用《危险化学品建设项目安全许可实施办法》。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(112, 3, '持续改进是指生产经营单位应不断寻求方法持续改进自身职业安全健康管理体系及其职业安全健康绩效,从而不断消除、降低或控制各类职业安全健康危害和风险。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(113, 3, '充气保养适用于停炉时间不超过一个月的锅炉。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(114, 3, '抽加盲板允许带压进行。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(115, 3, '除矿山、建筑施工单位和易燃易爆物品、危险化学品、放射性物品等危险物品的生产、经营、储存、使用单位和中型规模以上的其他生产经营单位外,其他生产经营单位应当对本单位编制的应急预案进行论证。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(116, 3, '除有特殊需要外,有毒介质管道应采用焊接连接,不得采用法兰或螺纹连接。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(117, 3, '储存剧毒化学品、易制爆危险化学品的专用仓库,应当按照国家有关规定设置相应的技术防范设施。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(118, 3, '储存数量构成重大危险源的危险化学品储存设施的选址,应当避开地震活动断层和容易发生洪灾、地质灾害的区域。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(119, 3, '储存危险化学品的仓库必须配备有专业知识的技术人员,其仓库及场所应设专人管理,管理人员必须配备可靠的个人安全防护用品。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(120, 3, '储存危险化学品的单位应当对其危险化学品专用仓库的安全设施、设备不定期进行检测、检验。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(121, 3, '储存危险化学品的建筑必须安装通风设备,并注意设备的防护措施。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(122, 3, '储存危险化学品的建筑必须安装通风设备,并注意设备的防护措施。通排风系统可不考虑导除静电的接地装置。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(123, 3, '储存危险化学品的建筑物、区域内严禁吸烟和使用明火。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(124, 3, '储存危险化学品建筑采暖的热媒温度不应过高,可采用蒸汽采暖。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(125, 3, '储存危险化学品建筑物内不宜增设采暖设施。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(126, 3, '处理易凝固、易沉积的危险性物料时,设备和管道不需要有防止堵塞和便于疏通的措施。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(127, 3, '从保障安全和方便使用出发,消防用电设备配电线路应设置单独的供电回路。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(128, 3, '从事使用高毒物品作业的劳动者结束作业时,应将其使用的工作服、工作鞋帽等物品存放、穿戴到非高毒作业区域。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(129, 3, '从事使用高毒物品作业的用人单位,应当配备专职的或者兼职的职业卫生医师和护士;不具备配备专职的或者兼职的职业卫生医师和护士条件的,应当与依法取得资质认证的职业卫生技术服务机构签订合同,由其提供职业卫生服务。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(130, 3, '从事使用有毒物品作业的用人单位,应当符合有关法律、行政法规规定的设立条件,并依法办理有关手续,取得营业执照。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(131, 3, '从事使用有毒物品作业的用人单位,应当尽可能使用无毒物品;需要使用有毒物品的,应当优先选择使用低毒物品。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(132, 3, '从事职业健康检查的医疗卫生机构由市级卫生行政部门批准。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(133, 3, '从消除静电危害的角度考虑,在允许增湿的生产场所保持相对湿度在70%以上较为适宜。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(134, 3, '从业人员有权对本单位安全生产工作中存在的问题提出批评、检举、控告,但无权拒绝违章指挥和强令冒险作业。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(135, 3, '从业人员在工作过程中,应当服从管理,无权对本单位的安全生产工作提出建议。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(136, 3, '催化反应是在催化剂的作用下所进行的化学反应。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(137, 3, '催化剂对反应速度的影响很大,若有配比失误,多加了催化剂也有可能发生燃烧、爆炸危险。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(138, 3, '存放过放射性物品的地方,单位如果存放其他物品,单位应当指派专人负责进行彻底清洗。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(139, 3, '存在放射性同位素和使用放射性装置的作业场所,设置“当心电离辐射”警告标识和相应的指令标识。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(140, 3, '存在高毒作业的危险化学品建设项目的防护设施、设计,未经卫生行政部门审查同意,可进行施工操作。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(141, 3, '大中型危险化学品仓库应选址在远离市区和居民区的当地主导风向的上风方向和河流下游的区域。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(142, 3, '袋式除尘是目前控制微细粒子最有效的除尘设备。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(143, 3, '单位或者个人违反《中华人民共和国突发事件应对法》,不服从所在地人民政府及其有关部门发布的决定、命令或者不配合其依法采取的措施,构成违反治安管理行为的,由公安机关依法给予处罚。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1);
INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(144, 3, '单位要根据需要,没有必要引进、采用先进适用的应急救援技术装备。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(145, 3, '弹簧式安全阀结构轻便紧凑,灵敏度也较高,安装位置不受限制,而且因为对振动的敏感性小,所以可用于移动式的压力容器上。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(146, 3, '当不断加大向锅炉进水及采取其他措施,但水位仍继续下降时,必须紧急停炉。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(147, 3, '当发生危险化学品事故时,现场人员必须根据各自企业制定的事故预案采取积极有效的抑制措施,尽量减少事故蔓延,并向有关部门报告和报警。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(148, 3, '当氢气泄漏时,人员应迅速撤离泄漏污染区至上风处,并隔离直至气体散尽,切断火源。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(149, 3, '当有人在半封闭容器内进行电焊作业时,严禁向内部送氧。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(150, 3, '登记企业不得转让、冒用或者使用伪造的危险化学品登记证。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(151, 3, '电火花就是指事故火花。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(152, 3, '电机冒烟起火时要紧急停车。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(153, 3, '电伤伤害多见于机体的外部,往往在机体表面留下伤痕。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(154, 3, '电石(碳化钙)可以露天存放。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(155, 3, '电源中性点与零点的区别在于:当电源中性点与接地装置有着良好连接时,中性点便称零点。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(156, 3, '电阻率越大,越容易产生和积累静电,造成危害。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(157, 3, '动火分析的取样要有代表性,特殊动火的分析样品要保留到动火作业结束。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(158, 3, '毒物和粉尘的识别关键在于生产物料的确认和工艺过程的调查分析。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(159, 3, '毒物浓度超过国家职业卫生接触限值时,应及时整改复测。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(160, 3, '堆放各种爆炸品时,要求做到牢固、稳妥、整齐,防止倒垛,便于运输。爆炸品的包装箱宜直接在地面上放置,防止倒塌。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(161, 3, '对本单位应急装备、应急队伍等应急能力进行评估,并结合本单位实际,加强应急能力建设,是编制应急预案的关键。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(162, 3, '对产生严重职业病危害的作业岗位,应当在其醒目位置,设置警示标识和中文警示说明。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(163, 3, '对带有搅拌器等转动部件的设备,应在停机后切断电源,摘除保险或挂接地线,并在开关上挂“有人工作、严禁合闸”警示牌,必要时派专人监护。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(164, 3, '对放射工作场所和放射性同位素的运输、贮存,用人单位必须配置防护设备和报警装置,保证接触放射线的工作人员佩戴个人剂量计。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(165, 3, '对混合时产生静电的物料,应加入抗静电剂等。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(166, 3, '对架空线路等空中设备进行灭火时,人体位置与带电体之间仰角不应超过45°。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(167, 3, '对同一企业生产、进口的同一品种的危险化学品,可以进行重复登记。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(168, 3, '对已确定的重大危险源应在建筑设计、设备设计、环境设计采取有关的消防、安全措施。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(169, 3, '对用人单位违反《用人单位职业健康监护监督管理办法》的行为,任何单位和个人均有权向安全生产监督管理部门举报或者报告。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(170, 3, '对于放热反应,投料速度不能过快。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(171, 3, '对于火灾爆炸危险场所,必须采用防爆电气设备。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(172, 3, '对于加工、运输、储存可燃性气体的设备,在停车作业前,可不用进行置换操作。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(173, 3, '对于加工、运输、储存可燃性气体的设备检修,必须经置换分析合格后才能进行检修。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(174, 3, '对于某一种类的风险,生产经营单位应当根据存在的重大危险源和可能发生的事故类型,制定相应的专项应急预案。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(175, 3, '对于盛装过易燃液体的桶或罐或其他容器,动火补焊前,必须用水蒸气或水将其中的残余的液体及沉淀物彻底清洗干净并分析合格。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(176, 3, '对于实行安全生产许可的生产经营单位,未应急预案备案登记的,在申请安全生产许可证时,可以不提供相应的应急预案备案登记表,仅提供应急预案。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(177, 3, '对于危险性较大的重点设备、重点岗位和重点场所,生产经营单位应当制定重点工作岗位的现场处置方案。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(178, 3, '对于悬浮粉体和蒸气静电,任何抗静电添加剂都不起作用。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(179, 3, '对于一般氯化器应装设氯气缓冲罐,防止氯气断流或压力减小时形成倒流。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(180, 3, '对于油品(特别是甲、乙类液体),不准使用两种不同导电性质的检尺、测温和采样工具进行操作。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(181, 3, '对于在应急预案编制和管理工作中做出显著成绩的单位和人员,安全生产监督管理部门、生产经营单位可以给予表彰和奖励。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(182, 3, '对于正常人体而言,感知阈值平均为0.5mA,并与时间因素相关。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(183, 3, '对于重大事故隐患,生产经营单位除季报、年报外,应当及时向安全监管监察部门和有关部门报告。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(184, 3, '对在岗期间的职业健康检查,用人单位应当按照《职业健康监护技术规范》(GBZ188)等国家职业卫生标准的规定和要求,确定接触职业病危害的劳动者的检查项目和检查周期。需要复查的,应当根据复查要求增加相应的检查项目。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(185, 3, '对遭受或者可能遭受急性职业病危害的劳动者,用人单位应当及时组织救治、进行健康检查和医学观察,所需费用由劳动者承担。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(186, 3, '对重大危险源、有重大危险源的建筑物、构筑物及其周边环境开展隐患排查,对发现的安全隐患必须及时向省级以上安全生产监督管理部门报告,并采取措施消除。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(187, 3, '二级重大危险源应配备温度、压力、液位、流量、浓度等信息的不间断监测、显示和报警装置,并具备信息远传、连续记录等功能。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(188, 3, '发生简单分解爆炸的爆炸性物质,爆炸时所需要的能量是由爆炸物本身分解产生的,爆炸时一定伴随着燃烧现象。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(189, 3, '发生人员中毒、窒息的紧急情况,抢救人员必须佩戴隔离式防护面具进入受限空间,并至少有1人在受限空间外部负责联络工作。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(190, 3, '发生危险化学品火灾时,灭火人员应个人单独灭火。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(191, 3, '发生危险化学品事故,事故单位主要负责人应当立即按照本单位危险化学品应急预案组织救援,并向当地安全生产监督管理部门和环境保护、公安、卫生主管部门报告。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(192, 3, '发生有毒气体泄漏时,应顺风撤离。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(193, 3, '发证机关对取得资质的职业卫生技术服务机构应当及时公告,接受社会监督。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(194, 3, '凡确诊患有职业病的职工,可由企业决定是否享受国家规定的工伤保险待遇或职业病待遇。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(195, 3, '凡有爆炸和火灾危险的区域,操作人员必须穿防静电鞋或导电鞋、防静电工作服。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(196, 3, '凡与大地有可靠接触的金属导体,均可作为自然接地体。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(197, 3, '防火间距就是当一幢建筑物起火时,其它建筑物在热辐射的作用下,没有任何保护措施时,也不会起火的最小距离。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(198, 3, '防止反应釜的跑、冒、滴、漏,特别是防止有害、易燃介质的泄漏,选择合理的密封装置十分重要。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(199, 3, '废弃危险化学品的处置,依照有关环境保护的法律、行政法规和国家有关规定执行。', 0, '', '', 'A、正确  B、错误', 2, 'A', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1),
(200, 3, '分期建设、分期投入生产或者使用的建设项目,其配套的职业病防护设施应当在建设项目全部完成后进行验收。', 0, '', '', 'A、正确  B、错误', 2, 'B', '暂时没有', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:15:"基础知识点";}}', 1478759465, 1, '', 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questype`
--

CREATE TABLE IF NOT EXISTS `x2_questype` (
  `questid` int(11) NOT NULL AUTO_INCREMENT,
  `questype` varchar(60) NOT NULL DEFAULT '',
  `questsort` int(1) NOT NULL DEFAULT '0',
  `questchoice` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questid`),
  KEY `questchoice` (`questchoice`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `x2_questype`
--

INSERT INTO `x2_questype` (`questid`, `questype`, `questsort`, `questchoice`) VALUES
(1, '单选题', 0, 1),
(2, '多选题', 0, 2),
(3, '判断题', 0, 4),
(4, '问答题', 1, 1),
(5, '填空题', 0, 5),
(6, '定值填空题', 0, 5);

-- --------------------------------------------------------

--
-- 表的结构 `x2_record`
--

CREATE TABLE IF NOT EXISTS `x2_record` (
  `recordid` int(11) NOT NULL AUTO_INCREMENT,
  `recordquestionid` int(11) NOT NULL DEFAULT '0',
  `recorduserid` int(11) NOT NULL DEFAULT '0',
  `recordquestion` text NOT NULL,
  `recordtime` int(11) NOT NULL DEFAULT '0',
  `recordsubjectid` int(11) NOT NULL DEFAULT '0',
  `recordknowsid` int(11) NOT NULL DEFAULT '0',
  `recordquestype` int(11) NOT NULL DEFAULT '0',
  `recordexamid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`recordid`),
  KEY `recordquestionid` (`recordquestionid`,`recorduserid`,`recordtime`),
  KEY `recordsubjectid` (`recordsubjectid`,`recordknowsid`,`recordquestype`),
  KEY `recordexamid` (`recordexamid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_reply`
--

CREATE TABLE IF NOT EXISTS `x2_reply` (
  `replyid` int(11) NOT NULL AUTO_INCREMENT,
  `replyuserid` int(11) NOT NULL DEFAULT '0',
  `replyusername` varchar(120) NOT NULL DEFAULT '',
  `replycommentid` int(11) NOT NULL DEFAULT '0',
  `replytime` int(11) NOT NULL DEFAULT '0',
  `replycontent` text NOT NULL,
  PRIMARY KEY (`replyid`),
  KEY `replyuserid` (`replyuserid`,`replycommentid`,`replytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_sections`
--

CREATE TABLE IF NOT EXISTS `x2_sections` (
  `sectionid` int(11) NOT NULL AUTO_INCREMENT,
  `section` varchar(120) NOT NULL DEFAULT '',
  `sectionsubjectid` int(11) NOT NULL DEFAULT '0',
  `sectiondescribe` text NOT NULL,
  PRIMARY KEY (`sectionid`),
  KEY `section` (`section`),
  KEY `sectionsubjectid` (`sectionsubjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_sections`
--

INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`) VALUES
(1, '第一章', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_seminar`
--

CREATE TABLE IF NOT EXISTS `x2_seminar` (
  `seminarid` int(11) NOT NULL AUTO_INCREMENT,
  `seminartitle` varchar(240) NOT NULL DEFAULT '',
  `seminarcatid` int(11) NOT NULL DEFAULT '0',
  `seminarthumb` varchar(240) NOT NULL DEFAULT '',
  `seminargallery` tinytext NOT NULL,
  `seminartpl` varchar(120) NOT NULL DEFAULT '',
  `seminaruserid` int(11) NOT NULL DEFAULT '0',
  `seminarusername` varchar(120) NOT NULL DEFAULT '',
  `seminardescribe` text NOT NULL,
  `seminartime` int(11) NOT NULL DEFAULT '0',
  `seminarstatus` int(1) NOT NULL DEFAULT '0',
  `seminarsequence` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`seminarid`),
  KEY `seminarcatid` (`seminarcatid`),
  KEY `seminarstatus` (`seminarstatus`),
  KEY `seminartime` (`seminartime`),
  KEY `seminarsequence` (`seminarsequence`),
  KEY `seminaruserid` (`seminaruserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_session`
--

CREATE TABLE IF NOT EXISTS `x2_session` (
  `sessionid` varchar(32) NOT NULL,
  `sessionuserid` int(11) NOT NULL DEFAULT '0',
  `sessionusername` varchar(120) NOT NULL DEFAULT '',
  `sessionpassword` varchar(32) NOT NULL DEFAULT '',
  `sessionip` varchar(24) NOT NULL DEFAULT '',
  `sessionmanage` tinyint(1) DEFAULT '0',
  `sessiongroupid` tinyint(4) NOT NULL DEFAULT '0',
  `sessioncurrent` varchar(16) NOT NULL DEFAULT '',
  `sessionrandcode` char(6) NOT NULL DEFAULT '',
  `sessionlogintime` int(11) NOT NULL DEFAULT '0',
  `sessiontimelimit` int(11) NOT NULL DEFAULT '0',
  `sessionlasttime` int(11) NOT NULL DEFAULT '0',
  `sessionmaster` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sessionid`),
  KEY `sessionlasttime` (`sessionlasttime`),
  KEY `sessioncurrent` (`sessioncurrent`),
  KEY `sessionmaster` (`sessionmaster`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_special`
--

CREATE TABLE IF NOT EXISTS `x2_special` (
  `specialid` int(11) NOT NULL AUTO_INCREMENT,
  `contentspecialid` int(11) NOT NULL DEFAULT '0',
  `contentcatid` int(11) NOT NULL DEFAULT '0',
  `contentmoduleid` int(11) NOT NULL DEFAULT '0',
  `contentuserid` int(11) NOT NULL DEFAULT '0',
  `contentusername` varchar(48) NOT NULL DEFAULT '',
  `contenttitle` varchar(240) NOT NULL DEFAULT '',
  `contentthumb` varchar(120) DEFAULT '',
  `contentlink` varchar(240) NOT NULL DEFAULT '',
  `contentinputtime` int(11) NOT NULL DEFAULT '0',
  `contentmodifytime` int(11) NOT NULL DEFAULT '0',
  `contentsequence` int(4) NOT NULL DEFAULT '0',
  `contentdescribe` text NOT NULL,
  `contentinfo` text NOT NULL,
  `contentstatus` int(2) NOT NULL DEFAULT '0',
  `contenttemplate` varchar(120) NOT NULL DEFAULT '',
  `contenttext` mediumtext NOT NULL,
  PRIMARY KEY (`specialid`),
  KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  KEY `contentmoduleid` (`contentmoduleid`),
  KEY `contentcatid` (`contentcatid`),
  KEY `contentstatus` (`contentstatus`),
  KEY `contentspecialid` (`contentspecialid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_specialsort`
--

CREATE TABLE IF NOT EXISTS `x2_specialsort` (
  `sortid` int(11) NOT NULL AUTO_INCREMENT,
  `sorttitle` varchar(240) NOT NULL DEFAULT '',
  `sortthumb` varchar(120) NOT NULL DEFAULT '',
  `sorttpl` varchar(24) NOT NULL DEFAULT '',
  `sortseminarid` int(11) NOT NULL DEFAULT '0',
  `sortsequence` int(11) NOT NULL DEFAULT '0',
  `sortdescribe` text NOT NULL,
  PRIMARY KEY (`sortid`),
  KEY `sortseminarid` (`sortseminarid`,`sortsequence`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `x2_subject`
--

CREATE TABLE IF NOT EXISTS `x2_subject` (
  `subjectid` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `subjectsetting` text NOT NULL,
  PRIMARY KEY (`subjectid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `x2_subject`
--

INSERT INTO `x2_subject` (`subjectid`, `subject`, `subjectsetting`) VALUES
(1, '危化品安全', 'a:1:{s:9:"questypes";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user`
--

CREATE TABLE IF NOT EXISTS `x2_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL DEFAULT '',
  `useropenid` varchar(60) DEFAULT NULL,
  `useremail` varchar(60) NOT NULL DEFAULT '',
  `userpassword` char(32) NOT NULL DEFAULT '',
  `usercoin` int(11) NOT NULL DEFAULT '0',
  `userregip` varchar(24) NOT NULL DEFAULT '',
  `userregtime` int(11) NOT NULL DEFAULT '0',
  `userlogtime` int(11) NOT NULL DEFAULT '0',
  `usergroupid` tinyint(4) NOT NULL DEFAULT '0',
  `usermoduleid` int(11) NOT NULL DEFAULT '0',
  `manager_apps` varchar(120) NOT NULL DEFAULT '',
  `photo` varchar(120) NOT NULL DEFAULT '',
  `usertruename` varchar(24) NOT NULL DEFAULT '',
  `normal_favor` varchar(250) NOT NULL DEFAULT '',
  `teacher_subjects` text NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `useremail` (`useremail`),
  KEY `username` (`username`),
  KEY `module` (`usercoin`),
  KEY `userregtime` (`userregtime`),
  KEY `usermoduleid` (`usermoduleid`),
  KEY `userlogtime` (`userlogtime`),
  KEY `useropenid` (`useropenid`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_user`
--

INSERT INTO `x2_user` (`userid`, `username`, `useropenid`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `usergroupid`, `usermoduleid`, `manager_apps`, `photo`, `usertruename`, `normal_favor`, `teacher_subjects`) VALUES
(1, 'peadmin', NULL, 'peadmin@163.com', '244153a2599be7685c32d2281f57ae67', 0, '', 0, 0, 1, 1, 'user', 'files/attach/images/content/20161110/14787545844193.jpg', '系统管理员', '', 'a:1:{i:0;s:1:"1";}'),
(2, 'teacher', '', 'teacher@163.com', '96e79218965eb72c92a549dd5a330112', 0, '::1', 0, 0, 2, 0, '', 'files/attach/images/content/20161110/14787546111102.jpg', '教师', '', 'a:1:{i:0;s:1:"1";}'),
(3, 'student', '', 'guest@163.com', '96e79218965eb72c92a549dd5a330112', 0, '::1', 0, 0, 3, 0, '', 'files/attach/images/content/20161110/14787546602096.jpg', '学生', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user_group`
--

CREATE TABLE IF NOT EXISTS `x2_user_group` (
  `groupid` int(11) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `groupmoduleid` tinyint(4) NOT NULL DEFAULT '0',
  `groupdescribe` tinytext NOT NULL,
  `groupright` text NOT NULL,
  `groupmoduledefault` int(1) NOT NULL DEFAULT '0',
  `groupdefault` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `groupname` (`groupname`,`groupmoduleid`),
  KEY `groupmoduledefault` (`groupmoduledefault`),
  KEY `groupdefault` (`groupdefault`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `x2_user_group`
--

INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES
(1, '管理员', 1, '管理员', '', 1, 0),
(2, '教师', 2, '教师', '', 0, 0),
(3, '普通用户', 3, '普通用户', '', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
