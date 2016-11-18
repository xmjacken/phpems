-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-08-22 05:48:09
-- 服务器版本： 5.6.11
-- PHP Version: 5.5.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pe301`
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
  `appsetting` text NOT NULL
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
  `areaid` int(11) NOT NULL,
  `area` varchar(120) NOT NULL DEFAULT '',
  `areacode` int(12) NOT NULL DEFAULT '0',
  `arealevel` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

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
  `attid` int(11) NOT NULL,
  `attpath` varchar(240) NOT NULL DEFAULT '',
  `atttitle` varchar(240) NOT NULL DEFAULT '',
  `attext` varchar(12) NOT NULL DEFAULT '',
  `attinputtime` int(11) NOT NULL DEFAULT '0',
  `attsize` int(11) NOT NULL DEFAULT '0',
  `attmd5` varchar(32) NOT NULL DEFAULT '',
  `attuserid` int(11) NOT NULL DEFAULT '0',
  `attcntype` varchar(12) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_attach`
--

INSERT INTO `x2_attach` (`attid`, `attpath`, `atttitle`, `attext`, `attinputtime`, `attsize`, `attmd5`, `attuserid`, `attcntype`) VALUES
(1, 'files/attach/images/content/20160820/14717034075738.jpg', '14683905332673.jpg', 'jpg', 1471703407, 192702, '', 1, 'image/jpeg');

-- --------------------------------------------------------

--
-- 表的结构 `x2_attachtype`
--

CREATE TABLE IF NOT EXISTS `x2_attachtype` (
  `atid` int(11) NOT NULL,
  `attachtype` varchar(120) NOT NULL,
  `attachexts` tinytext NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

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
  `basicid` int(11) NOT NULL,
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
  `basicclosed` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_basic`
--

INSERT INTO `x2_basic` (`basicid`, `basic`, `basicareaid`, `basicsubjectid`, `basicsection`, `basicknows`, `basicexam`, `basicapi`, `basicdemo`, `basicthumb`, `basicprice`, `basicclosed`) VALUES
(1, '湖里纪检监察局纪律知识考场', 1, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:1:{i:1;s:1:"1";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:1:"1";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:1:"1";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";}', '', 1, 'files/attach/images/content/20160610/14655285765336.jpg', '', 0),
(3, 'tester', 19, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:1:{i:1;s:1:"1";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:4:"10,1";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:4:"10,1";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";}', '', 1, 'app/core/styles/images/noimage.gif', '', 0),
(4, 'tester2', 19, 1, 'a:1:{i:0;i:1;}', 'a:1:{i:1;a:1:{i:1;s:1:"1";}}', 'a:10:{s:5:"model";s:1:"0";s:14:"changesequence";s:1:"0";s:4:"auto";s:2:"10";s:12:"autotemplate";s:15:"exampaper_paper";s:4:"self";s:2:"10";s:12:"selftemplate";s:10:"exam_paper";s:8:"opentime";a:2:{s:5:"start";b:0;s:3:"end";b:0;}s:10:"selectrule";s:1:"0";s:10:"examnumber";s:1:"0";s:12:"notviewscore";s:1:"0";}', '', 1, 'app/core/styles/images/noimage.gif', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_block`
--

CREATE TABLE IF NOT EXISTS `x2_block` (
  `blockid` int(11) NOT NULL,
  `block` varchar(120) NOT NULL DEFAULT '',
  `blocktype` int(1) NOT NULL DEFAULT '0',
  `blockposition` varchar(120) NOT NULL DEFAULT '',
  `blockcontent` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

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
  `catid` int(11) NOT NULL,
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
  `catindex` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_category`
--

INSERT INTO `x2_category` (`catid`, `catapp`, `catlite`, `catname`, `catimg`, `caturl`, `catuseurl`, `catparent`, `catdes`, `cattpl`, `catmanager`, `catinmenu`, `catindex`) VALUES
(1, 'content', 0, '学习资料', 'files/attach/images/content/20160630/14672817197914.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 10),
(2, 'content', 0, '滚动图片', 'files/attach/images/content/20160630/14672817455479.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 3),
(3, 'content', 0, '考试信息', 'files/attach/images/content/20160630/14672817048286.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 1, 10),
(4, 'content', 0, '使用帮助', 'files/attach/images/content/20160630/14672817317018.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10),
(5, 'course', 0, '会计基础', 'files/attach/images/content/20160630/14672924624115.jpg', '', 0, 0, '', 'category_default', 'a:2:{s:8:"pubusers";s:0:"";s:9:"pubgroups";s:0:"";}', 0, 10);

-- --------------------------------------------------------

--
-- 表的结构 `x2_comment`
--

CREATE TABLE IF NOT EXISTS `x2_comment` (
  `cmtid` int(11) NOT NULL,
  `cmtapp` varchar(24) NOT NULL DEFAULT '',
  `cmtcontentid` int(11) NOT NULL DEFAULT '0',
  `cmtcontent` text NOT NULL,
  `cmttime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_config`
--

CREATE TABLE IF NOT EXISTS `x2_config` (
  `cfgapp` varchar(36) NOT NULL,
  `cfgsetting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_content`
--

CREATE TABLE IF NOT EXISTS `x2_content` (
  `contentid` int(11) NOT NULL,
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
  `tester` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_content`
--

INSERT INTO `x2_content` (`contentid`, `contentcatid`, `contentmoduleid`, `contentuserid`, `contentusername`, `contenttitle`, `contentthumb`, `contentlink`, `contentinputtime`, `contentmodifytime`, `contentsequence`, `contentdescribe`, `contentinfo`, `contentstatus`, `contenttemplate`, `contenttext`, `cizhuan_guige`, `cizhuan_brand`, `cizhuan_thumb`, `tester`) VALUES
(1, 1, 4, 54, 'peadmin', '中国共产党廉洁自律准则', 'files/attach/images/content/20160630/14672925993619.jpg', '', 1414298357, 1467292600, 0, '拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。', '', 0, 'content_default', '&lt;p&gt;拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。&lt;br /&gt;\r\n求职者在拉勾网注册之后，必须自己给心仪的企业H&lt;br /&gt;\r\nR发求职简历。即，在拉勾找工作，是求职者和企业方直接联系。这种模式，避免了第三者经手，也就减少了求职者个人信息外泄的风险。拉勾网承诺：除非网站认为出于法律的需要，绝不会向任何第三方公开会员的姓名、地址及电话等私人信息。也不会向任何第三方公开会员上传的简历信息。&lt;br /&gt;\r\n对求职者的尊重，还体现在拉勾网的许多功能设计上。&lt;br /&gt;\r\n拉勾网有一项功能，叫订阅职位。求职者可以设定自己理想的工作职位的条件，比如类型、薪水或者工作地点，拉勾网会定期将符合条件的职位信息发送给你，发送邮件的频率由求职者自己设定。&lt;br /&gt;\r\n拉勾正在建立庞大的互联网公司库，为企业做详细的背书，呈现公司的创始团队、公司产品、融资阶段及该公司的相关报道，用于支撑求职者快速了解企业，加速双方的相互碰撞。&lt;br /&gt;\r\n在拉勾，你能看到很多充满个性的招聘启事。很多公司为了吸引求职者，走起了卖萌路线。于是职位描述也突破传统随心所欲--&amp;ldquo;卖得了萌，耍得了二；玩得了小清新，咽得下重口味。聊得晕小商家，接得进大CP，文能写方案，武能红白啤。搞得定潘金莲，留得住小正太。君若如此，我必守候。&amp;rdquo;这样的职位描述，你在别处能看到么？该企业在发布职位之后的短短几分钟内便收到了求职者简历，并已有成功入职者。&lt;/p&gt;', '', '', '', '0'),
(5, 1, 4, 1, 'peadmin', '中国共产党纪律处分条例', 'files/attach/images/content/20160630/14672925897124.jpg', '', 1458744864, 1467292590, 0, '拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。', '', 0, 'content_default', '&lt;p&gt;拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。&lt;br /&gt;\r\n求职者在拉勾网注册之后，必须自己给心仪的企业H&lt;br /&gt;\r\nR发求职简历。即，在拉勾找工作，是求职者和企业方直接联系。这种模式，避免了第三者经手，也就减少了求职者个人信息外泄的风险。拉勾网承诺：除非网站认为出于法律的需要，绝不会向任何第三方公开会员的姓名、地址及电话等私人信息。也不会向任何第三方公开会员上传的简历信息。&lt;br /&gt;\r\n对求职者的尊重，还体现在拉勾网的许多功能设计上。&lt;br /&gt;\r\n拉勾网有一项功能，叫订阅职位。求职者可以设定自己理想的工作职位的条件，比如类型、薪水或者工作地点，拉勾网会定期将符合条件的职位信息发送给你，发送邮件的频率由求职者自己设定。&lt;br /&gt;\r\n拉勾正在建立庞大的互联网公司库，为企业做详细的背书，呈现公司的创始团队、公司产品、融资阶段及该公司的相关报道，用于支撑求职者快速了解企业，加速双方的相互碰撞。&lt;br /&gt;\r\n在拉勾，你能看到很多充满个性的招聘启事。很多公司为了吸引求职者，走起了卖萌路线。于是职位描述也突破传统随心所欲--&amp;ldquo;卖得了萌，耍得了二；玩得了小清新，咽得下重口味。聊得晕小商家，接得进大CP，文能写方案，武能红白啤。搞得定潘金莲，留得住小正太。君若如此，我必守候。&amp;rdquo;这样的职位描述，你在别处能看到么？该企业在发布职位之后的短短几分钟内便收到了求职者简历，并已有成功入职者。&lt;/p&gt;', '', '', '', '0'),
(6, 1, 4, 1, 'peadmin', '题库练习', 'files/attach/images/content/20160630/14672925818589.jpg', '', 1458744888, 1467292583, 0, '拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。', '', 0, 'content_default', '&lt;p&gt;拉勾网是唯一有投递实时反馈功能的求职招聘网站，以微信服务号@拉勾网为服务平台，求职者在关注微信号后，即可实时跟踪自己投递简历的状况，包括简历是否投递成功，是否被查看，是否被转发到别的部门、以及是否去面试等。HR关注微信号并绑定帐号后，也可实时收到新简历提醒。&lt;br /&gt;\r\n求职者在拉勾网注册之后，必须自己给心仪的企业H&lt;br /&gt;\r\nR发求职简历。即，在拉勾找工作，是求职者和企业方直接联系。这种模式，避免了第三者经手，也就减少了求职者个人信息外泄的风险。拉勾网承诺：除非网站认为出于法律的需要，绝不会向任何第三方公开会员的姓名、地址及电话等私人信息。也不会向任何第三方公开会员上传的简历信息。&lt;br /&gt;\r\n对求职者的尊重，还体现在拉勾网的许多功能设计上。&lt;br /&gt;\r\n拉勾网有一项功能，叫订阅职位。求职者可以设定自己理想的工作职位的条件，比如类型、薪水或者工作地点，拉勾网会定期将符合条件的职位信息发送给你，发送邮件的频率由求职者自己设定。&lt;br /&gt;\r\n拉勾正在建立庞大的互联网公司库，为企业做详细的背书，呈现公司的创始团队、公司产品、融资阶段及该公司的相关报道，用于支撑求职者快速了解企业，加速双方的相互碰撞。&lt;br /&gt;\r\n在拉勾，你能看到很多充满个性的招聘启事。很多公司为了吸引求职者，走起了卖萌路线。于是职位描述也突破传统随心所欲--&amp;ldquo;卖得了萌，耍得了二；玩得了小清新，咽得下重口味。聊得晕小商家，接得进大CP，文能写方案，武能红白啤。搞得定潘金莲，留得住小正太。君若如此，我必守候。&amp;rdquo;这样的职位描述，你在别处能看到么？该企业在发布职位之后的短短几分钟内便收到了求职者简历，并已有成功入职者。&lt;/p&gt;', '', '', '', '0'),
(7, 2, 4, 1, 'peadmin', '北京烤鸭', 'files/attach/images/content/20160630/14672831627422.jpg', '', 1467283169, 1471529999, 0, '', '', 0, 'content_default', '', '', '', '', 'a:5:{i:0;s:55:"files/attach/images/content/20160818/14715299784373.jpg";i:1;s:55:"files/attach/images/content/20160818/14715299849626.jpg";i:2;s:55:"files/attach/images/content/20160818/14715299845671.jpg";i:3;s:55:"files/attach/images/content/20160818/14715299789053.jpg";i:4;s:55:"files/attach/images/content/20160818/14715299874253.jpg";}'),
(8, 2, 4, 1, 'peadmin', '烤鸭2', 'files/attach/images/content/20160811/14709028491993.jpg', '', 1467286299, 1471569400, 0, '', '', 0, 'content_default', '', '', '', '', 'a:8:{i:0;s:55:"files/attach/images/content/20160818/14715163951496.jpg";i:1;s:55:"files/attach/images/content/20160818/14715163928616.jpg";i:2;s:55:"files/attach/images/content/20160818/14715163946618.jpg";i:3;s:55:"files/attach/images/content/20160818/14715163929064.jpg";i:4;s:55:"files/attach/images/content/20160818/14715299582214.jpg";i:5;s:55:"files/attach/images/content/20160818/14715299588912.jpg";i:6;s:55:"files/attach/images/content/20160818/14715299624219.jpg";i:7;s:55:"files/attach/images/content/20160818/14715163926845.jpg";}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_coupon`
--

CREATE TABLE IF NOT EXISTS `x2_coupon` (
  `couponsn` varchar(16) NOT NULL,
  `couponvalue` int(11) NOT NULL DEFAULT '0',
  `couponstatus` int(1) NOT NULL DEFAULT '0',
  `couponaddtime` int(11) NOT NULL DEFAULT '0',
  `couponendtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_course`
--

CREATE TABLE IF NOT EXISTS `x2_course` (
  `courseid` int(11) NOT NULL,
  `coursetitle` varchar(240) DEFAULT NULL,
  `coursemoduleid` int(11) DEFAULT NULL,
  `coursecsid` int(11) DEFAULT NULL,
  `coursethumb` varchar(240) DEFAULT NULL,
  `courseuserid` int(11) DEFAULT NULL,
  `courseinputtime` int(11) DEFAULT NULL,
  `coursemodifytime` int(11) DEFAULT NULL,
  `coursesequence` int(11) DEFAULT NULL,
  `coursedescribe` text,
  `course_files` varchar(240) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_course`
--

INSERT INTO `x2_course` (`courseid`, `coursetitle`, `coursemoduleid`, `coursecsid`, `coursethumb`, `courseuserid`, `courseinputtime`, `coursemodifytime`, `coursesequence`, `coursedescribe`, `course_files`) VALUES
(1, '测试', 14, 1, 'files/attach/images/content/20160630/14672572053861.jpg', 1, 1467215744, 1471772062, 0, '&lt;p&gt;测试测试测试测试&lt;/p&gt;', 'files/attach/images/content/20160821/14717720557478.mp4'),
(2, '测试2', 14, 1, 'files/attach/images/content/20160630/14672625644877.jpg', 1, 1467262651, 0, 0, '', 'files/attach/images/content/20160630/14672626501965.mp4');

-- --------------------------------------------------------

--
-- 表的结构 `x2_coursesubject`
--

CREATE TABLE IF NOT EXISTS `x2_coursesubject` (
  `csid` int(11) NOT NULL,
  `cstitle` varchar(240) DEFAULT '',
  `cscatid` int(11) DEFAULT NULL,
  `csuserid` int(11) DEFAULT '0',
  `csbasicid` int(11) DEFAULT '0',
  `cssubjectid` int(11) DEFAULT '0',
  `cstime` int(11) DEFAULT '0',
  `csthumb` varchar(120) DEFAULT '',
  `cssequence` int(11) DEFAULT NULL,
  `csdescribe` text
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_coursesubject`
--

INSERT INTO `x2_coursesubject` (`csid`, `cstitle`, `cscatid`, `csuserid`, `csbasicid`, `cssubjectid`, `cstime`, `csthumb`, `cssequence`, `csdescribe`) VALUES
(1, '会计基础', 5, 1, 1, 1, 1467214449, 'files/attach/images/content/20160630/14672515884765.jpg', 0, '&lt;p&gt;会计基础&lt;/p&gt;');

-- --------------------------------------------------------

--
-- 表的结构 `x2_dochistory`
--

CREATE TABLE IF NOT EXISTS `x2_dochistory` (
  `dhid` int(11) NOT NULL,
  `dhcontent` text NOT NULL,
  `dhtime` int(11) NOT NULL,
  `dhstatus` tinyint(4) NOT NULL,
  `dhtop` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_docs`
--

CREATE TABLE IF NOT EXISTS `x2_docs` (
  `docid` int(11) NOT NULL,
  `doctitle` varchar(240) NOT NULL,
  `doccatid` int(11) NOT NULL,
  `dockeywords` varchar(240) NOT NULL,
  `doccontentid` int(11) NOT NULL,
  `docinputtime` int(11) NOT NULL,
  `docmodifytime` int(11) NOT NULL,
  `docdescribe` varchar(240) NOT NULL,
  `doclock` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_examhistory`
--

CREATE TABLE IF NOT EXISTS `x2_examhistory` (
  `ehid` int(11) NOT NULL,
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
  `ehtimelist` text
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_examhistory`
--

INSERT INTO `x2_examhistory` (`ehid`, `ehexamid`, `ehexam`, `ehtype`, `ehbasicid`, `ehquestion`, `ehsetting`, `ehscorelist`, `ehuseranswer`, `ehtime`, `ehscore`, `ehuserid`, `ehusername`, `ehstarttime`, `ehstatus`, `ehdecide`, `ehtimelist`) VALUES
(83, 1, '湖里纪律知识考试', 2, 1, 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:1:{i:0;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"2";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:2:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:8500;a:17:{s:10:"questionid";s:4:"8500";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题2&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', 'a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}', '', 117, '0.00', 1, 'peadmin', 1470974147, 1, 0, ''),
(84, 1, '湖里纪律知识考试', 2, 1, 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:2:{i:0;s:2:"11";i:1;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"1";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"1";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:1:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"1";}', 'a:5:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;i:8499;s:2:"10";}', 'a:1:{i:8499;s:0:"";}', 55, '10.00', 3, '教师', 1471605018, 1, 1, 'a:5:{i:8458;s:0:"";i:8459;s:0:"";i:8445;s:0:"";i:772;s:0:"";i:8499;s:0:"";}'),
(85, 1, '湖里纪律知识考试', 1, 1, 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:1:{i:0;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"1";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"1";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:1:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"1";}', 'a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}', 'a:1:{i:8499;s:0:"";}', 4, '0.00', 1, 'peadmin', 1471707015, 0, 1, ''),
(86, 1, '测试', 0, 1, 'a:3:{s:11:"questionids";a:2:{s:8:"question";a:1:{i:3;a:1:{i:0;s:4:"8488";}}s:11:"questionrow";a:3:{i:1;a:1:{i:0;s:1:"1";}i:5;a:1:{i:0;s:1:"3";}i:4;a:1:{i:0;s:2:"11";}}}s:9:"questions";a:1:{i:3;a:1:{i:8488;a:17:{s:10:"questionid";s:4:"8488";s:12:"questiontype";s:1:"3";s:8:"question";s:184:"&lt;p&gt;根据劳动合同法律制度的规定，医疗期是职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间。（　　）&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:30:"&lt;p&gt;A.对 B.错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:262:"&lt;p&gt;医疗期是指企业职工因患病或非因工负伤停止工作，治病休息，但不得解除劳动合同的期限。职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间称为停工留薪期。&lt;/p&gt;";s:15:"questionknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:18:"questioncreatetime";s:10:"1456213212";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"0";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}s:12:"questionrows";a:3:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:5;a:1:{i:3;a:12:{s:4:"qrid";s:1:"3";s:6:"qrtype";s:1:"5";s:10:"qrquestion";s:34:"&lt;p&gt;阿大使大赛&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"1";s:8:"qruserid";s:1:"3";s:10:"qrusername";s:6:"教师";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1449025873";s:8:"qrstatus";s:1:"1";s:4:"data";a:1:{i:8460;a:17:{s:10:"questionid";s:4:"8460";s:12:"questiontype";s:1:"5";s:8:"question";s:37:"&lt;p&gt;呜哇啊啊啊草&lt;/p&gt;";s:14:"questionuserid";s:1:"1";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:9:"啊啊草";s:16:"questiondescribe";s:28:"&lt;p&gt;啊啊草&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1451030426";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"3";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"1";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:1:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', 'a:5:{s:9:"sectionid";s:1:"1";s:7:"knowsid";s:1:"1";s:5:"title";s:6:"测试";s:4:"time";s:2:"60";s:6:"number";a:6:{i:1;s:1:"4";i:5;s:1:"1";i:4;s:1:"1";i:3;s:1:"1";i:6;s:0:"";i:2;s:0:"";}}', 'a:7:{i:8488;i:0;i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;i:8460;i:0;i:8499;s:1:"1";}', 'a:2:{i:8499;s:0:"";i:8460;s:0:"";}', 21, '14.30', 1, 'peadmin', 1471707198, 1, 0, ''),
(87, 1, '湖里纪律知识考试', 2, 1, 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:1:{i:0;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"1";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"1";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:1:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"1";}', 'a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}', 'a:1:{i:8499;s:0:"";}', 3600, '0.00', 1, 'peadmin', 1471707997, 0, 1, 'a:5:{i:8458;s:0:"";i:8459;s:0:"";i:8445;s:0:"";i:772;s:0:"";i:8499;s:0:"";}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_exams`
--

CREATE TABLE IF NOT EXISTS `x2_exams` (
  `examid` int(11) NOT NULL,
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
  `examdecide` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_exams`
--

INSERT INTO `x2_exams` (`examid`, `examsubject`, `exam`, `examsetting`, `examquestions`, `examscore`, `examstatus`, `examtype`, `examauthorid`, `examauthor`, `examtime`, `examkeyword`, `examdecide`) VALUES
(1, 1, '湖里纪律知识考试', 'a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}', '', '', 0, 1, 1, 'peadmin', 1457579783, '', 1),
(10, 1, 'testself', 'a:6:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:3:"111";s:5:"score";s:3:"111";s:9:"passscore";s:2:"11";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:8:"questype";a:6:{i:1;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:2;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:3;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:4;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:5;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:6;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}}}', 'a:2:{s:9:"questions";a:1:{i:3;a:5:{i:0;a:8:{s:10:"questionid";s:3:"q_1";s:12:"questiontype";s:1:"3";s:8:"question";s:166:"&lt;p&gt;根据劳动合同法律制度的规定，服务期与劳动合同一般期限在时间长度上不一致，前者一般短于后者。（　　）&lt;/p&gt;";s:14:"questionselect";s:30:"&lt;p&gt;A.对 B.错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:112:"&lt;p&gt;服务期与劳动合同一般期限在时间长度上不一致，前者一般长于后者。&lt;/p&gt;";s:18:"questioncreatetime";i:1471607019;}i:1;a:8:{s:10:"questionid";s:3:"q_2";s:12:"questiontype";s:1:"3";s:8:"question";s:142:"&lt;p&gt;甲公司招用王某时，要求其缴纳600元的工作服押金，甲公司的做法不符合法律规定。（　　）&lt;/p&gt;";s:14:"questionselect";s:30:"&lt;p&gt;A.对 B.错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:187:"&lt;p&gt;用人单位招用劳动者，不得扣押劳动者的居民身份证和其他证件，不得要求劳动者提供担保或者以其他名义向劳动者收取财物。&lt;/p&gt;";s:18:"questioncreatetime";i:1471607019;}i:2;a:8:{s:10:"questionid";s:3:"q_3";s:12:"questiontype";s:1:"3";s:8:"question";s:118:"&lt;p&gt;对劳动合同的无效有争议的，只能由劳动争议仲裁机构进行确认。（　　）&lt;/p&gt;";s:14:"questionselect";s:30:"&lt;p&gt;A.对 B.错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:124:"&lt;p&gt;对劳动合同的无效或部分无效有争议的，由劳动争议仲裁机构或人民法院确认。&lt;/p&gt;";s:18:"questioncreatetime";i:1471607019;}i:3;a:8:{s:10:"questionid";s:3:"q_4";s:12:"questiontype";s:1:"3";s:8:"question";s:145:"&lt;p&gt;劳动合同的解除和终止，只对未履行的部分发生效力，即双方不再继续履行劳动合同。（　　）&lt;/p&gt;";s:14:"questionselect";s:30:"&lt;p&gt;A.对 B.错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:18:"questioncreatetime";i:1471607019;}i:4;a:8:{s:10:"questionid";s:3:"q_5";s:12:"questiontype";s:1:"3";s:8:"question";s:184:"&lt;p&gt;根据劳动合同法律制度的规定，医疗期是职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间。（　　）&lt;/p&gt;";s:14:"questionselect";s:30:"&lt;p&gt;A.对 B.错&lt;/p&gt;";s:20:"questionselectnumber";s:1:"2";s:14:"questionanswer";s:1:"B";s:16:"questiondescribe";s:262:"&lt;p&gt;医疗期是指企业职工因患病或非因工负伤停止工作，治病休息，但不得解除劳动合同的期限。职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间称为停工留薪期。&lt;/p&gt;";s:18:"questioncreatetime";i:1471607019;}}}s:12:"questionrows";N;}', '', 0, 3, 1, 'peadmin', 1471402937, '', 0),
(11, 1, '手动组卷', 'a:6:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:12:"手动组卷";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:8:"questype";a:6:{i:1;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:2;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:3;a:3:{s:6:"number";s:1:"1";s:5:"score";s:3:"100";s:8:"describe";s:0:"";}i:4;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:5;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}i:6;a:3:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";}}}', 'a:6:{i:1;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:5:",2,1,";}i:2;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}i:3;a:2:{s:9:"questions";s:6:",8488,";s:13:"rowsquestions";s:0:"";}i:4;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}i:5;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}i:6;a:2:{s:9:"questions";s:0:"";s:13:"rowsquestions";s:0:"";}}', '', 0, 2, 3, '教师', 1471606525, '', 0);

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
  `examsessiontimelist` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_examsession`
--

INSERT INTO `x2_examsession` (`examsessionid`, `examsessionuserid`, `examsession`, `examsessionsetting`, `examsessionsign`, `examsessionbasic`, `examsessiontype`, `examsessionkey`, `examsessionquestion`, `examsessionuseranswer`, `examsessionstarttime`, `examsessiontime`, `examsessionstatus`, `examsessionscore`, `examsessionscorelist`, `examsessionissave`, `examsessiontimelist`) VALUES
('dhq4r44mmnadpecvkh5ugagb55', 1, '湖里纪律知识考试', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', '', 1, 1, '1', 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:1:{i:0;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"2";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:2:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:8500;a:17:{s:10:"questionid";s:4:"8500";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题2&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', '', 1470365734, 60, 0, '0.0', '', 0, ''),
('m0hnen4qamfbnp79m43rahgtn1', 1, '湖里纪律知识考试', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', '', 1, 1, '1', 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:1:{i:0;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"2";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:2:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}i:8500;a:17:{s:10:"questionid";s:4:"8500";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题2&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', '', 1470973775, 60, 0, '0.0', '', 0, ''),
('s0bf2mkcn7sk52v1pppu5ikrv6', 1, '湖里纪律知识考试', 'a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}', '', 1, 1, '1', 'a:3:{s:11:"questionids";a:3:{s:8:"question";N;s:11:"questionrow";a:2:{i:1;a:1:{i:0;s:1:"1";}i:4;a:1:{i:0;s:2:"11";}}s:7:"setting";a:13:{s:6:"examid";s:1:"1";s:11:"examsubject";s:1:"1";s:4:"exam";s:24:"湖里纪律知识考试";s:11:"examsetting";a:7:{s:8:"examtime";s:2:"60";s:7:"comfrom";s:0:"";s:5:"score";s:3:"100";s:9:"passscore";s:3:"100";s:12:"questypelite";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}s:10:"scalemodel";s:1:"0";s:8:"questype";a:6:{i:1;a:6:{s:6:"number";s:1:"7";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"7";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:2;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:3;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:4;a:6:{s:6:"number";s:1:"3";s:5:"score";s:2:"10";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"1";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"2";}i:5;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}i:6;a:6:{s:6:"number";s:1:"0";s:5:"score";s:1:"0";s:8:"describe";s:0:"";s:10:"easynumber";s:1:"0";s:12:"middlenumber";s:1:"0";s:10:"hardnumber";s:1:"0";}}}s:13:"examquestions";b:0;s:9:"examscore";s:0:"";s:10:"examstatus";s:1:"0";s:8:"examtype";s:1:"1";s:12:"examauthorid";s:1:"1";s:10:"examauthor";s:7:"peadmin";s:8:"examtime";s:10:"1457579783";s:11:"examkeyword";s:0:"";s:10:"examdecide";s:1:"0";}}s:9:"questions";a:0:{}s:12:"questionrows";a:2:{i:1;a:1:{i:1;a:12:{s:4:"qrid";s:1:"1";s:6:"qrtype";s:1:"1";s:10:"qrquestion";s:34:"&lt;p&gt;测试题冒题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}s:7:"qrlevel";s:1:"1";s:8:"qrnumber";s:1:"4";s:8:"qruserid";s:2:"54";s:10:"qrusername";s:7:"peadmin";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1376419110";s:8:"qrstatus";s:1:"1";s:4:"data";a:4:{i:8458;a:17:{s:10:"questionid";s:4:"8458";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;阿斯达萨&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;阿斯达斯&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:34:"&lt;p&gt;阿萨德撒的&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449026591";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8459;a:17:{s:10:"questionid";s:4:"8459";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;三三四四&lt;/p&gt;";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1449027690";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"0";}i:8445;a:17:{s:10:"questionid";s:4:"8445";s:12:"questiontype";s:1:"1";s:8:"question";s:31:"&lt;p&gt;asdsadsadasd&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:25:"&lt;p&gt;sadasd&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:31:"&lt;p&gt;sadasdasdasd&lt;/p&gt;";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1414127000";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"1";s:13:"questionlevel";s:1:"0";}i:772;a:17:{s:10:"questionid";s:3:"772";s:12:"questiontype";s:1:"1";s:8:"question";s:34:"&lt;p&gt;测试子试题&lt;/p&gt;";s:14:"questionuserid";s:2:"54";s:16:"questionusername";s:7:"peadmin";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:0:"";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:1:"A";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";a:0:{}s:18:"questioncreatetime";s:10:"1376419161";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:1:"1";s:16:"questionsequence";s:1:"2";s:13:"questionlevel";s:1:"0";}}}}i:4;a:1:{i:11;a:12:{s:4:"qrid";s:2:"11";s:6:"qrtype";s:1:"4";s:10:"qrquestion";s:34:"&lt;p&gt;测试题帽题&lt;/p&gt;";s:9:"qrknowsid";a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}s:7:"qrlevel";s:1:"3";s:8:"qrnumber";s:1:"1";s:8:"qruserid";s:1:"0";s:10:"qrusername";s:0:"";s:16:"qrlastmodifyuser";s:0:"";s:6:"qrtime";s:10:"1462583551";s:8:"qrstatus";s:1:"1";s:4:"data";a:1:{i:8499;a:17:{s:10:"questionid";s:4:"8499";s:12:"questiontype";s:1:"4";s:8:"question";s:29:"&lt;p&gt;子试题1&lt;/p&gt;";s:14:"questionuserid";s:1:"0";s:16:"questionusername";s:0:"";s:22:"questionlastmodifyuser";s:0:"";s:14:"questionselect";s:23:"&lt;p&gt;ABCD&lt;/p&gt;";s:20:"questionselectnumber";s:1:"4";s:14:"questionanswer";s:20:"&lt;p&gt;A&lt;/p&gt;";s:16:"questiondescribe";s:0:"";s:15:"questionknowsid";b:0;s:18:"questioncreatetime";s:10:"1462583551";s:14:"questionstatus";s:1:"1";s:12:"questionhtml";b:0;s:14:"questionparent";s:2:"11";s:16:"questionsequence";s:1:"0";s:13:"questionlevel";s:1:"1";}}}}}}', 'a:1:{i:8499;s:0:"";}', 1471423242, 60, 1, '0.0', 'a:4:{i:8458;i:0;i:8459;i:0;i:8445;i:0;i:772;i:0;}', 0, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_exercise`
--

CREATE TABLE IF NOT EXISTS `x2_exercise` (
  `exerid` int(11) NOT NULL,
  `exeruserid` int(11) NOT NULL,
  `exerbasicid` int(11) NOT NULL,
  `exerknowsid` int(11) NOT NULL,
  `exernumber` int(11) NOT NULL,
  `exerqutype` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_exercise`
--

INSERT INTO `x2_exercise` (`exerid`, `exeruserid`, `exerbasicid`, `exerknowsid`, `exernumber`, `exerqutype`) VALUES
(1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_favor`
--

CREATE TABLE IF NOT EXISTS `x2_favor` (
  `favorid` int(11) NOT NULL,
  `favoruserid` int(11) NOT NULL DEFAULT '0',
  `favorsubjectid` int(11) NOT NULL DEFAULT '0',
  `favorquestionid` int(11) NOT NULL DEFAULT '0',
  `favortime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_favor`
--

INSERT INTO `x2_favor` (`favorid`, `favoruserid`, `favorsubjectid`, `favorquestionid`, `favortime`) VALUES
(3, 1, 1, 8450, 1440585871),
(5, 1, 1, 4, 1467037123),
(6, 3, 1, 25, 1467078531),
(7, 3, 1, 84, 1467078534),
(8, 3, 1, 97, 1467078537),
(9, 3, 1, 8455, 1467078540),
(10, 3, 1, 8458, 1467078584),
(11, 3, 1, 8459, 1467078588),
(12, 3, 1, 8445, 1467078590),
(13, 3, 1, 772, 1467078597),
(14, 3, 1, 8498, 1467078600),
(15, 3, 1, 8499, 1467078603),
(16, 3, 1, 8500, 1467078607),
(17, 1, 1, 8458, 1467130815),
(18, 1, 1, 8498, 1467178771),
(19, 1, 1, 10, 1467342667),
(20, 1, 1, 8445, 1471704146);

-- --------------------------------------------------------

--
-- 表的结构 `x2_gbook`
--

CREATE TABLE IF NOT EXISTS `x2_gbook` (
  `gbid` int(11) NOT NULL,
  `gbinfo` text NOT NULL,
  `gbcontent` text NOT NULL,
  `gbreply` text NOT NULL,
  `gbtime` int(11) NOT NULL DEFAULT '0',
  `gbreplytime` int(11) NOT NULL DEFAULT '0',
  `gbstatus` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_knows`
--

CREATE TABLE IF NOT EXISTS `x2_knows` (
  `knowsid` int(11) NOT NULL,
  `knows` varchar(120) NOT NULL DEFAULT '',
  `knowssectionid` int(11) NOT NULL DEFAULT '0',
  `knowsdescribe` text NOT NULL,
  `knowsstatus` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_knows`
--

INSERT INTO `x2_knows` (`knowsid`, `knows`, `knowssectionid`, `knowsdescribe`, `knowsstatus`) VALUES
(1, '纪律知识', 1, '', 1),
(2, '请修改知识点2', 1, '', 0),
(3, '请修改知识点3', 1, '', 0),
(4, '请修改知识点4', 1, '', 0),
(5, '章节2', 2, '', 1),
(6, '测试5', 1, '', 0),
(7, '测算过i', 1, '', 0),
(8, '测试6', 1, '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_log`
--

CREATE TABLE IF NOT EXISTS `x2_log` (
  `logid` int(11) NOT NULL,
  `loguserid` int(11) DEFAULT '0',
  `logcourseid` int(11) DEFAULT '0',
  `logtime` int(11) DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_log`
--

INSERT INTO `x2_log` (`logid`, `loguserid`, `logcourseid`, `logtime`) VALUES
(1, 1, 1, 1467215936),
(2, 1, 0, 1467261592),
(3, 1, 0, 1467261647),
(4, 1, 0, 1467261666),
(5, 1, 0, 1467261759),
(6, 1, 0, 1467262163),
(7, 1, 0, 1467262180),
(8, 1, 0, 1467262194),
(9, 1, 0, 1467262228),
(10, 1, 0, 1467262343),
(11, 1, 0, 1467262357),
(12, 1, 1, 1467262360),
(13, 1, 1, 1467262364),
(14, 1, 1, 1467262366),
(15, 1, 1, 1467262409),
(16, 1, 1, 1467262527),
(17, 1, 1, 1467262529),
(18, 1, 1, 1467262533),
(19, 1, 0, 1467262656),
(20, 1, 2, 1467262659),
(21, 1, 2, 1467262663),
(22, 1, 0, 1467262693),
(23, 1, 2, 1467262696),
(24, 1, 2, 1467262712),
(25, 1, 0, 1467262717),
(26, 1, 1, 1467262725),
(27, 1, 1, 1467262741),
(28, 1, 2, 1467262750),
(29, 1, 1, 1467262831),
(30, 1, 2, 1467262838),
(31, 1, 1, 1467262843),
(32, 1, 2, 1467262850),
(33, 1, 1, 1467262855),
(34, 1, 2, 1467262856),
(35, 1, 1, 1467262859),
(36, 1, 2, 1467262860),
(37, 1, 1, 1467262913),
(38, 1, 1, 1467262941),
(39, 1, 2, 1467262950),
(40, 1, 1, 1467262955),
(41, 1, 2, 1467262957),
(42, 1, 1, 1467262958),
(43, 1, 2, 1467262959),
(44, 1, 0, 1467262971),
(45, 1, 2, 1467262975),
(46, 1, 1, 1467262976),
(47, 1, 2, 1467262977),
(48, 1, 0, 1467263019),
(49, 1, 1, 1467263068),
(50, 1, 2, 1467263070),
(51, 1, 1, 1467263071),
(52, 1, 2, 1467263074),
(53, 1, 0, 1467264512),
(54, 1, 2, 1467264517),
(55, 1, 1, 1467264518),
(56, 1, 2, 1467264520),
(57, 1, 1, 1467264521),
(58, 1, 2, 1467264522),
(59, 1, 0, 1467264576),
(60, 1, 2, 1467264579),
(61, 1, 0, 1467264588),
(62, 1, 1, 1467264590),
(63, 1, 0, 1467264604),
(64, 1, 1, 1467264606),
(65, 1, 2, 1467264606),
(66, 1, 1, 1467264608),
(67, 1, 2, 1467264616),
(68, 1, 1, 1467264617),
(69, 1, 2, 1467264625),
(70, 1, 1, 1467264649),
(71, 1, 2, 1467264651),
(72, 1, 1, 1467264653),
(73, 1, 2, 1467264704),
(74, 1, 1, 1467264705),
(75, 1, 2, 1467264707),
(76, 1, 0, 1467265736),
(77, 1, 2, 1467265744),
(78, 1, 0, 1467279698),
(79, 1, 2, 1467279706),
(80, 1, 1, 1467279896),
(81, 1, 2, 1467281089),
(82, 1, 1, 1467281092),
(83, 1, 0, 1467281171),
(84, 1, 2, 1467281508),
(85, 1, 1, 1467281510),
(86, 1, 2, 1467281512),
(87, 1, 0, 1467292253),
(88, 1, 0, 1467292362),
(89, 1, 0, 1467292685),
(90, 1, 0, 1467293570),
(91, 1, 0, 1467340308),
(92, 1, 0, 1467776769),
(93, 1, 2, 1467776774),
(94, 1, 1, 1467776776),
(95, 1, 0, 1467793053),
(96, 1, 0, 1467797013),
(97, 1, 2, 1467797016),
(98, 1, 1, 1467797017),
(99, 1, 2, 1467797018),
(100, 1, 1, 1467797018),
(101, 1, 0, 1467797027),
(102, 1, 0, 1468672685),
(103, 1, 0, 1468942384),
(104, 1, 1, 1468942386),
(105, 1, 2, 1468942387),
(106, 1, 1, 1468942389),
(107, 1, 2, 1468942394),
(108, 1, 1, 1468942395),
(109, 1, 0, 1470365704),
(110, 1, 0, 1471158894),
(111, 1, 1, 1471158897),
(112, 1, 2, 1471158902),
(113, 1, 1, 1471158905),
(114, 1, 2, 1471158906),
(115, 1, 0, 1471159065),
(116, 1, 2, 1471159074),
(117, 1, 1, 1471159077),
(118, 3, 0, 1471605006),
(119, 1, 0, 1471703474),
(120, 1, 1, 1471703477),
(121, 1, 2, 1471703482),
(122, 1, 0, 1471703492),
(123, 1, 0, 1471767815),
(124, 1, 2, 1471767820),
(125, 1, 1, 1471767821),
(126, 1, 0, 1471771968),
(127, 1, 1, 1471772067),
(128, 1, 0, 1471772550),
(129, 1, 0, 1471772562),
(130, 1, 0, 1471835504);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module`
--

CREATE TABLE IF NOT EXISTS `x2_module` (
  `moduleid` int(11) NOT NULL,
  `modulecode` varchar(24) NOT NULL DEFAULT '',
  `modulename` varchar(60) NOT NULL DEFAULT '',
  `moduledescribe` tinytext NOT NULL,
  `moduleapp` varchar(24) NOT NULL DEFAULT '',
  `moduletable` varchar(24) NOT NULL DEFAULT '',
  `moduleallowreg` tinyint(1) DEFAULT '0',
  `modulestatus` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_module`
--

INSERT INTO `x2_module` (`moduleid`, `modulecode`, `modulename`, `moduledescribe`, `moduleapp`, `moduletable`, `moduleallowreg`, `modulestatus`) VALUES
(1, 'manager', '管理员模型', '管理员', 'user', 'user_data', 0, 0),
(9, 'normal', '普通用户', '普通用户', 'user', '', 0, 0),
(4, 'news', '新闻', '新闻', 'content', 'content_data', 0, 0),
(11, 'spnormal', '普通信息', '普通信息', 'special', '', 0, 0),
(12, 'teacher', '教师模型', '教师模型', 'user', '', 0, 0),
(14, 'course', '视频课程', '', 'course', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_module_fields`
--

CREATE TABLE IF NOT EXISTS `x2_module_fields` (
  `fieldid` int(11) NOT NULL,
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
  `fieldpublic` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_module_fields`
--

INSERT INTO `x2_module_fields` (`fieldid`, `fieldappid`, `fieldmoduleid`, `fieldsequence`, `field`, `fieldtitle`, `fieldlength`, `fielddescribe`, `fieldtype`, `fieldhtmltype`, `fieldhtmlproperty`, `fieldvalues`, `fielddefault`, `fieldlock`, `fieldindextype`, `fieldforbidactors`, `fieldsystem`, `fieldpublic`) VALUES
(1, 'user', 1, 2, 'manager_apps', '可管理模块', '120', '', 'varchar', 'select', 'class=form-control\r\nstyle=width:30%', '用户=user\r\n内容=content', '', 0, '0', ',-1,', 0, 0),
(2, 'user', 1, 0, 'photo', '用户肖像', '120', '', 'varchar', 'thumb', '', '', '', 0, '0', ',,', 0, 1),
(3, 'user', 1, 0, 'usertruename', '真实姓名', '24', '', 'varchar', 'text', 'class=form-control\r\nstyle=width:25%', '', '', 0, '0', ',,', 0, 1),
(6, 'user', 9, 0, 'normal_favor', '爱好', '250', '', 'varchar', 'checkboxarray', '', '吃=吃\r\n喝=喝\r\n拉=拉\r\n撒=撒\r\n睡=睡', '吃', 0, '0', ',,', 0, 0),
(7, 'user', 12, 0, 'teacher_subjects', '可管理科目', '', '', 'text', 'checkboxarray', '', '请修改科目名称=1', '', 0, '0', ',-1,', 0, 0),
(8, 'content', 13, 0, 'cizhuan_guige', '规格', '60', '', 'varchar', 'radio', '', '90*90=1\r\n60*60=2', '', 0, '', ',,', 1, 0),
(9, 'content', 13, 0, 'cizhuan_brand', '品牌', '24', '', 'varchar', 'checkboxarray', '', '阿里=阿里\r\n阿里1=阿里1', '', 0, '', ',,', 0, 0),
(10, 'content', 13, 0, 'cizhuan_thumb', '缩略图', '120', '', 'varchar', 'thumb', '', '', '', 0, '', ',,', 0, 0),
(11, 'course', 14, 0, 'course_files', '视频文件', '240', '', 'varchar', 'videotext', 'exectype=upfile\r\nuptypes=*.mp4\r\nfilesize=120 MB', '', '', 0, '', ',,', 0, 0),
(12, 'content', 4, 0, 'tester', '测试字段', '', '', 'text', 'picture', 'class=form-control', '', '', 0, '', ',,', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_openbasics`
--

CREATE TABLE IF NOT EXISTS `x2_openbasics` (
  `obid` int(11) NOT NULL,
  `obuserid` int(11) NOT NULL DEFAULT '0',
  `obbasicid` int(11) NOT NULL DEFAULT '0',
  `obtime` int(11) NOT NULL DEFAULT '0',
  `obendtime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_openbasics`
--

INSERT INTO `x2_openbasics` (`obid`, `obuserid`, `obbasicid`, `obtime`, `obendtime`) VALUES
(28, 59, 5, 1414301844, 1445837844),
(29, 49, 5, 1414591481, 1446127481),
(21, 54, 5, 1387256651, 1418792651),
(22, 54, 4, 1387268047, 1418804047),
(23, 98, 5, 1392631970, 1395223970),
(24, 98, 4, 1392631972, 1395223972),
(25, 98, 3, 1392631974, 1395223974),
(26, 98, 2, 1392631975, 1395223975),
(27, 98, 1, 1392631976, 1395223976),
(30, 54, 2, 1414640606, 1446176606),
(31, 49, 1, 1414650468, 1446186468),
(51, 1, 1, 1471703503, 1503239503),
(42, 2, 1, 1443756003, 1446348003),
(49, 3, 1, 1470150743, 1501686743),
(37, 4, 1, 1433922468, 1465458468),
(38, 5, 1, 1435492054, 1467028054),
(39, 7, 1, 1435732920, 1467268920),
(43, 8, 1, 1447816849, 1450408849),
(50, 12, 1, 1470989138, 1473581138);

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
  `orderpost` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_orders`
--

INSERT INTO `x2_orders` (`ordersn`, `ordertitle`, `orderdescribe`, `orderitems`, `orderprice`, `orderuserid`, `orderuserinfo`, `orderstatus`, `orderfullprice`, `ordercreatetime`, `orderpaytime`, `orderouttime`, `orderrecivetime`, `orderfaq`, `orderpost`) VALUES
('201606291605238', '考试系统充值 10 元', '', '', '10.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1467187531, 0, 0, 0, '', ''),
('201606291605454', '考试系统充值 30 元', '', '', '30.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1467187539, 0, 0, 0, '', ''),
('201608202230640', '考试系统充值 100 元', '', '', '100.00', 1, 'a:1:{s:8:"username";s:7:"peadmin";}', 1, '0.00', 1471703433, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_poscontent`
--

CREATE TABLE IF NOT EXISTS `x2_poscontent` (
  `pcid` int(11) NOT NULL,
  `pcposid` int(11) NOT NULL DEFAULT '0',
  `pccontentid` int(11) NOT NULL DEFAULT '0',
  `pcthumb` varchar(120) NOT NULL DEFAULT '',
  `pcsequence` int(11) NOT NULL DEFAULT '0',
  `pctitle` varchar(240) NOT NULL DEFAULT '',
  `pctime` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_position`
--

CREATE TABLE IF NOT EXISTS `x2_position` (
  `posid` int(11) NOT NULL,
  `posname` varchar(120) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_product`
--

CREATE TABLE IF NOT EXISTS `x2_product` (
  `productid` int(11) NOT NULL,
  `producttype` varchar(24) NOT NULL DEFAULT '',
  `productpartnerid` int(11) NOT NULL DEFAULT '0',
  `productname` varchar(240) NOT NULL DEFAULT '',
  `productcode` int(11) NOT NULL DEFAULT '0',
  `productprice` decimal(10,2) NOT NULL DEFAULT '0.00',
  `productdescribe` text NOT NULL,
  `productlesson` varchar(40) NOT NULL DEFAULT '',
  `producttry` varchar(240) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_product`
--

INSERT INTO `x2_product` (`productid`, `producttype`, `productpartnerid`, `productname`, `productcode`, `productprice`, `productdescribe`, `productlesson`, `producttry`) VALUES
(4, 'taocan[]', 1, '财经法规', 10, '0.01', '财经法规', '20', 'http://www.163.com');

-- --------------------------------------------------------

--
-- 表的结构 `x2_quest2knows`
--

CREATE TABLE IF NOT EXISTS `x2_quest2knows` (
  `qkid` int(11) NOT NULL,
  `qkquestionid` int(11) NOT NULL DEFAULT '0',
  `qkknowsid` int(11) NOT NULL DEFAULT '0',
  `qktype` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8397 DEFAULT CHARSET=utf8;

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
(152, 152, 2, 0),
(153, 153, 2, 0),
(154, 154, 2, 0),
(155, 155, 2, 0),
(156, 156, 2, 0),
(157, 157, 2, 0),
(158, 158, 2, 0),
(159, 159, 2, 0),
(160, 160, 2, 0),
(161, 161, 2, 0),
(162, 162, 2, 0),
(163, 163, 2, 0),
(164, 164, 2, 0),
(165, 165, 2, 0),
(166, 166, 2, 0),
(167, 167, 2, 0),
(168, 168, 2, 0),
(169, 169, 2, 0),
(170, 170, 2, 0),
(171, 171, 2, 0),
(172, 172, 2, 0),
(173, 173, 2, 0),
(174, 174, 2, 0),
(175, 175, 2, 0),
(176, 176, 2, 0),
(177, 177, 2, 0),
(178, 178, 2, 0),
(179, 179, 2, 0),
(180, 180, 2, 0),
(181, 181, 2, 0),
(182, 182, 2, 0),
(183, 183, 2, 0),
(184, 184, 2, 0),
(185, 185, 2, 0),
(186, 186, 2, 0),
(187, 187, 2, 0),
(188, 188, 2, 0),
(189, 189, 2, 0),
(190, 190, 2, 0),
(191, 191, 2, 0),
(192, 192, 2, 0),
(193, 193, 2, 0),
(194, 194, 2, 0),
(195, 195, 2, 0),
(196, 196, 2, 0),
(197, 197, 2, 0),
(198, 198, 2, 0),
(199, 199, 2, 0),
(200, 200, 2, 0),
(201, 201, 2, 0),
(202, 202, 2, 0),
(203, 203, 2, 0),
(204, 204, 2, 0),
(205, 205, 2, 0),
(206, 206, 2, 0),
(207, 207, 2, 0),
(208, 208, 2, 0),
(209, 209, 2, 0),
(210, 210, 2, 0),
(211, 211, 2, 0),
(212, 212, 2, 0),
(213, 213, 2, 0),
(214, 214, 2, 0),
(215, 215, 2, 0),
(216, 216, 2, 0),
(217, 217, 2, 0),
(218, 218, 2, 0),
(219, 219, 2, 0),
(220, 220, 2, 0),
(8323, 221, 2, 0),
(222, 222, 2, 0),
(223, 223, 2, 0),
(224, 224, 2, 0),
(225, 225, 2, 0),
(226, 226, 2, 0),
(227, 227, 2, 0),
(228, 228, 2, 0),
(229, 229, 2, 0),
(230, 230, 1, 0),
(231, 231, 1, 0),
(232, 232, 1, 0),
(233, 233, 1, 0),
(234, 234, 1, 0),
(235, 235, 1, 0),
(236, 236, 1, 0),
(237, 237, 1, 0),
(238, 238, 1, 0),
(239, 239, 1, 0),
(240, 240, 1, 0),
(241, 241, 1, 0),
(242, 242, 1, 0),
(243, 243, 1, 0),
(244, 244, 1, 0),
(245, 245, 1, 0),
(246, 246, 1, 0),
(247, 247, 1, 0),
(248, 248, 1, 0),
(249, 249, 1, 0),
(250, 250, 1, 0),
(251, 251, 1, 0),
(252, 252, 1, 0),
(253, 253, 1, 0),
(254, 254, 1, 0),
(255, 255, 1, 0),
(256, 256, 1, 0),
(257, 257, 1, 0),
(258, 258, 1, 0),
(259, 259, 1, 0),
(260, 260, 1, 0),
(261, 261, 1, 0),
(262, 262, 1, 0),
(263, 263, 1, 0),
(264, 264, 1, 0),
(265, 265, 1, 0),
(266, 266, 1, 0),
(267, 267, 1, 0),
(268, 268, 1, 0),
(269, 269, 1, 0),
(270, 270, 1, 0),
(271, 271, 1, 0),
(272, 272, 1, 0),
(273, 273, 1, 0),
(274, 274, 1, 0),
(275, 275, 1, 0),
(276, 276, 1, 0),
(277, 277, 1, 0),
(278, 278, 1, 0),
(279, 279, 1, 0),
(280, 280, 1, 0),
(281, 281, 1, 0),
(282, 282, 1, 0),
(283, 283, 1, 0),
(284, 284, 1, 0),
(285, 285, 1, 0),
(286, 286, 1, 0),
(287, 287, 1, 0),
(288, 288, 1, 0),
(289, 289, 1, 0),
(290, 290, 1, 0),
(291, 291, 1, 0),
(292, 292, 1, 0),
(293, 293, 1, 0),
(294, 294, 1, 0),
(295, 295, 1, 0),
(296, 296, 1, 0),
(297, 297, 1, 0),
(298, 298, 1, 0),
(299, 299, 1, 0),
(300, 300, 1, 0),
(301, 301, 1, 0),
(302, 302, 1, 0),
(303, 303, 1, 0),
(304, 304, 1, 0),
(305, 305, 1, 0),
(306, 306, 1, 0),
(307, 307, 1, 0),
(308, 308, 1, 0),
(309, 309, 1, 0),
(310, 310, 2, 0),
(311, 311, 2, 0),
(312, 312, 2, 0),
(313, 313, 2, 0),
(314, 314, 2, 0),
(315, 315, 2, 0),
(316, 316, 2, 0),
(317, 317, 2, 0),
(318, 318, 2, 0),
(319, 319, 2, 0),
(320, 320, 2, 0),
(321, 321, 2, 0),
(322, 322, 2, 0),
(323, 323, 2, 0),
(324, 324, 2, 0),
(325, 325, 2, 0),
(326, 326, 2, 0),
(327, 327, 2, 0),
(328, 328, 2, 0),
(329, 329, 2, 0),
(330, 330, 2, 0),
(331, 331, 2, 0),
(332, 332, 2, 0),
(333, 333, 2, 0),
(334, 334, 2, 0),
(335, 335, 2, 0),
(336, 336, 2, 0),
(337, 337, 2, 0),
(338, 338, 2, 0),
(339, 339, 2, 0),
(340, 340, 2, 0),
(341, 341, 2, 0),
(342, 342, 2, 0),
(343, 343, 2, 0),
(344, 344, 2, 0),
(345, 345, 2, 0),
(346, 346, 2, 0),
(347, 347, 2, 0),
(348, 348, 2, 0),
(349, 349, 2, 0),
(350, 350, 2, 0),
(351, 351, 2, 0),
(352, 352, 2, 0),
(353, 353, 2, 0),
(354, 354, 2, 0),
(355, 355, 2, 0),
(356, 356, 2, 0),
(8310, 357, 2, 0),
(358, 358, 2, 0),
(359, 359, 2, 0),
(360, 360, 2, 0),
(361, 361, 2, 0),
(362, 362, 2, 0),
(363, 363, 2, 0),
(364, 364, 2, 0),
(365, 365, 2, 0),
(366, 366, 2, 0),
(367, 367, 2, 0),
(368, 368, 2, 0),
(369, 369, 2, 0),
(370, 370, 2, 0),
(371, 371, 2, 0),
(372, 372, 2, 0),
(373, 373, 2, 0),
(374, 374, 2, 0),
(375, 375, 2, 0),
(376, 376, 2, 0),
(377, 377, 2, 0),
(378, 378, 2, 0),
(379, 379, 2, 0),
(380, 380, 2, 0),
(381, 381, 2, 0),
(382, 382, 2, 0),
(383, 383, 2, 0),
(384, 384, 2, 0),
(385, 385, 2, 0),
(386, 386, 2, 0),
(387, 387, 2, 0),
(388, 388, 2, 0),
(389, 389, 2, 0),
(390, 390, 3, 0),
(391, 391, 3, 0),
(392, 392, 3, 0),
(393, 393, 3, 0),
(394, 394, 3, 0),
(395, 395, 3, 0),
(396, 396, 3, 0),
(397, 397, 3, 0),
(398, 398, 3, 0),
(399, 399, 3, 0),
(400, 400, 3, 0),
(401, 401, 3, 0),
(402, 402, 3, 0),
(633, 403, 1, 0),
(404, 404, 3, 0),
(405, 405, 3, 0),
(407, 491, 1, 0),
(408, 492, 1, 0),
(409, 493, 1, 0),
(410, 494, 1, 0),
(411, 495, 1, 0),
(412, 496, 1, 0),
(413, 497, 1, 0),
(414, 498, 1, 0),
(415, 499, 1, 0),
(416, 500, 1, 0),
(417, 501, 1, 0),
(418, 502, 1, 0),
(419, 503, 1, 0),
(420, 504, 1, 0),
(421, 505, 1, 0),
(422, 506, 1, 0),
(423, 507, 1, 0),
(424, 508, 1, 0),
(425, 509, 1, 0),
(426, 510, 1, 0),
(427, 511, 1, 0),
(428, 512, 1, 0),
(429, 513, 1, 0),
(430, 514, 1, 0),
(431, 515, 1, 0),
(432, 516, 1, 0),
(433, 517, 1, 0),
(434, 518, 1, 0),
(435, 519, 1, 0),
(436, 520, 1, 0),
(437, 521, 1, 0),
(438, 522, 1, 0),
(439, 523, 1, 0),
(440, 524, 1, 0),
(441, 525, 1, 0),
(442, 526, 1, 0),
(443, 527, 1, 0),
(444, 528, 1, 0),
(445, 529, 1, 0),
(446, 530, 1, 0),
(447, 531, 1, 0),
(448, 532, 1, 0),
(449, 533, 1, 0),
(450, 534, 1, 0),
(451, 535, 1, 0),
(452, 536, 1, 0),
(453, 537, 1, 0),
(454, 538, 1, 0),
(455, 539, 1, 0),
(456, 540, 1, 0),
(457, 541, 1, 0),
(458, 542, 1, 0),
(459, 543, 1, 0),
(460, 544, 1, 0),
(461, 545, 1, 0),
(462, 546, 1, 0),
(463, 547, 1, 0),
(464, 548, 1, 0),
(465, 549, 1, 0),
(466, 550, 1, 0),
(467, 551, 1, 0),
(468, 552, 1, 0),
(469, 553, 1, 0),
(470, 554, 1, 0),
(471, 555, 1, 0),
(472, 556, 1, 0),
(473, 557, 1, 0),
(474, 558, 1, 0),
(475, 559, 1, 0),
(476, 560, 1, 0),
(477, 561, 1, 0),
(478, 562, 1, 0),
(479, 563, 1, 0),
(480, 564, 1, 0),
(481, 565, 1, 0),
(482, 566, 1, 0),
(483, 567, 1, 0),
(484, 568, 1, 0),
(485, 569, 1, 0),
(486, 570, 1, 0),
(487, 571, 1, 0),
(488, 572, 1, 0),
(489, 573, 1, 0),
(490, 574, 1, 0),
(491, 575, 1, 0),
(492, 576, 1, 0),
(493, 577, 1, 0),
(494, 578, 1, 0),
(495, 579, 1, 0),
(496, 580, 1, 0),
(497, 581, 1, 0),
(498, 582, 1, 0),
(499, 583, 1, 0),
(500, 584, 1, 0),
(501, 585, 1, 0),
(502, 586, 2, 0),
(503, 587, 2, 0),
(504, 588, 2, 0),
(505, 589, 2, 0),
(506, 590, 2, 0),
(507, 591, 2, 0),
(508, 592, 2, 0),
(509, 593, 2, 0),
(510, 594, 2, 0),
(511, 595, 2, 0),
(512, 596, 2, 0),
(513, 597, 2, 0),
(514, 598, 2, 0),
(515, 599, 2, 0),
(516, 600, 2, 0),
(517, 601, 2, 0),
(518, 602, 2, 0),
(519, 603, 2, 0),
(520, 604, 2, 0),
(521, 605, 2, 0),
(522, 606, 2, 0),
(523, 607, 2, 0),
(524, 608, 2, 0),
(525, 609, 2, 0),
(526, 610, 2, 0),
(527, 611, 2, 0),
(528, 612, 2, 0),
(529, 613, 2, 0),
(530, 614, 2, 0),
(531, 615, 2, 0),
(532, 616, 2, 0),
(533, 617, 2, 0),
(534, 618, 2, 0),
(535, 619, 2, 0),
(536, 620, 2, 0),
(537, 621, 2, 0),
(538, 622, 2, 0),
(539, 623, 2, 0),
(540, 624, 2, 0),
(541, 625, 2, 0),
(542, 626, 2, 0),
(543, 627, 2, 0),
(544, 628, 2, 0),
(545, 629, 2, 0),
(546, 630, 2, 0),
(547, 631, 2, 0),
(548, 632, 2, 0),
(549, 633, 2, 0),
(550, 634, 2, 0),
(551, 635, 2, 0),
(552, 636, 2, 0),
(553, 637, 2, 0),
(554, 638, 2, 0),
(555, 639, 2, 0),
(556, 640, 2, 0),
(557, 641, 2, 0),
(558, 642, 2, 0),
(559, 643, 2, 0),
(560, 644, 2, 0),
(561, 645, 2, 0),
(562, 646, 2, 0),
(563, 647, 2, 0),
(564, 648, 2, 0),
(565, 649, 2, 0),
(566, 650, 2, 0),
(567, 651, 2, 0),
(568, 652, 2, 0),
(569, 653, 2, 0),
(570, 654, 2, 0),
(571, 655, 2, 0),
(572, 656, 2, 0),
(573, 657, 2, 0),
(574, 658, 2, 0),
(575, 659, 2, 0),
(576, 660, 2, 0),
(577, 661, 2, 0),
(578, 662, 2, 0),
(579, 663, 2, 0),
(580, 664, 2, 0),
(581, 665, 2, 0),
(582, 666, 2, 0),
(583, 667, 2, 0),
(584, 668, 2, 0),
(585, 669, 2, 0),
(586, 670, 2, 0),
(587, 671, 2, 0),
(588, 672, 2, 0),
(589, 673, 2, 0),
(590, 674, 2, 0),
(591, 675, 2, 0),
(592, 676, 2, 0),
(593, 677, 2, 0),
(594, 678, 2, 0),
(595, 679, 2, 0),
(596, 680, 2, 0),
(597, 681, 2, 0),
(598, 682, 2, 0),
(599, 683, 2, 0),
(600, 684, 2, 0),
(601, 685, 2, 0),
(602, 686, 2, 0),
(603, 687, 2, 0),
(604, 688, 2, 0),
(605, 689, 2, 0),
(606, 690, 2, 0),
(607, 691, 2, 0),
(608, 692, 2, 0),
(609, 693, 2, 0),
(610, 694, 2, 0),
(611, 695, 2, 0),
(612, 696, 2, 0),
(613, 697, 2, 0),
(614, 698, 2, 0),
(615, 699, 2, 0),
(616, 700, 2, 0),
(617, 701, 2, 0),
(618, 702, 2, 0),
(619, 703, 2, 0),
(620, 704, 2, 0),
(621, 705, 2, 0),
(622, 706, 3, 0),
(623, 707, 3, 0),
(624, 708, 3, 0),
(625, 709, 3, 0),
(626, 710, 3, 0),
(627, 711, 3, 0),
(628, 712, 3, 0),
(629, 713, 3, 0),
(630, 714, 3, 0),
(631, 715, 3, 0),
(634, 771, 1, 0),
(8322, 764, 2, 0),
(636, 773, 1, 0),
(8311, 8446, 1, 0),
(8316, 770, 4, 0),
(8317, 766, 1, 0),
(8318, 769, 3, 0),
(8321, 8447, 1, 0),
(8324, 8448, 1, 0),
(8332, 8449, 1, 0),
(8350, 2, 5, 1),
(8331, 1, 1, 1),
(8337, 8450, 2, 0),
(8338, 8450, 1, 0),
(8340, 8452, 1, 0),
(8341, 8453, 2, 0),
(8342, 8454, 2, 0),
(8351, 8455, 1, 0),
(8345, 8456, 2, 0),
(8352, 8457, 1, 0),
(8353, 3, 1, 1),
(8354, 8461, 5, 0),
(8355, 8462, 5, 0),
(8356, 8463, 5, 0),
(8357, 8464, 5, 0),
(8358, 8465, 5, 0),
(8359, 8466, 5, 0),
(8360, 8467, 5, 0),
(8361, 8468, 5, 0),
(8362, 8469, 5, 0),
(8363, 8470, 5, 0),
(8364, 8471, 5, 0),
(8365, 8472, 5, 0),
(8366, 8473, 5, 0),
(8367, 8474, 5, 0),
(8368, 8475, 5, 0),
(8369, 8476, 5, 0),
(8370, 8477, 5, 0),
(8371, 8478, 5, 0),
(8372, 8479, 5, 0),
(8373, 8480, 5, 0),
(8374, 4, 5, 1),
(8375, 5, 5, 1),
(8376, 8481, 5, 0),
(8377, 8482, 5, 0),
(8378, 8483, 5, 0),
(8379, 8484, 5, 0),
(8380, 6, 5, 1),
(8381, 7, 5, 1),
(8383, 8, 4, 1),
(8384, 8, 3, 1),
(8385, 8, 2, 1),
(8386, 8, 5, 1),
(8388, 9, 1, 1),
(8389, 10, 1, 1),
(8391, 8497, 1, 0),
(8392, 8498, 1, 0),
(8395, 11, 1, 1),
(8396, 8488, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questionrows`
--

CREATE TABLE IF NOT EXISTS `x2_questionrows` (
  `qrid` int(11) NOT NULL,
  `qrtype` tinyint(4) NOT NULL DEFAULT '2',
  `qrquestion` mediumtext NOT NULL,
  `qrknowsid` tinytext NOT NULL,
  `qrlevel` int(1) NOT NULL DEFAULT '0',
  `qrnumber` int(4) NOT NULL DEFAULT '0',
  `qruserid` int(11) NOT NULL DEFAULT '0',
  `qrusername` varchar(120) NOT NULL DEFAULT '',
  `qrlastmodifyuser` varchar(120) NOT NULL DEFAULT '',
  `qrtime` int(11) NOT NULL DEFAULT '0',
  `qrstatus` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_questionrows`
--

INSERT INTO `x2_questionrows` (`qrid`, `qrtype`, `qrquestion`, `qrknowsid`, `qrlevel`, `qrnumber`, `qruserid`, `qrusername`, `qrlastmodifyuser`, `qrtime`, `qrstatus`) VALUES
(1, 1, '&lt;p&gt;测试题冒题&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}', 1, 4, 54, 'peadmin', '', 1376419110, 1),
(2, 1, '&lt;p&gt;insertquestion&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"5";s:5:"knows";s:7:"章节2";}}', 1, 1, 3, '教师', '', 1440386789, 1),
(3, 5, '&lt;p&gt;阿大使大赛&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:19:"请修改知识点1";}}', 1, 1, 3, '教师', '', 1449025873, 1),
(4, 3, '&lt;p&gt;根据劳动合同法律制度的规定，服务期与劳动合同一般期限在时间长度上不一致，前者一般短于后者。（　　）&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:\\"knowsid\\";s:1:\\"5\\";s:5:\\"knows\\";s:7:\\"章节2\\";}}', 1, 0, 0, '', '', 0, 1),
(5, 3, '&lt;p&gt;根据劳动合同法律制度的规定，服务期与劳动合同一般期限在时间长度上不一致，前者一般短于后者。（　　）&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:\\"knowsid\\";s:1:\\"5\\";s:5:\\"knows\\";s:7:\\"章节2\\";}}', 1, 0, 0, '', '', 1456212732, 1),
(6, 3, '&lt;p&gt;根据劳动合同法律制度的规定，服务期与劳动合同一般期限在时间长度上不一致，前者一般短于后者。（　　）&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"5";s:5:"knows";s:7:"章节2";}}', 1, 0, 0, '', '', 1456213212, 1),
(7, 3, '&lt;p&gt;根据劳动合同法律制度的规定，服务期与劳动合同一般期限在时间长度上不一致，前者一般短于后者。（　　）&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"5";s:5:"knows";s:7:"章节2";}}', 1, 0, 0, '', '', 1456213291, 1),
(8, 3, '&lt;p&gt;根据劳动合同法律制度的规定，服务期与劳动合同一般期限在时间长度上不一致，前者一般短于后者。（　　）&lt;/p&gt;', 'a:4:{i:0;a:2:{s:7:"knowsid";s:1:"4";s:5:"knows";s:20:"请修改知识点4\r";}i:1;a:2:{s:7:"knowsid";s:1:"3";s:5:"knows";s:20:"请修改知识点3\r";}i:2;a:2:{s:7:"knowsid";s:1:"2";s:5:"knows";s:20:"请修改知识点2\r";}i:3;a:2:{s:7:"knowsid";s:1:"5";s:5', 1, 4, 0, '', '', 1456213559, 1),
(9, 2, '&lt;p&gt;测试多选题问题&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}', 1, 0, 1, 'peadmin', '', 1458194541, 0),
(10, 1, '&lt;p&gt;阿萨大苏打&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}', 1, 0, 1, 'peadmin', '', 1459474336, 0),
(11, 4, '&lt;p&gt;测试题帽题&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}', 3, 1, 0, '', '', 1462583551, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questions`
--

CREATE TABLE IF NOT EXISTS `x2_questions` (
  `questionid` int(11) NOT NULL,
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
  `questionlevel` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=8501 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_questions`
--

INSERT INTO `x2_questions` (`questionid`, `questiontype`, `question`, `questionuserid`, `questionusername`, `questionlastmodifyuser`, `questionselect`, `questionselectnumber`, `questionanswer`, `questiondescribe`, `questionknowsid`, `questioncreatetime`, `questionstatus`, `questionhtml`, `questionparent`, `questionsequence`, `questionlevel`) VALUES
(406, 2, '下列关于“小康社会”阐述正确的是（　）。', 0, '', '', '&lt;p&gt;A、我国人民生活总体上达到了小康水平，是社会主义制度的伟大胜利&lt;/p&gt;&lt;p&gt;B、这标志着我国彻底摆脱了贫穷落后面貌，跻身于世界经济大国&lt;/p&gt;&lt;p&gt;C、全面建设小康社会，是实现现代化建设的第三步战略目标必需的承上启下的发展阶段&lt;/p&gt;&lt;p&gt;D、党的十六大提出的“小康社会”与儒家主张的“小康社会”有本质的不同&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(407, 2, '关于我国第六次人口普查，下列表述不正确的是（）。', 0, '', '', '&lt;p&gt;A、其标准时点是2010年1月1日至2010年12月31日&lt;/p&gt;&lt;p&gt;B、所取得的数据不得作为对普查对象实施处罚的依据&lt;/p&gt;&lt;p&gt;C、所需经费由中央政府完全负担，列入相应年度的财政预算&lt;/p&gt;&lt;p&gt;D、采用按户口所在地登记的原则&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(408, 2, '下列关于我国土地资源的说法正确的是（　）。', 0, '', '', '&lt;p&gt;A、我国的国土面积居世界第四位&lt;/p&gt;&lt;p&gt;B、截至2010年底，中国耕地总数不足18、26亿亩，已接近“红线”，人均耕地不足0、1公顷，不到世界平均水平的一半&lt;/p&gt;&lt;p&gt;C、我国陆地地形多种多样，五种基本类型都有，山区总面积约占陆地总面积的三分之二&lt;/p&gt;&lt;p&gt;D、宁夏平原和河套平原被称为“塞上江南”&lt;/p&gt;', 4, 'BCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(409, 2, '《新乡市社会养老服务体系建设规划(2011-2015年)》是根据以下那些条例制定的。（）', 0, '', '', '&lt;p&gt;A、国家《社会养老服务体系建设规划(2011—2015年)》&lt;/p&gt;&lt;p&gt;B、《河南省社会养老服务体系建设规划(2011—2015年)》&lt;/p&gt;&lt;p&gt;C、《河南省老龄事业发展“十二五”规划》&lt;/p&gt;&lt;p&gt;D、《河南省人民政府关于加快推进社会养老服务体系建设的意见》&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(410, 2, '2012年，我省以迎接党的十八大胜利召开和学习贯彻十八大精神为动力，全面落实省第九次党代会部署，持续求进，务实发展，根据形势变化特点，突出（）四个着力点，较好完成了省十一届人大五次会议确定的各项目标任务。（）', 0, '', '', '&lt;p&gt;A、扩需求&lt;/p&gt;&lt;p&gt;B、创优势&lt;/p&gt;&lt;p&gt;C、破瓶颈&lt;/p&gt;&lt;p&gt;D、惠民生&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(411, 2, '为推进“全国农村改革试验区”改革发展，加强新乡市新型农村社区规划建设的管理,推进新型城镇化进程，促进“三化”协调科学发展,根据（）、（）和（）等法律法规有关规定，结合新乡市建设新型农村社区的实际，先行先试，制定新乡市新型农村社区规划建设管理办法。（）', 0, '', '', '&lt;p&gt;A、《中华人民共和国城乡规划法》&lt;/p&gt;&lt;p&gt;B、《中华人民共和国建筑法》&lt;/p&gt;&lt;p&gt;C、《河南省实施〈中华人民共和国城乡规划法〉办法》&lt;/p&gt;&lt;p&gt;D、《城市居住区规划设计规范》&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(412, 2, '辉县一座正在崛起的工业新城。（）、（）、装备制造业、纺织加工业、（）等已成为五大支柱产业。（　　　）', 0, '', '', '&lt;p&gt;A、形成能源业&lt;/p&gt;&lt;p&gt;B、水泥建材业&lt;/p&gt;&lt;p&gt;C、药品食品业&lt;/p&gt;&lt;p&gt;D、化工医药业&lt;/p&gt;', 4, 'ABC　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(413, 2, '国家能源局表示，2011年，可再生能源“十二五”规划将全面实施，七个战略新兴产业发展规划全面启动，新能源和可再生能源迎来新的发展机遇期。下列说法不正确的是（　）。', 0, '', '', '&lt;p&gt;A、2015年，战略新兴产业增加值占国内生产总值的比重力争达15%左右&lt;/p&gt;&lt;p&gt;B、核能、水电、风能、太阳能和生物能均属于可再生能源&lt;/p&gt;&lt;p&gt;C、我国的水能资源的蕴藏量居世界第二位&lt;/p&gt;&lt;p&gt;D、青藏高原、新疆、内蒙古高原、贵州高原具有丰富的太阳辐射能&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(414, 2, '辉县是一个品牌闪亮的农业基地。是（）和（），是国家优质小麦生产基地，全国小麦良种繁育基地，全国粮食生产先进县，全国食用菌行业优秀基地县，全国无公害农产品标志推广与监管示范县和河南省畜牧业发展重点县。是全省无公害蔬菜生产基地，（）。（　　　　）', 0, '', '', '&lt;p&gt;A、全国生猪调出大县&lt;/p&gt;&lt;p&gt;B、全省畜牧业发展重点县&lt;/p&gt;&lt;p&gt;C、国家优质小麦生产基地&lt;/p&gt;&lt;p&gt;D、全省最大的食用菌单品种种植基地&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(415, 2, '社会建设与人民幸福安康息息相关。党的十八大报告提出，要加快推进以改善民生为重点的社会建设。下列各项属于社会建设范畴的是（）。', 0, '', '', '&lt;p&gt;A、在学校建立贫困生活资助体系&lt;/p&gt;&lt;p&gt;B、为低收入家庭提供住房保障&lt;/p&gt;&lt;p&gt;C、扩大各项社会保险的覆盖范围&lt;/p&gt;&lt;p&gt;D、强化政府服务职能，建设服务型政府&lt;/p&gt;', 4, 'ABC　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(416, 2, '我国民族关系中的“三个离不开”指（）。', 0, '', '', '&lt;p&gt;A、汉族离不开少数民族&lt;/p&gt;&lt;p&gt;B、少数民族的发展离不开自身的努力，离不开发达地区的帮助，离不开国家政策的支持&lt;/p&gt;&lt;p&gt;C、少数民族离不开汉族，&lt;/p&gt;&lt;p&gt;D、少数民族之间也相互离不开&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(417, 2, '下列关于我国经济发展现状的表述，正确的是（）。', 0, '', '', '&lt;p&gt;A、人均国民生产总值已超过3000美元&lt;/p&gt;&lt;p&gt;B、黄金储备量已超过1000吨&lt;/p&gt;&lt;p&gt;C、对石油进口的依存度已接近30%&lt;/p&gt;&lt;p&gt;D、第三产业增加值已接近第二产业&lt;/p&gt;', 4, 'ABD　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(418, 2, '今后五年，河南省将围绕全面建成小康社会，努力实现以下那些目标：（　）。', 0, '', '', '&lt;p&gt;A、综合经济实力再上一个大台阶。&lt;/p&gt;&lt;p&gt;B、人民生活水平再上一个大台阶。&lt;/p&gt;&lt;p&gt;C、现代化建设再上一个大台阶。&lt;/p&gt;&lt;p&gt;D、基础支撑条件基本完备。&lt;/p&gt;', 4, 'ABCD　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(419, 2, '新乡市在新型农村社区规划建设中提出，新型农村社区规划建设应满足哪些技术标准。（　　）', 0, '', '', '&lt;p&gt;A、《城市居住区规划设计规范》&lt;/p&gt;&lt;p&gt;B、《河南省新型农村社区建设技术导则》&lt;/p&gt;&lt;p&gt;C、《新乡市新型农村社区规划建设技术导则》&lt;/p&gt;&lt;p&gt;D、《中原经济区规划》&lt;/p&gt;', 4, 'ABC　　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(420, 2, '下列关于我国人口现状的说法正确的是（）。', 0, '', '', '&lt;p&gt;A、我国当前人口工作的基本方向是控制人口数量、提高人口素质，优化人口结构，促进人口长期均衡发展&lt;/p&gt;&lt;p&gt;B、人口老龄化的趋势在加快、流动人口的规模不断扩大、出生人口的性别比偏低是我国当前所面临的人口问题&lt;/p&gt;&lt;p&gt;C、十二五”时期，我国将出现第一个老年人口增长高峰&lt;/p&gt;&lt;p&gt;D、“十二五”时期，我国的人均预期寿命将达到74、5岁&lt;/p&gt;', 4, 'ACD　', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(421, 2, '中国特色社会主义的基本经验包括（）。', 0, '', '', '&lt;p&gt;A、中国特色社会主义道路&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;C、中国特色社会主义制度&lt;/p&gt;&lt;p&gt;D、中国特色社会主义民主法治&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(422, 2, '推进经济结构战略性调整，必须以（）为重点，着力解决制约经济持续健康发展的重大结构性问题。（）', 0, '', '', '&lt;p&gt;A、改善需求结构&lt;/p&gt;&lt;p&gt;B、优化产业结构&lt;/p&gt;&lt;p&gt;C、促进区域协调发展&lt;/p&gt;&lt;p&gt;D、推进城镇化&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(423, 2, '十八大报告指出，扎实推进社会主义文化强国，就要（）。', 0, '', '', '&lt;p&gt;A、加强社会主义核心价值体系建设&lt;/p&gt;&lt;p&gt;B、全面提高公民道德素质&lt;/p&gt;&lt;p&gt;C、丰富人民精神文化生活&lt;/p&gt;&lt;p&gt;D、增强文化整体实力和竞争力&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(424, 2, '科学发展观最鲜明的精神实质是（）。', 0, '', '', '&lt;p&gt;A、解放思想&lt;/p&gt;&lt;p&gt;B、实事求是&lt;/p&gt;&lt;p&gt;C、与时俱进&lt;/p&gt;&lt;p&gt;D、求真务实&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(425, 2, '党的十八大对我国现阶段基本国情的重要判断是（）。', 0, '', '', '&lt;p&gt;A、我国仍处于并将长期处于社会主义初级阶段的基本国情没有变&lt;/p&gt;&lt;p&gt;B、人民日益增长的物质文化需要同落后的社会生产之间的矛盾这一社会主要矛盾没有变&lt;/p&gt;&lt;p&gt;C、我国是世界最大发展中国家的国际地位没有变&lt;/p&gt;&lt;p&gt;D、经济建设为中心的发展路子没有变&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(426, 2, '党的十八大报告提出：千方百计增加居民收入，在收入分配过程中实现“两个同步”是指（）。', 0, '', '', '&lt;p&gt;A、城乡居民收入增长和经济发展同步&lt;/p&gt;&lt;p&gt;B、城镇居民收入增长和经济发展同步&lt;/p&gt;&lt;p&gt;C、劳动报酬增长和生产率提高同步&lt;/p&gt;&lt;p&gt;D、国民生产总值增长和生产率提高同步&lt;/p&gt;', 4, 'AC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(427, 2, '党的十八大提出，我们坚定不移高举中国特色社会主义伟大旗帜，不能走：（）。', 0, '', '', '&lt;p&gt;A、封闭僵化的老路&lt;/p&gt;&lt;p&gt;B、改旗易帜的邪路&lt;/p&gt;&lt;p&gt;C、照搬照抄的死路&lt;/p&gt;&lt;p&gt;D、拒绝改革的旧路&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(428, 2, '中国特色社会主义理论体系、道路和制度的相互关系是（）。', 0, '', '', '&lt;p&gt;A、中国特色社会主义道路是实现途径&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系是行动指南&lt;/p&gt;&lt;p&gt;C、中国特色社会主义制度是根本保障&lt;/p&gt;&lt;p&gt;D、三者统一于中国特色社会主义伟大实践&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(429, 2, '十二届一次全会决定的四位副总理是：（）。', 0, '', '', '&lt;p&gt;A、张高丽&lt;/p&gt;&lt;p&gt;B、汪洋&lt;/p&gt;&lt;p&gt;C、刘延东&lt;/p&gt;&lt;p&gt;D、马凯&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(430, 2, '党的十八大提出的“两个一百年”奋斗目标是（）。', 0, '', '', '&lt;p&gt;A、建党100年，全面建成小康社会&lt;/p&gt;&lt;p&gt;B、建国100年，建成社会主义现代化国家&lt;/p&gt;&lt;p&gt;C、建军100年，成为世界第一强大国家&lt;/p&gt;&lt;p&gt;D、改革开放100年，成为世界第一大国&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(431, 2, '为了更好地发挥积极财政政策在稳增长、调结构、促改革、惠民生中的作用，必须（）。', 0, '', '', '&lt;p&gt;A、适当增加财政赤字和国债规模&lt;/p&gt;&lt;p&gt;B、结合税制改革完善结构性减税政策&lt;/p&gt;&lt;p&gt;C、着力优化财政支出结构&lt;/p&gt;&lt;p&gt;D、续加强地方政府性债务管理&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(432, 2, '胡锦涛指出，要加强国防和军队现代化建设，要适应国家发展战略和安全战略新要求，高度关注（）空间安全，提高以打赢信息化条件下局部战争能力为核心的完成多样化军事任务能力。', 0, '', '', '&lt;p&gt;A、海洋&lt;/p&gt;&lt;p&gt;B、太空&lt;/p&gt;&lt;p&gt;C、网络&lt;/p&gt;&lt;p&gt;D、岛屿&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(433, 2, '要积极发展党内民主，保障党员主体地位，健全党员民主权利保障制度，落实党员（）。', 0, '', '', '&lt;p&gt;A、知情权&lt;/p&gt;&lt;p&gt;B、参与权&lt;/p&gt;&lt;p&gt;C、选举权&lt;/p&gt;&lt;p&gt;D、监督权&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(434, 2, '坚持把思想理论建设放在首位，必须提高全党运用科学理论改造主观世界和客观世界的能力，使党的理论和实践始终（）。', 0, '', '', '&lt;p&gt;A、体现时代性&lt;/p&gt;&lt;p&gt;B、充满先进性&lt;/p&gt;&lt;p&gt;C、把握规律性&lt;/p&gt;&lt;p&gt;D、富于创造性&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(435, 2, '党要管党，从严治党是保持党的先进性和纯洁性，巩固党的执政地位的重要保证。在新的历史条件下，我们坚持党要管党、从严治党，必须解决好的两大历史性课题是( )。', 0, '', '', '&lt;p&gt;A、提高党的领导水平和执政水平&lt;/p&gt;&lt;p&gt;B、提高拒腐防变和抵御风险的能力&lt;/p&gt;&lt;p&gt;C、提高全党的马克思主义理论水平&lt;/p&gt;&lt;p&gt;D、提高领导干部队伍的整体素质&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(436, 2, '面对新的历史条件和考验，全党必须增强哪些意识（ABCD）', 0, '', '', '&lt;p&gt;A、忧患意识&lt;/p&gt;&lt;p&gt;B、创新意识&lt;/p&gt;&lt;p&gt;C、宗旨意识&lt;/p&gt;&lt;p&gt;D、使命意识&lt;/p&gt;', 4, '', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(437, 2, '面对资源约束趋紧、环境污染严重、生态系统退化的严峻形势，必须树立正确的生态文明理念是（）。', 0, '', '', '&lt;p&gt;A、尊重自然&lt;/p&gt;&lt;p&gt;B、顺应自然&lt;/p&gt;&lt;p&gt;C、保护自然&lt;/p&gt;&lt;p&gt;D、改造自然&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(438, 2, '党的十八大倡导的中国特色社会主义核心价值观包括（）。', 0, '', '', '&lt;p&gt;A、倡导富强、民主、文明、和谐&lt;/p&gt;&lt;p&gt;B、倡导忠孝、仁勇、俭让、节义&lt;/p&gt;&lt;p&gt;C、倡导自由、平等、公正、法治&lt;/p&gt;&lt;p&gt;D、倡导爱国、敬业、诚信、友善&lt;/p&gt;', 4, 'ACD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(439, 2, '根据胡锦涛总书记所作的十八大政治报告，大会主题是（）。', 0, '', '', '&lt;p&gt;A、高举中国特色社会主义伟大旗帜&lt;/p&gt;&lt;p&gt;B、走中国特色社会主义道道&lt;/p&gt;&lt;p&gt;C、以解放思想、改革开放、凝聚力量、攻坚克难的精神状态&lt;/p&gt;&lt;p&gt;D、为全面建成小康社会的伟大目标而奋斗&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(440, 2, '十八大报告关于十年成就明确提到的两个“世界第二位”是（）。', 0, '', '', '&lt;p&gt;A、国内生产总值GDP世界第二&lt;/p&gt;&lt;p&gt;B、进出口总额世界第二&lt;/p&gt;&lt;p&gt;C、外汇储备世界第二&lt;/p&gt;&lt;p&gt;D、科技创新水平世界第二&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(441, 2, '十七大以来我们推动和两岸关系，实现重大转折，主要表现在（）。', 0, '', '', '&lt;p&gt;A、实现两岸全面双向“三通”&lt;/p&gt;&lt;p&gt;B、签署实施两岸经济合作框架协议&lt;/p&gt;&lt;p&gt;C、形成两岸全方位交往格局&lt;/p&gt;&lt;p&gt;D、开创两岸关系和平发展新局面&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(442, 2, '为了进一步完善社会主义市场经济体制，政府工作报告指出必须：（）。', 0, '', '', '&lt;p&gt;A、毫不动摇低巩固和发展公有制经济&lt;/p&gt;&lt;p&gt;B、毫不动摇低鼓励、支持和引导非公有制经济发展&lt;/p&gt;&lt;p&gt;C、形成各种所有制经济依法平等使用生产要素、公平参与市场竞争、同等受到法律保护的体制环境&lt;/p&gt;&lt;p&gt;D、加强社会主义民主法治建设&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(443, 2, '十八大报告提出的发展方式转变的重大战略举措主要有（）。', 0, '', '', '&lt;p&gt;A、深化改革是发展方式转变的关键，改革的核心是处理好政府和市场的关系&lt;/p&gt;&lt;p&gt;B、科技创新是发展方式转变提高社会生产力和综合国力的战略支撑，必须摆在发展全局的核心位置&lt;/p&gt;&lt;p&gt;C、结构调整是发展方式转变的主攻方向，结构调整要牢牢把握扩大内需这一战略基点和发展实体经济这一坚实基础&lt;/p&gt;&lt;p&gt;D、提高开放型经济水平，推动开放朝着优化结构、拓展深度、提高效益的方向转变；同时推动城乡一体化发展&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(444, 2, '十八大政治报告提出，十年来我国经济总量从世界第六位上升到第二位，重要意义在于（）。', 0, '', '', '&lt;p&gt;A、社会生产力、经济实力、科技实力迈上一个大台阶&lt;/p&gt;&lt;p&gt;B、人民生活水平、居民收入水平、社会保障水平迈上一个大台阶&lt;/p&gt;&lt;p&gt;C、综合国力、国际竞争力、国际影响力迈上一个大台阶&lt;/p&gt;&lt;p&gt;D、国际话语权和世界领导作用迈上了一个大台阶&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(445, 2, '十八大政治报告上提出，党的十六大以来的十年，是我国经济持续发展、民主不断健全、文化日益繁荣、社会保持稳定的十年，取得这样的历史性成就主要靠的是（）。', 0, '', '', '&lt;p&gt;A、科学发展观的科学指导&lt;/p&gt;&lt;p&gt;B、党的基本理论，基本路线、基本纲领、基本经验的正确指引&lt;/p&gt;&lt;p&gt;C、新中国成立以来特别是改革开放以来奠定的深厚基础&lt;/p&gt;&lt;p&gt;D、全党全国各族人民的团结奋斗&lt;/p&gt;', 4, 'BC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(446, 2, '十八大政治报告上提出，总结十年奋斗历程，最重要的是形成和贯彻了科学发展观,科学发展观的重要意义在于（）。', 0, '', '', '&lt;p&gt;A、是马克思主义同当代中国实际和时代特征相结合的产物&lt;/p&gt;&lt;p&gt;B、是马克思主义关于发展的世界观和方法论的集中体现&lt;/p&gt;&lt;p&gt;C、对新形势下实现什么样的发展、怎样发展等重大问题作出了新的科学回答&lt;/p&gt;&lt;p&gt;D、把我们对中国特色社会主义规律的认识提高到新的水平，开辟了当代中国马克思主义发展新境界&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(447, 2, '科学发展观的历史地位在于（）。', 0, '', '', '&lt;p&gt;A、是中国特色社会主义理论体系最新成果&lt;/p&gt;&lt;p&gt;B、是指导党和国家全部工作的强大思想武器&lt;/p&gt;&lt;p&gt;C、是中国共产党集体智慧的结晶&lt;/p&gt;&lt;p&gt;D、是党必须长期坚持的指导思想&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(448, 2, '十八大对科学发展观主要内容的新定位是（）。', 0, '', '', '&lt;p&gt;A、第一要义是经济社会发展&lt;/p&gt;&lt;p&gt;B、核心立场是以为为本&lt;/p&gt;&lt;p&gt;C、基本要求是全面协调可持续&lt;/p&gt;&lt;p&gt;D、根本方法是统筹兼顾&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(449, 2, '推动经济社会发展是科学发展观的第一要义，概括而言，发展是指（）。', 0, '', '', '&lt;p&gt;A、科学发展&lt;/p&gt;&lt;p&gt;B、和谐发展&lt;/p&gt;&lt;p&gt;C、和平发展&lt;/p&gt;&lt;p&gt;D、全面协调可持续发展&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(450, 2, '十八大政治报告强调要更加自觉地把以人为本作为深入贯彻落实科学发展观的核心立场，这是指（）。', 0, '', '', '&lt;p&gt;A、始终把实现好、发展好、维护好最广大人民根本利益作为党和国家一切工作的出发点和落脚点&lt;/p&gt;&lt;p&gt;B、尊重人民首创精神&lt;/p&gt;&lt;p&gt;C、保障人民各项权益&lt;/p&gt;&lt;p&gt;D、不断在实现发展成果由人民共享、促进人的全面发展上取得新成效&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(451, 2, '政府工作报告指出，重点推进三公经费公开接受民众监督，三公是指：（）。', 0, '', '', '&lt;p&gt;A、公务接待经费&lt;/p&gt;&lt;p&gt;B、公务车购置使用经费&lt;/p&gt;&lt;p&gt;C、因公出国出境经费&lt;/p&gt;&lt;p&gt;D、公务培训经费&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(452, 2, '十八大报告政治指出：毛泽东第一代领导人为中国特色社会主义作出的主要贡献是（）。', 0, '', '', '&lt;p&gt;A、宝贵经验&lt;/p&gt;&lt;p&gt;B、理论准备&lt;/p&gt;&lt;p&gt;C、物质基础&lt;/p&gt;&lt;p&gt;D、重要思想&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(453, 2, '中国共产党面向未来的“两个一百年”是（）。', 0, '', '', '&lt;p&gt;A、建党100年，全面建成小康社会&lt;/p&gt;&lt;p&gt;B、建国100年，建成社会主义现代化国家&lt;/p&gt;&lt;p&gt;C、建军100年，成为世界第一强大国家&lt;/p&gt;&lt;p&gt;D、改革开放100年，成为世界第一大国&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(454, 2, '十八大政治报告指出：邓小平第二代领导人为中国特色社会主义作出的主要贡献是( )。', 0, '', '', '&lt;p&gt;A、作出把党和国家工作中心转移到经济建设上来&lt;/p&gt;&lt;p&gt;B、实行改革开放的历史性决策；深刻揭示社会主义本质&lt;/p&gt;&lt;p&gt;C、确立社会主义初级阶段基本路线，明确提出走自己的路、建设中国特色社会主义&lt;/p&gt;&lt;p&gt;D、科学回答了建设中国特色社会主义的一系列基本问题，成功开创了中国特色社会主义&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(455, 2, '十八大指出，独立自主、自力更生、充满自信主要是指（）。', 0, '', '', '&lt;p&gt;A、道路自信&lt;/p&gt;&lt;p&gt;B、理论自信&lt;/p&gt;&lt;p&gt;C、旗帜自信&lt;/p&gt;&lt;p&gt;D、制度自信&lt;/p&gt;', 4, 'ABD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(456, 2, '十八大提出，从2010年到2020年要实现“两个倍增”计划是（）。', 0, '', '', '&lt;p&gt;A、国内生产总值倍增&lt;/p&gt;&lt;p&gt;B、进出口贸易额倍增&lt;/p&gt;&lt;p&gt;C、外汇储备量倍增&lt;/p&gt;&lt;p&gt;D、城乡居民收入倍增&lt;/p&gt;', 4, 'AD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(457, 2, '十八大提出全面建设小康的新要求是（）。', 0, '', '', '&lt;p&gt;A、经济持续健康发展，转变经济发展方式取得重大进展&lt;/p&gt;&lt;p&gt;B、人民民主不断扩大，民主制度更加完善，文化软实力显著增强，社会主义核心价值体系深入人心&lt;/p&gt;&lt;p&gt;C、人民生活水平全面提高，基本公共服务均等化总体实现&lt;/p&gt;&lt;p&gt;D、资源节约型、环境友好型社会建设取得重大进展；主体功能区布局基本形成，资源循环利用体系初步建立&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(458, 2, '中国特色的社会主义现代化道路，具有鲜明的时代内容，具体是指（）。', 0, '', '', '&lt;p&gt;A、新型工业化道路&lt;/p&gt;&lt;p&gt;B、信息化道路&lt;/p&gt;&lt;p&gt;C、城镇化道路&lt;/p&gt;&lt;p&gt;D、农业现代化道路&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(459, 2, '十八大强调，坚持走中国特色新型工业化、信息化、城镇化、农业现代化道路，正确处理“四化“之间相互关系的基本要求是（）。', 0, '', '', '&lt;p&gt;A、信息化和工业化深度融合&lt;/p&gt;&lt;p&gt;B、工业化和城镇化良性互动&lt;/p&gt;&lt;p&gt;C、城镇化和农村现代化相互协调&lt;/p&gt;&lt;p&gt;D、工业化、信息化、城镇化、农业现代化同步发展&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(460, 2, '十八大指出，加快发展方式转变，就是要使经济发展更多地（）。', 0, '', '', '&lt;p&gt;A、依靠内需特别是消费需求拉动&lt;/p&gt;&lt;p&gt;B、依靠科技进步、劳动者素质提高、管理创新驱动&lt;/p&gt;&lt;p&gt;C、依靠现代服务业和战略性新兴产业带动；依靠节约资源和循环经济推动&lt;/p&gt;&lt;p&gt;D、依靠城乡区域发展协调互动，不断增强长期发展后劲&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(461, 2, '十八大指出，加快发展方式转变，提高质量和效益就要（）。', 0, '', '', '&lt;p&gt;A、着力激发各类市场主体发展新活力&lt;/p&gt;&lt;p&gt;B、着力增强创新驱动发展新动力&lt;/p&gt;&lt;p&gt;C、着力构建现代产业发展新体系&lt;/p&gt;&lt;p&gt;D、着力培育开放型经济发展新优势&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(462, 2, '十八大强调，在当代中国，关系我国发展全局的战略抉择是（）。', 0, '', '', '&lt;p&gt;A、以科学发展观为主题&lt;/p&gt;&lt;p&gt;B、以加快发展方式转变为主线&lt;/p&gt;&lt;p&gt;C、以科技创新发展为支撑&lt;/p&gt;&lt;p&gt;D、以教育发展为基础&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(463, 2, '十八大政治报告指出：江泽民为核心的第三代中国领导集体又对于中国特色社会主义的主要贡献是（）。', 0, '', '', '&lt;p&gt;A、依据新的实践确立了党的基本纲领、基本经验&lt;/p&gt;&lt;p&gt;B、确立了社会主义市场经济体制的改革目标和基本框架&lt;/p&gt;&lt;p&gt;C、确立了社会主义初级阶段的基本经济制度和分配制度，开创全面改革开放新局面&lt;/p&gt;&lt;p&gt;D、推进党的建设新的伟大工程，成功把中国特色社会主义推向二十一世纪&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(464, 2, '胡锦涛为总书记的第四代中国领导集体，成功地在新的历史起点上坚持和发展了中国特色社会主义，主要贡献是（）。', 0, '', '', '&lt;p&gt;A、强调坚持以人为本、全面协调可持续发展&lt;/p&gt;&lt;p&gt;B、提出构建社会主义和谐社会、加快生态文明建设，形成中国特色社会主义事业总体布局&lt;/p&gt;&lt;p&gt;C、着力保障和改善民生，促进社会公平正义，推动建设和谐世界&lt;/p&gt;&lt;p&gt;D、推进党的执政能力建设和先进性建设&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(465, 2, '十八大重申指出，党和人民九十多年奋斗的根本成就是（）。', 0, '', '', '&lt;p&gt;A、中国特色社会主义道路&lt;/p&gt;&lt;p&gt;B、中国特色社会主义理论体系&lt;/p&gt;&lt;p&gt;C、中国特色社会主义制度&lt;/p&gt;&lt;p&gt;D、中国特色社会主义旗帜&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(466, 2, '高举中国特色社会主义伟大旗帜要坚持反对的主要错误倾向是（）。', 0, '', '', '&lt;p&gt;A、封闭僵化的老路&lt;/p&gt;&lt;p&gt;B、改旗易帜的邪路&lt;/p&gt;&lt;p&gt;C、照搬照抄的死路&lt;/p&gt;&lt;p&gt;D、拒绝改革的旧路&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(467, 2, '十八大重申指出，中国特色社会主义理论体系主要包括（）。', 0, '', '', '&lt;p&gt;A、毛泽东思想&lt;/p&gt;&lt;p&gt;B、邓小平理论&lt;/p&gt;&lt;p&gt;C、江泽民三个代表重要思想&lt;/p&gt;&lt;p&gt;D、科学发展观&lt;/p&gt;', 4, 'BCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(468, 2, '十八大重申，中国特色社会主义道路，就是在（）。', 0, '', '', '&lt;p&gt;A、立足基本国情，以经济建设为中心&lt;/p&gt;&lt;p&gt;B、坚持四项基本原则，坚持改革开放，解放和发展社会生产力&lt;/p&gt;&lt;p&gt;C、建设社会主义市场经济、社会主义民主政治、社会主义先进文化、社会主义和谐社会、社会主义生态文明&lt;/p&gt;&lt;p&gt;D、促进人的全面发展，逐步实现全体人民共同富裕，建设富强民主文明和谐的社会主义现代化国家&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(469, 2, '中国特色社会主义制度，概括而言，主要是指（）。', 0, '', '', '&lt;p&gt;A、根本制度&lt;/p&gt;&lt;p&gt;B、基本制度&lt;/p&gt;&lt;p&gt;C、具体制度&lt;/p&gt;&lt;p&gt;D、具体机制&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(470, 2, '结合过去十年特别是近五年工作的体会，政府工作报告对今年政府主要工作提出以下建议。（）', 0, '', '', '&lt;p&gt;A、加快转变经济发展方式，促进经济持续健康发展&lt;/p&gt;&lt;p&gt;B、强化农业农村发展基础，推动城乡发展一体化&lt;/p&gt;&lt;p&gt;C、以保障和改善民生为重点，全面提高人民物质文化生活水平&lt;/p&gt;&lt;p&gt;D、以更大的政治勇气和智慧，深入推进改革开放&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(471, 2, '中国特色社会主义总任务是（）。', 0, '', '', '&lt;p&gt;A、社会主义现代化&lt;/p&gt;&lt;p&gt;B、中华民族伟大复兴&lt;/p&gt;&lt;p&gt;C、全国人民共同富裕&lt;/p&gt;&lt;p&gt;D、人的自由和全面发展&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(472, 2, '发展中国特色社会主义，其中的中国特色主要是指（）。', 0, '', '', '&lt;p&gt;A、实践特色&lt;/p&gt;&lt;p&gt;B、理论特色&lt;/p&gt;&lt;p&gt;C、民族特色&lt;/p&gt;&lt;p&gt;D、时代特色&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(473, 2, '我国国防和军队现代化建设的双重任务是（）。', 0, '', '', '&lt;p&gt;A、机械化&lt;/p&gt;&lt;p&gt;B、信息化&lt;/p&gt;&lt;p&gt;C、电子化&lt;/p&gt;&lt;p&gt;D、网络化&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(474, 2, '十八大提出，当今世界各国人民的共同愿望是（）。', 0, '', '', '&lt;p&gt;A、要和平不要战争&lt;/p&gt;&lt;p&gt;B、要发展不要贫穷&lt;/p&gt;&lt;p&gt;C、要合作不要对抗&lt;/p&gt;&lt;p&gt;D、建设持久和平、共同繁荣的和谐世界&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(475, 2, '政治体制改革的目标是（）。', 0, '', '', '&lt;p&gt;A、增强党和国家的活力&lt;/p&gt;&lt;p&gt;B、调动人民积极性&lt;/p&gt;&lt;p&gt;C、维持团结稳定&lt;/p&gt;&lt;p&gt;D、保证共产党长期执政&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(476, 2, '十八大提出，完善基层民主的重点是（）。', 0, '', '', '&lt;p&gt;A、扩大有序参与&lt;/p&gt;&lt;p&gt;B、推进信息公开&lt;/p&gt;&lt;p&gt;C、加强议事协商&lt;/p&gt;&lt;p&gt;D、强化权力监督&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(477, 2, '十八大提出，依法治国理政的基本方式，主要包括（）。', 0, '', '', '&lt;p&gt;A、科学立法&lt;/p&gt;&lt;p&gt;B、严格执法&lt;/p&gt;&lt;p&gt;C、公正司法&lt;/p&gt;&lt;p&gt;D、全民守法&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(478, 2, '按照建立中国特色行政体制的目标，行政体制改革的主要内容有（）。', 0, '', '', '&lt;p&gt;A、政企分开&lt;/p&gt;&lt;p&gt;B、政资分开&lt;/p&gt;&lt;p&gt;C、政事分开&lt;/p&gt;&lt;p&gt;D、政社分开&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(479, 2, '在中国特色行政体制改革中，服务型政府的基本要求是（）。', 0, '', '', '&lt;p&gt;A、职能科学&lt;/p&gt;&lt;p&gt;B、结构优化&lt;/p&gt;&lt;p&gt;C、廉洁高效&lt;/p&gt;&lt;p&gt;D、人民满意&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(480, 2, '十八大要求建立健全权力运行制约和监督体系，强调指出，权力正确运行的重要保证是保障人民的（）。', 0, '', '', '&lt;p&gt;A、知情权&lt;/p&gt;&lt;p&gt;B、参与权&lt;/p&gt;&lt;p&gt;C、表达权&lt;/p&gt;&lt;p&gt;D、监督权&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(481, 2, '社会主义民族关系的基本要求是促进各民族（）。', 0, '', '', '&lt;p&gt;A、和睦相处&lt;/p&gt;&lt;p&gt;B、和衷共济&lt;/p&gt;&lt;p&gt;C、和谐发展&lt;/p&gt;&lt;p&gt;D、和平共处&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(482, 2, '十八大提出，党的民族工作主题是（）。', 0, '', '', '&lt;p&gt;A、民族平等&lt;/p&gt;&lt;p&gt;B、发展经济&lt;/p&gt;&lt;p&gt;C、各民族共同团结奋斗&lt;/p&gt;&lt;p&gt;D、共同繁荣发展&lt;/p&gt;', 4, 'CD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(483, 2, '十八大提出，文化的重要作用主要有（）。', 0, '', '', '&lt;p&gt;A、引领风尚&lt;/p&gt;&lt;p&gt;B、教育人民&lt;/p&gt;&lt;p&gt;C、服务社会&lt;/p&gt;&lt;p&gt;D、推动发展&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(484, 2, '十八大提出，我国在外交和国际政治活动中坚持弘扬的基本精神是（）。', 0, '', '', '&lt;p&gt;A、平等互信&lt;/p&gt;&lt;p&gt;B、包容互鉴&lt;/p&gt;&lt;p&gt;C、合作共赢&lt;/p&gt;&lt;p&gt;D、相互依存&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(485, 2, '十八大提出的党建目标是建设（）的马克思主义执政党。', 0, '', '', '&lt;p&gt;A、学习型&lt;/p&gt;&lt;p&gt;B、服务型&lt;/p&gt;&lt;p&gt;C、创新型&lt;/p&gt;&lt;p&gt;D、改革型&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(486, 2, '生态文明建设的基本国策是（）。', 0, '', '', '&lt;p&gt;A、节约资源&lt;/p&gt;&lt;p&gt;B、保护环境&lt;/p&gt;&lt;p&gt;C、提高资源利用效率&lt;/p&gt;&lt;p&gt;D、用好国内国际两种资源&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(487, 2, '生态文明建设的基本方针是（）。', 0, '', '', '&lt;p&gt;A、节约优先&lt;/p&gt;&lt;p&gt;B、保护优先&lt;/p&gt;&lt;p&gt;C、自然恢复为主&lt;/p&gt;&lt;p&gt;D、开发利用为主&lt;/p&gt;', 4, 'ABC', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(488, 2, '优化国土空间开发的原则是（）。', 0, '', '', '&lt;p&gt;A、人口资源环境相均衡&lt;/p&gt;&lt;p&gt;B、经济社会生态效益相统一&lt;/p&gt;&lt;p&gt;C、开发利用和环境保护相结合&lt;/p&gt;&lt;p&gt;D、节约资源和提高资源利用率相互促进&lt;/p&gt;', 4, 'AB', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(489, 2, '十八大在提高海洋资源开发能力方面提出的主要政策目标有（）。', 0, '', '', '&lt;p&gt;A、发展海洋经济&lt;/p&gt;&lt;p&gt;B、保护海洋生态环境&lt;/p&gt;&lt;p&gt;C、维护国家海洋权益&lt;/p&gt;&lt;p&gt;D、建设海洋强国&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(490, 2, '中国特色社会主义文化发展道路主要内容是（）。', 0, '', '', '&lt;p&gt;A、坚持为人民服务、为社会主义服务的方向&lt;/p&gt;&lt;p&gt;B、坚持百花齐放、百家争鸣的方针&lt;/p&gt;&lt;p&gt;C、坚持贴近实际、贴近生活、贴近群众的原则&lt;/p&gt;&lt;p&gt;D、推动精神文明和物质文明全面发展，建设面向现代化、面向世界、面向未来的社会主义先进文化&lt;/p&gt;', 4, 'ABCD', '', 'a:0:{}', 1372247435, 1, '', 0, 0, 1),
(716, 3, '解放和发展社会生产力是改革开放和社会主义现代化建设的根本目的。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(717, 3, '加强社会建设，必须以保障和改善民生为重点。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(718, 3, '加强文化建设是社会和谐稳定的重要保证。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(719, 3, '2012年是全面贯彻落实党的十八大精神和实施《中原经济区规划》的开局之年，是为全面建成小康社会奠定坚实基础的重要一年。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(720, 3, '用领导方式转变加快发展方式转变学习交流和创新实践深入开展，“两转两提”扎实推进，科学发展意识和能力显著增强，务实重干作风持续弘扬，合力攻坚氛围更加浓厚，推动中原经济区发展已上升为国家战略。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(721, 3, '新型农村社区规划建设应按照“分类指导、科学规划、产城融合、群众自愿、量力而行”的指导思想,遵循发展性、相融性、多样性和共享性等原则。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(722, 3, '新型农村社区规划建设应按照“分类指导、科学规划、产城融合、群众自愿、量力而行”的指导思想,遵循发展性、相融性、多样性和共享性等原则。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(723, 3, '经济实力和竞争力是国家富强、民族振兴的重要标志。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(724, 3, '让人民享有健康丰富的精神文化生活，是全面建成小康社会的重要条件。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(725, 3, '新型农村社区建设项目(包括其配套的基础设施、公共设施建设项目和其他各类建筑工程项目)建设项目,除国家、省明文规定的收费项目外各级部门不得收取任何费用。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(726, 3, '要坚持深入人民群众的创作导向，提高文化产品质量，为人民提供更好更多精神食粮。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(727, 3, '弘扬中华传统美德是社会主义道德建设的基本任务。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(728, 3, '新型农村社区项目应按审查通过的规划方案严格实施,各级规划管理部门负责规划方案实施的监督管理,应指派村镇规划协管员,进行技术服务和技术监督。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(729, 3, '按照“共创百年社区，共建宜居城市，共享美好生活”的要求，辉县以小区建设和旧城改造为突破口，全面掀起了新一轮城市建设高潮。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(730, 3, '要坚持把经济效益放在首位，社会效益和经济效益相统一，推动文化事业全面繁荣、文化产业快速发展。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(731, 3, '中国特色社会主义的内在要求是社会和谐。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(732, 3, '中国特色社会主义的根本任务是解放和发展社会生产力。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(733, 3, '社会公平保障体系的主要内容包括权利公平、规则公平和机会公平。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(734, 3, '2020年国内产总值和城乡居民人均收入要比2010年都要翻一番。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(735, 3, '加强社会建设必须以促进公平为重点。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(736, 3, '建设美丽中国实现中华民族永续发展是社会建设的必然要求。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(737, 3, '社会主义核心价值体系是中国特色社会主义的兴国之魂。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(738, 3, '长期以来我党坚持发扬理论联系实际、密切联系群众和批评与自我批评相结合三大优良作风。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(739, 3, '十七大以来的5年，城乡基本医疗卫生制度基本建立。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(740, 3, '党惩治与预防腐败方针是标本兼治、综合治理、惩防并举、注重预防。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(741, 3, '先进性是马克思主义政党的生命所系，力量所在，要靠千千万万高素质的党员来体现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(742, 3, '解放思想、实事求是、与时俱进、求真务实是科学发展观最鲜明的精神实质。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(743, 3, '中国特色社会主义理论体系包括毛泽东思想、邓小平理论、三个代表重要思想以及科学发展观。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(744, 3, '加强党的执政能力建设的核心是廉政建设。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(745, 3, '大会明确2030年全面建成小康社会。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(746, 3, '科学发展观回答了进行什么样的发展，怎样发展的问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(747, 3, '三个代表重要思想回答了什么是社会主义、怎样建设社会主义的问题。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(748, 3, '我国水电、风电装机位居世界第一。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(749, 3, '过去5年，年均国内生产总值增速超过9%。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(750, 3, '国家财政性教育经费支出，2012年占国内生产总值比例首次达到4%。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(751, 3, '5年来，我国进出口总额从世界第三位提升到第二位，其中出口额跃居世界第一位。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(752, 3, '2013年是实施“十一五”规划承前启后的关键一年。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(753, 3, '五年来，国内生产总值从26、6万亿元增加到51、9万亿元，跃升到世界第二位。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(754, 3, '我们坚持在工业化、信息化、城镇化深入发展中同步推进农业规模化。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(755, 3, '义务教育学校实施绩效工资，所有大学实行师范生免费教育，加强了农村教师队伍建设。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(756, 3, '企业退休人员基本养老金从2004年人均每月700元提高到现在的1721元。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(757, 3, '国民健康水平进一步提高，人均预期寿命达到78岁。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(758, 3, '推动两岸关系实现重大转折，两岸直接双向“三通”全面实现。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(759, 3, '国民受教育程度大幅提升，15岁以上人口平均受教育年限达到10年以上。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'B', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(760, 3, '邓小平理论首要解决的问题是——什么是社会主义，怎样建设社会主义。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(761, 3, '近些年是我国农业发展最快、农村面貌变化最大、农民得到实惠最多的时期。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(762, 3, '我们要全面正确贯彻党的民族政策，坚持和完善民族区域自治制度，巩固和发展平等团结互助和谐的社会主义民族关系。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(763, 3, '坚持反对腐败，加强廉政建设，从制度上改变权力过分集中而又得不到制约的状况，做到干部清正、政府清廉、政治清明。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(765, 3, '文化是民族的血脉和人民的精神家园。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(767, 3, '坚持转变政府职能，推进政企分开、政资分开、政事分开、政社分开，建设人民满意的服务型政府。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(768, 3, '坚持厉行勤俭节约，反对铺张浪费，严格贯彻中央八条规定。', 0, '', '', '&lt;p&gt;A、对B、错&lt;/p&gt;', 2, 'A', '', 'a:0:{}', 1372247469, 1, '', 0, 0, 1),
(772, 1, '&lt;p&gt;测试子试题&lt;/p&gt;', 54, 'peadmin', '', '', 4, 'A', '', 'a:0:{}', 1376419161, 1, '', 1, 2, 0),
(8445, 1, '&lt;p&gt;asdsadsadasd&lt;/p&gt;', 54, 'peadmin', '', '&lt;p&gt;sadasd&lt;/p&gt;', 4, 'A', '&lt;p&gt;sadasdasdasd&lt;/p&gt;', 'a:0:{}', 1414127000, 1, '', 1, 1, 0),
(8451, 1, '&lt;p&gt;测试填空子题&lt;/p&gt;', 1, 'peadmin', '', '&lt;p&gt;A测试填空子题&lt;/p&gt;\r\n\r\n&lt;p&gt;B测试填空子题&lt;/p&gt;\r\n\r\n&lt;p&gt;C测试填空子题&lt;/p&gt;\r\n\r\n&lt;p&gt;D测试填空子题&lt;/p&gt;', 4, 'D', '&lt;p&gt;子题&lt;/p&gt;', 'a:0:{}', 1440577857, 1, '', 2, 0, 1),
(8458, 1, '&lt;p&gt;阿斯达萨&lt;/p&gt;', 0, '', '', '&lt;p&gt;阿斯达斯&lt;/p&gt;', 4, 'A', '&lt;p&gt;阿萨德撒的&lt;/p&gt;', '', 1449026591, 1, '', 1, 0, 0),
(8459, 1, '&lt;p&gt;三三四四&lt;/p&gt;', 0, '', '', '&lt;p&gt;三三四四&lt;/p&gt;', 4, 'A', '&lt;p&gt;三三四四&lt;/p&gt;', '', 1449027690, 1, '', 1, 0, 0),
(8460, 5, '&lt;p&gt;呜哇啊啊啊草&lt;/p&gt;', 1, 'peadmin', '', '', 4, '啊啊草', '&lt;p&gt;啊啊草&lt;/p&gt;', '', 1451030426, 1, '', 3, 0, 0),
(8485, 3, '&lt;p&gt;甲公司招用王某时，要求其缴纳600元的工作服押金，甲公司的做法不符合法律规定。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'A', '&lt;p&gt;用人单位招用劳动者，不得扣押劳动者的居民身份证和其他证件，不得要求劳动者提供担保或者以其他名义向劳动者收取财物。&lt;/p&gt;', '', 1456213212, 1, '', 0, 0, 1),
(8486, 3, '&lt;p&gt;对劳动合同的无效有争议的，只能由劳动争议仲裁机构进行确认。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'B', '&lt;p&gt;对劳动合同的无效或部分无效有争议的，由劳动争议仲裁机构或人民法院确认。&lt;/p&gt;', '', 1456213212, 1, '', 0, 0, 1),
(8487, 3, '&lt;p&gt;劳动合同的解除和终止，只对未履行的部分发生效力，即双方不再继续履行劳动合同。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'A', '', '', 1456213212, 1, '', 0, 0, 1),
(8488, 3, '&lt;p&gt;根据劳动合同法律制度的规定，医疗期是职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'B', '&lt;p&gt;医疗期是指企业职工因患病或非因工负伤停止工作，治病休息，但不得解除劳动合同的期限。职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间称为停工留薪期。&lt;/p&gt;', 'a:1:{i:0;a:2:{s:7:"knowsid";s:1:"1";s:5:"knows";s:12:"纪律知识";}}', 1456213212, 1, '', 0, 0, 1),
(8489, 3, '&lt;p&gt;甲公司招用王某时，要求其缴纳600元的工作服押金，甲公司的做法不符合法律规定。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'A', '&lt;p&gt;用人单位招用劳动者，不得扣押劳动者的居民身份证和其他证件，不得要求劳动者提供担保或者以其他名义向劳动者收取财物。&lt;/p&gt;', '', 1456213291, 1, '', 7, 0, 1),
(8490, 3, '&lt;p&gt;对劳动合同的无效有争议的，只能由劳动争议仲裁机构进行确认。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'B', '&lt;p&gt;对劳动合同的无效或部分无效有争议的，由劳动争议仲裁机构或人民法院确认。&lt;/p&gt;', '', 1456213291, 1, '', 7, 0, 1),
(8491, 3, '&lt;p&gt;劳动合同的解除和终止，只对未履行的部分发生效力，即双方不再继续履行劳动合同。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'A', '', '', 1456213291, 1, '', 7, 0, 1),
(8492, 3, '&lt;p&gt;根据劳动合同法律制度的规定，医疗期是职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'B', '&lt;p&gt;医疗期是指企业职工因患病或非因工负伤停止工作，治病休息，但不得解除劳动合同的期限。职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间称为停工留薪期。&lt;/p&gt;', '', 1456213291, 1, '', 7, 0, 1),
(8493, 3, '&lt;p&gt;甲公司招用王某时，要求其缴纳600元的工作服押金，甲公司的做法不符合法律规定。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'A', '&lt;p&gt;用人单位招用劳动者，不得扣押劳动者的居民身份证和其他证件，不得要求劳动者提供担保或者以其他名义向劳动者收取财物。&lt;/p&gt;', '', 1456213559, 1, '', 8, 0, 1),
(8494, 3, '&lt;p&gt;对劳动合同的无效有争议的，只能由劳动争议仲裁机构进行确认。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'B', '&lt;p&gt;对劳动合同的无效或部分无效有争议的，由劳动争议仲裁机构或人民法院确认。&lt;/p&gt;', '', 1456213559, 1, '', 8, 0, 1),
(8495, 3, '&lt;p&gt;劳动合同的解除和终止，只对未履行的部分发生效力，即双方不再继续履行劳动合同。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'A', '', '', 1456213559, 1, '', 8, 0, 1),
(8496, 3, '&lt;p&gt;根据劳动合同法律制度的规定，医疗期是职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间。（　　）&lt;/p&gt;', 0, '', '', '&lt;p&gt;A.对 B.错&lt;/p&gt;', 2, 'B', '&lt;p&gt;医疗期是指企业职工因患病或非因工负伤停止工作，治病休息，但不得解除劳动合同的期限。职工工作遭受事故伤害或者患职业病需要暂停工作、接受工伤医疗的期间称为停工留薪期。&lt;/p&gt;', '', 1456213559, 1, '', 8, 0, 1),
(8499, 4, '&lt;p&gt;子试题1&lt;/p&gt;', 0, '', '', '&lt;p&gt;ABCD&lt;/p&gt;', 4, '&lt;p&gt;A&lt;/p&gt;', '', '', 1462583551, 1, '', 11, 0, 1),
(8500, 4, '&lt;p&gt;子试题2&lt;/p&gt;', 0, '', '', '&lt;p&gt;ABCD&lt;/p&gt;', 4, '&lt;p&gt;A&lt;/p&gt;', '', '', 1462583551, 0, '', 11, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `x2_questype`
--

CREATE TABLE IF NOT EXISTS `x2_questype` (
  `questid` int(11) NOT NULL,
  `questype` varchar(60) NOT NULL DEFAULT '',
  `questsort` int(1) NOT NULL DEFAULT '0',
  `questchoice` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

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
  `recordid` int(11) NOT NULL,
  `recordquestionid` int(11) NOT NULL DEFAULT '0',
  `recorduserid` int(11) NOT NULL DEFAULT '0',
  `recordquestion` text NOT NULL,
  `recordtime` int(11) NOT NULL DEFAULT '0',
  `recordsubjectid` int(11) NOT NULL DEFAULT '0',
  `recordknowsid` int(11) NOT NULL DEFAULT '0',
  `recordquestype` int(11) NOT NULL DEFAULT '0',
  `recordexamid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_reply`
--

CREATE TABLE IF NOT EXISTS `x2_reply` (
  `replyid` int(11) NOT NULL,
  `replyuserid` int(11) NOT NULL DEFAULT '0',
  `replyusername` varchar(120) NOT NULL DEFAULT '',
  `replycommentid` int(11) NOT NULL DEFAULT '0',
  `replytime` int(11) NOT NULL DEFAULT '0',
  `replycontent` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_sections`
--

CREATE TABLE IF NOT EXISTS `x2_sections` (
  `sectionid` int(11) NOT NULL,
  `section` varchar(120) NOT NULL DEFAULT '',
  `sectionsubjectid` int(11) NOT NULL DEFAULT '0',
  `sectiondescribe` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_sections`
--

INSERT INTO `x2_sections` (`sectionid`, `section`, `sectionsubjectid`, `sectiondescribe`) VALUES
(1, '纪律知识', 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_seminar`
--

CREATE TABLE IF NOT EXISTS `x2_seminar` (
  `seminarid` int(11) NOT NULL,
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
  `seminarsequence` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  `sessionmaster` int(1) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_session`
--

INSERT INTO `x2_session` (`sessionid`, `sessionuserid`, `sessionusername`, `sessionpassword`, `sessionip`, `sessionmanage`, `sessiongroupid`, `sessioncurrent`, `sessionrandcode`, `sessionlogintime`, `sessiontimelimit`, `sessionlasttime`, `sessionmaster`) VALUES
('sobo13tbvalbfd7mcko2r1ru24', 1, 'peadmin', '244153a2599be7685c32d2281f57ae67', '127.0.0.1', 0, 1, '1', '', 1471835502, 1471835502, 1471837655, 0),
('671pqba6tojja6tudj6gbtno36', 3, '教师', '96e79218965eb72c92a549dd5a330112', '127.0.0.1', 0, 1, '1', '', 1471587604, 1471587604, 1471608125, 0),
('dqp2u0okuhd7066asfemuo96i3', 0, '', '', '127.0.0.1', 0, 0, '', '', 0, 0, 1471767544, 0),
('835qu75o2qmcj6857vck7mbaa4', 1, 'peadmin', '244153a2599be7685c32d2281f57ae67', '127.0.0.1', 0, 1, '1', '', 1471766817, 1471766817, 1471772613, 0);

-- --------------------------------------------------------

--
-- 表的结构 `x2_special`
--

CREATE TABLE IF NOT EXISTS `x2_special` (
  `specialid` int(11) NOT NULL,
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
  `contenttext` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_specialsort`
--

CREATE TABLE IF NOT EXISTS `x2_specialsort` (
  `sortid` int(11) NOT NULL,
  `sorttitle` varchar(240) NOT NULL DEFAULT '',
  `sortthumb` varchar(120) NOT NULL DEFAULT '',
  `sorttpl` varchar(24) NOT NULL DEFAULT '',
  `sortseminarid` int(11) NOT NULL DEFAULT '0',
  `sortsequence` int(11) NOT NULL DEFAULT '0',
  `sortdescribe` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `x2_subject`
--

CREATE TABLE IF NOT EXISTS `x2_subject` (
  `subjectid` int(11) NOT NULL,
  `subject` varchar(120) NOT NULL DEFAULT '',
  `subjectsetting` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_subject`
--

INSERT INTO `x2_subject` (`subjectid`, `subject`, `subjectsetting`) VALUES
(1, '湖里纪检监察局纪律知识', 'a:1:{s:9:"questypes";a:6:{i:1;s:1:"1";i:2;s:1:"1";i:3;s:1:"1";i:4;s:1:"1";i:5;s:1:"1";i:6;s:1:"1";}}');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user`
--

CREATE TABLE IF NOT EXISTS `x2_user` (
  `userid` int(11) NOT NULL,
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
  `teacher_subjects` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_user`
--

INSERT INTO `x2_user` (`userid`, `username`, `useropenid`, `useremail`, `userpassword`, `usercoin`, `userregip`, `userregtime`, `userlogtime`, `usergroupid`, `usermoduleid`, `manager_apps`, `photo`, `usertruename`, `normal_favor`, `teacher_subjects`) VALUES
(1, 'peadmin', NULL, 'pe@163.com', '244153a2599be7685c32d2281f57ae67', 759, '127.0.0.1', 1373793691, 0, 1, 0, 'user', 'files/attach/images/content/20160820/14717034075738.jpg', 'test', '', ''),
(2, '匹诺曹', NULL, 'pinuocao@163.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1431687254, 0, 1, 0, '', '', '', '', ''),
(3, '教师', NULL, 'teacher@phpems.net', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1432398659, 0, 1, 0, 'user', 'files/attach/images/content/20160819/14715878854648.jpg', '', '', 'a:1:{i:0;s:1:"1";}'),
(14, '13598710029', '', '13598710029@139.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1471766192, 0, 8, 0, '', '', '', '', ''),
(5, 'admin', NULL, 'admin@admin.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1435489451, 0, 1, 0, '', '', '', '', ''),
(6, 'angelbaby', NULL, 'angelbaby@163.com', '886e0579be9bb7a57a18a916feb27c8a', 0, '127.0.0.1', 1435550824, 0, 1, 0, '', '', '', '', ''),
(7, '多多猫', NULL, 'duoduomao@163.com', '886e0579be9bb7a57a18a916feb27c8a', 0, '127.0.0.1', 1435732915, 0, 1, 0, '', '', '', '', ''),
(8, 'duokan', NULL, 'duokan@163.com', '96e79218965eb72c92a549dd5a330112', 0, '127.0.0.1', 1445999151, 0, 1, 0, '', '', '', '', ''),
(12, 'guest', NULL, 'abc111@163.com', '96e79218965eb72c92a549dd5a330112', 100, '127.0.0.1', 1459089372, 0, 11, 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `x2_user_group`
--

CREATE TABLE IF NOT EXISTS `x2_user_group` (
  `groupid` int(11) NOT NULL,
  `groupname` varchar(60) NOT NULL DEFAULT '',
  `groupmoduleid` tinyint(4) NOT NULL DEFAULT '0',
  `groupdescribe` tinytext NOT NULL,
  `groupright` text NOT NULL,
  `groupmoduledefault` int(1) NOT NULL DEFAULT '0',
  `groupdefault` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `x2_user_group`
--

INSERT INTO `x2_user_group` (`groupid`, `groupname`, `groupmoduleid`, `groupdescribe`, `groupright`, `groupmoduledefault`, `groupdefault`) VALUES
(1, '管理员', 1, '管理员', '', 1, 0),
(8, '附属单位一', 9, '附属单位一', '', 0, 1),
(9, '教师', 12, '教师', '', 0, 0),
(11, '附属单位二', 9, '附属单位二', '', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `x2_app`
--
ALTER TABLE `x2_app`
  ADD PRIMARY KEY (`appid`),
  ADD KEY `appstatus` (`appstatus`);

--
-- Indexes for table `x2_area`
--
ALTER TABLE `x2_area`
  ADD PRIMARY KEY (`areaid`),
  ADD KEY `area` (`area`,`arealevel`),
  ADD KEY `areacode` (`areacode`);

--
-- Indexes for table `x2_attach`
--
ALTER TABLE `x2_attach`
  ADD PRIMARY KEY (`attid`),
  ADD KEY `attext` (`attext`,`attinputtime`),
  ADD KEY `attuserid` (`attuserid`),
  ADD KEY `attcntype` (`attcntype`);

--
-- Indexes for table `x2_attachtype`
--
ALTER TABLE `x2_attachtype`
  ADD PRIMARY KEY (`atid`),
  ADD KEY `attachtype` (`attachtype`);

--
-- Indexes for table `x2_basic`
--
ALTER TABLE `x2_basic`
  ADD PRIMARY KEY (`basicid`),
  ADD KEY `basicexamid` (`basicareaid`),
  ADD KEY `basicsubjectid` (`basicsubjectid`),
  ADD KEY `basicapi` (`basicapi`),
  ADD KEY `basicdemo` (`basicdemo`),
  ADD KEY `basicclosed` (`basicclosed`);

--
-- Indexes for table `x2_block`
--
ALTER TABLE `x2_block`
  ADD PRIMARY KEY (`blockid`),
  ADD KEY `blocktype` (`blocktype`);

--
-- Indexes for table `x2_category`
--
ALTER TABLE `x2_category`
  ADD PRIMARY KEY (`catid`),
  ADD KEY `catlite` (`catlite`,`catparent`),
  ADD KEY `catappid` (`catapp`),
  ADD KEY `catuseurl` (`catuseurl`),
  ADD KEY `catinmenu` (`catinmenu`,`catindex`);

--
-- Indexes for table `x2_comment`
--
ALTER TABLE `x2_comment`
  ADD PRIMARY KEY (`cmtid`),
  ADD KEY `cmtapp` (`cmtapp`,`cmtcontentid`,`cmttime`);

--
-- Indexes for table `x2_config`
--
ALTER TABLE `x2_config`
  ADD PRIMARY KEY (`cfgapp`);

--
-- Indexes for table `x2_content`
--
ALTER TABLE `x2_content`
  ADD PRIMARY KEY (`contentid`),
  ADD KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  ADD KEY `contentmoduleid` (`contentmoduleid`),
  ADD KEY `contentcatid` (`contentcatid`),
  ADD KEY `contentstatus` (`contentstatus`);

--
-- Indexes for table `x2_coupon`
--
ALTER TABLE `x2_coupon`
  ADD PRIMARY KEY (`couponsn`),
  ADD KEY `couponstatus` (`couponstatus`,`couponendtime`),
  ADD KEY `couponaddtime` (`couponaddtime`);

--
-- Indexes for table `x2_course`
--
ALTER TABLE `x2_course`
  ADD PRIMARY KEY (`courseid`),
  ADD KEY `coursecsid` (`coursecsid`,`courseuserid`,`courseinputtime`,`coursemodifytime`,`coursesequence`),
  ADD KEY `coursemoduleid` (`coursemoduleid`);

--
-- Indexes for table `x2_coursesubject`
--
ALTER TABLE `x2_coursesubject`
  ADD PRIMARY KEY (`csid`),
  ADD KEY `csbasicid` (`csbasicid`,`cssubjectid`,`cstime`),
  ADD KEY `cscatid` (`cscatid`),
  ADD KEY `cuserid` (`csuserid`),
  ADD KEY `cssequence` (`cssequence`);

--
-- Indexes for table `x2_dochistory`
--
ALTER TABLE `x2_dochistory`
  ADD PRIMARY KEY (`dhid`),
  ADD KEY `dhtime` (`dhtime`),
  ADD KEY `dhstatus` (`dhstatus`),
  ADD KEY `dhtop` (`dhtop`);

--
-- Indexes for table `x2_docs`
--
ALTER TABLE `x2_docs`
  ADD PRIMARY KEY (`docid`),
  ADD KEY `doctitle` (`doctitle`),
  ADD KEY `doccatid` (`doccatid`),
  ADD KEY `doccontentid` (`doccontentid`),
  ADD KEY `docinputtime` (`docinputtime`),
  ADD KEY `docmodifytime` (`docmodifytime`),
  ADD KEY `doclock` (`doclock`);

--
-- Indexes for table `x2_examhistory`
--
ALTER TABLE `x2_examhistory`
  ADD PRIMARY KEY (`ehid`),
  ADD KEY `ehtype` (`ehtype`,`ehbasicid`,`ehtime`,`ehuserid`),
  ADD KEY `ehdecide` (`ehdecide`),
  ADD KEY `ehexamid` (`ehexamid`);

--
-- Indexes for table `x2_exams`
--
ALTER TABLE `x2_exams`
  ADD PRIMARY KEY (`examid`),
  ADD KEY `examstatus` (`examstatus`),
  ADD KEY `examtype` (`examtype`,`examauthorid`),
  ADD KEY `examtime` (`examtime`),
  ADD KEY `examsubject` (`examsubject`),
  ADD KEY `examdecide` (`examdecide`);

--
-- Indexes for table `x2_examsession`
--
ALTER TABLE `x2_examsession`
  ADD PRIMARY KEY (`examsessionid`),
  ADD KEY `examsessionstarttime` (`examsessionstarttime`),
  ADD KEY `examsessionstatus` (`examsessionstatus`),
  ADD KEY `examsessiontype` (`examsessiontype`),
  ADD KEY `examsessionkey` (`examsessionkey`),
  ADD KEY `examsubject` (`examsessionbasic`),
  ADD KEY `examsessionissave` (`examsessionissave`),
  ADD KEY `examsessionuserid` (`examsessionuserid`);

--
-- Indexes for table `x2_exercise`
--
ALTER TABLE `x2_exercise`
  ADD PRIMARY KEY (`exerid`),
  ADD KEY `exeruserid` (`exeruserid`),
  ADD KEY `exerbasicid` (`exerbasicid`),
  ADD KEY `exerknowsid` (`exerknowsid`);

--
-- Indexes for table `x2_favor`
--
ALTER TABLE `x2_favor`
  ADD PRIMARY KEY (`favorid`),
  ADD KEY `favoruserid` (`favoruserid`,`favorquestionid`,`favortime`),
  ADD KEY `favorsubjectid` (`favorsubjectid`);

--
-- Indexes for table `x2_gbook`
--
ALTER TABLE `x2_gbook`
  ADD PRIMARY KEY (`gbid`),
  ADD KEY `gbtime` (`gbtime`),
  ADD KEY `gbreplytime` (`gbreplytime`),
  ADD KEY `gbstatus` (`gbstatus`);

--
-- Indexes for table `x2_knows`
--
ALTER TABLE `x2_knows`
  ADD PRIMARY KEY (`knowsid`),
  ADD KEY `knows` (`knows`,`knowssectionid`),
  ADD KEY `knowsstatus` (`knowsstatus`);

--
-- Indexes for table `x2_log`
--
ALTER TABLE `x2_log`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `loguserid` (`loguserid`,`logcourseid`),
  ADD KEY `logtime` (`logtime`);

--
-- Indexes for table `x2_module`
--
ALTER TABLE `x2_module`
  ADD PRIMARY KEY (`moduleid`),
  ADD UNIQUE KEY `modulecode` (`modulecode`),
  ADD KEY `modulename` (`modulename`),
  ADD KEY `moduleapp` (`moduleapp`),
  ADD KEY `moduleallowreg` (`moduleallowreg`),
  ADD KEY `modulestatus` (`modulestatus`);

--
-- Indexes for table `x2_module_fields`
--
ALTER TABLE `x2_module_fields`
  ADD PRIMARY KEY (`fieldid`),
  ADD KEY `field` (`field`,`fieldlock`),
  ADD KEY `fieldmoduleid` (`fieldmoduleid`),
  ADD KEY `fieldsequence` (`fieldsequence`),
  ADD KEY `fieldsystem` (`fieldsystem`),
  ADD KEY `fieldpublic` (`fieldpublic`),
  ADD KEY `fieldappid` (`fieldappid`);

--
-- Indexes for table `x2_openbasics`
--
ALTER TABLE `x2_openbasics`
  ADD PRIMARY KEY (`obid`),
  ADD KEY `oluserid` (`obuserid`,`obbasicid`,`obtime`,`obendtime`);

--
-- Indexes for table `x2_orders`
--
ALTER TABLE `x2_orders`
  ADD PRIMARY KEY (`ordersn`),
  ADD KEY `orderprice` (`orderprice`,`ordercreatetime`,`orderpaytime`),
  ADD KEY `orderuserid` (`orderuserid`);

--
-- Indexes for table `x2_poscontent`
--
ALTER TABLE `x2_poscontent`
  ADD PRIMARY KEY (`pcid`),
  ADD KEY `pcposid` (`pcposid`,`pccontentid`,`pcsequence`),
  ADD KEY `pctime` (`pctime`);

--
-- Indexes for table `x2_position`
--
ALTER TABLE `x2_position`
  ADD PRIMARY KEY (`posid`);

--
-- Indexes for table `x2_product`
--
ALTER TABLE `x2_product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `partnercode` (`productcode`),
  ADD KEY `productpartnerid` (`productpartnerid`),
  ADD KEY `producttype` (`producttype`);

--
-- Indexes for table `x2_quest2knows`
--
ALTER TABLE `x2_quest2knows`
  ADD PRIMARY KEY (`qkid`),
  ADD KEY `qkquestionid` (`qkquestionid`,`qkknowsid`),
  ADD KEY `qktype` (`qktype`);

--
-- Indexes for table `x2_questionrows`
--
ALTER TABLE `x2_questionrows`
  ADD PRIMARY KEY (`qrid`),
  ADD KEY `qrlevel` (`qrlevel`,`qrnumber`),
  ADD KEY `qruserid` (`qruserid`),
  ADD KEY `qrtime` (`qrtime`),
  ADD KEY `qrstatus` (`qrstatus`),
  ADD KEY `qrtype` (`qrtype`);

--
-- Indexes for table `x2_questions`
--
ALTER TABLE `x2_questions`
  ADD PRIMARY KEY (`questionid`),
  ADD KEY `questioncreatetime` (`questioncreatetime`),
  ADD KEY `questiontype` (`questiontype`),
  ADD KEY `questionstatus` (`questionstatus`),
  ADD KEY `questionuserid` (`questionuserid`),
  ADD KEY `questionparent` (`questionparent`,`questionsequence`),
  ADD KEY `questionlevel` (`questionlevel`);

--
-- Indexes for table `x2_questype`
--
ALTER TABLE `x2_questype`
  ADD PRIMARY KEY (`questid`),
  ADD KEY `questchoice` (`questchoice`);

--
-- Indexes for table `x2_record`
--
ALTER TABLE `x2_record`
  ADD PRIMARY KEY (`recordid`),
  ADD KEY `recordquestionid` (`recordquestionid`,`recorduserid`,`recordtime`),
  ADD KEY `recordsubjectid` (`recordsubjectid`,`recordknowsid`,`recordquestype`),
  ADD KEY `recordexamid` (`recordexamid`);

--
-- Indexes for table `x2_reply`
--
ALTER TABLE `x2_reply`
  ADD PRIMARY KEY (`replyid`),
  ADD KEY `replyuserid` (`replyuserid`,`replycommentid`,`replytime`);

--
-- Indexes for table `x2_sections`
--
ALTER TABLE `x2_sections`
  ADD PRIMARY KEY (`sectionid`),
  ADD KEY `section` (`section`),
  ADD KEY `sectionsubjectid` (`sectionsubjectid`);

--
-- Indexes for table `x2_seminar`
--
ALTER TABLE `x2_seminar`
  ADD PRIMARY KEY (`seminarid`),
  ADD KEY `seminarcatid` (`seminarcatid`),
  ADD KEY `seminarstatus` (`seminarstatus`),
  ADD KEY `seminartime` (`seminartime`),
  ADD KEY `seminarsequence` (`seminarsequence`),
  ADD KEY `seminaruserid` (`seminaruserid`);

--
-- Indexes for table `x2_session`
--
ALTER TABLE `x2_session`
  ADD PRIMARY KEY (`sessionid`),
  ADD KEY `sessionlasttime` (`sessionlasttime`),
  ADD KEY `sessioncurrent` (`sessioncurrent`),
  ADD KEY `sessionmaster` (`sessionmaster`);

--
-- Indexes for table `x2_special`
--
ALTER TABLE `x2_special`
  ADD PRIMARY KEY (`specialid`),
  ADD KEY `contentuserid` (`contentuserid`,`contentinputtime`,`contentmodifytime`,`contentsequence`),
  ADD KEY `contentmoduleid` (`contentmoduleid`),
  ADD KEY `contentcatid` (`contentcatid`),
  ADD KEY `contentstatus` (`contentstatus`),
  ADD KEY `contentspecialid` (`contentspecialid`);

--
-- Indexes for table `x2_specialsort`
--
ALTER TABLE `x2_specialsort`
  ADD PRIMARY KEY (`sortid`),
  ADD KEY `sortseminarid` (`sortseminarid`,`sortsequence`);

--
-- Indexes for table `x2_subject`
--
ALTER TABLE `x2_subject`
  ADD PRIMARY KEY (`subjectid`);

--
-- Indexes for table `x2_user`
--
ALTER TABLE `x2_user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `useremail` (`useremail`),
  ADD KEY `username` (`username`),
  ADD KEY `module` (`usercoin`),
  ADD KEY `userregtime` (`userregtime`),
  ADD KEY `usermoduleid` (`usermoduleid`),
  ADD KEY `userlogtime` (`userlogtime`),
  ADD KEY `useropenid` (`useropenid`) USING BTREE;

--
-- Indexes for table `x2_user_group`
--
ALTER TABLE `x2_user_group`
  ADD PRIMARY KEY (`groupid`),
  ADD KEY `groupname` (`groupname`,`groupmoduleid`),
  ADD KEY `groupmoduledefault` (`groupmoduledefault`),
  ADD KEY `groupdefault` (`groupdefault`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `x2_area`
--
ALTER TABLE `x2_area`
  MODIFY `areaid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `x2_attach`
--
ALTER TABLE `x2_attach`
  MODIFY `attid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `x2_attachtype`
--
ALTER TABLE `x2_attachtype`
  MODIFY `atid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `x2_basic`
--
ALTER TABLE `x2_basic`
  MODIFY `basicid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `x2_block`
--
ALTER TABLE `x2_block`
  MODIFY `blockid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `x2_category`
--
ALTER TABLE `x2_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `x2_comment`
--
ALTER TABLE `x2_comment`
  MODIFY `cmtid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_content`
--
ALTER TABLE `x2_content`
  MODIFY `contentid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `x2_course`
--
ALTER TABLE `x2_course`
  MODIFY `courseid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `x2_coursesubject`
--
ALTER TABLE `x2_coursesubject`
  MODIFY `csid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `x2_dochistory`
--
ALTER TABLE `x2_dochistory`
  MODIFY `dhid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_docs`
--
ALTER TABLE `x2_docs`
  MODIFY `docid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_examhistory`
--
ALTER TABLE `x2_examhistory`
  MODIFY `ehid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `x2_exams`
--
ALTER TABLE `x2_exams`
  MODIFY `examid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `x2_exercise`
--
ALTER TABLE `x2_exercise`
  MODIFY `exerid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `x2_favor`
--
ALTER TABLE `x2_favor`
  MODIFY `favorid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `x2_gbook`
--
ALTER TABLE `x2_gbook`
  MODIFY `gbid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_knows`
--
ALTER TABLE `x2_knows`
  MODIFY `knowsid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `x2_log`
--
ALTER TABLE `x2_log`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `x2_module`
--
ALTER TABLE `x2_module`
  MODIFY `moduleid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `x2_module_fields`
--
ALTER TABLE `x2_module_fields`
  MODIFY `fieldid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `x2_openbasics`
--
ALTER TABLE `x2_openbasics`
  MODIFY `obid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `x2_poscontent`
--
ALTER TABLE `x2_poscontent`
  MODIFY `pcid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_position`
--
ALTER TABLE `x2_position`
  MODIFY `posid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_product`
--
ALTER TABLE `x2_product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `x2_quest2knows`
--
ALTER TABLE `x2_quest2knows`
  MODIFY `qkid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8397;
--
-- AUTO_INCREMENT for table `x2_questionrows`
--
ALTER TABLE `x2_questionrows`
  MODIFY `qrid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `x2_questions`
--
ALTER TABLE `x2_questions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8501;
--
-- AUTO_INCREMENT for table `x2_questype`
--
ALTER TABLE `x2_questype`
  MODIFY `questid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `x2_record`
--
ALTER TABLE `x2_record`
  MODIFY `recordid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_reply`
--
ALTER TABLE `x2_reply`
  MODIFY `replyid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_sections`
--
ALTER TABLE `x2_sections`
  MODIFY `sectionid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `x2_seminar`
--
ALTER TABLE `x2_seminar`
  MODIFY `seminarid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_special`
--
ALTER TABLE `x2_special`
  MODIFY `specialid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_specialsort`
--
ALTER TABLE `x2_specialsort`
  MODIFY `sortid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `x2_subject`
--
ALTER TABLE `x2_subject`
  MODIFY `subjectid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `x2_user`
--
ALTER TABLE `x2_user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `x2_user_group`
--
ALTER TABLE `x2_user_group`
  MODIFY `groupid` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
