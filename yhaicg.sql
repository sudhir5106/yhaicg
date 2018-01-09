-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2018 at 09:28 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yhaicg`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `Activity_Id` int(11) NOT NULL,
  `Unit_Id` tinyint(4) NOT NULL,
  `Activity_Name` varchar(200) NOT NULL,
  `Activity_Date` varchar(100) NOT NULL,
  `Activity_Detail` text NOT NULL,
  `Current_Activity_Date` date NOT NULL,
  `Images` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`Activity_Id`, `Unit_Id`, `Activity_Name`, `Activity_Date`, `Activity_Detail`, `Current_Activity_Date`, `Images`) VALUES
(3, 2, 'Environment Programme', '1-2-2015', '<h2><em><strong>Awareness Programme on Environment</strong></em></h2>', '0000-00-00', '1452602325.jpg'),
(6, 2, 'Keep Rohtang Clean', 'May 2010', '<h2><strong>Keep Rohtang Clean</strong></h2>', '0000-00-00', '1452602034.JPG'),
(7, 2, 'National Trek', '2011', '<h2><strong>National Trek</strong></h2>', '0000-00-00', '1452602672.jpg'),
(9, 8, 'Bastar Darshan', '2015', '<h1><strong>Bastar Darshan</strong></h1>', '0000-00-00', '1452602877.jpg'),
(10, 2, 'Height of Adventure', '2009', '<h1><strong>Height of Adventure</strong></h1>', '0000-00-00', '1452602975.JPG'),
(11, 2, 'Training Programme on Rapling & River Crossing', '2014', '<h1><strong>Training Programme on Rapling &amp; River Crossing</strong></h1>', '0000-00-00', '1452603075.jpg'),
(12, 4, 'Mahanadi Origin Trekking', '31.01.2016', '<h2>Shrigi Rishi, Shantagufa, Kaligufa, Mahanadi Origin Trekking.</h2>\r\n<h2>&nbsp;</h2>', '2016-01-20', ''),
(13, 4, 'Karak Rishi Trek', '2014', '<h2>Kark Rishi Trek</h2>', '0000-00-00', '1452852931.jpg'),
(14, 4, 'No Polythene', '2014', '<h2>Awareness Programme on No Polythene</h2>', '0000-00-00', '1452853074.jpg'),
(15, 4, 'Sharad Purnima Trek', '2015', '<h2>Night Trek on Sharad Purnima</h2>', '0000-00-00', '1452853245.jpg'),
(16, 4, 'World Tourism Day', '2015', '<h2>Programme organised on World Tourism Day</h2>', '0000-00-00', '1452853322.jpg'),
(17, 2, '15 Km Cycle Rally', '17-01-2016', '<h2>15 Km Cycle Rally&nbsp;</h2>', '0000-00-00', '1453023794.jpg'),
(18, 2, 'Yes I Can Bicycle Trip & Camping', '13 & 14.02.2016 ', '<h2>Yes I Can Bicycle Trip &amp; Camping.</h2>\r\n<h2>Bhilai Unit is organizing cycle trip from Bhilai to Dongargarh &amp; back with one night stay on 13th and 14th February 2016.</h2>\r\n<h2>Registration open for YHAI members only. Participation Fees Rs. 400 only:</h2>\r\n<h2>Contact : Mr. Santosh Chakole :9407980507, Mr. KVR Murty :9425565886, Mr. SK Mitra : 9425244106, Mr. Basnat Verma : 7587440037</h2>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>', '0000-00-00', ''),
(20, 2, 'Every Sunday Cycle Rally', '', '', '2016-04-01', '1469373541.jpg'),
(21, 5, 'Tree Plantation', '', '<h1><strong>FAMILY TREE PLANTATION</strong></h1>\r\n<p><strong style="color: #222222; font-family: arial, sans-serif; font-size: large;">at Valmiki Aashram, Korba</strong></p>', '2016-07-31', '1470932941.jpg'),
(22, 5, 'RIDE & TRACK', '', '<p><strong style="color: #222222; font-family: arial, sans-serif; font-size: large;">ORGANIZED AT PARSAKHOLA , 15 KM fROM BALCO</strong></p>', '2016-06-12', '1471751248.jpg'),
(23, 2, 'PAWAI NATURE TREK', '', '<h1 style="margin: 0in 0in 0.0001pt; text-align: center; line-height: 16.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;" align="center"><span style="font-size: 14.0pt; font-family: ''Comic Sans MS''; color: red;">Pawai Nature Trail &ndash; a short description</span></h1>\r\n<p style="margin: 0in 0in 0.0001pt; text-align: justify; line-height: 50%; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-size: 14.0pt; line-height: 50%; font-family: ''Comic Sans MS'';">&nbsp;</span></p>\r\n<p>&nbsp;</p>\r\n<h2 style="margin: 0in 0in 0.0001pt; text-align: justify; line-height: 16.3pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;"><span style="font-family: ''Calibri'',''sans-serif''; mso-ascii-theme-font: minor-latin; mso-hansi-theme-font: minor-latin; mso-bidi-theme-font: minor-latin;"><strong>Upon the first initiative and efforts, YHAI, Bhilai Unit succeeded in organizing the Nature trek from a very low populated village 15 kms from Balrampur to a Tribal village- Sitarampur with Gaderia Camps trekking through rugged path over the bank of river Chenan, a tributary of river Kanhar through a huge waterfall, height around 90fts. named as Pawai Waterfall, in the region of Samersot Sanctuary. The region has wide diversity of flora and fauna along with its geomorphological features. The area is a good habitat of beer, panther, blue bull, cheetal and good enough bird species.</strong></span></h2>', '2016-12-10', '1492531117.jpg'),
(24, 8, 'BUKA - Nature Study & Trekking Camp 2016', '', '<h3><strong>Nature Study &amp; Trekking Camp 2016</strong></h3>', '2016-12-23', ''),
(25, 5, 'Ajgarbahar', '', '<p>Ajgarbahar Trek</p>', '2016-10-02', '1506596185.jpg'),
(26, 5, 'Swachh Bharat Abhiyaan 2017" - Award received by Korba Unit', '', '<div class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">Youth Hostel Association of India - Korba Unit - Chattisgarhâ€‹ receiving the Certificate and Award by District Collector&nbsp;<span style="color: #464646; font-family: ''Open Sans'', sans-serif; line-height: 1.1; text-align: center;">Shree Mohammad Qaiser Abdul Haque</span>\r\n<div class="gmail_default" style="color: #464646; font-family: ''Open Sans'', sans-serif; line-height: 1.1; text-align: center; display: inline;">â€‹&nbsp;</div>\r\nfor Participating in "Swachh Bharat Abhiyaan 2017" by Nagar Nigam Korba</div>\r\n<div class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">&nbsp;</div>\r\n<div class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">On behalf Award of YHAI Korba Unit , award received By : Shri Satish Shukla (President Korba Unit) , Shri Shyam Kewat, Shri Vijesh N.V.</div>', '2017-12-11', '1513313960.jpg'),
(29, 5, 'KANCHAN PAHAAD â€ Heritage Trekking & Training Program', '', '<p class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; margin-bottom: 0.0001pt; text-align: justify;"><strong><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; color: #e36c0a;">à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤•à¤¾ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤¹à¥‡à¤°à¤¿à¤Ÿà¥‡à¤œ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤à¤‚à¤¡ à¤Ÿà¥à¤°à¥‡à¤¨à¤¿à¤‚à¤— à¤ªà¥à¤°à¥‹à¤—à¥à¤°à¤¾à¤® |</span></strong></p>\r\n<p class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; margin-bottom: 0.0001pt; text-align: justify;"><strong><span lang="HI" style="font-size: 12pt; line-height: 18.4px; font-family: Mangal; color: #943634; background-image: initial; background-color: yellow; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">à¤•à¥‹à¤°à¤¬à¤¾/ à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤•à¤¾ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤¹à¥‡à¤°à¤¿à¤Ÿà¥‡à¤œ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤à¤‚à¤¡ à¤Ÿà¥à¤°à¥‡à¤¨à¤¿à¤‚à¤— à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤†à¤œ à¥¨ à¤¦à¤¿à¤¸à¤®à¥à¤¬à¤° à¤•à¥‹ à¤•à¥‹à¤°à¤¬à¤¾ à¤¸à¤¤à¤°à¥‡à¤‚à¤—à¤¾ à¤®à¤¾à¤°à¥à¤— à¤®à¥‡à¤‚ à¤—à¥à¤°à¤¾à¤® à¤—à¥à¤•à¤¾à¤Ÿà¤°à¤¾ à¤•à¥‡ à¤ªà¤¾à¤¸ à¤¸à¥à¤¥à¤¿à¤¤ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤®à¥‡à¤‚ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ |</span></strong></p>\r\n<p class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;"><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; color: #1f497d;">à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤•à¥‡ à¤¸à¤¦à¤¸à¥à¤¯ à¤“à¤ªà¤¨ à¤¥à¤¿à¤¯à¤Ÿà¤° à¤•à¥‡ à¤ªà¤¾à¤¸ à¤à¤•à¤¤à¥à¤°à¤¿à¤¤ à¤¹à¥‹à¤•à¤° à¤…à¤ªà¤¨à¥‡ à¤µà¤¾à¤¹à¤¨à¥‹à¤‚ à¤¸à¥‡ à¤—à¥à¤°à¤¾à¤® à¤—à¥à¤•à¤¾à¤Ÿà¤°à¤¾ à¤ªà¤¹à¥à¤šà¥‡ | à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤ªà¥à¤°à¤¾à¤°à¤‚à¤­ à¤•à¤°à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¸à¤‚à¤¯à¥‹à¤œà¤• à¤¶à¥à¤°à¥€ à¤¶à¥ˆà¤²à¥‡à¤¨à¥à¤¦à¥à¤° à¤¨à¤¾à¤®à¤¦à¥‡à¤µ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤®à¥‡à¤‚ à¤°à¤–à¤¨à¥‡ à¤µà¤¾à¤²à¥€ à¤¸à¤¾à¤µà¤§à¤¾à¤¨à¤¿à¤¯à¤¾ à¤•à¥€ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥€ | à¤²à¤—à¤­à¤— à¤à¤• à¤˜à¤‚à¤Ÿà¥‡ à¤•à¥€ à¤šà¥à¤¾à¤ˆ à¤•à¥‡ à¤ªà¤¸à¥à¤šà¤¾à¤¤ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤¦à¤² à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤ªà¤° à¤ªà¤‚à¤¹à¥à¤šà¤¾ | à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤•à¥€ à¤›à¥‹à¤Ÿà¥€ à¤ªà¤° à¤¬à¤¿à¤–à¤°à¥‡ à¤¹à¥à¤ à¤ªà¥à¤°à¤¾à¤¨à¥‡ à¤…à¤µà¤¶à¥‡à¤·à¥‹à¤‚ à¤•à¤¾ à¤…à¤§à¥à¤¯à¤¨ à¤•à¤¿à¤¯à¤¾ à¤”à¤° à¤ªà¥à¤°à¤¾à¤•à¥ƒà¤¤à¤¿à¤• à¤¦à¥ƒà¤¶à¥à¤¯à¥‹à¤‚ à¤•à¤¾ à¤­à¤°à¤ªà¥‚à¤° à¤†à¤¨à¤‚à¤¦ à¤²à¤¿à¤¯à¤¾, à¤¸à¤¾à¤¥ à¤¹à¥€</span><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; color: #1f497d;">&nbsp;</span><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; color: #1f497d;">à¤¸à¤¤à¤°à¥‡à¤‚à¤—à¤¾ à¤¡à¥‚à¤¬à¤¾à¤¨ à¤•à¥à¤·à¥‡à¤¤à¥à¤° à¤•à¤¾ à¤­à¥€ à¤¦à¥ƒà¤¶à¥à¤¯ à¤¦à¥‡à¤–à¤•à¤° à¤†à¤¨à¤¨à¥à¤¦à¤¿à¤¤ à¤¹à¥à¤ | à¤¹à¥‡à¤°à¤¿à¤Ÿà¥‡à¤œ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤à¤‚à¤¡ à¤Ÿà¥à¤°à¥‡à¤¨à¤¿à¤‚à¤— à¤ªà¥à¤°à¥‹à¤—à¥à¤°à¤¾à¤® à¤®à¥‡à¤‚ à¤¬à¤šà¥à¤šà¥‹à¤‚ à¤¨à¥‡ à¤¬à¥ à¤šà¥ à¤•à¤° à¤­à¤¾à¤— à¤²à¤¿à¤¯à¤¾ | à¤°à¤¸à¥à¤¤à¥‡ à¤®à¥‡à¤‚ à¤¶à¥à¤¯à¤¾à¤® à¤•à¥‡à¤µà¤Ÿ à¤à¤µà¤‚ à¤®à¥‹à¤¹à¤¨ à¤²à¤¾à¤² à¤¸à¤¾à¤¹à¥‚à¤œà¥€ à¤¨à¥‡ à¤¬à¤°à¥à¤¡ à¤µà¤¾à¤šà¤¿à¤‚à¤— à¤•à¤°à¤¾à¤¯à¤¾ à¤à¤µà¤‚ à¤œà¤‚à¤—à¤² à¤®à¥‡à¤‚ à¤¸à¥à¤¥à¤¿à¤¤ à¤œà¥œà¥€ à¤¬à¥‚à¤Ÿà¥€ à¤•à¥‹ à¤ªà¤¹à¤šà¤¾à¤¨à¥‡ à¤à¤µà¤‚ à¤‰à¤¨à¤•à¤¾ à¤‰à¤ªà¤¯à¥‹à¤— à¤•à¥€ à¤µà¤¿à¤¸à¥à¤¤à¥ƒà¤¤ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥€ | à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤•à¥‡ à¤¦à¥‹à¤°à¤¾à¤¨ à¤¸à¤¾à¥ž à¤¸à¤«à¤¾à¤ˆ à¤•à¤¾ à¤µà¤¿à¤¶à¥‡à¤· à¤§à¥à¤¯à¤¾à¤¨ à¤°à¤–à¤¾ à¤—à¤¯à¤¾| à¤‡à¤•à¤¾à¤ˆ à¤šà¥‡à¤¯à¤°à¤®à¥ˆà¤¨ à¤à¤µà¤‚ à¤•à¥‹à¤¸à¤¾à¤§à¥à¤¯à¤•à¥à¤· à¤¸à¤‚à¤¦à¥€à¤ª à¤¸à¥‡à¤  à¤à¤µà¤‚ à¤µà¤¿à¤œà¥‡à¤¶ à¤•à¥‡ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤ªà¤¹à¤¾à¥œ à¤¸à¥‡ à¤‰à¤¤à¤°à¤¤à¥‡ à¤¸à¤®à¤¯ à¤ªà¤°à¥à¤¯à¤¾à¤µà¤°à¤£ à¤•à¤¾ à¤¸à¤¨à¥à¤¦à¥‡à¤¶ à¤¦à¥‡à¤¤à¥‡ à¤¹à¥à¤ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤¸à¥‡ à¤—à¥à¤°à¤¾à¤® à¤—à¥à¤•à¤¾à¤Ÿà¤°à¤¾ à¤¤à¤• à¤¬à¤¿à¤–à¥‡à¤°à¥‡ à¤¹à¥à¤ à¤ªà¥à¤²à¤¾à¤¸à¥à¤Ÿà¤¿à¤• à¤•à¥‹ à¤à¤•à¤¤à¥à¤°à¤¿à¤¤ à¤•à¤°à¤¤à¥‡ à¤¹à¥à¤ à¤—à¤¾à¤à¤µ à¤µà¤¾à¤²à¥‹ à¤µà¥‹ à¤¸à¥à¤µà¤šà¥à¤›à¤¤à¤¾ à¤…à¤­à¤¿à¤¯à¤¾à¤¨ à¤•à¥€ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥€ |</span></p>\r\n<p class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;"><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; background-image: initial; background-color: yellow; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">à¤…à¤‚à¤¤ à¤®à¥‡à¤‚ à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¸à¤­à¥€ à¤ªà¥à¤°à¤¤à¤¿à¤­à¤¾à¤—à¤¿à¤¯à¥‹à¤‚ à¤•à¤¾ à¤†à¤­à¤¾à¤° à¤ªà¥à¤°à¤•à¤Ÿ à¤•à¤°à¤¤à¥‡ à¤¹à¥à¤ à¤ªà¥à¤°à¤®à¤¾à¤£ à¤ªà¤¤à¥à¤° à¤µà¤¿à¤¤à¤°à¤£ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ |</span></p>', '2017-12-02', '1513315615.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `activity_gallery_image`
--

CREATE TABLE `activity_gallery_image` (
  `Activity_Gallery_Image_Id` int(11) NOT NULL,
  `Activity_Id` int(11) NOT NULL,
  `Images` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_gallery_image`
--

INSERT INTO `activity_gallery_image` (`Activity_Gallery_Image_Id`, `Activity_Id`, `Images`) VALUES
(11, 3, '1452599986Environment 0.jpg'),
(12, 3, '1452599986Environment 1.jpg'),
(13, 3, '1452599986Environment 2.jpg'),
(14, 3, '1452599986Environment 3.jpg'),
(18, 7, '1452602705Chakole Jee.jpg'),
(19, 7, '1452602705National Trek.jpg'),
(21, 13, '1452852968IMG-20160102-WA0002.jpg'),
(22, 13, '1452852968IMG-20160102-WA0003.jpg'),
(23, 13, '1452852968IMG-20160102-WA0004.jpg'),
(24, 13, '1452852991Muchkund Rishi Track 2013.jpg'),
(25, 13, '1452852991Shringi Rishi Track 2014.jpg'),
(26, 14, '1452853083No polythene 2014 Navratri.jpg'),
(27, 15, '1452853254Night Track 2013.jpg'),
(28, 17, '1453023877IMG-20160117-WA0013.jpg'),
(29, 17, '1453023877IMG-20160117-WA0015.jpg'),
(30, 17, '1453023877IMG-20160117-WA0016.jpg'),
(31, 17, '1453023877IMG-20160117-WA0017.jpg'),
(32, 17, '1453023877IMG-20160117-WA0027.jpg'),
(33, 17, '1453023878IMG-20160117-WA0033.jpg'),
(34, 17, '1453023878IMG-20160117-WA0037.jpg'),
(45, 20, '1469375274IMG-20160221-WA0011.jpg'),
(46, 20, '1469375274IMG-20160310-WA0038.jpg'),
(47, 21, '1470932962IMG-20160801-WA0001.jpg'),
(48, 21, '1470932982IMG-20160801-WA0002.jpg'),
(49, 21, '1470933039IMG-20160801-WA0003.jpg'),
(50, 21, '1470933039IMG-20160801-WA0004.jpg'),
(51, 21, '1470933039IMG-20160801-WA0005.jpg'),
(52, 21, '1470933039IMG-20160801-WA0006.jpg'),
(53, 21, '1470933039IMG-20160801-WA0007.jpg'),
(54, 22, '147175086913403144_10204965156647326_3340013932314596958_o.jpg'),
(55, 22, '147175089113412050_10204974875010279_7718355479005386409_o.jpg'),
(56, 22, '1471750929DSCN0395.JPG'),
(57, 22, '1471751000DSCN0399.JPG'),
(58, 22, '1471751000DSCN0401.JPG'),
(59, 22, '1471751000DSCN0408.JPG'),
(60, 23, '1475390530P_20160918_090952.jpg'),
(61, 23, '1475390593P_20160918_091106.jpg'),
(62, 26, '1513314042IMG-20171211-WA0013.jpg'),
(63, 26, '1513314042IMG-20171211-WA0018.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `activity_video`
--

CREATE TABLE `activity_video` (
  `Activity_Video_Id` int(11) NOT NULL,
  `Activity_Id` int(11) NOT NULL,
  `Activity_Video` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_video`
--

INSERT INTO `activity_video` (`Activity_Video_Id`, `Activity_Id`, `Activity_Video`) VALUES
(1, 23, 'V_20160918_091051.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`User_Name`, `Password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `Asset_Id` int(11) NOT NULL,
  `Asset_Name` varchar(200) NOT NULL,
  `Asset_Detail` text NOT NULL,
  `Images` varchar(100) NOT NULL,
  `Unit_Id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`Asset_Id`, `Asset_Name`, `Asset_Detail`, `Images`, `Unit_Id`) VALUES
(1, 'Printer [Canon MF 3010]', '01 No.', '', 2),
(2, 'Tents', 'Total 07 Nos. [02 are with Mr. C N Bajpai Chairman of Bilaspur Unit]', '', 8),
(3, 'Tents', '2 nos.', '', 4),
(4, 'Ruksak', '30 Nos', '', 4),
(5, 'Bags', '49 nos.', '', 4),
(6, 'Amplifier + Cordless Mike', '01', '', 4),
(7, 'Mattress', 'Total 26, [22 are with CG State and 4 are with Mr. C N Bajpai, Chairman, Bilaspur Unit]', '', 8),
(8, 'Tents', '02 Nos.', '', 2),
(9, 'Rope [ Rapling  + River Crossing ]', '01 No.', '', 8),
(10, 'Tents', '02 Nos.', '', 3),
(11, 'Furniture', '01 No.', '', 6),
(12, 'Tents', '02 Nos.', '', 6);

-- --------------------------------------------------------

--
-- Table structure for table `circular`
--

CREATE TABLE `circular` (
  `Circular_Id` int(11) NOT NULL,
  `Circular_Name` varchar(200) NOT NULL,
  `Circular_Detail` text NOT NULL,
  `Circular_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular`
--

INSERT INTO `circular` (`Circular_Id`, `Circular_Name`, `Circular_Detail`, `Circular_Date`) VALUES
(1, 'Tamilnadu Relief Fund', 'Contribution Towards Tamilnadu Relief Fund', '2015-12-06'),
(2, 'Membership', 'New Membership Software', '2015-12-29'),
(4, 'Special Casual Leave', 'Special Casual Leave', '1989-10-25'),
(5, 'MOU with UK Tourism', 'National Office Signed MOU with UK Tourism', '0000-00-00'),
(8, 'Andhra Pradesh Tourism Discount', 'Discounts on APTDC Rooms and Other Services', '2009-07-22'),
(9, 'Assam Tourism Development ', 'Discounts on Room Rents', '2010-06-23'),
(10, 'ISO Certificate', 'ISO Certificate', '2014-02-20'),
(11, 'Karnataka State Tourism Development Corporation', 'Discounts on Room Tariff', '2009-01-07'),
(12, 'Karnataka Tourism Forest Fees Concession', 'Concession on Various Forest Fees', '2008-02-22'),
(13, 'U P Sports Department Special Casual Leave', 'Special Casual Leave', '2008-07-31'),
(14, 'U P Tourism', 'Discounts on Rooms and others', '2001-11-24'),
(17, '5 units in State', 'Minimum 5 units in State', '2016-07-31'),
(18, 'Expulsion from Primary Membership of Shri Samar Kumar Mitra', 'Expulsion from Primary Membership of Shri Samar Kumar Mitra', '2016-04-17'),
(19, 'Membership Year', 'Membership Year', '2016-04-17'),
(20, 'Policy for Participation in IYHF Conferences', 'Policy for Participation in IYHF Conferences', '2016-04-17'),
(23, 'Application form Off the Beaten Track Siddharth Scholarship', 'Application form Off the Beaten Track Siddharth Scholarship', '2016-04-17'),
(28, 'Annual Report or Details of Activities during the year 2016-17 (1st April to 31st March)', 'It is requested to State Branch & all Units, kindly send your annual reports or details of activities for the year 2016-17 (1st April to 31st March) along with photographs (if any) in order to enable us to prepare YHAI Annual report for the respective years.', '2017-04-15'),
(29, 'Council Members', 'Circular Regarding Council Members', '2017-02-28'),
(30, 'Members for National Council', 'Unit has any issues they should forward their queries through proper channel to National Office.  ', '2017-03-15'),
(31, 'National Level Programs ', 'Scheme for Promotion of Adventure Sports & Similar Activities amongst Central Government Employees â€“ Programmes to be Organized by Youth Hostels Association of India', '2017-08-03'),
(33, 'National Youth Convention - 2017', 'National Youth Convention - 2017', '2017-06-24'),
(35, 'Non Operational [Harayana State Branch.]', 'Haryana State Branch is became Non Operational State Branch.', '2017-09-03'),
(36, 'Membership Forms', 'YHAI Membership Forms to National Office', '2017-09-03'),
(37, 'Circular for GST on YHAI Membership', 'Circular for GST on YHAI Membership', '2017-09-03'),
(38, 'New YHAI Membership Fee with GST', 'YHAI Membership Rates with effect from 1st October 2017 including GST', '2017-10-01'),
(39, '30% Discount from C G Tourism', 'C G Tourism has approved 30 % discount on Resort / Rest House / Motels to YHAI Members', '2017-10-03');

-- --------------------------------------------------------

--
-- Table structure for table `circular_file`
--

CREATE TABLE `circular_file` (
  `Circular_File_Id` int(11) NOT NULL,
  `Circular_File_Name` varchar(100) NOT NULL,
  `Circular_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `circular_file`
--

INSERT INTO `circular_file` (`Circular_File_Id`, `Circular_File_Name`, `Circular_Id`) VALUES
(10, 'MOU with UK Tourism.pdf', 5),
(23, 'UP Tourism.jpg', 14),
(24, 'UP Sports Department Special Casual Leave Letter.jpg', 13),
(25, 'Karnataka Tourism Forest Fee concession Letter.jpg', 12),
(26, 'Karnataka Tourism.jpg', 11),
(27, 'ISO Certificate.jpg', 10),
(28, 'Assam Circular.jpg', 9),
(29, 'AP Tourism Discount.jpg', 8),
(32, 'SpecialCasual Leave.pdf', 4),
(33, 'Circular 1.jpg', 1),
(34, 'Circular 2.jpg', 2),
(37, 'Expulsion from Primary Membership of Shri Samar Kumar Mitra 001.jpg', 18),
(38, 'Membership Year 001.jpg', 19),
(39, 'Policy for participation in IYHF International Conference+ 001.jpg', 20),
(42, 'Off the Beaten Track Siddharth Scholarship 001.jpg', 23),
(43, 'Minimum 5 units in State 001.jpg', 17),
(61, 'Council Member.jpg', 29),
(62, 'Letter for Units.jpg', 30),
(65, 'Annual Report 2016-17.jpg', 28),
(67, 'YHAI Circular.pdf', 31),
(69, 'National Youth Convention-2017.pdf', 33),
(72, 'Membership Forms to National Office.docx', 36),
(73, 'Circular for GST on YHAI Membership.docx', 37),
(75, 'Membership Fees w.e.f 01.10.2017.jpg', 38),
(76, 'C G Tourism.jpg', 39),
(77, 'Notification in regard to Defunct the Haryana State Branch.pdf', 35);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `City_Id` int(11) NOT NULL,
  `City_Name` varchar(30) NOT NULL,
  `State_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`City_Id`, `City_Name`, `State_Id`) VALUES
(595, 'Ahiwara', 7),
(596, 'Akaltara', 7),
(597, 'Ambagarh Chauki', 7),
(598, 'Ambikapur', 7),
(599, 'Arang', 7),
(600, 'Bade Bacheli', 7),
(601, 'Bagbahara', 7),
(602, 'Baikunthpur', 7),
(603, 'Balod', 7),
(604, 'Baloda', 7),
(605, 'Baloda Bazar', 7),
(606, 'Banarsi', 7),
(607, 'Basna', 7),
(608, 'Bemetra', 7),
(609, 'Bhanpuri', 7),
(610, 'Bhatapara', 7),
(611, 'Bhatgaon', 7),
(612, 'Bhilai', 7),
(613, 'Bilaspur', 7),
(614, 'Bilha', 7),
(615, 'Birgaon', 7),
(616, 'Bodri', 7),
(617, 'Champa', 7),
(618, 'Charcha', 7),
(619, 'Charoda', 7),
(620, 'Chhuikhadan', 7),
(621, 'Chirmiri', 7),
(622, 'Dantewada', 7),
(623, 'Deori', 7),
(624, 'Dhamdha', 7),
(625, 'Dhamtari', 7),
(626, 'Dharamjaigarh', 7),
(627, 'Dipka', 7),
(628, 'Doman Hill Colliery', 7),
(629, 'Dongargaon', 7),
(630, 'Dongragarh', 7),
(631, 'Durg', 7),
(632, 'Frezarpur', 7),
(633, 'Gandai', 7),
(634, 'Gariaband', 7),
(635, 'Gaurela', 7),
(636, 'Gelhapani', 7),
(637, 'Gharghoda', 7),
(638, 'Gidam', 7),
(639, 'Gobra Nawapara', 7),
(640, 'Gogaon', 7),
(641, 'Hatkachora', 7),
(642, 'Jagdalpur', 7),
(643, 'Jamui', 7),
(644, 'Jashpurnagar', 7),
(645, 'Jhagrakhand', 7),
(646, 'Kanker', 7),
(647, 'Katghora', 7),
(648, 'Kawardha', 7),
(649, 'Khairagarh', 7),
(650, 'Khamhria', 7),
(651, 'Kharod', 7),
(652, 'Kharsia', 7),
(653, 'Khonga Pani', 7),
(654, 'Kirandu', 7),
(655, 'Kirandul', 7),
(656, 'Kohka', 7),
(657, 'Kondagaon', 7),
(658, 'Korba', 7),
(659, 'Korea', 7),
(660, 'Koria Block', 7),
(661, 'Kota', 7),
(662, 'Kumhari', 7),
(663, 'Kumud Katta', 7),
(664, 'Kurasia', 7),
(665, 'Kurud', 7),
(666, 'Lingiyadih', 7),
(667, 'Lormi', 7),
(668, 'Mahasamund', 7),
(669, 'Mahendragarh', 7),
(670, 'Mehmand', 7),
(671, 'Mongra', 7),
(672, 'Mowa', 7),
(673, 'Mungeli', 7),
(674, 'Nailajanjgir', 7),
(675, 'Namna Kalan', 7),
(676, 'Naya Baradwar', 7),
(677, 'Pandariya', 7),
(678, 'Patan', 7),
(679, 'Pathalgaon', 7),
(680, 'Pendra', 7),
(681, 'Phunderdihari', 7),
(682, 'Pithora', 7),
(683, 'Raigarh', 7),
(684, 'Raipur', 7),
(685, 'Rajgamar', 7),
(686, 'Rajhara', 7),
(687, 'Rajnandgaon', 7),
(688, 'Ramanuj Ganj', 7),
(689, 'Ratanpur', 7),
(690, 'Sakti', 7),
(691, 'Saraipali', 7),
(692, 'Sarajpur', 7),
(693, 'Sarangarh', 7),
(694, 'Shivrinarayan', 7);

-- --------------------------------------------------------

--
-- Table structure for table `designation_master`
--

CREATE TABLE `designation_master` (
  `Designation_Id` tinyint(4) NOT NULL,
  `Designation_Name` varchar(50) NOT NULL,
  `Designation_Order` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation_master`
--

INSERT INTO `designation_master` (`Designation_Id`, `Designation_Name`, `Designation_Order`) VALUES
(1, 'President', 1),
(2, 'Chairman', 3),
(3, 'Vice President', 2),
(4, 'Treasurer', 4),
(5, 'Secretary', 5),
(6, 'Executive Member', 7),
(7, 'Member', 8),
(8, 'Organizing Secretary', 6),
(9, 'Co-opted Member', 9),
(10, 'National Executive & Council Member', 10),
(11, 'National Council Member', 11),
(12, 'Adventurous Programme Committee (APC) ', 12),
(13, 'Environment Programme Committee (EPC)', 13),
(14, 'Hostel Development Committee (HDC)', 14);

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `Discount_Id` int(11) NOT NULL,
  `Coupon_Code` varchar(100) NOT NULL,
  `Offer` varchar(100) NOT NULL,
  `Details` text NOT NULL,
  `Images` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`Discount_Id`, `Coupon_Code`, `Offer`, `Details`, `Images`) VALUES
(5, 'KHZA15', '15% off', '15% off on all items', '1507905885.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `district_master`
--

CREATE TABLE `district_master` (
  `District_id` int(11) NOT NULL,
  `District_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `district_master`
--

INSERT INTO `district_master` (`District_id`, `District_name`) VALUES
(10, 'raipur'),
(11, 'durg'),
(12, 'rajnandgaon'),
(13, 'kljnko');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_Id` int(11) NOT NULL,
  `Hostel_Name` varchar(100) NOT NULL,
  `City_Id` int(11) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Nearby` varchar(200) NOT NULL,
  `Contact_Num` varchar(20) NOT NULL,
  `Email_Id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_Id`, `Hostel_Name`, `City_Id`, `Address`, `Nearby`, `Contact_Num`, `Email_Id`) VALUES
(1, 'The Floret', 612, 'Plot No. 7, Shivnath Vistar Complex, Supela, Akash Ganga, Bhilai, Dist. Durg, Pin - 490023', 'Chouhan Estate, G.E. Road', '7884055555', ''),
(2, 'HOTEL SHALIN', 658, 'Transport Nagar Chowk, Korba - 495677', '', '7759221885', '');

-- --------------------------------------------------------

--
-- Table structure for table `latest_news`
--

CREATE TABLE `latest_news` (
  `uid` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `description` blob NOT NULL,
  `sortid` int(11) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1 for Disable and 0 For  Enable',
  `dateVar` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_news`
--

INSERT INTO `latest_news` (`uid`, `title`, `description`, `sortid`, `status`, `dateVar`) VALUES
(22, 'HAPPY NEW YEAR 2018', 0x4d454d42455253204f4620434848415454495347415248205354415445204252414e43482057495348455320414c4c20544845205354415445204252414e43484553202620544845495220554e49545320414e442054484549522046414d494c59204d454d42455253204120564552592056455259204841505059204e45572059454152202d2032303138, 0, 0, '2017-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Member_Id` int(11) NOT NULL,
  `Membership_No` int(11) NOT NULL,
  `Member_Name` varchar(40) NOT NULL,
  `Unit_Id` tinyint(4) NOT NULL,
  `Designation_Id` tinyint(4) NOT NULL,
  `MID` smallint(6) DEFAULT NULL,
  `Membership_Type` varchar(20) NOT NULL,
  `Membership_Date` varchar(30) NOT NULL,
  `Contact_No` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Member_Detail` text NOT NULL,
  `Member_Type` tinyint(4) NOT NULL COMMENT '1-member,2-office bearer',
  `Member_Status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-active,0-unactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_Id`, `Membership_No`, `Member_Name`, `Unit_Id`, `Designation_Id`, `MID`, `Membership_Type`, `Membership_Date`, `Contact_No`, `Address`, `Member_Detail`, `Member_Type`, `Member_Status`) VALUES
(1, 74687, 'S K Mitra', 2, 1, 4, 'Life Time', '1970-01-01', '9425244106', 'Street No. 70, Sector - 6, Bhilai', 'subhmee@yahoo.co.in', 2, 1),
(2, 63411, 'P K Deb', 2, 3, 4, 'Life Time', '1970-01-01', '7587141002', 'Sector - 10, Bhilai', '', 2, 1),
(3, 107368, 'Basant Verma', 2, 3, 4, 'Life Time', '1970-01-01', '7587440037', 'Vaishali Nagar, Bhilai', '', 2, 1),
(4, 0, 'Santosh Chakole', 2, 2, 4, 'Life Time', '1970-01-01', '9407980507', 'Nehru Nagar (West), Bhilai', 'santosh_chakole@yahoo.com', 2, 1),
(5, 58498, 'Praveen Kalmegh', 2, 4, 4, 'Life Time', '1970-01-01', '9242410670', 'Sector - 1, Bhilai', 'pdkalmegh@gmail.com', 2, 1),
(6, 69963, 'K . Subramanyam', 2, 5, 4, 'Life Time', '1970-01-01', '9425294099', 'Qtr. No. 4-B, Street No. 26, Sector - 9, Bhilai', 'ksubu2008@gmail.com', 2, 1),
(8, 0, 'Dr. K . Subramaniam ', 8, 1, NULL, 'Three Year', '1970-01-01', '9826148944', 'Addl. PCCF, Forest HQRS, Aranya Bhawan, Raipur (CG)', 'maniiyer1958@yahoo.co.in', 2, 1),
(9, 0, 'Mrs. Sushma Nanda', 8, 3, 4, 'Life Time', '1970-01-01', '9827116116', '98, M G Road, Dhamtari - 493773 (CG)', 'snanda.dmt@gmail.com', 2, 1),
(10, 0, 'Laxmi Kant Dwivedi', 8, 3, 4, 'Life Time', '1970-01-01', '9425516057', 'Old Bus Stand, Kurud - 493663, Dist. Dhamtari (CG)', '', 2, 1),
(11, 0, 'B C S Naidu', 8, 3, 4, 'Life Time', '1970-01-01', '9425202924', '9/110, Near Dr. Kukreja, Budhapara, Raipur (CG)', 'b.naidu@sbi.co.in', 2, 1),
(12, 0, 'G . Rajesh Kumar', 8, 2, 4, 'Life Time', '1970-01-01', '9406009872', 'Qtr. No. 2-A, St.No. 40, Sector - 10, Bhilai-490006', 'g.rajeshkumar777@yahoo.com', 2, 1),
(13, 0, 'Pankaj Kr. Mehta', 8, 4, 4, 'Life Time', '1970-01-01', '7587100953', 'Qtr. No. 6-A, St.No.40,  Sector - 10, \r\nBhilai - 490 006', 'pankajrashmimehta@gmail.com', 2, 1),
(14, 0, 'K . Subramanyam', 8, 5, 4, 'Life Time', '1970-01-01', '9425294099', '4-B, St. No. 26, Sector - 9, Bhilai - 490 009', 'ksubu2008@gmail.com', 2, 1),
(20, 0, 'K . Subramanyam', 8, 10, 4, 'Life Time', '1970-01-01', '9425294099', '4-B, Street No. 26, Sector - 9, Bhilai - 490 009', 'ksubu2008@gmail.com', 2, 1),
(24, 0, 'Salim Khan', 8, 11, 4, 'Life Time', '1970-01-01', '9425246018', 'L - Pocket, 12 - A, Maroda Sector, Bhilai - 490001', 'salimkhan.ashu@gmail.com', 2, 1),
(25, 0, 'Shashank Moghe', 8, 12, 4, 'Life Time', '1970-01-01', '9425215330', 'Shop no. 35 1st floor Gurukul comp. Kalibadi Chowk, Raipur (C.G.) 492001', 'shashankmoghe23@gmail.com', 2, 1),
(26, 0, 'Praveen Kalmegh', 8, 13, 4, 'Life Time', '1970-01-01', '9424106740', '2 - A, Street No. 8, Sector - 1, Bhilai - 490 001', 'pdkalmegh@gmail.com', 2, 1),
(27, 0, 'Sandeep Seth', 8, 14, 4, 'Life Time', '1970-01-01', '9425079888', 'Korba', 'sandeepseth.korba@gmail.com', 2, 1),
(28, 0, 'Durgashankar Pargania', 6, 1, 4, 'Life Time', '1970-01-01', '7898987850', '30/165 Amapara Chowk,\r\nRaipur (C.G.) 492001.', 'durgasparganiha@yahoo.com', 2, 1),
(29, 0, 'Vimal Srivas', 6, 3, 4, 'Life Time', '1970-01-01', '9826415916', 'Near Dudhadari Mandir Mathpara \r\nRaipur (C.G.) 492001.', 'vimal_raipur@rediffmail.com', 2, 1),
(30, 0, 'Dilip Verma', 6, 3, 4, 'Life Time', '1970-01-01', '9407755936', 'P-8 Sector-2, Priyadarshini Nagar,\r\nRaipur (C.G.) 492001.', 'karanverma007@ymail.com', 2, 1),
(31, 0, 'Mahendra Pansari', 6, 3, 4, 'Life Time', '1970-01-01', '9826559066', 'Puspak Villa Lily Chowk,\r\nRaipur (C.G.) 492001.', 'mahendra70@rediffmail.com', 2, 1),
(32, 0, 'CA .Shashank Moghe', 6, 2, 4, 'Life Time', '1970-01-01', '9425215330', 'Shop no. 35 1st floor Gurukul comp. Kalibadi Chowk,\r\nRaipur (C.G.) 492001.', 'shashankmoghe@hotmail.com', 2, 1),
(33, 0, 'CA. Rajesh Rathi', 6, 4, 4, 'Life Time', '1970-01-01', '9407715045', '44/263 Budhapara\r\nRaipur (C.G.) 492001.', 'rajeshrathica@gmail.com', 2, 1),
(34, 0, 'Dr. Pravin Chandrakar', 6, 6, 4, 'Life Time', '1970-01-01', '9425216064', 'Raj Bhawan Colony E-1,\r\nRaipur (C.G.) 492001.', '', 2, 1),
(35, 0, 'CA. Sagar Jain', 6, 6, 4, 'Life Time', '1970-01-01', '9755117060', 'B-6 2nd Floor \r\nDeepak App. Budhapara,\r\nRaipur (C.G.) 492001.', 'sagarjain_87@yahoo.co.in', 2, 1),
(36, 0, 'CA. Varun Mutha', 6, 6, 4, 'Life Time', '1970-01-01', '9752018001', 'Old Cloth Market Road N.H. 6 Kumhari\r\nRaipur (C.G.) 492001.', 'cavarun@live.com', 2, 1),
(37, 0, 'Rahul Srivastava', 6, 6, 4, 'Life Time', '1970-01-01', '9827111988', 'K-4 Aurobindo Enclsve Pachpedi Naka,\r\nRaipur (C.G.) 492001.', 'rahulkrishna1977@rediffmail.com', 2, 1),
(38, 0, 'Arvind Naidu', 6, 6, 4, 'Life Time', '1970-01-01', '9300200332', 'Ganesh Chowk Mathpara,\r\nRaipur (C.G.) 492001.', 'arvindnaidu332@gmail.com', 2, 1),
(39, 0, 'Anil Golechha', 6, 6, 4, 'Life Time', '1970-01-01', '9425205497', 'Bhairav Society,\r\nRaipur (C.G.) 492001.', 'sunidhijain15@gmail.com', 2, 1),
(40, 0, 'Dr. Alok Pal', 6, 6, 4, 'Life Time', '1970-01-01', '7049645132', 'Pal Complex Tikraapara,\r\nRaipur (C.G.) 492001.', 'dralokpal32001@yahoo.co.in', 2, 1),
(41, 0, 'Rajesh Singh', 6, 6, 4, 'Life Time', '1970-01-01', '9425210091', '27/325 Shankar Nagar,\r\nRaipur (C.G.) 492001.', 'rasttrack0091@yahoo.in', 2, 0),
(42, 0, 'Manoj Pandey', 6, 6, 4, 'Life Time', '1970-01-01', '9907130700', 'B-10 Shailendra Nagar,\r\nRaipur (C.G.) 492001.', 'manoj67pandey@gmail.com', 2, 0),
(43, 0, 'Smt. Nilu Pargania', 6, 6, 4, 'Life Time', '1970-01-01', '7898987850', '30/165 Amapara Chowk,\r\nRaipur (C.G.) 492001.', 'durgasparganiha@yahoo.com', 2, 1),
(44, 0, 'Smt. Rakhi Jhabak', 6, 6, 4, 'Life Time', '1970-01-01', '9425212510', 'Shop no. 39 1st floor \r\nGurukul comp. Kalibadi Chowk,\r\nRaipur (C.G.) 492001.', 'ashokjhabak_fca@yahoo.co.in', 2, 1),
(45, 0, 'Smt. Aparna Moghe', 6, 6, 4, 'Life Time', '1970-01-01', '9425215330', 'Shop no. 35 1st floor Gurukul comp. Kalibadi Chowk,', 'shashankmoghe@hotmail.com', 2, 1),
(46, 0, 'Ku. Priyam Khare', 6, 6, 4, 'Life Time', '1970-01-01', '9893199395', 'Sai Mandir Road Danganiya,\r\nRaipur (C.G.) 492001.', 'priyamkhare29@gmail.com', 2, 1),
(47, 0, 'Ashok Kumar Jhabak', 6, 5, 4, 'Life Time', '1970-01-01', '9425212510', 'Shop no. 39 1st floor Gurukul comp. Kalibadi Chowk,\r\nRaipur (C.G.) 492001.', 'ashokjhabak_fca@yahoo.co.in', 2, 1),
(49, 0, 'Laxmikant Diwedi', 4, 3, 4, 'Life Time', '1970-01-01', '9425516057', 'Old Bus Stand, Kurud', '', 2, 1),
(50, 80712, 'Mohendra Chandrakar', 4, 3, 4, 'Life Time', '1970-01-01', '9098166315', 'Azad Chowk, Brahman Para, Kurud', '', 2, 1),
(51, 121969, 'Kajal Munjwani', 4, 3, 4, 'Life Time', '1970-01-01', '9770512123', 'Gurudev Fabrics, Goal Bazar, Dhamtari', '', 2, 0),
(52, 0, 'Hukum Chand Jain', 4, 2, 4, 'Life Time', '1970-01-01', '9406186567', 'Panchulal Jain Stores, Math Mandir Chowk, Dhamtari - 493773', 'lionhukumjain@gmail.com', 2, 1),
(53, 54100, 'Chandradeep Singh', 4, 4, 4, 'Life Time', '1970-01-01', '9425657164', 'Shikha Medical Stores, Bastar Road, Dhamtari', 'chandradeepsingh43@gmail.com', 2, 1),
(55, 80717, 'Neeraj Shukla', 4, 5, 4, 'Life Time', '1970-01-01', '9425516148', 'College Road, Kurud', 'nrjshukla00@gmail.com', 2, 1),
(57, 77106, 'CA. Sameer Singh', 3, 1, 4, 'Life Time', '1970-01-01', '9425530094', '9-B, 1st Foor, Arpa Complex, Opp. District Hospital, Near Nav Bharat Press, Bilaspur (CG)', 'casameersingh@gmail.com', 2, 1),
(58, 0, 'Akhilesh Chandra Pradeep Bajpai', 3, 2, 4, 'Life Time', '1970-01-01', '9826241042', '27 Kholi,  Vikas Nagar, Bilaspur (CG)\r\n', 'akhileshbajpai10nov@gmail.com', 2, 1),
(59, 82038, 'Dr. Ajay Shrivastava', 3, 3, 4, 'Life Time', '1970-01-01', '9300696921', 'Opp. Chhattisgarh Bhawan, Tilak Nagar, Bilaspur (CG)\r\n', 'ajayspicmacay@yahoo.com', 2, 1),
(60, 82036, 'Mahendra Pandy', 3, 3, 4, 'Life Time', '1970-01-01', '9827954547', 'Saket Enclave, Mungeli Road, Bilaspur (CG)\r\n', 'mmpandey24@gmail.com', 2, 1),
(61, 77105, 'Akshay jain', 3, 4, 4, 'Life Time', '1970-01-01', '9039680570', 'M.I.G. 29 Shrda Sadan Nehru Nagar Bilaspur (CG)\r\n', 'mahamayaagencies@gmail.com', 2, 1),
(62, 77111, 'Keshav Bajpai', 3, 5, 4, 'Life Time', '1970-01-01', '9039630700', 'Subhas Nagar Gondpara Bilaspur (CG)\r\n', 'bajpaikeshav@gmail.com', 2, 1),
(63, 69132, 'Chandra Nath Bajpai', 3, 6, 4, 'Life Time', '1970-01-01', '9425227483', 'Bilaspur', '', 2, 1),
(64, 77107, 'Deependra Padhi', 3, 6, 4, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 2, 1),
(65, 82038, 'Dr Ajay Shrivastava', 3, 6, 4, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 2, 1),
(66, 82024, 'Pankaj Panchayiti', 3, 6, 4, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 2, 1),
(67, 100983, 'Shushil Mishra', 3, 6, 4, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 2, 1),
(68, 126540, 'Vikas Singh', 3, 6, 4, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 2, 1),
(69, 126544, 'Manoj Yadav', 3, 6, 4, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 2, 1),
(70, 0, 'Neeraj Shukla', 8, 11, 4, 'Life Time', '1970-01-01', '9098913383', 'College Road, Kurud', 'nrjshukla00@gmail.com', 2, 1),
(71, 0, 'G . Rajesh Kumar', 8, 11, 4, 'Life Time', '1970-01-01', '9406009872', 'Qtr. No. 2-A, St.No. 40, Sector - 10, Bhilai-490006', 'g.rajeshkumar777@yahoo.com', 2, 1),
(72, 45428, 'K V R Murty   [ State Council ]', 8, 9, 4, 'Life Time', '1970-01-01', '9425565886', 'Qtr.No. 14-B, St.No. 17, Sector - 7, Bhilai', '', 2, 1),
(73, 98122, 'Shailesh Shukla  [ State Council ]', 8, 9, 4, 'Life Time', '1970-01-01', '9425516148', '"MALABANDH", RAMTALA ROAD, BESIDE GOVT.ENGG. COLLEGE, BILASPUR 495 008', '', 2, 1),
(74, 93295, 'Shailendra Namdeo  [ State Council ]', 8, 9, 4, 'Life Time', '1970-01-01', '9826194048', 'Korba', 'vskkrb@gmail.com', 2, 1),
(75, 88530, 'Ramesh Deo  [ State Council ]', 8, 9, 4, 'Life Time', '1970-01-01', '0000000000', 'Dhamtari', '', 2, 1),
(76, 42065, 'Sunil Vishnoi  [ State Executive ]', 8, 9, 4, 'Life Time', '1970-01-01', '9424226547', 'R-26, Sector-II, Avanti Vihar Colony, Raipur', 'sunilvishnoisp26@yahoo.com', 2, 1),
(77, 45427, 'Ravi Krishna  [ State Executive ]', 8, 9, 4, 'Life Time', '1970-01-01', '9407935270', 'Qtr. No. 10-B, St.No. SPA, Sector-5, Bhilai', '', 2, 1),
(78, 0, 'Salim Khan', 8, 8, 4, 'Life Time', '1970-01-01', '9425246018', 'L Pocket, 12 - A, Maroda Sector, Bhilai - 490001', 'salimkhan.ashu@gmail.com', 2, 1),
(79, 0, 'Ashok Kumar Jhabak', 8, 11, 4, 'Life Time', '1970-01-01', '9425212510', 'Shop no. 39 1st floor Gurukul comp. Kalibadi Chowk, Raipur (C.G.) 492001.', 'ashokjhabak_fca@yahoo.co.in', 2, 1),
(80, 0, 'Satish Shukla', 5, 1, 4, 'Life Time', '2016-01-01', '9425224422', 'Korba', '', 2, 1),
(81, 0, 'M L Sahu', 5, 3, 4, 'Life Time', '2016-01-01', '9425539735', 'Korba', '', 2, 1),
(82, 0, 'Dixen Masiah', 5, 3, 4, 'Life Time', '2016-01-01', '9826680190', 'Korba', '', 2, 1),
(83, 0, 'Sandeep Seth', 5, 2, 4, 'Life Time', '2016-01-01', '9425079888', 'Korba', '', 2, 1),
(84, 0, 'N V Vijesh', 5, 4, 4, 'Life Time', '2016-01-01', '9827181326', 'Korba', '', 2, 1),
(85, 0, 'Shailendra Namdeo', 5, 5, 4, 'Life Time', '2016-01-01', '9826194048', 'Korba', '', 2, 1),
(86, 0, 'Shyam Kewat', 5, 6, 4, 'Life Time', '2016-01-01', '9826114808', 'Korba', '', 2, 1),
(87, 0, 'Dr. Sanjay Tiwari', 5, 6, 4, 'Life Time', '2016-01-01', '9827186431', 'Korba', '', 2, 1),
(88, 0, 'Mrs. Sharda Namdeo', 5, 6, 4, 'Life Time', '2016-01-01', '9826132048', 'Korba', '', 2, 1),
(89, 0, 'Mrs. Kalpana Seth', 5, 6, 4, 'Life Time', '2016-01-01', '7828126667', 'Korba', '', 2, 1),
(90, 0, 'Mrs. Rekha Kewat', 5, 6, 4, 'Life Time', '2016-01-01', '7024254398', 'Korba', '', 2, 1),
(91, 0, 'Deepak Soni', 5, 6, 4, 'Life Time', '2016-01-01', '9424144055', 'Korba', '', 2, 1),
(92, 0, 'Shashi Bhushan Netam', 5, 6, 4, 'Life Time', '2016-01-01', '9827114498', 'Korba', '', 2, 1),
(93, 0, 'Ms. Ruchie Sahu', 5, 6, 4, 'Life Time', '2016-01-01', '9893115102', 'Korba', '', 2, 1),
(94, 0, 'Dr. Dinesh Singh', 5, 6, 4, 'Life Time', '2016-01-01', '9039681828', 'Korba', '', 2, 1),
(95, 0, 'Govind Sahu', 5, 6, 4, 'Life Time', '2016-01-01', '9302671844', 'Korba', '', 2, 1),
(96, 49210, 'RAMBAHADUR SINGH SANGAR', 1, 7, 4, 'Life Time', '1970-01-01', '', 'G-7, AJIRMA KRISHI COLONY, RAGHAVPURI, JAINAGAR, SURGUJA 497 001\r\n', '', 1, 1),
(97, 49952, 'SINGH RAJVIR', 1, 7, 4, 'Life Time', '1970-01-01', '', 'M/S ANMOL, MAHAMAYA CHOWK, AMBIKAPUR 497 001\r\n', '', 1, 1),
(98, 54849, 'DR GARG ASHUTOSH KUMAR', 1, 7, 4, 'Life Time', '1970-01-01', '', 'REGIONAL HOSPITAL, CHURCH CHORHA, KOREA 497339\r\n', '', 1, 1),
(99, 82913, 'SUNIL SHUKLA', 1, 7, 4, 'Life Time', '1970-01-01', '', 'NR HIGH SCHOOL, , AT/PO RAJPUR, SURGUJA 497 118\r\n', '', 1, 1),
(100, 100545, 'MAHIM MEHTA', 1, 7, 4, 'Life Time', '1970-01-01', '', 'C/O SHRI M K MEHTA, NR JODA PEEPAL AMBIKAPUR, SURGUJA\r\n', '', 1, 1),
(101, 101277, 'SAURABH SINGH', 1, 7, 4, 'Life Time', '1970-01-01', '', 'VIJAY MARG, GURURANAKWARD, AMBIKAPUR, SURGUJA 497 001\r\n', '', 1, 1),
(102, 106876, 'KAMLESH SINGH', 1, 7, 4, 'Life Time', '1970-01-01', '', 'PO RAGHAVPURI, AMBIKAPUR DIST SURGUJA, AMBIKARPUR\r\n', '', 1, 1),
(103, 107300, 'ABHAY MAURYA', 1, 7, 4, 'Life Time', '1970-01-01', '', 'BANARAS CHOWK, AMBIKAPUR 497 001, \r\n', '', 1, 1),
(104, 107937, 'SHANTANU GARG', 1, 7, 4, 'Life Time', '1970-01-01', '', '71 SETH BASANT LAL MARG, AMBIKAPUR 497 001, \r\n', '', 1, 1),
(105, 113185, 'RAHUL GUPTA', 1, 7, 4, 'Life Time', '1970-01-01', '', 'BHATTI ROAD AMBIKAPUR, SARGUJA, 497 001\r\n', '', 1, 1),
(106, 114088, 'MANOJ KUMAR SINGH', 1, 7, 4, 'Life Time', '1970-01-01', '', 'NR CSEB SATPATA PO, BISHRAMPUR DIST SURAJPUR, BISHRAMPUR 497 226\r\n', '', 1, 1),
(107, 118759, 'GURBHEJ SINGH CHHABRA', 1, 7, 4, 'Life Time', '1970-01-01', '', 'GURUDWARA WARD MAHAMAYA, ROAD AMBIKAPUR SURGUJA D, AMBIKAPUR\r\n', '', 1, 1),
(108, 120011, 'VIJAY PRAKASH SINGH', 1, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 2A-60 PO BISHRAMPUR, DIST- SURAJPUR PIN-497226, \r\n', '', 1, 1),
(109, 55915, 'SHRIVAS KAMLESH', 9, 7, 4, 'Life Time', '1970-01-01', '', 'VILL GATHULA PO BORI, RAJNANDGAON, 492 441\r\n', '', 1, 1),
(110, 77805, 'NITIN PUKHRAJ BAFNA', 9, 7, 4, 'Life Time', '1970-01-01', '', 'BAFNA NIWAS,, GANJ LANE, RAJNANDGAON,, 491 441\r\n', '', 1, 1),
(111, 77806, 'DR PUKHRAJ BAFNA', 9, 7, 4, 'Life Time', '1970-01-01', '', 'BAFNA NIWAS,, GANJ LANE, RAJNANDGAON,, 491 441\r\n', '', 1, 1),
(112, 77936, 'PRAMOD JAIN', 9, 7, 4, 'Life Time', '1970-01-01', '', '49 VARDHMAN NAGAR, RAJNANDGAON 491 441, \r\n', '', 1, 1),
(113, 91136, 'SANJAY LALWANI', 9, 7, 4, 'Life Time', '1970-01-01', '', 'BALGOVIND CHOWK, RAJNANDGAON 491 441, \r\n', '', 1, 1),
(114, 99346, 'PRASHANT BAID', 9, 7, 4, 'Life Time', '1970-01-01', '', 'KISHORE JEWELLERS, SADAR BAZAR, RAJNANDGAON 491441\r\n', '', 1, 1),
(115, 113319, 'ANIL KUMAR KANWAR', 9, 7, 4, 'Life Time', '1970-01-01', '', 'VILL MONGARA PO BHADSENA, TEH A CHOWKI, RAJNANDGAON 491665\r\n', '', 1, 1),
(116, 119103, 'HASNAIN ALVI', 9, 7, 4, 'Life Time', '1970-01-01', '', 'SEHDEV NAGAR DIVIJAY, STADIUM ROAD IN FRONT OF, SHRIRAM HOSP RAJNANDGAON\r\n', '', 1, 1),
(117, 59951, 'TEJASVI K.', 10, 7, 4, 'Life Time', '1970-01-01', '', 'D-16, AIRPORT TERML. BLDG.DRDO, JAGDALPUR\r\n', '', 1, 1),
(118, 59952, 'BUDDA KANAKAIAH', 10, 7, 4, 'Life Time', '1970-01-01', '', 'D-7, RESIDENTIAL COMPLEX, AIRPORT, JAGDALPUR, JAGDALPUR 494 001\r\n', '', 1, 1),
(119, 61820, 'DR AGRAWAL SUJAN NARAYAN', 10, 7, 4, 'Life Time', '1970-01-01', '', 'NMDC IRON & STEEL PLANT, GEEDAM ROAD 494 001, PO JAGDALPUR, BASTAR\r\n', '', 1, 1),
(120, 81188, 'MOHIT KAMLANI', 10, 7, 4, 'Life Time', '1970-01-01', '', 'RAJWADA COMPOUND,, JAGDALPUR, BASTAR 494001\r\n', '', 1, 1),
(121, 89979, 'SATYABRATA RATH', 10, 7, 4, 'Life Time', '1970-01-01', '', 'AT QR NO TYPE-II/DS/83, DLM COLONY KIRANDUL, DANTEWADA KIRANDUL 494556\r\n', '', 1, 1),
(122, 95764, 'RANJU HASINI SAHOO', 10, 7, 4, 'Life Time', '1970-01-01', '', 'ANTHROPOLOGICAL SURVEY, OF INDIA DHARAMPURA -1, JAGDALPUR 494005\r\n', '', 1, 1),
(123, 101393, 'K SWATI', 10, 7, 4, 'Life Time', '1970-01-01', '', 'D-16 AIRPORT RESIDENTIAL, COMPLEX JAGDALPUR, 494001\r\n', '', 1, 1),
(124, 109206, 'ROZY GAWDE', 10, 7, 4, 'Life Time', '1970-01-01', '', 'VILLAGE CHOUGHEL, POST+THANA BHANUPRATAPPUR, KANKER\r\n', '', 1, 1),
(125, 112101, 'DR KUNAL SANYAL', 10, 7, 4, 'Life Time', '1970-01-01', '', 'HIG-9 CG HOUSING BOARD CL, HATKACHORA, JAGDALPUR 494 001\r\n', '', 1, 1),
(126, 112102, 'ADITA SANYAL', 10, 7, 4, 'Life Time', '1970-01-01', '', 'HIG-9 CG HOUSING BOARD CL, HATKACHORA, JAGDALPUR 494 001\r\n', '', 1, 1),
(127, 112144, 'HARSHWARDHAN KAUSHIK', 10, 7, 4, 'Life Time', '1970-01-01', '', 'SBI ROAD, BALAJI WARD JAGDALPUR, 494 001\r\n', '', 1, 1),
(128, 122737, 'YASHWANT SINGH', 10, 7, 4, 'Life Time', '1970-01-01', '', 'VILLAGE PANDRIPANI POST, DUMALI DIST KANKER, KANKER 494334\r\n', '', 1, 1),
(129, 127743, 'SUDHIR LAKRA', 10, 7, 4, 'Life Time', '1970-01-01', '', 'EKTA NAGAR PO GOVINDPUR, KANKER 494334, \r\n', '', 1, 1),
(130, 47892, 'SHRIVASTAVA     A  K', 5, 7, 4, 'Life Time', '1970-01-01', '', 'A-7, CSEB COLONY, KORBA (WEST) 495 450, \r\n', '', 1, 1),
(131, 48765, 'ASHOK KUMAR SAHU', 5, 7, 4, 'Life Time', '1970-01-01', '', 'RANI MAHAL MARG PURANI, BASTI KALAR PARA, KORBA 495 677\r\n', '', 1, 1),
(132, 49206, 'AGRAWAL     DIVYANAND', 5, 7, 4, 'Life Time', '1970-01-01', '', 'MEDICINE CORNER,BUDH, WARI BAZAR CSEB COLONY, KORBA\r\n', '', 1, 1),
(133, 56871, 'BAGHEL RAUSHAN', 5, 7, 4, 'Life Time', '1970-01-01', '', 'F 12 DARRI KORBA WEST, KORBA, 495 450\r\n', '', 1, 1),
(134, 69400, 'SETH SANDEEP', 5, 7, 4, 'Life Time', '1970-01-01', '', 'SR. MIG-16, NEHRU NAGAR, NEAR BUDHWARI,, KORBA 495 677\r\n', '', 1, 1),
(135, 69404, 'SAURABH KAMAL PATEL', 5, 7, 4, 'Life Time', '1970-01-01', '', 'F-3, ITI COLONY,, KORBA 495 677, \r\n', '', 1, 1),
(136, 70601, 'MOHAN LAL SAHU', 5, 7, 4, 'Life Time', '1970-01-01', '', 'C-62, VIDYUT NAGAR,, CSEB KORBA WEST, KORBA 495 451\r\n', '', 1, 1),
(137, 70602, 'AMITABH  PATRA', 5, 7, 4, 'Life Time', '1970-01-01', '', '132/B, SECTOR 2, BALCO NAGAR,, KORBA 495 684\r\n', '', 1, 1),
(138, 77646, 'RAJAT SHARMA', 5, 7, 4, 'Life Time', '1970-01-01', '', 'OA-5 B- TYPE COLONY, CSEB EAST, KORBA 493 677\r\n', '', 1, 1),
(139, 82822, 'DR CHANDRA BHUSAN PRASAD', 5, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 21/C/II,, BALCO TOWNSHIP,, KORBA 495684\r\n', '', 1, 1),
(140, 93291, 'AJAY  RAJWADE', 5, 7, 4, 'Life Time', '1970-01-01', '', 'DURPA ROAD,, KORBA 495 678, \r\n', '', 1, 1),
(141, 93292, 'ALI  BAKHSH', 5, 7, 4, 'Life Time', '1970-01-01', '', 'G-21, NAGAR NIGAM COLONY,, NIHARIKA KOSABADI, KORBA 495 677 \r\n', '', 1, 1),
(142, 93293, 'MASIH DICSON', 5, 7, 4, 'Life Time', '1970-01-01', '', 'H-25, IRRIGATION COLONY, DARRI PO JAMNIPALI, KORBA 495 450\r\n', '', 1, 1),
(143, 93294, 'TIWARI    SANJAY KUMAR', 5, 7, 4, 'Life Time', '1970-01-01', '', 'G-2, NIGAM COLONEY, BEHIND NIHARICA, KORBA 495 677\r\n', '', 1, 1),
(144, 93295, 'NAMDEO SHAILENDRA KUMAR', 5, 7, 4, 'Life Time', '1970-01-01', '', 'H-32, NAGAR NIGAM COLONY, SUBHASH NAGAR,, KORBA 495 677\r\n', '', 1, 1),
(145, 93296, 'MANOJ MISHRA', 5, 7, 4, 'Life Time', '1970-01-01', '', 'QNO SD-127, CSEB COLONY, KORBA EAST 495 677, \r\n', '', 1, 1),
(146, 98814, 'RAVINDRA KUMAR JAISWAL', 5, 7, 4, 'Life Time', '1970-01-01', '', 'Q NO 291/3/A BALCO NAGAR, KORBA DIST, KORBA 495684\r\n', '', 1, 1),
(147, 99312, 'SUDHANSHU MISHRA', 5, 7, 4, 'Life Time', '1970-01-01', '', 'B-97 SHAKTI NGR PO WCL, GEVRA PROJECT DT KORBA, 495 452\r\n', '', 1, 1),
(148, 102067, 'PACHPORE  DEEPAK KUMAR', 5, 7, 4, 'Life Time', '1970-01-01', '', 'VILLAGE BELAKACHHAR, PO BALCO NAGAR,, KORBA 495 684\r\n', '', 1, 1),
(149, 112408, 'MADHU DIDWANIA', 5, 7, 4, 'Life Time', '1970-01-01', '', 'C/O M/S SHIO KUMAR PAWAN, KUMAR MAIN ROAD KORBA, 495 678\r\n', '', 1, 1),
(150, 115254, 'SUJESH', 5, 7, 4, 'Life Time', '1970-01-01', '', 'C-869 KRISHNA VIHAR, JAMNIPALI, KORBA 495 450\r\n', '', 1, 1),
(151, 117933, 'SHARDA NAMDEO', 5, 7, 4, 'Life Time', '1970-01-01', '', 'H 32 NAGAR NIGAM COLONY, NIHARIKA, KORBA 495677\r\n', '', 1, 1),
(152, 117934, 'DEEPAK SONI', 5, 7, 4, 'Life Time', '1970-01-01', '', '33 IDSMT COMPLEX, NR GHANTA GHAR, KORBA 495677\r\n', '', 1, 1),
(153, 117935, 'VIJESH N V', 5, 7, 4, 'Life Time', '1970-01-01', '', 'C/O VIJAYSHREE HOSTEL, MAIN ROAD, KORBA 495677\r\n', '', 1, 1),
(154, 117936, 'YASHWANT KUMAR JOGI', 5, 7, 4, 'Life Time', '1970-01-01', '', 'H 40 NAGAR NIGAM COLONY, NIHARIKA, KORBA 495677\r\n', '', 1, 1),
(155, 121101, 'ANJNI SAHU', 5, 7, 4, 'Life Time', '1970-01-01', '', 'SF739 CSEB, HOSPITAL COLONY KORBA E, KORBA 495677\r\n', '', 1, 1),
(156, 121550, 'VIKASH PATEL', 5, 7, 4, 'Life Time', '1970-01-01', '', 'AB 1015-17 BLOCK 3 NTPC, JAMNIPALI KORBA, 495 450\r\n', '', 1, 1),
(157, 123405, 'VISHAL KELKAR', 5, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT NO 82, SVBP NAGAR JAMNIPALI, KORBA 495450\r\n', '', 1, 1),
(158, 131746, 'ARVIND KUMAR SAHU', 5, 7, 4, 'Life Time', '1970-01-01', '', '253 INDIRA COMM & RESID, CENTER T P NAGAR, KORBA 495 667\r\n', '', 1, 1),
(159, 131747, 'DINESH KUMAR SINGH', 5, 7, 4, 'Life Time', '1970-01-01', '', 'LIG 26 HOUSING BOARD, SEMIPALI JAMANIPALI, KORBA 495 450\r\n', '', 1, 1),
(160, 131748, 'SHIVSHANKAR SHUKLA', 5, 7, 4, 'Life Time', '1970-01-01', '', 'NANDBAG NR AIR STRIP, RUMGARA BALLO NAGAR, KORBA 495 684\r\n', '', 1, 1),
(161, 131749, 'RUCHIE SAHU', 5, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-11/43 MAHARANAPRATAP, NAGAR, KORBA 495 677\r\n', '', 1, 1),
(162, 131750, 'RAKHI DEBNATH', 7, 7, 4, 'Life Time', '1970-01-01', '', 'D-5 O P JINDAL SCHOOL, HOUSING COLONY JSPL, RAIGARH\r\n', '', 1, 1),
(163, 131751, 'SANJAY KUMAR DEBNATH', 7, 7, 4, 'Life Time', '1970-01-01', '', 'D-5 O P JINDAL SCHOOL, HOUSING COLONY JSPL, RAIGARH\r\n', '', 1, 1),
(164, 131752, 'SKARIA VARGHESE', 7, 7, 4, 'Life Time', '1970-01-01', '', 'F 04 OP JINDAL SCHOOL, HOUSING COLONY JSPL, RAIGARH\r\n', '', 1, 1),
(165, 131753, 'SHYAM KUMAR KEWAT', 5, 7, 4, 'Life Time', '1970-01-01', '', '35 C DEEDAYAL HOUSING, BOARD COLONY RAMPUR, KORBA 495 684\r\n', '', 1, 1),
(166, 47307, 'TUTEJA  PREETPAL SINGH', 7, 7, 4, 'Life Time', '1970-01-01', '', 'CONTRACTOR HANDI CHOWK, RAIGARH 496 001, \r\n', '', 1, 1),
(167, 47309, 'BHAGAT    KRISHNA KUMAR', 7, 7, 4, 'Life Time', '1970-01-01', '', 'PHC LOING, RAIGARH 496 001, \r\n', '', 1, 1),
(168, 47310, 'MISS SANTOSH AGRAWAL', 7, 7, 4, 'Life Time', '1970-01-01', '', 'DANIPARA, RAIGARH 496 001, \r\n', '', 1, 1),
(169, 48339, 'SHARMA SANJAY', 7, 7, 4, 'Life Time', '1970-01-01', '', 'RESERVE INSPECTOR OF, POLICE, RAIGARH 497 001\r\n', '', 1, 1),
(170, 51979, 'DR (MRS) RATHI LATA', 7, 7, 4, 'Life Time', '1970-01-01', '', 'SONARPARA, RAIGARH, 495 001\r\n', '', 1, 1),
(171, 51980, 'DR  RATHI  RAJEEV', 7, 7, 4, 'Life Time', '1970-01-01', '', 'SONARPARA, RAIGARH, 495 001\r\n', '', 1, 1),
(172, 56174, 'MRS MISHRA KALYANI', 7, 7, 4, 'Life Time', '1970-01-01', '', 'H NI MIG 20 HOUSING BOARD, MUKUT COLONY RAIGARH, \r\n', '', 1, 1),
(173, 69087, 'PRADHAN NEERAJ', 7, 7, 4, 'Life Time', '1970-01-01', '', 'VILL: MAHAPALLI, PO LOING, RAIGARH,, 496 001\r\n', '', 1, 1),
(174, 82888, 'SATYA RAM SAHU', 7, 7, 4, 'Life Time', '1970-01-01', '', 'GUJARATI PARA BANGALI, GALI RAIGARH, 496 001\r\n', '', 1, 1),
(175, 84715, 'DINESH PATEL', 7, 7, 4, 'Life Time', '1970-01-01', '', 'AT+POST NANDELI, RAIGARH, 496001\r\n', '', 1, 1),
(176, 84716, 'MRS. BHAVANA PATEL', 7, 7, 4, 'Life Time', '1970-01-01', '', 'AT+POST NANDELI, RAIGARH, 496001\r\n', '', 1, 1),
(177, 85585, 'ABHISHEK CHAKRABARTI', 7, 7, 4, 'Life Time', '1970-01-01', '', 'C/O SWAPNA CHAKRABARTI, TGT (MUSIC & DANCE) O.P, JINDAL SCHOOL RAIGARH 01\r\n', '', 1, 1),
(178, 89034, 'YATISH GANDHI', 7, 7, 4, 'Life Time', '1970-01-01', '', 'DAROGAPARA, RAIGARH, \r\n', '', 1, 1),
(179, 92585, 'RAJ KUMAR MISHRA', 7, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-15 MUKUT NAGAR, RAIGARH 496 001, \r\n', '', 1, 1),
(180, 102772, 'SHIRISH PANDA', 7, 7, 4, 'Life Time', '1970-01-01', '', '31/24 KASER PARA, CHAKRADHAR NAGAR, RAIGARH 496 001\r\n', '', 1, 1),
(181, 110112, 'SANJEV KUMAR NANDE', 7, 7, 4, 'Life Time', '1970-01-01', '', 'BHATTA ROAD BAGULAMUKHI, MANDIR GALI RAIGARH, 496 001\r\n', '', 1, 1),
(182, 136486, 'Dr. BAIDYANATH MISHRA ', 1, 7, 4, 'Life Time', '1970-01-01', '7509183395', 'DARRI PARA,POST OFFICE RD, AMBIKAPUR, 1\r\n', 'bigb.mishra2007@gmail.com', 1, 1),
(183, 137666, 'SANJAY', 2, 7, 4, 'Life Time', '1970-01-01', '9407982968', 'Plot 24/3,Street Cross 6, BHILAI, 490006\r\n', 'havehope2803@gmail.com', 1, 1),
(184, 137531, 'PRAKASH DAHAKE ', 2, 7, 4, 'Life Time', '1970-01-01', '7587166420', 'MIG-2-260 AMDINAGAR HUDCO, BHILAI , 490006\r\n', 'rimjhimannu@yahoo.com', 1, 1),
(185, 137518, 'PAWAN KUMAR SHARMA ', 2, 7, 4, 'Life Time', '1970-01-01', '9479056433', '22/4A, MAITRI NAGAR, BHILAI, 490006\r\n', 'p_awansharma@yahoo.co.in', 1, 1),
(186, 136692, 'ALKESH JAIN ', 2, 7, 4, 'Life Time', '1970-01-01', '9098194494', 'Shop No. 06, BSP Market, BHILAI, 490006\r\n', 'alkeshjain64@gmail.com', 1, 1),
(187, 136576, 'SUDHANSHU JAMWAL ', 2, 7, 4, 'Life Time', '1970-01-01', '9407981407', '3B, STREET 13, BHILAI , 9\r\n', 'furious.jamwal@gmail.com', 1, 1),
(188, 136336, 'KOTESWARA RAO ', 2, 7, 4, 'Life Time', '1970-01-01', '8085955809', 'QR 1/F, ST 3, ZONE 3, BHILAI , 11\r\n', 'kraooark@gmail.com', 1, 1),
(189, 135990, 'HARSHITA PANDHARE ', 2, 7, 4, 'Life Time', '1970-01-01', '7587101036', 'Flat-331 Block-8 Gulmohar, Talpuri HB Colony, BHILAI , 490006\r\n', 'harshita674@gmail.com', 1, 1),
(191, 135932, 'SUDHEER KUMAR AWADHIYA ', 2, 7, 4, 'Life Time', '1970-01-01', '9407985833', '38/3 A Maitri Nagar Post Office, BHILAI , 490006\r\n', 'sudheer.awadhiya@gmail.com', 1, 1),
(192, 137272, 'SWAPNESH SONKUSRE ', 2, 7, 4, 'Life Time', '1970-01-01', '9827993931', 'A-1,Vidhya Vihar Colony, DURG, 491001\r\n', 'colddrinkpepsi@gmail.com', 1, 1),
(193, 135786, 'GAURAV KHOBRAGADE ', 2, 7, 4, 'Life Time', '1970-01-01', '9407981716', 'QUARTER NO. 2F, STREET 3A, BHILAI , 490001\r\n', 'gaurav.gs2008@gmail.com', 1, 1),
(194, 135330, 'DEEPAYAN KUMAR ', 2, 7, 4, 'Life Time', '1970-01-01', '9740989706', '3B,Street-28,Sector-9, BHILAI , 490009\r\n', 'deepayan.kumar@gmail.com', 1, 1),
(195, 135184, 'SANJAY PITURI ', 2, 7, 4, 'Life Time', '1970-01-01', '9200992299', 'Room No 9 Expansion Office, BHILAI , 490001\r\n', 'sanjaypituri@gmail.com', 1, 1),
(196, 134886, 'V NIVESH ', 2, 7, 4, 'Life Time', '1970-01-01', '9407982063', 'MIG 26 VAISHALI NAGAR, BHILAI , 490023\r\n', 'v.nivesh@gmail.com', 1, 1),
(197, 134759, 'DEVMAN SAHU ', 2, 7, 4, 'Life Time', '1970-01-01', '9826134322', 'Snehkunj, Saket Colony, DURG, 490022\r\n', 'dsahooo68@gmail.com', 1, 1),
(198, 134404, 'VIJAY KRISHNA GARIMELLA ', 2, 7, 4, 'Life Time', '1970-01-01', '9004037896', 'Block 35, Plot 3, BHILAI , 490020\r\n', 'vijaykrishna86@gmail.com', 1, 1),
(199, 130122, 'SAGAR CHANDRAKAR ', 2, 7, 4, 'Life Time', '1970-01-01', '9867473599', 'Swapn Sagar,Adarsh Nagar, DURG, 491001\r\n', 'sagar88doc@gmail.com', 1, 1),
(200, 129907, 'GIRWAR SINGH ', 2, 7, 4, 'Life Time', '1970-01-01', '9407982694', 'TULIP -323, Street-15,, BHILAI , 490009\r\n', 'girivars@gmail.com', 1, 1),
(201, 129612, 'RAMESH KUMAR YADAV ', 2, 7, 4, 'Life Time', '1970-01-01', '9827886583', 'Qr. No. 8/B , Street 14 ,, BHILAI , 490001\r\n', 'anany10041970@gmail.com', 1, 1),
(202, 129602, 'SHAILESH KUMAR DASHORE ', 2, 7, 4, 'Life Time', '1970-01-01', '9407981600', 'FLAT NO-306,GULMOHAR ,, BHILAI , 490009\r\n', 'sdashore@rediffmail.com', 1, 1),
(203, 129601, 'KAMAL TANDON ', 2, 7, 4, 'Life Time', '1970-01-01', '9407981603', 'QR NO-4/A,ST-4,SECTOR-9, BHILAI, 490009\r\n', 'umarpotik@gmail.com', 1, 1),
(204, 129492, 'PRABHAKAR REGE ', 2, 7, 4, 'Life Time', '1970-01-01', '9406033806', 'QR. 10G STREET-15B, SECTOR - 2, BHILAI , 490001\r\n', 'prabhakar_rege2001@yahoo.co.in', 1, 1),
(205, 137730, 'YATHARTH SINGH ', 3, 7, 4, 'Life Time', '1970-01-01', '9752500353', 'A 2/3 SHRI SAI REGENCY, BILASPUR  , 495001\r\n', 'yatharthsingh003@gmail.com', 1, 1),
(206, 136090, 'KARAN AGRAWAL ', 3, 7, 4, 'Life Time', '1970-01-01', '8719999049', 'JEEVANDEEP OPP PGBT COLLEGE, BILASPUR  , 1\r\n', 'karan.ashish98@gmail.com', 1, 1),
(207, 135977, 'MILIND BEDEKAR ', 3, 7, 4, 'Life Time', '1970-01-01', '9926729433', '38/202,Ward No 38, Hemunagr, BILASPUR  , 4\r\n', 'milindbedekar12@gmail.com', 1, 1),
(208, 134802, 'HIMRASHMI ', 3, 7, 4, 'Life Time', '1970-01-01', '7767877677', 'GOLE BAZAR, MASZID GALI, BILASPUR, 495001\r\n', 'dwivedi.03@gmail.com', 1, 1),
(209, 134801, 'ADITYA K SHUKLA ', 3, 7, 4, 'Life Time', '1970-01-01', '7767877977', 'Gole Bazar, BILASPUR, 495001\r\n', 'adityashuklabsp@gmail.com', 1, 1),
(210, 134609, 'VIKRANT SINGH ', 3, 7, 4, 'Life Time', '1970-01-01', '9424160379', 'VINDHESWARI PURAM PENDRA, BILASPUR, 495119\r\n', 'vikrant_singh49511@rediffmail.com', 1, 1),
(211, 134603, 'TUSHAR TAMRAKAR ', 3, 7, 4, 'Life Time', '1970-01-01', '9893317123', 'Near Jain Mandir Pendra, BILASPUR, 495119\r\n', 'tuskibudz@gmail.com', 1, 1),
(212, 134602, 'DEVIKA AGRAWAL ', 3, 7, 4, 'Life Time', '1970-01-01', '9752722220', 'JEEVAN DEEP,, BILASPUR, 1\r\n', 'agrawaldevika0@gmail.com', 1, 1),
(213, 134313, 'RAVI SHANKAR PANDEY ', 3, 7, 4, 'Life Time', '1970-01-01', '9424173126', 'Prabha Bhavan 1/214, BILASPUR, 1\r\n', 'ravishankarpandey2@rediffmail.com', 1, 1),
(214, 129984, 'PREYANSHU RANJAN ', 3, 7, 4, 'Life Time', '1970-01-01', '9425281334', 'C-154,UJJAWAL NAGAR,SIPAT, BILASPUR, 495555\r\n', 'preyanshuranjan@gmail.com', 1, 1),
(215, 129942, 'APURVA LAL RANJAN ', 3, 7, 4, 'Life Time', '1970-01-01', '9425281477', 'C-154, NTPC Township, BILASPUR, 495555\r\n', 'lalapurva@gmail.com', 1, 1),
(216, 129572, 'OMPRAKASH GUPTA ', 3, 7, 4, 'Life Time', '1970-01-01', '7415757508', 'Mr. Pankaj Khedkar, Post, BILASPUR, 1\r\n', 'ogupta86@yahoo.in', 1, 1),
(217, 135624, 'VIKAS AGRAWAL ', 9, 7, 4, 'Life Time', '1970-01-01', '9836451929', 'H No.C3,W.No.12, Nehru Nagar, RAJNANDGAON, 491441\r\n', 'vikasagrawal121@gmail.com', 1, 1),
(218, 134182, 'SHUBHAM KUMAR SAHU ', 4, 7, 4, 'Life Time', '1970-01-01', '7828888879', 'Vivekanand Nagar Street, DHAMTARI , 73\r\n', 'sksdbest@gmail.com', 1, 1),
(219, 136966, 'ANANT KEJRIWAL ', 5, 7, 4, 'Life Time', '1970-01-01', '7879128886', 'HIG 115 MP NAGAR, KORBA, 495677\r\n', 'yhai@anantca.in', 1, 1),
(220, 137291, 'TUSHAR WANKHEDE ', 6, 7, 4, 'Life Time', '1970-01-01', '8297152481', 'A- 71 Radhaswami Nagar, RAIPUR , 492013\r\n', 'tushar1771@gmail.com', 1, 1),
(221, 137178, 'HERALD MASIH ', 6, 7, 4, 'Life Time', '1970-01-01', '9826968972', 'Tanga Gali, RAIPUR , 492001\r\n', 'er.herald.masih@gmail.com', 1, 1),
(222, 136583, 'AKASH YADAV ', 6, 7, 4, 'Life Time', '1970-01-01', '8962827152', 'Station Road, RAIPUR , 1\r\n', 'icc1995india@gmail.com', 1, 1),
(223, 136393, 'NUPUR SONEKAR ', 6, 7, 4, 'Life Time', '1970-01-01', '9009903606', 'G-8 Balaji Colony Near, RAIPUR , 1\r\n', 'nupursonekar@gmail.com', 1, 1),
(224, 136392, 'SRAJAN DALELA ', 6, 7, 4, 'Life Time', '1970-01-01', '9039396999', 'House No 2 Sector 1, RAIPUR , 7\r\n', 'srajandalela@gmail.com', 1, 1),
(225, 136390, 'SAURABH SONEKAR ', 6, 7, 4, 'Life Time', '1970-01-01', '9755794777', 'B 21 Sector 1 Shankar, RAIPUR , 7\r\n', 'sonekar.nitrr@gmail.com', 1, 1),
(226, 136036, 'SANJOG BAWANE ', 6, 7, 4, 'Life Time', '1970-01-01', '9644581877', '505, Exotica Royal Apts, RAIPUR , 492007\r\n', 'sanjogb@rediffmail.com', 1, 1),
(227, 135889, 'K VIKAS', 6, 7, 4, 'Life Time', '1970-01-01', '8109978737', 'D/206, RMS Colony, RAIPUR , 492001\r\n', 'kurada.vikas@gmail.com', 1, 1),
(228, 135877, 'MUKESH PRASAD ', 6, 7, 4, 'Life Time', '1970-01-01', '9424243944', 'LIG-15 SECTOR-04, RAIPUR , 492001\r\n', 'mukeshmishra4919@gmail.com', 1, 1),
(229, 135875, 'RAHUL', 6, 7, 4, 'Life Time', '1970-01-01', '7587149300', '2/1090, C/o Pramod shukla, RAIPUR , 492001\r\n', 'rahulshukla1509@GMAIL.COM', 1, 1),
(230, 135761, 'ANKEET CHAORA ', 6, 7, 4, 'Life Time', '1970-01-01', '8103482034', 'C - 106, OM COMPLEX, RAIPUR , 492009\r\n', 'ankeetchaora@gmail.com', 1, 1),
(231, 135646, 'SWATI BHARTIA ', 6, 7, 4, 'Life Time', '1970-01-01', '9724151311', '304, City Paradise, RAIPUR , 492006\r\n', '4bhartia.swati@gmail.com', 1, 1),
(232, 135606, 'HARSHVARDHAN KHANDELWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '9827869455', '5/216 Shri Kishan Kunj, RAIPUR , 492001\r\n', 'harsh.024@gmail.com', 1, 1),
(233, 135081, 'SHIVAM AGARWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '9039307077', 'B -16/2 sector 3 Udaya, RAIPUR , 492099\r\n', 'shivamagrawalmsmd@gmail.com', 1, 1),
(234, 135065, 'AYUSH PATEL ', 6, 7, 4, 'Life Time', '1970-01-01', '9962274775', 'H. No. 916, Ward No - 44, RAIPUR , 492010\r\n', 'ptl.ayush28@gmail.com', 1, 1),
(235, 134956, 'SAJJAN AGRAWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '9893254448', '53,Mahalaxmi Cloth Market, RAIPUR , 492004\r\n', 'sajjanagrawal01@gmail.com', 1, 1),
(236, 134923, 'TANUJ TIWARI ', 6, 7, 4, 'Life Time', '1970-01-01', '9413152539', 'C/O DR SANJAY TIWARI, RAIPUR , 492010\r\n', 'tanuj98@gmail.com', 1, 1),
(237, 134648, 'MANISH KUMAR AGRAWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '8871058270', 'E-8 Aviva Garden, RAIPUR , 492007\r\n', 'manish211280@gmail.com', 1, 1),
(238, 135261, 'IRYNA PAL ', 6, 7, 4, 'Life Time', '1970-01-01', '7224916165', 'Pal Complex Jal Grih Marg, RAIPUR , 492001\r\n', 'dralokpal32001@yahoo.co.in', 1, 1),
(239, 134175, 'ABHISHEK AGRAWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '9009500300', '336, Main Road,, RAIPUR , 492001\r\n', 'abhishekagrawal15@gmail.com', 1, 1),
(240, 130621, 'G K MANDAVI ', 6, 7, 4, 'Life Time', '1970-01-01', '8225962747', 'H NO PP 08 PARTHIVI, RAIPUR , 492001\r\n', 'gyaneshwar.mandavi@gmail.com', 1, 1),
(241, 130440, 'NAGENDRA PRATAP SINGH ', 6, 7, 4, 'Life Time', '1970-01-01', '9424174291', 'C/o Shri Pushpendra Singh, PENDRA, 19\r\n', 'nagendra.singh94241@gmail.com', 1, 1),
(242, 130018, 'HITESH KUMAR SAHU ', 6, 7, 4, 'Life Time', '1970-01-01', '7804924283', 'Amrita Bhawan, PITHORA, MAHASAMUND, 493551', 'htsh.sahu@gmail.com', 1, 1),
(243, 129900, 'SHERE BANO ', 6, 7, 4, 'Life Time', '1970-01-01', '9425501548', '395 Baijnath Para, RAIPUR , 492001\r\n', 'riyazamber@gmail.com', 1, 1),
(244, 129465, 'AANCHAL LUNKAD ', 6, 7, 4, 'Life Time', '1970-01-01', '9303112121', 'B-304, PALM RESIDENCY,, RAIPUR , 492001\r\n', 'aanchal_01@hotmail.com', 1, 1),
(245, 129373, 'NITIN KUMAR JAISWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '9827542995', 'Nandghat Pt Nandghat Dist, BEMETARA, 491340\r\n', 'nitinkjaiswal@yahoo.com', 1, 1),
(246, 129214, 'SHOBHA KHANDELWAL ', 6, 7, 4, 'Life Time', '1970-01-01', '9827406385', '5/216 Shri Kishan Kunj,, RAIPUR , 492001\r\n', 'skhandelwal.1960@gmail.com', 1, 1),
(247, 128840, 'PAITRAM PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '9907850851', 'Plot No-242,SUNDER NAGAR (Near Aam Bagicha), RAIPUR , 492013\r\n', 'prp_200992@yahoo.com', 1, 1),
(248, 128596, 'NOHAR SINGH DHRUV', 6, 7, 4, 'Life Time', '1970-01-01', '9424214315', 'Near Gaytri Mandir, Adiwasi Colony, Kushalpur, RAIPUR , 492001\r\n', 'nohar.s.dhruv@gmail.com', 1, 1),
(249, 49663, 'BHATNAGAR   ASHIT KUMAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'F-6, IRRIGATION COLONY,, NEAR REST HOUSE, RUDRI 493 776\r\n', '', 1, 1),
(250, 49664, 'MRS BHATNAGAR   ANJALI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'F-6, IRRIGATION COLONY,, NEAR REST HOUSE, RUDRI 493 776\r\n', '', 1, 1),
(251, 49665, 'KHANDELWAL  AKHELESH', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SHRI SHYAM RICE MILL, SHANKARDAHA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(252, 49666, 'MRS KHANDELWAL  SAVITA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O A KHANDELWAL,SHYAM, RICE MILL,SHANKAR DAHA, ROAD,DHAMTARI\r\n', '', 1, 1),
(253, 50151, 'SONI        KANUJ', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O KAILASH KUMAR SONI, SALHEWARPARA,, DHAMTARI 493 773\r\n', '', 1, 1),
(254, 51170, 'AMAR NATH GUPTA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AKHADA GALI BANIYAPARA, DHAMTARI 493 773, \r\n', '', 1, 1),
(255, 54099, 'RANSINGH  NEERAJ', 4, 7, 4, 'Life Time', '1970-01-01', '', 'MARATHAPARA, DHAMTARI 493 773, \r\n', '', 1, 1),
(256, 54100, 'SINGH   CHANDRADEEP', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SHIKA MEDICAL STORES, BASTAR ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(257, 54101, 'NAHAR  JEETENDRA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NEERAJ MEDICAL STORES, BALAK CHOWK, DHAMTARI 493 773\r\n', '', 1, 1),
(258, 54852, 'MRS GIRI SHAIL', 4, 7, 4, 'Life Time', '1970-01-01', '', 'CHARRA KURUD, DIST DHAMTARI, 493 662\r\n', '', 1, 1),
(259, 55336, 'MRS CHANDRAKAR  PUSHPA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'MAA SHARDA, SERVICE STATION KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(260, 55337, 'CHANDRAKAR PUROSHOTTAM', 4, 7, 4, 'Life Time', '1970-01-01', '', 'MAA SHARDA, SERVICE STATION KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(261, 55407, 'BAID   VIJAY KUMAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O PROF G C BAID, SADAR BAZAR,, DHAMTARI 493 773\r\n', '', 1, 1),
(262, 55774, 'DR  MAHAWAR       HIRA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'STATION ROAD,, DHAMTARI 493 773, \r\n', '', 1, 1),
(263, 58825, 'DEWANGAN   KANHAIYA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NAVDEEP TRADERS, RAIPUR ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(264, 64647, 'GOLECHHA       MANOJ', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NAVRATAN JWELLERS, SADAR BAZAR, DHAMTARI  493 773\r\n', '', 1, 1),
(265, 64648, 'DEV  NARENDRA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'DEV BOOK DEPO, STATION ROAD,, DHAMTARI  493 773\r\n', '', 1, 1),
(266, 64649, 'TIWARI      L   K', 4, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND DURGA MANDIR, SORID WARD, DHAMTARI  493 773\r\n', '', 1, 1),
(267, 74999, 'VINOD KUMAR PANDEY', 4, 7, 4, 'Life Time', '1970-01-01', '', 'RAMPUR WARD,, DHAMTARI 493 773, \r\n', '', 1, 1),
(268, 75000, 'DR HARDEL MOHAN SINGH', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AT/PO BHAKHARA, DHAMTARI 493 773, \r\n', '', 1, 1),
(269, 75001, 'MRS HARDEL     MADHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AT/PO BHAKHARA, DHAMTARI 493 773, \r\n', '', 1, 1),
(270, 75002, 'DR SUNIL JAIN', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SADAR BAZAR, DHAMTARI 493 773, \r\n', '', 1, 1),
(271, 75003, 'KIRAN BHAI GANDHI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'ASHOK BROTHERS, MAHAWAR DHARMSHALA, DHAMTARI 493 773\r\n', '', 1, 1),
(272, 75004, 'KAILASH KUMAR AGRAWAL', 4, 7, 4, 'Life Time', '1970-01-01', '', 'STATION PARA, DHAMTARI 493 773, ', '', 1, 1),
(273, 75005, 'RAMESH KUMAR JAIN', 4, 7, 4, 'Life Time', '1970-01-01', '', 'JAIN RADIO & ELECTRIC, MAIN ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(274, 75006, 'ABDUL KALAM GORI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'ROSHANI COMPLEX, BASTAR ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(275, 75007, 'MRS JYOTI MAGAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KIRAN PUBLIC SCHOOL, KURUD 493 663, DHAMTARI\r\n', '', 1, 1),
(276, 75008, 'GOPAL MAGAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KIRAN PUBLIC SCHOOL, KURUD 493 663, DHAMTARI\r\n', '', 1, 1),
(277, 75009, 'MRS SWATI  SONI (NEETU)', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O KAILASH SONI, SALHEWARPARA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(278, 75010, 'KUSHAL SONI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O KAILASH SONI, SALHEWARPARA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(279, 75011, 'KRITARTH SONI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O KAILASH SONI, SALHEWARPARA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(280, 75012, 'RAJKUMAR SONI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/O TIKAMCHAND SONI, SALHEWAR PARA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(281, 75973, 'DIXIT      ANANT NARAYAN', 4, 7, 4, 'Life Time', '1970-01-01', '', 'PETER COLONY,, TIKARAPAA, DHAMTARI 493 773\r\n', '', 1, 1),
(282, 75974, 'PINJANI  JAGDISH', 4, 7, 4, 'Life Time', '1970-01-01', '', 'A-5, AMALTASPURAM, RUDRI ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(283, 75975, 'MOTWANI     KISHOR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR DEVSHRRE CINEMA, DHAMTARI 493 773, \r\n', '', 1, 1),
(284, 75976, 'ANADANI    AJAY', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR SINDI GURUDWARA, RISAIPARA, DHAMTARI 493 773\r\n', '', 1, 1),
(285, 75977, 'RAMRAKHYANI     INDER', 4, 7, 4, 'Life Time', '1970-01-01', '', 'INDER AND ASSOCIATES, RATNABANDHA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(286, 75978, 'ANDANI    MURLI LAL', 4, 7, 4, 'Life Time', '1970-01-01', '', 'GURUNANAK RADIO CENTRE, RATNABANDHA CHOWK, DHAMTARI 493 773\r\n', '', 1, 1),
(287, 75979, 'VARDIYANI   RAJKUMAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SHOBHA CLOTH CENTRE, RATNABANDHA CHOWK, DHAMTARI 493 773\r\n', '', 1, 1),
(288, 80704, 'CHANDRAKER TORAN', 4, 7, 4, 'Life Time', '1970-01-01', '', 'VILL RAKHI  TEH KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(289, 80705, 'CHANDRAKER   AAKASH', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AZAD CHOWK KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(290, 80706, 'CHANDRAKAR KHILENDRA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SHRI RAM AUTO POINT, MAIN ROAD, KURUD, DHAMTARI\r\n', '', 1, 1),
(291, 80707, 'SHAHU    VIKAS', 4, 7, 4, 'Life Time', '1970-01-01', '', 'VILL KATALBOD TEH KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(292, 80708, 'CHANDRAKER DEENBANDHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'BAJRANG CHOWK KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(293, 80709, 'CHANDRAKER  ARVIND', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AZAD CHOWK KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(294, 80710, 'CHANDRAKER  SANDEEP', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SHANKERNAGAR KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(295, 80711, 'PANDA  SUSANTA KUMAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'BRAHMAN PARA KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(296, 80712, 'CHANDRAKAR MOHENDRA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AZAD CHOWK BRAHMANPARA, KURUD, DHAMTARI 493663, \r\n', '', 1, 1),
(297, 80713, 'CHANDRAKER  VIKAS', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AZAD CHOWK BRAHMANPARA, KURUD, DHAMTARI 493663, \r\n', '', 1, 1),
(298, 80714, 'PRABHAT BAIS', 4, 7, 4, 'Life Time', '1970-01-01', '', 'AZAD CHOWK , KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(299, 80716, 'SAHU  GAIND LAL', 4, 7, 4, 'Life Time', '1970-01-01', '', 'S/O SRI JAGDISH RAM SAHU, NAGAR PANCHAYAT,, BHAKHARA 493 773\r\n', '', 1, 1),
(300, 80717, 'NEERAJ SHUKLA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SANJAY NAGAR COLLEGE, ROAD, KURUD 493 663, DHAMTARI\r\n', '', 1, 1),
(301, 86130, 'CHANDRAKAR SUDHEER', 4, 7, 4, 'Life Time', '1970-01-01', '', 'MAIN ROAD, KURUD, DHAMTARI 493 663, \r\n', '', 1, 1),
(302, 86131, 'SUKLA   RAJEEV', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KISHAN TRADERS SAROJINI, CHOWK, KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(303, 88530, 'RAMESH KUMAR DEV', 4, 7, 4, 'Life Time', '1970-01-01', '', 'STATION ROAD,, DHAMTARI 493 773, \r\n', '', 1, 1),
(304, 91375, 'SURAJ PRAKASH LAMBA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'TEACHERS COLONY, WARD 1 KURUD SANJAY NGR, KURUD 493 663\r\n', '', 1, 1),
(305, 92353, 'CHANDRAKAR  SHYAMSHANKAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'BHOI PARA KURUD, TAH KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(306, 95577, 'MRS ARCHANA DWIVEDI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'OLD BUS STAND, PO & TEH KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(307, 96233, 'SAGAR LUNKAD', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SADAR BAZAAR KACHERI CHOW, AANKUR AABHUSHAN, DHAMTARI 493 773\r\n', '', 1, 1),
(308, 98770, 'ABHISHEK GOYAL', 4, 7, 4, 'Life Time', '1970-01-01', '', 'HIRALAL AGRAWAL SAW MILL, SIHAWA ROAD,, DHAMTARI 493 773\r\n', '', 1, 1),
(309, 98771, 'YOGESH GANDHI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'DEEPAK STATIONARY & BOOK, DEPOT,, DHAMTARI 493 773\r\n', '', 1, 1),
(310, 98772, 'MOHAMMAD RAFIK HALARI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KGN MOBAIL NEW MARKET, ROAD, DIST. DHAMTARI, KURUD 493 663\r\n', '', 1, 1),
(311, 98773, 'MOHAN SUKHRAMANI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'OM TRADING COMPANY, KURUD CHARMUDIYA ROAD, KURUD 493 663\r\n', '', 1, 1),
(312, 98774, 'MRS BHAVIKA SUKHRAMANI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'GANDHI CHOWK,, WARD NO 7, PO KURUD, KURUD 493 663\r\n', '', 1, 1),
(313, 100720, 'MANOJ KUMAR SONI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'BADMERA JWELLERS, OPP, AXIX BANK ATM, SADAR, DHAMTARI 493 773\r\n', '', 1, 1),
(314, 106541, 'GAUTAM SINGH CHANDRAKER', 4, 7, 4, 'Life Time', '1970-01-01', '', 'VILL NAVAGAON PO GRUD, TEH KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(315, 106543, 'RAM KRISHNA SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'VILL KOKADI PO KATALBOD, TEH KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(316, 106544, 'SATRUPA SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'VILL KOKADI PO KATALBOD, TEH KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(317, 106545, 'SIDDHARTH SETHIYA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'ITWARI BAZAR,, OPP JAIN TEMPLE,, DHAMTARI 493 773\r\n', '', 1, 1),
(318, 106546, 'SHREYANSH SETHIYA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'ITWARI BAZAR,, OPP JAIN TEMPLE,, DHAMTARI 493 773\r\n', '', 1, 1),
(319, 106547, 'POOJA SETHIYA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'ITWARI BAZAR,, OPP JAIN TEMPLE,, DHAMTARI 493 773\r\n', '', 1, 1),
(320, 106548, 'MANISH NANKANI', 4, 7, 4, 'Life Time', '1970-01-01', '', '65, NANDINI,, MAITRI VIHAR COLONY,, DHAMTARI 493 773\r\n', '', 1, 1),
(321, 106549, 'SHAILESH BAJPAI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-24, NEW RAJENDRA NAGAR, PAWAN VIHAR COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(322, 106550, 'MRS DARSHANA BAJPAI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-24, NEW RAJENDRA NAGAR, PAWAN VIHAR COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(323, 106551, 'DURGESH KUMAR DWIVEDI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KARGIL CHOWK,, MEGHA ROAD, PO KURUD, DHAMTARI 493 663\r\n', '', 1, 1),
(324, 107369, 'ASHUTOSH MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E/75, BEHIND KRISHNA BIG, CINEMA, SAMTA COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(325, 114930, 'BUDHDDEV SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SANJAY NGR KURUD, DIST DAMTARI 493663, \r\n', '', 1, 1),
(326, 114931, 'ARVINDRA SINGH GURU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SUNCITY COLONY, DIST DHAMTARI, KURUD  493663\r\n', '', 1, 1),
(327, 114932, 'PURUSHOTTAM SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KURUD, DIST DHAMTARI 493663, \r\n', '', 1, 1),
(328, 114933, 'KUNJLAL BANJARE', 4, 7, 4, 'Life Time', '1970-01-01', '', 'VILL MENDRAKA, TAH RUD, DHAMTARI 493663\r\n', '', 1, 1),
(329, 114934, 'JEEV RAM DHURUVANSHI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'KASAHI, PO DAHI THANA KURUD, DHAMTARI 493663\r\n', '', 1, 1),
(330, 115010, 'BHOPESH CHOUDHARY', 4, 7, 4, 'Life Time', '1970-01-01', '', 'GULMOHAR VATIKA, RUDRI RD DHAMTARI 493773, \r\n', '', 1, 1),
(331, 119207, 'PRITESH GANDHI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NR AKCHAT, GUJARATI COLONY, DHAMTARI 493773\r\n', '', 1, 1),
(332, 120709, 'BASANT KUMAR SAHEB', 4, 7, 4, 'Life Time', '1970-01-01', '', '47 SUBHASH NAGAR WEST, HATKESHAR, DHAMTARI  493 773\r\n', '', 1, 1),
(333, 120710, 'YOGESH KUMAR GUPTA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NR NAGDEO CHOWK, HATKESHAR, DHAMTARI  493 773\r\n', '', 1, 1),
(334, 120711, 'SUNIL KUMAR SAHEB', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SAHEB STONES&TILES, HOUSING BOARD COLONY, HATKESHAR DHAMTARI  73\r\n', '', 1, 1),
(335, 120712, 'SOURABH SAHEB', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SAHEB STONES&INDUSTRY, HOUSING BOARD COLONY, HATKESHAR DHAMTARI  73\r\n', '', 1, 1),
(336, 120713, 'ANIL KUMAR SAHEB', 4, 7, 4, 'Life Time', '1970-01-01', '', 'NR DEWANGAN CHOWK, SUBHASH NAGAR, HATKESHAR DHAMTARI  73\r\n', '', 1, 1),
(337, 120996, 'AMAR SINGH SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'HIG-34 HOUSING BOARD, COLONY HATKESHAR, DHAMTARI 493 773\r\n', '', 1, 1),
(338, 120997, 'SHAKUNTALA SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'HIG-34 HOUSING BOARD, COLONY HATKESHAR, DHAMTARI 493 773\r\n', '', 1, 1),
(339, 120997, 'SHAKUNTALA SAHU', 4, 7, 4, 'Life Time', '1970-01-01', '', 'HIG-34 HOUSING BOARD, COLONY HATKESHAR, DHAMTARI 493 773\r\n', '', 1, 1),
(340, 120998, 'VISHVEASH KUMAR KOTWANI', 4, 7, 4, 'Life Time', '1970-01-01', '', 'GURUKRIPA FOOT WEAR, GANESH CHOWK, DHAMTARI 493 773\r\n', '', 1, 1),
(341, 120999, 'YASHPAL DHAMECHA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'PREM SOAP WORKS, OLD BUS STAND, DHAMTARI 493 773\r\n', '', 1, 1),
(342, 121000, 'HEMANT KUMAR DEKATE', 4, 7, 4, 'Life Time', '1970-01-01', '', 'RAMBAG VINDHYAWASINI, WARD, DHAMTARI 493 773\r\n', '', 1, 1),
(343, 121001, 'SUBODH DEWANGN', 4, 7, 4, 'Life Time', '1970-01-01', '', 'MANDIR CHOWK, SORID NAGAR, DHAMTARI 493 773\r\n', '', 1, 1),
(344, 121002, 'OMKUMARI DEWANGAN', 4, 7, 4, 'Life Time', '1970-01-01', '', 'MANDIR CHOWK, SORID NAGAR, DHAMTARI 493 773\r\n', '', 1, 1),
(345, 121003, 'HARESH KUMAR DAMA', 4, 7, 4, 'Life Time', '1970-01-01', '', '124 GUJRATI COLONY, SONAKUNJ, DHAMTARI 493 773\r\n', '', 1, 1),
(346, 121966, 'VIJAY KUMAR SHANDILYA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'DEVSHREE TALKIES CHOUK, SHANOILYA STONES, DHAMTARI 493 773\r\n', '', 1, 1),
(347, 121967, 'TILAK SONKAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 170 DANITOLA, TEH &DIST DHAMTARI, DHAMTARI 493 773\r\n', '', 1, 1),
(348, 121968, 'SURENDRA KUMAR MUNJWANI', 4, 7, 4, 'Life Time', '1970-01-01', '', '149 WARD NO 13, BALAK CHOUK DHAMTARI, DHAMTARI 493 773\r\n', '', 1, 1),
(349, 121969, 'KAJAL MUNJWANI', 4, 7, 4, 'Life Time', '1970-01-01', '', '149 WARD NO 13, BALAK CHOUK DHAMTARI, DHAMTARI 493 773\r\n', '', 1, 1),
(350, 121970, 'JAYESH PATEL', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SHIV CHOWK RAMSAGAR, PARA DHAMTARI 493773, \r\n', '', 1, 1),
(351, 126777, 'RAKESH MAHAWAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SARDAR VALLABH BHAAI, PATEL RAIPUR ROAD WARD 15, DHAMTARI 493 773\r\n', '', 1, 1),
(352, 126778, 'PRATIBHA MAHAWAR', 4, 7, 4, 'Life Time', '1970-01-01', '', 'SARDAR VALLABH BHAAI, PATEL RAIPUR ROAD WARD 15, DHAMTARI 493 773\r\n', '', 1, 1),
(353, 127035, 'AJAY KUMAR DADSENA', 4, 7, 4, 'Life Time', '1970-01-01', '', '137 AMBEDKAR CHOWK, DHAMTARI 493 773, \r\n', '', 1, 1),
(354, 127036, 'MANDEEP KHALSA', 4, 7, 4, 'Life Time', '1970-01-01', '', 'GALI NO 01 VIVEKANAND, NAGAR DAK BUNGLOW WARD, DHAMTARI 493 773\r\n', '', 1, 1),
(355, 47068, 'ATUL SWARNKAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'A-28, MINOCHA COLONY, BILASPUR 495 004, \r\n', '', 1, 1),
(356, 47069, 'GOSWAMI  RAMPURI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'GOSWAMI BHAVAN DIPRA, PARA NEAR MAMA TALAB, BILASPUR 495 004', '', 1, 1),
(357, 61061, 'SHASTRI VIJAY KUMAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'AT PO MALKHARODA, TAHSIL SAKTI DIST, BILASPUR 495 691\r\n', '', 1, 1),
(358, 64272, 'NAUSHAD MOOSA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'THE JAIN INTERNATIONAL, SCHOOL MUNGELI RD SAKRI, BILASPUR 495 111', '', 1, 1);
INSERT INTO `member` (`Member_Id`, `Membership_No`, `Member_Name`, `Unit_Id`, `Designation_Id`, `MID`, `Membership_Type`, `Membership_Date`, `Contact_No`, `Address`, `Member_Detail`, `Member_Type`, `Member_Status`) VALUES
(359, 67161, 'MANU GOURAHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT NO 8 SECTOR 2, RAJKISHORE NAGAR, BILASPUR 495 007\r\n', '', 1, 1),
(360, 69132, 'DR CHANDRA NATH BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', '27 KHOLI VIKAS NAGAR,, BILASPUR 495 001', '', 1, 1),
(361, 70444, 'DR IYENGAR G.A.GHANSHYAM', 3, 7, 4, 'Life Time', '1970-01-01', '', 'LAKSHMI SADAN, SEEPAT, ROAD, ASHOK NAGAR,, BILASPUR 495 006\r\n', '', 1, 1),
(362, 77055, 'MRS DURGA KUMARI KSVB', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-38 NTPC TOWNSHIP, UJWALNAGAR, BILASPUR 495 555\r\n', '', 1, 1),
(363, 77099, 'PRADEEP CHANDRA BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'VIKAS NAGAR, 27, KHOLI, BILASPUR 495 001, \r\n', '', 1, 1),
(364, 77100, 'SHEKHAR CHANDRA BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'VIKAS NAGAR, 27, KHOLI, BILASPUR 495 001, \r\n', '', 1, 1),
(365, 77101, 'ANAND KUMAR DUBEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'JARHA BHATA MANDIR, CHOUK, SHIVNATH MARG,, BILASPUR 495 001\r\n', '', 1, 1),
(366, 77102, 'DINESH KUMAR SHUKLA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HNO D/2, KANCHANJANGHA, PH-II, BEH AYURVEDIC COLL, RAIPUR 492 010\r\n', '', 1, 1),
(367, 77103, 'PATHAK  AJAY KUMAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'LANE 3, VINOBA NAGAR,, BILASPUR 492 001, \r\n', '', 1, 1),
(368, 77104, 'PRAKASH CHANDRA BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'VIKASH NAGAR, 27, KHOLI, BILASPUR 492 001, \r\n', '', 1, 1),
(369, 77105, 'AKSHAY JAIN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHARDA SADAN, MIG -29, NEHRU NAGAR,, BILASPUR 495 001\r\n', '', 1, 1),
(370, 77106, 'CA SAMEER SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', '9/2, IST FLOOR, ARPA COMPLEX,, BILASPUR 495 001\r\n', '', 1, 1),
(371, 77107, 'DEEPENDRA PADHI', 3, 7, 4, 'Life Time', '1970-01-01', '', '27, KHOLI, VIKAS NAGAR, NEAR GOLDY STD., BILASPUR 495 001\r\n', '', 1, 1),
(372, 77108, 'DR ABHISHEK SHARMA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'PRAYAG DANT CHIKITSALAYA, R-8, SBI COLONY, VINOBA, NAGAR,BILASPUR 01\r\n', '', 1, 1),
(373, 77109, 'DR ANAND RAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'RAI DENTAL CLINIC, CHHATTISGARH COMPLEX, BILASPUR 495 001\r\n', '', 1, 1),
(374, 77110, 'RAM SHARAN SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SR MIG 83, SECTOR 3, PT., DEEN DAYAL UPADHYAY NAGAR, RAIPUR 492 010\r\n', '', 1, 1),
(375, 77111, 'KESHAV KISHOR BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'P P JWELLERS,, SUBHASHNAGAR, GONDPARA,, BILASPUR 495 001\r\n', '', 1, 1),
(376, 77112, 'SANJAY KUMAR TIWARI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'E-22, PARIJAT EXTN.,, BILASPUR 495 001, \r\n', '', 1, 1),
(377, 77113, 'BALRAJ MOTWANI', 3, 7, 4, 'Life Time', '1970-01-01', '', '401, SAPTSINGHI APTS.,, BUS STAND, BILASPUR 495 001\r\n', '', 1, 1),
(378, 77114, 'MRS  RASHMI JAIN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'L-2, D-8, VINOBA NAGAR,, BILASPUR 495 001, \r\n', '', 1, 1),
(379, 81020, 'NAVNEET PRATAP SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', 'NORMAL SCHOOL ROAD, BILASPUR 495001, \r\n', '', 1, 1),
(380, 82020, 'DR PRATIBHA MANDLOI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'PRAMOD NIWAS, OLD MINA BAZAR, KUDUDAND, BILASPUR 495 001\r\n', '', 1, 1),
(381, 82021, 'VIKAS MISHRA', 7, 7, 4, 'Life Time', '1970-01-01', '', 'C/O P K MISHRA, SHYAM, STEEL GALI KOTRA ROAD,, RAIGARH 496 001\r\n', '', 1, 1),
(382, 82022, 'RAMESH KUMAR PATEL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'CENTRAL SILK BOARD,, RESEARCH EXTENSION CENTRE, KATGHORA 495 445\r\n', '', 1, 1),
(383, 82023, 'ARUP KUMAR CHATTERJEE', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHRIRAM TOWERS, E-4,, 2ND FLOOR,, BILASPUR 495 001\r\n', '', 1, 1),
(384, 82024, 'PANKAJ KUMAR PANCHAITY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'I/F OF S E B SUBSTATION, AMERI ROAD, NEHRUNAGAR,, BILASPUR 495 001', '', 1, 1),
(385, 82025, 'ABHAY KUMAR JAIN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHANTI NIWAS, MAIN ROAD,, DAYALBAND,, BILASPUR 495 001\r\n', '', 1, 1),
(386, 82026, 'SURESH SHARMA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'WARD NO 11, HNO 123,, CIVIL LINES,, BILASPUR 495 001\r\n', '', 1, 1),
(387, 82027, 'ABHYUDAYA TIWARI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'BANHU BARA, TILAK NAGAR,, BILASPUR 495 001\r\n', '', 1, 1),
(388, 82028, 'MISS ANJU SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND INDIRA SCHOOL,, MADHUBAN ROAD,, BILASPUR 495 001\r\n', '', 1, 1),
(389, 82029, 'HAMID ULLAH KHAN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-14, KRANTI NAGAR,, BILASPUR 495 004, \r\n', '', 1, 1),
(390, 82030, 'MAHESHWARI  PARVEEN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'L-4, VINOVA NAGAR,, BILASPUR 495 001, \r\n', '', 1, 1),
(391, 82031, 'SANJAY TIWARI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-5, SONGANGA COLONY,, SEPPAT ROAD,, BILASPUR 495 001\r\n', '', 1, 1),
(392, 82032, 'P G JAYAKRISHNAN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'YASH APPARTMENT FLAT, 202,TIKRA PARA, BILASPUR 495 001\r\n', '', 1, 1),
(393, 82033, 'SUDHAKAR SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'DEVI SARASWATI HOSPITAL, ASHWANI NAGAR,LAKHENAGAR, RAIPUR\r\n', '', 1, 1),
(394, 82034, 'B L KHANDELWAL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'MIG 49, NEHRU NAGAR,, BILASPUR 495 001, \r\n', '', 1, 1),
(395, 82035, 'ROHITASHWA BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'BEH CHANDRA PARK, NEAR MISSION SCHOOL,, BILASPUR 495 001\r\n', '', 1, 1),
(396, 82036, 'MAHENDRA KUMAR PANDEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'VILLAGE NEORA, VIA GANIYARI, BILASPUR\r\n', '', 1, 1),
(397, 82037, 'SUDIEP SHRIVASTAVA', 3, 7, 4, 'Life Time', '1970-01-01', '', '9, DHARM PRAKASH CHWAL, BILASPUR 495 001, \r\n', '', 1, 1),
(398, 82038, 'AJAY SHRIVASTAVA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'OPP CHHATTISGARH BHAWAN, TILAK NAGAR, BILASPUR 495, BILASPUR 495 001\r\n', '', 1, 1),
(399, 85551, 'EKTA GUPTA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'EKTA BHAVAN, PUNJABI COLONY DAYALBAND, BILASPUR 495 004\r\n', '', 1, 1),
(400, 85552, 'HARSHAD KUMAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'EKTA BHAVAN, PUNJABI COLONY DAYALBAND, BILASPUR 495 004\r\n', '', 1, 1),
(401, 86218, 'SANTOSH KUMAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SR PRO SOUTH EAST CENTRAL, RAILWAY GM''S OFFICE, BILASPUR 495004\r\n', '', 1, 1),
(402, 88871, 'CHANDRA SHEKHAR SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', 'ASHIRVAD BHAWAN, I/F INDIRA VIHAR, BILASPUR 495 001\r\n', '', 1, 1),
(403, 88872, 'RAJESH TIWARI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'OPP LIG 42,SHUKLA COMPLEX, SECTOR-1, SHANKARNAGAR,, RAIPUR 492 001\r\n', '', 1, 1),
(404, 88873, 'VINAY DUBEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'MOPKANAKA BAJRANG, MANDIR KATIYAPARA,, BILASPUR 495 001\r\n', '', 1, 1),
(405, 88874, 'SHARAD DUBEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'MOPKANAKA BAJRANG, MANDIR KATIYAPARA,, BILASPUR 495 001\r\n', '', 1, 1),
(406, 88875, 'PRATEEK SINHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'I/F HANUMAN MANDIR, 27 KHOLI,, BILASPUR 495 001\r\n', '', 1, 1),
(407, 88876, 'MRS SATYABHAMA AWASTHI', 3, 7, 4, 'Life Time', '1970-01-01', '', '14, SR MIG NEHRU NAGAR,, BILASPUR 495 001, \r\n', '', 1, 1),
(408, 88877, 'MRS ASHA KAMAVISDAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'TILAKNAGAR CHATAPARA, BILASPUR 495 001, \r\n', '', 1, 1),
(409, 92071, 'ADITYA SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SR MIG 83, SECTOR 3, PT. DEENDAYAL NAGAR,, RAIPUR 492 010\r\n', '', 1, 1),
(410, 92072, 'ABHISHEK SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SENIOR MIG 83, SECTOR 3, MPHB COLONY, DAGANIA,, RAIPUR 492 001\r\n', '', 1, 1),
(411, 92073, 'TEJINDER SINGH BALI', 3, 7, 4, 'Life Time', '1970-01-01', '', '27, KHOLI VIKAS NAGAR,, NEAR HANUMAN MANDIR,, BILASPUR 495 001\r\n', '', 1, 1),
(412, 92074, 'G P DEWANGAN', 10, 7, 4, 'Life Time', '1970-01-01', '', 'DEWAN PARA, SONPUR ROAD, SIDE, NARAYANPUR 494 661, \r\n', '', 1, 1),
(413, 92075, 'A N SHAHI', 10, 7, 4, 'Life Time', '1970-01-01', '', 'NAYPARA NEAR RTO OFFICE, JAGADALPUR 494 001, \r\n', '', 1, 1),
(414, 92076, 'SUNIL ADWANI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'CULCUTTA DRESSES, IFO COMPANY GARDEN, BILASPUR 495 001\r\n', '', 1, 1),
(415, 92077, 'SANJEET KUMAR BURMAN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHANTINAGAR RING ROAD 2, 4TH STREET,, BILASPUR 495 001\r\n', '', 1, 1),
(416, 92078, 'SMT. ANITA YADAV', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-87, GAYATRI NAGAR PO, SHANKAR NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(417, 92079, 'MRS ABHA KAK', 3, 7, 4, 'Life Time', '1970-01-01', '', '2-D, 2ND FLR. PADMAVATI, APTS. NEHRU CHOWK,, BILASPUR 495 001\r\n', '', 1, 1),
(418, 92080, 'KAILASH KUMAR SONI', 1, 7, 4, 'Life Time', '1970-01-01', '', 'POWER-HOUSE ROAD,, NAMNA KALA,, AMBIKAPUR 497 001\r\n', '', 1, 1),
(419, 92081, 'PRAKASH CHANDRA SHARMA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'GAURHA SADAN AMERI ROAD, DEVENDRA NAGAR,, BILASPUR 495 001\r\n', '', 1, 1),
(420, 92082, 'KOLHU RAM THAKUR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'BASANTPUR, RAJNADHAV, \r\n', '', 1, 1),
(421, 92083, 'KISHORE SHRIWAS', 3, 7, 4, 'Life Time', '1970-01-01', '', 'NAIAPARA BIRKONA, BILASPUR 495 001, \r\n', '', 1, 1),
(422, 92085, 'SANJAY GAUR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG II-442, SECTOR - 1, PT. D D UPADHYAY NAGAR,, RAIPUR 492 010\r\n', '', 1, 1),
(423, 92084, 'RUPESH KUMAR TRIVEDI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'D-10, PRIYADARSHINI NAGAR, BILASPUR 495 001, \r\n', '', 1, 1),
(424, 92086, 'BHUPENDRA RAJPUT', 3, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT 129, PARIJAAT, RAJKISHORE NAGAR,, BILASPUR 495 006\r\n', '', 1, 1),
(425, 93088, 'SAMUDRANIL SINHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'D 59 VASANT VIHAR, SECL BILASPUR 495006, \r\n', '', 1, 1),
(426, 94946, 'USHA IYENGAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'B-125 NEELANANT RAMA, GREEN CITY KHAMTARAJ, BILASPUR\r\n', '', 1, 1),
(427, 98122, 'SHAILESH SHUKLA', 3, 7, 4, 'Life Time', '1970-01-01', '', '"MALABANDH", RAMTALA ROAD, BESIDE GOVT.ENGG. COLLEGE, BILASPUR 495 008\r\n', '', 1, 1),
(428, 98123, 'ANIL VERMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HDD 70, PHASE-II,, KABIR NAGAR,, RAIPUR\r\n', '', 1, 1),
(429, 98124, 'SUDHIR KUMAR BAPAT', 3, 7, 4, 'Life Time', '1970-01-01', '', 'KUSHWAHAS HOUSE, RLY., MAHA MANDAL, TIKRAPARA,, BILASPUR 495 004\r\n', '', 1, 1),
(430, 98125, 'SHIVAJI KUSHWAHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'LECTURER MAHARASHTRA, MANDAL, TIKRAPARA,, BILASPUR 495 004\r\n', '', 1, 1),
(431, 98126, 'MRS URMILA OJHA', 10, 7, 4, 'Life Time', '1970-01-01', '', 'RES. NO 4, NARAYANPUR, DIST. NARAYANPUR 494 661, \r\n', '', 1, 1),
(432, 98127, 'KANHAIYA SINGH MARAVI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'JAIL ROAD, GOURELA, PENDRA ROAD,, BILASPUR 495 017\r\n', '', 1, 1),
(433, 100983, 'SUSHIL KUMAR MISHRA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-18, RAJASWA COLONY,, CHANTIDIH, BILASPUR\r\n', '', 1, 1),
(434, 100984, 'CHANDRA PRAKASH SONI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'KAPIL NAGAR,, SARKANDA, BILASPUR 495 001\r\n', '', 1, 1),
(435, 100985, 'G A ASHWINI KUMAR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'LAKSHMI SADAN ASHOK, NAGAR, SEEPAT ROAD,, BILASPUR 495 006\r\n', '', 1, 1),
(436, 100986, 'MEENAKSHI VERMA', 3, 7, 4, 'Life Time', '1970-01-01', '', '201-A, SIYARAM APARTMENT,, MUNGELI ROAD,, BILASPUR 495 001\r\n', '', 1, 1),
(437, 101289, 'LALIT AGRAWAL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHREE LAXMI MEDICAL, STORES TIKRAPARA, BILASPUR 494004\r\n', '', 1, 1),
(438, 101290, 'MAMTA AGRAWAL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHREE LAXMI MEDICAL, STORES TIKRAPARA, BILASPUR 494004\r\n', '', 1, 1),
(439, 101291, 'SRISHTI AGRAWAL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHREE LAXMI MEDICAL, STORES TIKRAPARA, BILASPUR 494004\r\n', '', 1, 1),
(440, 102606, 'NABAKUMAR MONDAL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C/O DR PURNIMA MONDAL, BILASPUR 495 001, \r\n', '', 1, 1),
(441, 104450, 'KAPUR  WASNIK', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-15, AGYEYA NAGAR,, BILASPUR 495 001, \r\n', '', 1, 1),
(442, 105429, 'DR HARISH RAJAK', 3, 7, 4, 'Life Time', '1970-01-01', '', 'INSTT OF PHARMACEUTICAL, SCIENCE GURU GHASIDAS, VISHWAVIDYALAYA BILASPUR\r\n', '', 1, 1),
(443, 105593, 'CHAMANLAL HUMNE', 3, 7, 4, 'Life Time', '1970-01-01', '', 'IN FRONT OF AMBEDKAR, SCHOOL MAGARPARA, BILASPUR 495001\r\n', '', 1, 1),
(444, 109163, 'NITIN CHHABARIA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'OPP GIRLS HIGH SCHOOL, PENDRA DISTT BILASPUR, \r\n', '', 1, 1),
(445, 109581, 'ANMOL VARMA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'CIVIL LINES NR NEHRU, CHOWK BILASPUR, 495 001\r\n', '', 1, 1),
(446, 106160, 'KRISHNAMURARI DUBEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'WARD 21, SUBHASH NAGAR, GONDPARA,, BILASPUR 495 001\r\n', '', 1, 1),
(447, 106161, 'VIKAS JAIN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'A-152, AGEYA NAGAR,, BILASPUR 495 001, \r\n', '', 1, 1),
(448, 106162, 'DR DINESH KUMAR JHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'RAJPUR BUDHA BAGICHA, DIST. BALRAMPUR, \r\n', '', 1, 1),
(449, 106163, 'MUKESH GUPTA', 3, 9, 4, 'Life Time', '1970-01-01', '', 'LATA KUNJ, JARHABHATA, BILASPUR 495 001, \r\n', '', 1, 1),
(450, 106164, 'BANSHILAL DEWANGAN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'KARBALA ROAD, BJP OFFICE, R K PAINTER GALI,, BILASPUR 495 001\r\n', '', 1, 1),
(451, 107365, 'VIJAY SHYAM THAKUR', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SANJAY AUTO CARE, RING, ROAD NO 2, MAGADH NAGAR, BILASPUR 495 001\r\n', '', 1, 1),
(452, 107366, 'MANOJ SHARMA', 3, 7, 4, 'Life Time', '1970-01-01', '', '27, KHOLI, BILASPUR 495 001, \r\n', '', 1, 1),
(453, 111841, 'MEETA AJAY KHANNA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'HENRY CHAWL KUDUDAND, WAREHOUSE RD BILASPUR, 495 001\r\n', '', 1, 1),
(454, 113264, 'MANISH KUMAR MISHRA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'A/S 89 AGYEYA NAGAR, BILASPUR, 495 001\r\n', '', 1, 1),
(455, 113330, 'ABHIJEET BANERJEE', 3, 7, 4, 'Life Time', '1970-01-01', '', 'LA 8 HOUSE NO 4, VINOBA NAGAR BILASPUR, CHHATTISGARH 495 004\r\n', '', 1, 1),
(456, 114103, 'SANJIVA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO 2 BLOCK G PARIJAT, COLONY NEHRU NAGAR, BILASPUR 495 001\r\n', '', 1, 1),
(457, 114216, 'SYED FARZAAN HUSSAIN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'TARACHAND MARG, NEAR, AKBARI MASJID JUNI LINE,, BILASPUR 495 001\r\n', '', 1, 1),
(458, 114562, 'SHILPA GUHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'R 1 VINOBA NAGAR, NR GAYATRI MANDIR, BILASPUR 495 004\r\n', '', 1, 1),
(459, 114563, 'RAHUL GUHA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'R 1 VINOBA NAGAR, NR GAYATRI MANDIR, BILASPUR 495 004\r\n', '', 1, 1),
(460, 116774, 'ALEKH AGRAWAL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'J-2 SAKET APTS, AGRASEN CHOWK, BILASPUR 495 001\r\n', '', 1, 1),
(461, 117136, 'BHASKAR PAYASHI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO 301 MAHAVEER APTS, PHASE II GANGA NAGAR SEC, 11 BILASPUR 495 001\r\n', '', 1, 1),
(462, 119351, 'MELVEEN ABHISHEKH TIRKEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 1009 WARD NO 3, NEHRU NGR, BILASPUR 495001\r\n', '', 1, 1),
(463, 119723, 'ASHWINA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'F NO 2 BLOCK G PARIJAT, COLONY NEHRU NGR, BILASPUR 495001\r\n', '', 1, 1),
(464, 120570, 'KUMARI SHWETA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'DST INSPIRE FELLOW, DEPT OF BIOTECHNOLOGY, BILASPUR 495009\r\n', '', 1, 1),
(465, 120745, 'DR RATNESH SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', 'J2 TYPEII NEW RESIDENTIAL, COMPLEX GGV UNIVERSITY, BILASPUR 495009\r\n', '', 1, 1),
(466, 120816, 'ALOK KUMAR LALL', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHRADDHA NR MAGARPARA, CHOWK BAJRANGBALI TEMPLE, BILASPUR 495001\r\n', '', 1, 1),
(467, 121066, 'MANISH PANDEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'MOHAN NIWAS, RATAN HOTEL LINK ROAD, BILASPUR 495001\r\n', '', 1, 1),
(468, 126539, 'MANISH SHRIVASTAVA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 31 ROHINI VIHAR, COLONY, BILASPUR 495 001\r\n', '', 1, 1),
(469, 126540, 'VIKAS KUMAR SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', 'DSE SCHOOL CAMPUS, MUNGELI 495 115, \r\n', '', 1, 1),
(470, 126541, 'SUYASH JAIN', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SHRIRAM MARKET AGRASEN, CHOWK BILASPUR, BILASPUR 495 001\r\n', '', 1, 1),
(471, 126542, 'SHUBHAM KUMAR SINGH', 3, 7, 4, 'Life Time', '1970-01-01', '', 'RADHA SWAMI BHAWAN, TILAK NAGAR, BILASPUR 495 001\r\n', '', 1, 1),
(472, 126543, 'ANIRUDHHA MADHAV BAGE', 3, 7, 4, 'Life Time', '1970-01-01', '', '27 KHOLI NEAR SANKAT, MOCHAN MANDIR VIKAS NGR, BILASPUR 495 001\r\n', '', 1, 1),
(473, 126544, 'MANOJ KUMAR YADAV', 3, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 107 KORIPARA VILL, PATAITA TEH KOTA, BILASPUR 495 001\r\n', '', 1, 1),
(474, 131481, 'NIVEDITA SHUKLA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'SENDRI, BILASPUR 495001, \r\n', '', 1, 1),
(475, 131482, 'ASHISH KUMAR MISHRA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'JAGAT KUNJ 27, KHOLI BILASPUR 495 001, \r\n', '', 1, 1),
(476, 131483, 'ACHYUT TIWARI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'IN FRONT OF REST HOUSE, PENDRA ROAD DT BILASPUR, 495 117\r\n', '', 1, 1),
(477, 131484, 'SARVESH TRIVEDI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'D-10 PRIYADARSHINI, BILASPUR 495 001, ', '', 1, 1),
(478, 131485, 'CHANDRA MOULI BAJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'CHANDRA NIWAS VIKAS NGR, 27 KHOLI BILASPUR 495 001, \r\n', '', 1, 1),
(479, 131486, 'CHANDRA PRATAP BHJPAI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'QT NO MIG 52 NEHRU, NAGAR BILASPUR 495 001, \r\n', '', 1, 1),
(480, 124581, 'DIWAKAR REGE', 3, 7, 4, 'Life Time', '1970-01-01', '', '516/35 B/HOLD POWER HOUSE, NR SAI TEMPLE HEMUNAGAR, BILASPUR 495004\r\n', '', 1, 1),
(481, 124582, 'RANJANA REGE', 3, 7, 4, 'Life Time', '1970-01-01', '', '516/35 B/HOLD POWER HOUSE, NR SAI TEMPLE HEMUNAGAR, BILASPUR 495004\r\n', '', 1, 1),
(482, 124877, 'ROMIR SUMIT GOYAL', 3, 7, 4, 'Life Time', '1970-01-01', '', '10F201 FRIENDS RESIDENCY, NUTAN CHOWK SARKANDA, BILASPUR 495001\r\n', '', 1, 1),
(483, 46263, 'AHUJA    NAVIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-502, OM COMPLEX, FAFADIH NAKA, RAIPUR 492 009\r\n', '', 1, 1),
(484, 46264, 'DHARMENDRA  RAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'STATE BANK OF INDIA, ZONAL OFFICE, RAIPUR 492 001\r\n', '', 1, 1),
(485, 46265, 'THAKUR  BALMUKUND', 6, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK D 5/3, SBI APTS.,, RAIPUR, \r\n', '', 1, 1),
(486, 46266, 'SHUKLA       ALOK', 2, 7, 4, 'Life Time', '1970-01-01', '', '24-32 BUNGLOW COMPLEX, BHILAI - 490 009, \r\n', '', 1, 1),
(487, 47896, 'BHANDEO   VAIBHAV', 6, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND BALAJI MANDIR, ANAND NAGAR, RAIPUR 492 001\r\n', '', 1, 1),
(488, 47897, 'DR SHUKLA  LALIT MOHAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-7, SHAILENDRA NAGAR, RAIPUR 492 001, \r\n', '', 1, 1),
(489, 49272, 'DOHARE ROHITASHWA CHANDRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'RAJKUMAR COLLEGE, RAIPUR, \r\n', '', 1, 1),
(490, 49279, 'SINGH DHANASHWAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HARI GUJER PALACE, SAKTI DIST JANJGIR, RAIPUR\r\n', '', 1, 1),
(491, 49486, 'KOTHARI   RAMESH', 6, 7, 4, 'Life Time', '1970-01-01', '', '6/15, GOVINDNAGAR BESIDE, TARUN CHHATTISHGARH PRESS, RAIPUR 492 001\r\n', '', 1, 1),
(492, 49487, 'AJIT KUMAR SUR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO 1, VASUNDHARA, SADAN NEW SHANTI NAGAR, RAIPUR 492 007\r\n', '', 1, 1),
(493, 49488, 'SHARMA   AMAR NATH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT 12-A, GULMOHAR, SAHAKARI MARG 2,CHOUBE, COLONY, RAIPUR\r\n', '', 1, 1),
(494, 51161, 'TOORRAY  SHAILENDRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C 289, SHAILENDRA NAGAR, RAIPUR 492 001, \r\n', '', 1, 1),
(495, 51162, 'SURESH KUMAR BHAWNANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 8/216, RAMAN MANDIR, FAFADIH CHHOTI LINE, RAIPUR 492 009\r\n', '', 1, 1),
(496, 51163, 'AGRAWAL   ABHISHEK', 6, 7, 4, 'Life Time', '1970-01-01', '', '39/524, AMINPARA, PURANI BASTI, RAIPUR 492 001\r\n', '', 1, 1),
(497, 51164, 'SHRIVASTAVA    ASHOK', 6, 7, 4, 'Life Time', '1970-01-01', '', '36, VIRDI COLONY,, RAIPUR 492 010, \r\n', '', 1, 1),
(498, 51165, 'TANKSALE    AKSHAT', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D 1/4, SBI APARTMENTS, CIVIL LINES, RAIPUR 492 006\r\n', '', 1, 1),
(499, 51166, 'SONI      RAJENDRA KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SONI GALI OPP HOTEL, AJEET TELIPARA, BILASPUR 495 001\r\n', '', 1, 1),
(500, 51482, 'JHABAK  ASHOK KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D 34, SHAILENDRA NAGAR, RAIPUR 492 001, \r\n', '', 1, 1),
(501, 51550, 'TIWARI ALOK KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H-10 VINAYAKA VIHAR, RING ROAD NO 1, RAIPUR 491 001\r\n', '', 1, 1),
(502, 53250, 'JAI PRAKASH SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C 17 SECTOR 3 DEVENDRA, NAGAR RAIPUR, RAIPUR 492 009\r\n', '', 1, 1),
(503, 53291, 'A V N RAVIKANTH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C-10, GAYATRI NAGAR,, PO SHANKER NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(504, 53292, 'BAKSHI    VIJAY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEELKANTH NIWAS, TATYAPARA, RAIPUR 492 001\r\n', '', 1, 1),
(505, 53843, 'CHHABLANI KISHOR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'FAFADHI, NEAR RAMAN MANDIR, RAIPUR 492 001\r\n', '', 1, 1),
(506, 53921, 'BARVE   SHRUTI VIVEK', 6, 7, 4, 'Life Time', '1970-01-01', '', '2, COLLEGE ROAD,, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(507, 53922, 'DR(MRS) PATHAK  NABENDU', 6, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND AASHIRWAD, BHAWAN BYRON BAZAR,, RAIPUR 492 001\r\n', '', 1, 1),
(508, 53924, 'DR PATHAK     MONIKA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SAI SUSHRUSHA HOSPITAL, BEHIND AASHIRWAD BHAWAN, RAIPUR 492 001\r\n', '', 1, 1),
(509, 53925, 'VERMA   DILIP', 6, 7, 4, 'Life Time', '1970-01-01', '', 'P-8, SECTOR 2,, PRIYADARSHINI NAGAR,, RAIPUR\r\n', '', 1, 1),
(510, 53926, 'LAMBEY    RAJESH KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', '16/184, TATYA PARA, RAIPUR 492 001, \r\n', '', 1, 1),
(511, 54098, 'TIWARI     HEMLATA', 6, 7, 4, 'Life Time', '1970-01-01', '', '54/315,  KRISHNA NAGAR,, DANGANIA, RAIPUR\r\n', '', 1, 1),
(512, 54329, 'FAZAL MAHMOOD RIZVI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SHOP NO 19, SURYA APTS PACHFEDINAKA, RAIPUR 492 001\r\n', '', 1, 1),
(513, 54729, 'MOGHE       SHASHANK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NO44/99 NR SAPRE SCHOOL, BUDHAPRA, RAIPUR 492 001\r\n', '', 1, 1),
(514, 54730, 'MRS  MOGHE   APARNA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR SAPRE  SCHOOL, BUDHA PARA, RAIPUR 492 001\r\n', '', 1, 1),
(515, 55245, 'MS JOGLEKAR   ABHAYA R', 6, 7, 4, 'Life Time', '1970-01-01', '', '29, RECREATION GROUND, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(516, 55246, 'JOGLEKAR    RAMDAS Y', 6, 7, 4, 'Life Time', '1970-01-01', '', '29, RECREATION GROUND, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(517, 55247, 'MRS APTE    SHUBHANGI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-154, M R COLONY,, M R COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(518, 55248, 'APTE    SANJAY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-154, M R COLONY,, RAIPUR 492 001, \r\n', '', 1, 1),
(519, 55706, 'DR VERMA ANOOP', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SWAPNIL NURSING HOME, CIVIL LINES, RAIPUR 492 001\r\n', '', 1, 1),
(520, 55816, 'KASHYAP   MAHENDRA', 6, 7, 4, 'Life Time', '1970-01-01', '', '211-2ND FLOOR, DESHBANDHU COMPLEX,, RAIPUR\r\n', '', 1, 1),
(521, 56718, 'DR CHANDRASHEKHAR RAHALKA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'ENDOSCOPY & SURGICAL, CLINIC, JARAHABHATHA, BILASPUR 495 001\r\n', '', 1, 1),
(522, 56719, 'SAWARGAONKAR  VIBHAS W', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-2, RDA BUILDING, KALI BADI CHOWK, RAIPUR 492 001\r\n', '', 1, 1),
(523, 57416, 'YADAV   VIJAY SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT 11-A, UMADA ROAD,, DREEM CITY,, BHILAI 490 021\r\n', '', 1, 1),
(524, 57417, 'DR  ANIL DHAR DUBEY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 9, STATE BANK COLONY,, SUNDER NAGAR,, RAIPUR 492 010\r\n', '', 1, 1),
(525, 57418, 'PANDEY      MANOJ', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B/10, SHAILENDRA NAGAR,, RAIPUR 492 001, \r\n', '', 1, 1),
(526, 57419, 'RATHI     RAJESH', 6, 7, 4, 'Life Time', '1970-01-01', '', '44/263, BUDHAPARA, NEAR KARMCHARI BHAWAN, RAIPUR 492 001\r\n', '', 1, 1),
(527, 57420, 'KHETAN     MANISH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SAI NAGAR, FAFADIH, RAIPUR 492 009, \r\n', '', 1, 1),
(528, 57421, 'AGRAWAL      NILESH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SAMRIDDHI, B-3, ANUPAM NAGAR,, RAIPUR 492 001\r\n', '', 1, 1),
(529, 57926, 'MRS AYODHYAWASI ITI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-100, HCW TOWNSHIP, ULTRATECH CEMCO LTD, RAIPUR 493\r\n', '', 1, 1),
(530, 57927, 'AYODHYAWASI MANOJ', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-100, HCW TOWNSHIP, ULTRATECH CEMCO LTD, RAIPUR 493 195\r\n', '', 1, 1),
(531, 58837, 'PANIGRAHI  SHAKTI PRAKASH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'INDIRA CHOWK, SHYAM, NAGAR, PO RAVIGRAM, RAIPUR 492 006\r\n', '', 1, 1),
(532, 58838, 'SHUKLA      NARESH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR SUB POST OFFICE, BYRON BAZAR,, RAIPUR 492 001\r\n', '', 1, 1),
(533, 59461, 'MRS PRATIMA    RAJIV', 6, 7, 4, 'Life Time', '1970-01-01', '', 'QNO D/12, TYPE -3, CENTRAL EXCISE COLONY,, RAIPUR 491 001\r\n', '', 1, 1),
(534, 59462, 'M RAJIV', 6, 7, 4, 'Life Time', '1970-01-01', '', 'QNO D-12, TYPE - III, CENTRAL EXCISE COLONY,, RAIPUR 491 001\r\n', '', 1, 1),
(535, 59463, 'MISS SHARMA    RITAMBHARA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 6, PALLAVI VIHAR, ROHINIPURAM, RAIPUR 491 010\r\n', '', 1, 1),
(536, 59874, 'PRAMILA  SHRIVASTAVA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR HOUSING COLONY,, KUMHARI 490 042, DURG\r\n', '', 1, 1),
(537, 60006, 'PATNAIK BIRAJ', 6, 7, 4, 'Life Time', '1970-01-01', '', '26-B/5, TAGORE NAGAR, NEXT TO VIDHAYAK HOSTEL, RAIPUR 492 001\r\n', '', 1, 1),
(538, 60199, 'MEHTA    SANJIV', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 28, SECTOR 1, SHANKAR, NAGAR RAIPUR 492 001, \r\n', '', 1, 1),
(539, 60200, 'MRS MEHTA     SANDHYA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 28, SECTOR 1, SHANKAR, NAGAR RAIPUR 492 001, \r\n', '', 1, 1),
(540, 61023, 'MEHTA    SUBODH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 28, SHANKAR NAGAR, SECTOR 1,, RAIPUR 492 007\r\n', '', 1, 1),
(541, 61024, 'MRS MEHTA    MANISHA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 28, SHANKAR NAGAR, SECTOR 1,, RAIPUR 492 007\r\n', '', 1, 1),
(542, 61085, 'AGARWAL SOURABH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'P.D. AGARWAL, 2ND FLR, DHILLON COMPLEX, JAWAHAR NGR, RAIPUR-1\r\n', '', 1, 1),
(543, 62334, 'ABHISHEK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D/154 M R COLONY, RAIPUR, 492 001\r\n', '', 1, 1),
(544, 62401, 'SONI       RAJESH', 6, 7, 4, 'Life Time', '1970-01-01', '', '10/180, OPP MAHESHWARI, NEWS AGENCY SATTI BAZAR, RAIPUR 492 001\r\n', '', 1, 1),
(545, 62673, 'AGRAWAL SEWASHANKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'JAI PRAHALAD MEDICAL, STORE, SARAIPALI, 493 558\r\n', '', 1, 1),
(546, 62934, 'MEHTA       SUDHIR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 28, SHANKAR NAGAR, RAIPUR 492 007, \r\n', '', 1, 1),
(547, 62935, 'MRS MEHTA   SANGITA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 28, SHANKAR NAGAR, RAIPUR 492 007, \r\n', '', 1, 1),
(548, 62936, 'KHARE       LOKESH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C NINE SECTOR  ONE, AWANTI VIHAR, RAIPUR\r\n', '', 1, 1),
(549, 62937, 'MISS  KHARE    PRIYAM', 6, 7, 4, 'Life Time', '1970-01-01', '', 'TATYAPARA CHOWK, RAIPUR 492 001, \r\n', '', 1, 1),
(550, 63833, 'AGRAWAL  PIYUSH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/O SH ANGIRA KR AGRAWAL, NEODA BADA, GUDIYARI,, RAIPUR 492 007\r\n', '', 1, 1),
(551, 65011, 'MRS BAID SWETA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/O ARIHANT NETRALAYA, BUDHAPARA, RAIPUR\r\n', '', 1, 1),
(552, 65179, 'DR SANYAL SHUBHASHIS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'READER IN MECHANICAL, WARDENS QR-C NIT, RAIPUR 492 010\r\n', '', 1, 1),
(553, 66104, 'MRINAL GOLECHHA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D 68/69, SHAILENDRA NAGAR, RAIPUR 492001, \r\n', '', 1, 1),
(554, 66260, 'MAHARISHI        VIVEK', 6, 7, 4, 'Life Time', '1970-01-01', '', '326-C, VALLABHNAGAR,, SECT. 6, NR ST GYANESHWAR, SCHOOL,RAIPUR 492 001\r\n', '', 1, 1),
(555, 66533, 'MRS PRITI RAMNIWAS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-2, CIVIL LINES,, S.R.P. CHOWK,, RAIPUR 492 001\r\n', '', 1, 1),
(556, 66534, 'RAM NIWAS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-2, CIVIL LINES,, S.R.P. CHOWK,, RAIPUR 492 001\r\n', '', 1, 1),
(557, 66535, 'HARSH NIWAS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-2, CIVIL LINES,, S.R.P. CHOWK,, RAIPUR 492 001\r\n', '', 1, 1),
(558, 66784, 'JUNEJA ASHOK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-1/16, DEVENDRA NAGAR,, RAIPUR 492 001, \r\n', '', 1, 1),
(559, 66979, 'SANJAY SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-109, SURYA APPARTMENT,, KATORA TALAB, RAIPUR 492 001\r\n', '', 1, 1),
(560, 66980, 'DR (MRS) SMRITI  SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-109, SURYA APPARTMENT,, KATORA TALAB, RAIPUR 492 001\r\n', '', 1, 1),
(561, 66981, 'SINHA      SUJIT KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'G-5, VISHAL NAGAR,, PO RAVIGRAM, RAIPUR 492 006\r\n', '', 1, 1),
(562, 67394, 'MEGH NIWAS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-2, CIVIL LINE, NR. BHAGAT SINGH CHOWK,, RAIPUR 492 002\r\n', '', 1, 1),
(563, 68714, 'SHARMA   RAMAWATAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-14, RDA COLONY,, TIKRAPARA,, RAIPUR 492 001\r\n', '', 1, 1),
(564, 69031, 'SINGH SHAILENDRA KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'G-6, SECTOR 1,, AWANTI VIHAR,, RAIPUR 492 001\r\n', '', 1, 1),
(565, 69196, 'MRS SEEMA SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LQ 12 SCIENCE COLLEGE, RAIPUR 492 001, \r\n', '', 1, 1),
(566, 69228, 'ASHOK RAJ AHUJA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 20/501,, NEAR SYNDICATE BANK,, RAIPUR 492 001\r\n', '', 1, 1),
(567, 70600, 'SUMNESH KUMAR VATSA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C-3, NEELANCHAL VIHAR, PO SHANKER NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(568, 71631, 'GHANSHYAM DANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '31/223 OPO SAGGAR NURSING, HOME NR BAILADILA OFFICE, RAIPUR 492 001\r\n', '', 1, 1),
(569, 72688, 'DR RAM NARAYAN NEMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '795, VEER SAWARKAR NAGAR,, PO TATIBANDH,, RAIPUR 492 001\r\n', '', 1, 1),
(570, 72980, 'JOHNY SHRIVASTAVA XYTIZ', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Q NO 16 PARTIVI NAGAR, HIRAPUR RD MAHOBBAZAR, RAIPUR 492 001\r\n', '', 1, 1),
(571, 74275, 'RAMTEKKAR GANGADHAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'READER,DEPT OF CIVIL ENGG, NATIONAL INST.OF TECH., RAIPUR 492 010\r\n', '', 1, 1),
(572, 74302, 'MISS PARGANIHA   ITI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C 1/1, KAPIL SMRITI,, VIMLA VIHAR R S U, RAIPUR 492 010\r\n', '', 1, 1),
(573, 74303, 'MRS  MANISHA VATSA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C-3, NILANCHAL VIHAR,, SHANKAR NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(574, 74304, 'SUNDRAM SHREENATH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-19, SECTOR 1,, SHANKAR NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(575, 74306, 'CHHATRI  SURESH KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'R/O NEAR POLICE OFFICERS, MESS POLICE LINES, RAIPUR 492 001\r\n', '', 1, 1),
(576, 74423, 'ARVIND KU MAR AHIRWAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO F-01, N.I.T., RAIPUR CAMPUS, G.E. ROAD,, RAIPUR 492 010\r\n', '', 1, 1),
(577, 74835, 'SUSHANT KUMAR DEY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-2, SALES TAX COLONY,, KHAMHARDIH SHANKER NAGAR, RAIPUR 492 004\r\n', '', 1, 1),
(578, 74836, 'RAJESH SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'OPP GOMTI AGRO IND.,, SHANKAR NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(579, 75285, 'CHANDRAKANT BHONSLE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D/238, SHAILENDRA NAGAR, NEAR VASU COACHING, RAIPUR 492 001\r\n', '', 1, 1),
(580, 75964, 'SONAL  TIWARI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-37, PARIJAT EXTENTION, BILASPUR 495 001, \r\n', '', 1, 1),
(581, 75965, 'MRS RICHA  TIWARI', 3, 7, 4, 'Life Time', '1970-01-01', '', 'C-37, PARIJAT EXTENTION, BILASPUR 495 001, \r\n', '', 1, 1),
(582, 76129, 'NITIN R PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '', '12 SBI COLONY HIRAPUR RD, MAHOBA BAZAAR, RAIPUR 492 099\r\n', '', 1, 1),
(583, 77395, 'RAMESH CHANDRA GULATI', 6, 7, 4, 'Life Time', '1970-01-01', '', '28/601, SHANKER NAGAR,, MAIN ROAD,, RAIPUR 492 001\r\n', '', 1, 1),
(584, 77396, 'PRANJAL  GULATI', 6, 7, 4, 'Life Time', '1970-01-01', '', '28/601, SHANKER NAGAR,, MAIN ROAD,, RAIPUR 492 001\r\n', '', 1, 1),
(585, 77397, 'SHREYASH GULATI', 6, 7, 4, 'Life Time', '1970-01-01', '', '28/601, SHANKER NAGAR,, MAIN ROAD,, RAIPUR 492 001\r\n', '', 1, 1),
(586, 77398, 'MRS NEELAM  GULATI', 6, 7, 4, 'Life Time', '1970-01-01', '', '28/601, SHANKER NAGAR,, MAIN ROAD,, RAIPUR 492 001\r\n', '', 1, 1),
(587, 77399, 'MISS SHREYA  GULATI', 6, 7, 4, 'Life Time', '1970-01-01', '', '28/601, SHANKER NAGAR,, MAIN ROAD,, RAIPUR 492 001\r\n', '', 1, 1),
(588, 77644, 'DR NAVEEN BAFNA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-132, SEC-1, NR. HANUMAN, TEMPLE, DEVENDRA NAGAR,, RAIPUR 492 009\r\n', '', 1, 1),
(589, 77645, 'NISHANT BAFNA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'OPP SAMRAT THEATRE,, STATION ROAD,, RAIPUR 492 009\r\n', '', 1, 1),
(590, 77768, 'HAR GOVIND BAHETI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 1, SECTOR 1,, DEVENDRA NAGAR,, RAIPUR\r\n', '', 1, 1),
(591, 78084, 'PREM PATHAK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'DAINIK SAMVET SHIKHAR, CHOUBEY COLONY, RAIPUR 492 001\r\n', '', 1, 1),
(592, 78326, 'LALIT LUNKAD', 6, 7, 4, 'Life Time', '1970-01-01', '', '6/C MERLIN JAY SHREE, PANDRI, RAIPUR\r\n', '', 1, 1),
(593, 78400, 'CHANDRA PRAKASH DUBEY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B/H HIGH SCHOOL,, 7, SUNDAR NAGAR,, RAIPUR 492 013\r\n', '', 1, 1),
(594, 79204, 'BALWANT SINGH THAKUR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SCHOOL OF STUDIES IN, MATHEMATICS,PT RAVISHAKAR, SHUKLA UNIVERSITY RAIPUR\r\n', '', 1, 1),
(595, 79253, 'SAJI VARGHESE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-53 SHAILENDRA NAGAR, RAIPUR 492 001, \r\n', '', 1, 1),
(596, 79363, 'RAJNEESH VERMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '11-A, SAHAKARI MARG NO 2, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(597, 79364, 'MRS VIDHI VERMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '11-A, SAHAKARI MARG NO 2, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(598, 79365, 'JAGDISH VERMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '11-A, SAHAKARI MARG NO 2, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(599, 79736, 'DR NILESH GUPTA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-5/364, NEAR SAHAY, HOSPITAL, TAIGORE NAGAR, RAIPUR 492 001\r\n', '', 1, 1),
(600, 79792, 'RAJESH S. KALLAJE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'OFFICE OF THE P.C.C.F., AVANYA BHAVAN MEDICAL RD, RAIPUR 492 004\r\n', '', 1, 1),
(601, 80228, 'DR SANJAY TIWARI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PQ-5 SCIENCE COLLEGE, CAMPUS RAIPUR 492 010, \r\n', '', 1, 1),
(602, 80743, 'PRAVEEN THAKUR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H-131, SECTOR-1,KASHI RAM, NAGAR, PO RAVIGRAM,, RAIPUR\r\n', '', 1, 1),
(603, 81457, 'VINOD SANGHANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '256 SECTOR - I, GEETANJALI NAGAR, RAIPUR 492 007\r\n', '', 1, 1),
(604, 82234, 'AFSHA', 6, 7, 4, 'Life Time', '1970-01-01', '', '395 BAIJNATH PARA, RAIPUR 492 001, \r\n', '', 1, 1),
(605, 82356, 'YOGESH AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', '70, JALVIHAR COLONY,, RAIPUR 492 001, ', '', 1, 1),
(606, 82674, 'ARUN CHAWDA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PARAG CLINIC,OPP NEHA, MEDICAL FAFADIH,, RAIPUR 492009\r\n', '', 1, 1),
(607, 82750, 'SHANTANU BHATTACHARYA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-68 SECTOR-2, SHANKAR NAGAR, RAIPUR\r\n', '', 1, 1),
(608, 82755, 'S K BHATTACHARYA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-68 SECTOR-2, SHANKAR NAGAR, RAIPUR\r\n', '', 1, 1),
(609, 82979, 'VIKAS VIJAY BAJAJ', 6, 7, 4, 'Life Time', '1970-01-01', '', '807, GANESH RAM NAGAR,, MALVIYA ROAD,, RAIPUR 492001\r\n', '', 1, 1),
(610, 83045, 'ARVIND NAIDU', 6, 7, 4, 'Life Time', '1970-01-01', '', 'GANESH CHOWK,, MATHPARA,, RAIPUR 492001\r\n', '', 1, 1),
(611, 83046, 'VIMAL KUMAR SHRIVAS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR DUDHADHARI TEMPLE, MATHPARA,, RAIPUR 492001\r\n', '', 1, 1),
(612, 83047, 'PANSARI  MAHENDRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PUSHPAK VILLA BEHIND, BARAI MANDIR LILY CHOWK,, RAIPUR 492001\r\n', '', 1, 1),
(613, 83048, 'MISS DIVYA PAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PAL COMPLEX, JALGRIH, MARG, TIKERAPARA,, RAIPUR 492001\r\n', '', 1, 1),
(614, 83968, 'SHASHI KANT DANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '58/25/408, KANKALI PARA, NAV BHARAT CHOWK, PURANI, BASTI,RAIPUR 492 001\r\n', '', 1, 1),
(615, 83969, 'NITIN DANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '58/25/408, KANKALI PARA, NAV BHARAT CHOWK, PURANI, BASTI,RAIPUR 492 001\r\n', '', 1, 1),
(616, 84072, 'HARMINDER SING HORA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-1, SAI NAGAR,, DEVENDRA NAGAR ROAD,, RAIPUR 492001\r\n', '', 1, 1),
(617, 84073, 'LAL KUMAR NATHANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-234, SECTOR-4,, DEVENDRA NAGAR,, RAIPUR 492001\r\n', '', 1, 1),
(618, 84074, 'VIDHAN MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'CIVIL LINES, NEAR, CHHATTISGARH COLLEGE,, RAIPUR 492001\r\n', '', 1, 1),
(619, 84078, 'MANMOHAN CHIND', 6, 7, 4, 'Life Time', '1970-01-01', '', 'RAJ ENGINEERING WORKS, MAUDHA PARA K K ROAD, RAIPUR 492001\r\n', '', 1, 1),
(620, 84239, 'DR (MRS) RUBY NEMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '795, VEER SAWARKAR, NAGAR, PO TATIBANDH,, RAIPUR 492001\r\n', '', 1, 1),
(621, 84288, 'MUKESH JETHWA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HARRA BADA,, STATION ROAD,, RAIPUR 492009\r\n', '', 1, 1),
(622, 84289, 'AMIT RATHOR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'GIRNAR RESTAURANT,, JAISTAMBH CHOWK,, RAIPUR  492001\r\n', '', 1, 1),
(623, 85028, 'HEMANT KUMAR NASHINE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NR DURGA TEMPLE, HANUMAN, NAGAR, LAKHE NGR.WARD, SUNDER NGR.RAIPUR-13\r\n', '', 1, 1),
(624, 85437, 'SANDEEP KUMAR AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H.NO 27/240, TURI HATARI, PURANI BASTI RAIPUR, \r\n', '', 1, 1),
(625, 86786, 'KAMAL CHAND JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LALGANGA BUILDERS PVT LTD, 201 LALGANGA SHOPPING, MALL GE RD RAIPUR 492001\r\n', '', 1, 1),
(626, 87499, 'RAJNEESH MATREJA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'AARSONS MEDICAL DIVISION,, DR.MATREJA HOSPITAL COMPD, NAYA PARA, RAIPUR\r\n', '', 1, 1),
(627, 87511, 'ANSHUL SAXENA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'S-13, SECTOR-2,, AVANTI VIHAR, RAIPUR, 492 006\r\n', '', 1, 1),
(628, 88033, 'GARIMA SARASWAT', 6, 7, 4, 'Life Time', '1970-01-01', '', 'I-15 SALES TAX COLONY,, SHANKAR NAGAR, RAIPUR, 492 007\r\n', '', 1, 1),
(629, 88211, 'SANJAY GUHEY', 6, 7, 4, 'Life Time', '1970-01-01', '', '42 VIVEKANAND NAGAR, SHOPPING COMPLEX, RAIPUR 492 001\r\n', '', 1, 1),
(630, 88212, 'UMA PRAKASH OJHA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MAIN ROAD SANTOSHI NAGAR, RAIPUR, RAIPUR 492 001\r\n', '', 1, 1),
(631, 88622, 'SANJAY NANWANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'DOLPHIN TRENDS 4TH FLOOR, FLAT NO 403 DEVENDRA NGR, RAIPUR 492001\r\n', '', 1, 1),
(632, 88972, 'SUDEEP JOHRI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'F-6 FARISHTA COMPLEX, RAJBANDHA MAIDAN, RAIPUR\r\n', '', 1, 1),
(633, 88973, 'PRATIBHA JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'F-6 FARISHTA COMPLEX, RAJBANDHA MAIDAN, RAIPUR\r\n', '', 1, 1),
(634, 90422, 'MISS NIVEDITA SHROTI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-2, ABHISHEK VIHAR,, DEENDAYAL UPADHYA NAGAR, RAIPUR 492 010\r\n', '', 1, 1),
(635, 90681, 'KISHAN LAL TIWARI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C-14, SHAILENDRA NAGAR,, OPP SURANA CARD GALLARY, RAIPUR 492 001\r\n', '', 1, 1),
(636, 91143, 'HIMANSHU BRAHME', 6, 7, 4, 'Life Time', '1970-01-01', '', 'R-5 PANDIT RAVI SHANKAR, UNIVERSITY CAMPUS, RAIPUR\r\n', '', 1, 1),
(637, 92589, 'NAVEEN GOLCHHA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-102 KSHITIJ APARTMENTS, NEW TIMBER MARKET, DEVENDRA NAGAR RAIPUR 09\r\n', '', 1, 1),
(638, 92917, 'VIPEN  DHANDA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-3, PINK CITY,, GAYATRI NAGAR,, RAIPUR 492 007\r\n', '', 1, 1),
(639, 93138, 'TRIAMBAK SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'J-MIG-162 SECTOR - 3, DEENDAYAL UPADHYAY NAGAR, RAIPUR 492 011\r\n', '', 1, 1),
(640, 93352, 'AMITABH SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '25/127 JAGANNATH BHAVAN, BRAHMAN PARA RAIPUR, RAIPUR 492 001\r\n', '', 1, 1),
(641, 93768, 'DEWAN CHANDRALEKHA', 6, 7, 4, 'Life Time', '1970-01-01', '', '44, SUNDER NAGAR,, MAHADEOGHAT ROAD,, RAIPUR\r\n', '', 1, 1),
(642, 93769, 'VIJAY RAJAIYA', 6, 7, 4, 'Life Time', '1970-01-01', '', '876, VIKASVIHAR,, MAHADEOGHAT ROAD,, RAIPUR 492 013\r\n', '', 2, 1),
(643, 93769, 'VIJAY RAJAIYA', 6, 7, 4, 'Life Time', '1970-01-01', '', '876, VIKASVIHAR,, MAHADEOGHAT ROAD,, RAIPUR 492 013\r\n', '', 1, 1),
(644, 93933, 'SUMIT DAMMANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'RUBY 202 GREEN MEADOWS, DAL DAL SEONI MOWA, RAIPUR\r\n', '', 1, 1),
(645, 94593, 'PRAKHAR SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '56 RDA COLONY, TIKRAPARA RAIPUR, \r\n', '', 1, 1),
(646, 94611, 'NARENDRA KUMAR', 6, 7, 4, 'Life Time', '1970-01-01', '', '11/1171 PARAKH MANSION, GUDHIYARI, RAIPUR 492 009\r\n', '', 1, 1),
(647, 95079, 'ARNAB GHOSH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO HIG-II 447, DDV NAGAR, RAIPUR 492 010\r\n', '', 1, 1),
(648, 95082, 'DR OMJI GUPTA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'UMANG 37/222 CHHOTAPARA, ROAD BAIJNATHPARA, RAIPUR 492 001\r\n', '', 1, 1),
(649, 95084, 'DR ANITA GUPTA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'UMANG 37/222 CHHOTAPARA, ROAD BAIJNATHPARA, RAIPUR 492 001\r\n', '', 1, 1),
(650, 95259, 'ASHISH SINGHANIA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MAHADEVI 6 CENTRAL AVENUE, CHOUBE COLONY, RAIPUR 492 001\r\n', '', 1, 1),
(651, 95671, 'NEHA PUROHIT', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-1 MUKTA SADAN FRONT OF, DR GOEL SAMTA COLONY, RAIPUR 492 001\r\n', '', 1, 1),
(652, 95894, 'NITIN NAGPURE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE #7 SHALA MARG, CHOUBEY COLONY RAIPUR, CHHATTISGARH 492 001\r\n', '', 1, 1),
(653, 96002, 'ASHISH PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR ROHANIPURAM GATE, I/F LAV-KUSH PLAY GROUND, DAGANIA,RAIPUR 492010\r\n', '', 1, 1),
(654, 96168, 'KAPIL RATHOR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/O GIRNAR RESTAURANT, JAISTAMBH CHOWK, RAIPUR\r\n', '', 1, 1),
(655, 96294, 'KAMLESHWAR RATRE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'KOTA WARD#12 INFRONT OF, KOTA STADIUM PO PT RAVI, SHANKAR SUKLA UNIV RAIPUR\r\n', '', 1, 1),
(656, 96296, 'SANTOSH KUMR RATRE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'KOTA WARD #12 INFRONT OF, KOTA STADIUM PO PT RAVI, SHANKAR SUKLA UNIV RAIPUR\r\n', '', 1, 1),
(657, 96361, 'SHIVANI MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-1 FOREST OFFICERS, COLONY JAIL ROAD, RAIPUR 492 001\r\n', '', 1, 1),
(658, 96362, 'PURNA CHANDRA MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-1 FOREST OFFICERS, COLONY JAIL ROAD, RAIPUR 492 001\r\n', '', 1, 1),
(659, 96376, 'NARAYAN GUPTA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 41 SECTOR - 2, GEETANJALI NAGAR, RAIPUR 492 007\r\n', '', 1, 1),
(660, 96377, 'MADHU GUPTA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 41 SECTOR - 2, GEETANJALI NAGAR, RAIPUR 492 007\r\n', '', 1, 1),
(661, 96851, 'PIYUSH CHAUHAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SECTOR 2B/24, DEVENDRA NAGAR, RAIPUR\r\n', '', 1, 1),
(662, 97008, 'ASHISH PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SECTOR 3 D/34, DEVEVDRA NAGAR, RAIPUR\r\n', '', 1, 1),
(663, 97219, 'SUSMITA MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-1 FOREST OFFICERS COLON, JAIL ROAD RAIPUR 492 001, \r\n', '', 1, 1),
(664, 97444, 'BIJAY KETAN MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT 104, MARUTIKUNJ,, MAHOBA BAZAR,, RAIPUR 492 099\r\n', '', 1, 1),
(665, 97759, 'DINESH VEDULA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 26 MARUTI ENCLAVE, TATIBANDH RAIPUR, \r\n', '', 1, 1),
(666, 98508, 'RAVI BAGREE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/O SHREEJI HYDRALIES, CHUDI LINE RAIPUR, 492 001\r\n', '', 1, 1),
(667, 98509, 'ANKUR SINGHAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LIG-E-80 SHAILENDRA NAGAR, RAIPUR, 492 001\r\n', '', 1, 1),
(668, 99441, 'SUSHANT RAMTEKE', 10, 7, 4, 'Life Time', '1970-01-01', '', 'DS/85 TYPE-III DLM COLONY, NMDC TOWNSHIP KIRANDUL, PO KIRANDUL, DANTEWADA\r\n', '', 1, 1),
(669, 99502, 'SHANTANU JOSHI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'KULPATI INIWAS KTU SCI, COLLEGE CAPUS G E ROAD, RAIPUR\r\n', '', 1, 1),
(670, 100060, 'RITAMBHARA SHROTI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-2, ABHISHEK VIHAR,, DDU NAGAR,, RAIPUR 492 001\r\n', '', 1, 1),
(671, 100194, 'ANUP KUMAR GHOSH', 6, 7, 4, 'Life Time', '1970-01-01', '', '19/601, ASHOKA RATNA, OPP VIP ESTATE,, RAIPUR 492 001\r\n', '', 1, 1),
(672, 100232, 'SABA PARWIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 36/419 YEZDANI, COLONY BYRON BAZAR, RAIPUR 492 001\r\n', '', 1, 1),
(673, 100233, 'AYAZ AHMED KHAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 36/419 YEZDANI, COLONY BYRON BAZAR, RAIPUR 492 001\r\n', '', 1, 1),
(674, 100792, 'RAKESH KUMAR CHANDRAKER', 6, 7, 4, 'Life Time', '1970-01-01', '', 'TYPE V-III BSNL COLONY, NEW RAJENDRA NAGAR, RAIPUR\r\n', '', 1, 1),
(675, 100982, 'AMIT BANERJEE', 6, 7, 4, 'Life Time', '1970-01-01', '', '23, STATE BANK COLONY, TAGORE NGR BEH SAIMANDIR, RAIPUR 492 001\r\n', '', 1, 1),
(676, 101922, 'ANKIT CHOUDHRI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'BHATAPARA DISTT, BALODABAZAR 493 118, \r\n', '', 1, 1),
(677, 102019, 'SHARAD MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', '67 SECTOR 1 GEETANJALI, NAGAR RAIPUR, \r\n', '', 1, 1),
(678, 102231, 'DR KAMAL KISHORE SAHARE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 362 ATMALAXMI KUNJ, RAIPUR MAHADEVGHAT ROAD, RAIPUR\r\n', '', 1, 1),
(679, 102657, 'ZUNAIB KHAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LIG 11 HOUSING BOARD CLNY, INFRONT OF AISHWARYA KING, RAIPUR\r\n', '', 1, 1),
(680, 103278, 'TARUN VAID', 6, 7, 4, 'Life Time', '1970-01-01', '', 'G-6 NAKODA BAIRAV COLONY, NR PACHPEDI NAKA, RAIPUR\r\n', '', 1, 1),
(681, 103286, 'S SHUBHANG', 6, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 4 PRASHANTI MARG, NR SBI NEW SHANTI NAGAR, RAIPUR\r\n', '', 1, 1),
(682, 103354, 'ARUN M BALLAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'CENTRAL BANK OF INDIA, ZONAL OFICE GE RD BOMBAY, MKT VIGILANCE DEPT RAIPUR\r\n', '', 1, 1),
(683, 103639, 'JAYANT KR CHAKRABORTY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'DANGNIA PO SUNDER NAGAR, RAIPUR, \r\n', '', 1, 1),
(684, 104794, 'VIVEK BANCHHOR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'GARIMA HOUSE, MAIN ROAD KOTA, RAIPUR 492 001\r\n', '', 1, 1),
(685, 105031, 'KIRAN SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', '"GULMOHAR", 12-A,SAHAKARI, MARG-2, CHOUBEY COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(686, 105032, 'PAWAN KUMAR VERMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'G-5, AVANTI VIHAR, SECT-1, NEAR STATE BANK ATM, RAIPUR 492 007\r\n', '', 1, 1),
(687, 105033, 'HEMANT KUMAR SHARMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR VERMA FEBRICATERS, NEW HANUMAN NAGAR,LAKHE, NGR. RAIPUR 492 013\r\n', '', 1, 1),
(688, 105141, 'VAIBHAV BHALKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B 16/3 SECTOR 3 UDAYA SOC, NR MISHRA ATA CHAKKI, TALBANDH RAIPUR 492 099\r\n', '', 1, 1),
(689, 105227, 'PIYUSH GAGLANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '07 S B I  COLONY SUNDER, NAGAR RAIPUR, 492 001\r\n', '', 1, 1),
(690, 105531, 'KEYA VASWAMI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C 91 BAJAJ COLONY SEC 2, NEW RAJENDRA NAGAR, RAIPUR\r\n', '', 1, 1),
(691, 105795, 'MOHD ABDUL HASHIR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H #9/354 B/H JAIN MANDIR, BUDHAPARA RAIPUR, \r\n', '', 1, 1),
(692, 105796, 'MOHAMMAD RAFIQUE', 6, 7, 4, 'Life Time', '1970-01-01', '', '53/84 OPPOSITE KABRASTAN, IDGAH BHATA RAIPUR, \r\n', '', 1, 1),
(693, 106426, 'ASEEM KUMAR ADIL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'ARISE MARKETING SHOP NO 2, 2ND FLR PATWA COMPLEX, RAIPUR 492 001\r\n', '', 1, 1),
(694, 106992, 'NISHANT KUMAR SHRIVASTAVA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MIG 7 PUNJABAI COLONY, KATORA TALAB, RAIPUR 492 001\r\n', '', 1, 1),
(695, 107017, 'NAMRATA SANGOI', 6, 7, 4, 'Life Time', '1970-01-01', '', '21/360 GANJ PARA, RAIPUR 492 001, \r\n', '', 1, 1),
(696, 107362, 'TAHSEEN AMBER', 6, 7, 4, 'Life Time', '1970-01-01', '', '395 BAJINATH PARA, RAIPUR 492 001, \r\n', '', 1, 1),
(697, 108015, 'SIDDHARTH DANG', 6, 7, 4, 'Life Time', '1970-01-01', '', 'RAVISHANKAR STADIUM, KOTA RAMNAGAR ROAD, RAIPUR 492 010\r\n', '', 1, 1),
(698, 108248, 'SANAT JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'ALOK BHAWAN OPP, GEOLOGICAL SURVEY BLDG, RAIPUR 492 010\r\n', '', 1, 1),
(699, 108267, 'AMITAVA GHOSH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-2/303 VIP KARISHMA, APTS KHAMARDIH, RAIPUR 492 007\r\n', '', 1, 1),
(700, 108342, 'DEEPAK SONI', 5, 7, 4, 'Life Time', '1970-01-01', '', 'B1123 KRISHNA VIHAR, PO JAMNIPALI DISTT KORBA, 495 450\r\n', '', 1, 1),
(701, 108390, 'MANISH MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', '10-A RAVI NAGAR, RAIPUR 492 001, \r\n', '', 1, 1),
(702, 110302, 'SURESH SATPATHI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LAXMI NAGAR MOWA, RAIPUR 492 007, \r\n', '', 1, 1),
(703, 110580, 'JITENDRA KUMAR AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'TURI HATRI PURANI BASTI, RAIPUR 492 001, \r\n', '', 1, 1),
(704, 110605, 'SHAILAJA BALLAL', 6, 7, 4, 'Life Time', '1970-01-01', '', '26 SBI COLONY MOHOBA, BAZAR TATIBAND, RAIPUR\r\n', '', 1, 1),
(705, 107370, 'DILIP KUMAR MUKHERJEE', 7, 7, 4, 'Life Time', '1970-01-01', '', '3, SBI COLONY,, SUNDERNAGAR,, RAIPUR 492 001\r\n', '', 1, 1),
(706, 107371, 'RAGHUVIR PD DEWANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '"RAGHUKUL", D-87 OPP, WATER TANK SHAILENDER NGR, RAIPUR 492 001\r\n', '', 1, 1),
(707, 107372, 'PANKAJ KUMAR JADWANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'RR SALES SHOP NO 3, HOTEL, SAGAR BLDG.ANAND TALKIES, ROAD, RAIPUR 492 001\r\n', '', 1, 1),
(708, 111404, 'PRASHANT BARADIA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SHOBHA NIKETAN 17TH, VIVEKANAND NAGAR, RAIPUR 492 001\r\n', '', 1, 1);
INSERT INTO `member` (`Member_Id`, `Membership_No`, `Member_Name`, `Unit_Id`, `Designation_Id`, `MID`, `Membership_Type`, `Membership_Date`, `Contact_No`, `Address`, `Member_Detail`, `Member_Type`, `Member_Status`) VALUES
(709, 111405, 'ANUWRAT KHATOR', 6, 7, 4, 'Life Time', '1970-01-01', '', '72 HANUMAN NAGAR, NR KALIBADI CHOWK, RAIPUR 492 001\r\n', '', 1, 1),
(710, 111553, 'SAURABH TIWARI', 6, 7, 4, 'Life Time', '1970-01-01', '', '32/140 RAJENDRA HOUSE, SHYAM NGR NIGAM HIGH SCH, PO RAVIGRAM RAIPUR 06\r\n', '', 1, 1),
(711, 111558, 'SAIF ALAM AHMED', 6, 7, 4, 'Life Time', '1970-01-01', '', 'AMAN NAGAR, MOWA RAIPUR 492 007, \r\n', '', 1, 1),
(712, 112393, 'KAIF ALAM', 6, 7, 4, 'Life Time', '1970-01-01', '', 'VIDHAN SABHA ROAD, AMAN NAGAR MOWA, RAIPUR 492 007\r\n', '', 1, 1),
(713, 112465, 'VIDHU DUBEY', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SH-3 SECTOR 1 PT DDU, NAGAR RAIPUR 492 010, \r\n', '', 1, 1),
(714, 113403, 'SAMEER RANJAN SUNANI', 6, 7, 4, 'Life Time', '1970-01-01', '', '1535/1537 STREET NO 15, SECTOR 3 PROFESSOR COLONY, SUMERU MUTT RAIPUR 13\r\n', '', 1, 1),
(715, 113743, 'PRANAY AGRAWAL', 9, 7, 4, 'Life Time', '1970-01-01', '', 'AGRAWAL COMPUTERS, JAISTAMBH CHOWK DONGAR-, GARH DIST RAJNANDGAON\r\n', '', 1, 1),
(716, 113750, 'MAHESH NACHRANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SHANKER VILLA, PANCHSHEEL NAGAR,, RAIPUR 492 001\r\n\r\n', '', 1, 1),
(717, 113751, 'PARVINDER AHLU WALIA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 5, JAL VIHAR COLONY, RAIPUR 492 001, \r\n', '', 1, 1),
(718, 113752, 'SHISHUPAL MANDHANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SUNSHINE MARKETING BC&F, MEDICAL COMPLEX,DEOPURI, RAIPUR 492 015\r\n', '', 1, 1),
(719, 114038, 'AWADHESH AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PURANIBASTI BANIYAPARA, RAIPUR 492 001, \r\n', '', 1, 1),
(720, 114233, 'ASHWINI KUMAR MISHRA', 9, 7, 4, 'Life Time', '1970-01-01', '', 'FOREST COLONY, DONGARGARH DIST, RAJNANDGAON\r\n', '', 1, 1),
(721, 114442, 'SUSHOVAN DAM', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT NO 255A KBT KABIR, NAGAR, RAIPUR 492 099\r\n', '', 1, 1),
(722, 114461, 'BHARGAVA K IYENGAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-101 MARUTI HEIGHTS, MAHOBA BAJAR, G E ROAD RAIPUR 492001\r\n', '', 1, 1),
(723, 114510, 'SUSHUMNA SAWARGAONKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A/2, RDA BLDG. NEAR CSEB, OFFICE KALIBADI CHOWK,, RAIPUR 492 001\r\n', '', 1, 1),
(724, 114950, 'ADARSH AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', '3 PARMANAND NAGAR MARG, MOHBA BAZAR, RAIPUR 492 001\r\n', '', 1, 1),
(725, 115144, 'JAYANT CHANDRAKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E 1 RAJBHAWAN COLONY, CIVIL LINES, RAIPUR 492001\r\n', '', 1, 1),
(726, 115145, 'AKHILESH CHANDRAKAR', 7, 7, 4, 'Life Time', '1970-01-01', '', 'STN RD WARD NO 15 RAVI, SHANKAR SHUKLA WARD, MAHASAMUND 493445\r\n', '', 1, 1),
(727, 115270, 'AJAY CHANDAK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'CHANDAK ESTATE, FAFADIH STREET NO 1, RAIPUR 492 009\r\n', '', 1, 1),
(728, 115361, 'YOGESH PUROHIT', 6, 7, 4, 'Life Time', '1970-01-01', '', '"KALASH" IST FLOOR,, SHIV MANDIR PANDRI, RAIPUR 492 001\r\n', '', 1, 1),
(729, 115362, 'YASHWANT PUROHIT', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LIG-I, 340-341, SECTOR-2, PT DINDAYAL NAGAR DAGNIA, RAIPUR 492 001\r\n', '', 1, 1),
(730, 115363, 'MRS RAKHI JHABAK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-34, SHAILENDRA NAGAR,, BEHIND DR MEMON NUR. HOME, RAIPUR 492 001\r\n\r\n', '', 1, 1),
(731, 115364, 'PRAHARSH GOUR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-9, PHASE-2,, KANCHANGANGA COLONY,, RAIPUR 492 001\r\n', '', 1, 1),
(732, 115365, 'MRS NEELU PARGANIHA', 6, 7, 4, 'Life Time', '1970-01-01', '', '30/165, AMAPARA CHOWK,, RAIPUR 492 001, \r\n', '', 1, 1),
(733, 115366, 'L0115366', 6, 7, 4, 'Life Time', '1970-01-01', '', 'ANIL TEXTILE AGENCY,, J-98, TEXTILE MARKET,, PANDRI RAIPUR 492 004\r\n', '', 1, 1),
(734, 115367, 'AAYUSH CHANDRAWANSHI', 6, 7, 4, 'Life Time', '1970-01-01', '', '3/815, RAMKUND CHOUBEY, COLONY, RAIPUR 492 001, \r\n', '', 1, 1),
(735, 115368, 'AVANISH PARGANIHA', 6, 7, 4, 'Life Time', '1970-01-01', '', '30/165, ANAPARA CHOWK,, RAIPUR 492 001, \r\n', '', 1, 1),
(736, 115369, 'VIPLAV VERMA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'KANCHANGANGA PHASE-II,, OPP C-9, ROHINIPURAM,, RAIPUR 492 010\r\n', '', 1, 1),
(737, 115370, 'RAHUL SHRIVASTAVA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'K-4, AURBINDO ENCLAVE,, PACHPEDHI NAKA,, RAIPUR 492 001\r\n', '', 1, 1),
(738, 115371, 'KUNAL CHANDRAKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'RAJBHAVAN COLONY(E-1), NEAR RAJBHAVAN GATE# 3, RAIPUR 492 001\r\n', '', 1, 1),
(739, 115372, 'SAGAR JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-6, 2ND FLR DEEPAK, APTS., BUDHAPARA,, RAIPUR 492 001\r\n', '', 1, 1),
(740, 115373, 'VARUN MUTHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'OLD CLOTH MARKET,, G E ROAD, NH -6,, KUMHARI 490 042\r\n', '', 1, 1),
(741, 115374, 'ITI PARGANIHA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C 1/1,KAPIL SMRITI, (RSU), VIMLA VIHAR, KANCHANGANGA, RAIPUR 492 010\r\n', '', 1, 1),
(742, 115375, 'ANISH PARGANIHA', 6, 7, 4, 'Life Time', '1970-01-01', '', '30/165, AMAPARA CHOWK,, C/O DR PARGANIHA CLINIC, RAIPUR 492 001\r\n', '', 1, 1),
(743, 115590, 'ALOK KUMAR PAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'PAL COMPLEX JAL GRIH, MARG, TIKRAPARA,, RAIPUR 492 001\r\n', '', 1, 1),
(744, 116119, 'ASHOK KUMAR MISHRA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'POST LAWAN, DIST BALODABAZAR, LAWAN 493526\r\n', '', 1, 1),
(745, 116474, 'ANSHUL PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'R-1 KANCHANGANGA PHASE 2, RAIPUR 492 010, \r\n', '', 1, 1),
(746, 116496, 'SUNDER GIMNANI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B304 SHUVAM VILLAS, NEW RAJENDRE NAGAR, RAIPUR 490 001\r\n', '', 1, 1),
(747, 116505, 'GURU PRASAD SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MAPLE 341 PARTHIVI, PACIFIC GE ROAD TATIBANDH, RAIPUR 492 001\r\n', '', 1, 1),
(748, 116609, 'PRAMOD KHARE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-104 JAINAM PLANET, TATIBANDH, RAIPUR 492 009\r\n', '', 1, 1),
(749, 116782, 'APRATIM KHEMKA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C-13/14 SARASWATI SAI, NAGAR RAIPUR 492 009, \r\n', '', 1, 1),
(750, 116959, 'VINAY JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIGC-49, SHAILENDRA NAGAR, RAIPUR 492 001\r\n', '', 1, 1),
(751, 117520, 'DHARMENDRA SINGH SENGAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SHIVKRIPA BHAWNA NAGAR, KACHNA ROAD KHAMRDIH, RAIPUR 492 007\r\n', '', 1, 1),
(752, 117561, 'SUBHASH CHANDRAKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 99 PH 2, KANCHAN GANGA COLONY, RAIPUR 492010\r\n', '', 1, 1),
(753, 117587, 'DALCHAND JHARIYA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'DEPTT OF APPLIED GEOLOGY, NIT RAIPUR GE ROAD, RAIPUR 492 010\r\n', '', 1, 1),
(754, 117612, 'BHARTESH RATHOR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'I 15 ANUPAM NAGAR, RAIPUR 492 001, \r\n', '', 1, 1),
(755, 118566, 'CHARANJEET SINGH SALUJA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 5 JAIL ROAD, FAFADIH CHOWK, RAIPUR 492001\r\n', '', 1, 1),
(756, 119771, 'RADHUNATH SINGH PARIHAR', 7, 7, 4, 'Life Time', '1970-01-01', '', 'A 23 4TH FLOOR JEEWAN, APPT SHANKAR NAGAR, RAIPUR 492007\r\n', '', 1, 1),
(757, 120400, 'SHANTANU JOSHI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'KULPATI NIWAS KTU GOVT, SCIENCE COLEGE CAMPUS, GE RD RAIPUR 492001\r\n', '', 1, 1),
(758, 120951, 'NIKHIL AGARWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'IST FLR DESHBANDHU, COMPLEX RAMSAGARPARA, RAIPUR 492001\r\n', '', 1, 1),
(759, 122127, 'M NAMESH', 2, 7, 4, 'Life Time', '1970-01-01', '', '9/11 NEHRU NAGAR WEST, BHILAI 490 020, \r\n', '', 1, 1),
(760, 122143, 'MANOJ CHANALIYA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-2 VRINDAVAN COLONY, KHAMARDIH RAIPUR, RAIPUR 492 007\r\n', '', 1, 1),
(761, 122213, 'MANOJ CHANALIYA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B 2 VRINDAVAN COLONY, NR KALYAN PUBLIC SCHOOL, RAIPUR 492007\r\n', '', 1, 1),
(762, 122268, 'DR KALLOL KUMAR GHOSH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO HIG II 447 SECTOR 1, DINDAYAL UPADHAY NGR, RAIPUR 492010\r\n', '', 1, 1),
(763, 122325, 'ANSHUL TIWARI', 6, 7, 4, 'Life Time', '1970-01-01', '', 'BAL SAMAJ LIBRARY STREET, BRAHMAN PARA AZAD CHOWK, RAIPUR 492001\r\n', '', 1, 1),
(764, 122330, 'ADARSH KUMAR SINGH', 6, 7, 4, 'Life Time', '1970-01-01', '', '2ND FLR AUTO EXCHANGE, BLDG G E ROAD, RAIPUR 492001\r\n', '', 1, 1),
(765, 122502, 'AJAY KUMAR PRADHAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-2/410 SEC 1 DINDAYAL, UPADYAY NAGAR, RAIPUR 492 010\r\n', '', 1, 1),
(766, 122503, 'ROHIT KUMAR PRADHAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-2/410 SEC 1 DINDAYAL, UPADYAY NAGAR, RAIPUR 492 010\r\n', '', 1, 1),
(767, 122506, 'DR PRAVEEN CHANDRAKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-1 CIVIL LINES, RAJBHAWAN COLONY CAMPUS, RAIPUR 492 001\r\n', '', 1, 1),
(768, 122507, 'RAJKUMAR SARDA', 6, 7, 4, 'Life Time', '1970-01-01', '', '37 NAGAR NIGAM COLONY, NR AGRASEN CHOWK, RAIPUR 492 001\r\n', '', 1, 1),
(769, 122508, 'SAMEER MOGHE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NR SAPRE SCHOOL, BUDHAPARA, RAIPUR 492 001\r\n', '', 1, 1),
(770, 122509, 'ARCHANA MOGHE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NR SAPRE SCHOOL, BUDHAPARA, RAIPUR 492 001\r\n', '', 1, 1),
(771, 122512, 'LOKNATH DIWAN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 195 SECTOR 1, ROAD NO 4 PROFESSOR CLY, RAIPUR 492 001\r\n', '', 1, 1),
(772, 122516, 'TARAK SINGH KANWAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MARBLE PALACE GALI, LAXMI NAGAR PRINCE CLY, PACHPEDI NAKA RAIPUR 01\r\n', '', 1, 1),
(773, 122517, 'RAGHUNANDANLAL NIRMALKAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'DHARAM NAGAR PACHPEDI, NAKA NR SHIV TEMPLE, RAIPUR 492 001\r\n', '', 1, 1),
(774, 122518, 'DHARMENDRA KR PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '', '120 METRO GREENS SADDU, BARONDA ROAD, RAIPUR 492 001\r\n', '', 1, 1),
(775, 123042, 'SHOBHIT KHANDELWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', '5/216 SHRI KISHAN KUNJ, RAMSAGAR PARA  MAIN ROAD, RAIPUR 492001\r\n', '', 1, 1),
(776, 123225, 'SAKHI CHAUBE', 6, 7, 4, 'Life Time', '1970-01-01', '', '69 2113 ROHINIPURAM, RAIPUR 492010, \r\n', '', 1, 1),
(777, 123285, 'JYOTI AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'GHANDI MANDIR WARD MANDI, RD BHATAPARA BH.ADIL HOSP, BALODA BAZAR\r\n', '', 1, 1),
(778, 125321, 'DR ATUL SHUKLA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'ATUL SHUKLA E 102, SHAILENDRA NAGAR, RAIPUR 492001\r\n', '', 1, 1),
(779, 125625, 'ASHISH PATEL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'TULIP-4/106 GREEN EARTH, CITY AMLESHWAR, RAIPUR 492 001\r\n', '', 1, 1),
(780, 125626, 'DIVYA SHRIVASTAVA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'TULIP-4/106 GREEN EARTH, CITY AMLESHWAR, RAIPUR 492 001\r\n', '', 1, 1),
(781, 125805, 'ATAL SINGH HANSPAL', 6, 7, 4, 'Life Time', '1970-01-01', '', '30 ASHIRWA TOWERS 1ST FLR, G E ROAD RAIPUR 492 001, \r\n\r\n', '', 1, 1),
(782, 125806, 'PRACHI AGRAWAL', 6, 7, 4, 'Life Time', '1970-01-01', '', '23/397 PURANI BASTI, TURIHATRI  RAIPUR 492001, \r\n', '', 1, 1),
(783, 125959, 'AKASH JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-401,AVENUE-144,NEW, RAJENDRANGR OPP.MEDISHINE, HOSPITAL,RAIPUR-492001\r\n', '', 1, 1),
(784, 127029, 'SHUBHAM JAIN', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-247 TAGORE NAGAR, M R COLONY, RAIPUR 492 001\r\n', '', 1, 1),
(785, 127030, 'NILESH KUMAR MATSYAPAL', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 925, NR NUTAN SCHOOL K PICHE, RAIPUR 492 001\r\n', '', 1, 1),
(786, 127031, 'VARSHA RATHI', 6, 7, 4, 'Life Time', '1970-01-01', '', '44/263 BUDHAPARA, IN FRONT OF VIJAYDURGA, HOSPITAL RAIPUR 492 001\r\n', '', 1, 1),
(787, 127032, 'AVIRAL RATHI', 6, 7, 4, 'Life Time', '1970-01-01', '', '44/263 BUDHAPARA, IN FRONT OF VIJAYDURGA, HOSPITAL RAIPUR 492 001\r\n', '', 2, 1),
(788, 127184, 'SAURABH GOYAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'NEW KHURSIPAR, BHILAI 492 012, \r\n', '', 1, 1),
(789, 127573, 'RASHI VISHNOI', 6, 7, 4, 'Life Time', '1970-01-01', '', '2 JAL VIHAR COLONY, OPP ROTARY CLUB, RAIPUR 492 001\r\n', '', 1, 1),
(790, 127734, 'VIVEK KUMAR YADAV', 6, 7, 4, 'Life Time', '1970-01-01', '', 'JANTA QUATER 457, SECTOR 7 RAJENDRA NAGAR, RAIPUR 492 001\r\n', '', 1, 1),
(791, 127735, 'ANKIT JHABAK', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E-17 BHAIRAV SOCIETY, PACHPEDI NAKA, RAIPUR 492 001\r\n', '', 1, 1),
(792, 131001, 'ATUL GADRE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B-7 LOKMANYA SOCIETY, ROHINIPURAM, RAIPUR 492010\r\n', '', 1, 1),
(793, 124684, 'KHOMLAL CHANDESHWAR', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NR DR RADHAKRISHAN HIGH, SCHOOL VIKAS NAGAR, GUDHIYARI RAIPUR 492009\r\n', '', 1, 1),
(794, 49210, 'Rambahadur Singh Sangar', 1, 7, 4, 'Life Time', '1970-01-01', '', 'G - 7, Ajirma Krishi Colony, Raghavpuri, Jainagar, Surguja - 497 001\r\n', '', 1, 1),
(795, 49952, 'Singh Rajvir', 1, 7, 4, 'Life Time', '1970-01-01', '', 'M/s. Anmol, Mahamaya Chowk, Ambikapur - 497 001\r\n', '', 1, 1),
(796, 54849, 'Dr. Garg Ashutosh Kumar', 1, 7, 4, 'Life Time', '1970-01-01', '', 'Regional Hospital, Church Chorha, Korea - 497 339\r\n', '', 1, 1),
(797, 69759, 'Umesh Chandra Gaur', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Bajrang Chowk, Civil Line, Mahasamund\r\n', '', 1, 1),
(798, 55915, 'Shrivas Kamlesh', 9, 7, 4, 'Life Time', '1970-01-01', '', 'Village - Gathula, Post. Bori, Dist. Rajnandgaon - 492 441\r\n', '', 1, 1),
(799, 47892, 'Shrivastava . A . K', 5, 7, 4, 'Life Time', '1970-01-01', '', 'A - 7, CSEB Colony, Korba (West) - 495 450\r\n', '', 1, 1),
(800, 48765, 'Ashok Kumar Sahu', 5, 7, 4, 'Life Time', '1970-01-01', '', 'Rani Mahal Marg, Purani Basti, Kalar Para, Korba - 495 677\r\n', '', 1, 1),
(801, 49206, 'Agrawal Divyanand', 5, 7, 4, 'Life Time', '1970-01-01', '', 'Medicine Corner, Budhwari Bazar, CSEB Colony, Korba\r\n\r\n', '', 1, 1),
(802, 49279, 'Singh Dhanashwar', 5, 7, 4, 'Life Time', '1970-01-01', '', 'Hari Gujer Palace, Dist. Sakti, Janjgir\r\n', '', 1, 1),
(803, 56871, 'Baghel Raushan', 5, 7, 4, 'Life Time', '1970-01-01', '', 'F - 12, Darri, Korba (West), Korba - 495 450\r\n', '', 1, 1),
(804, 69400, 'Seth Sandeep', 5, 7, 4, 'Life Time', '1970-01-01', '', 'Sr. MIG - 16, Nehru Nagar, Near Budhwari, Korba - 495 677\r\n', '', 1, 1),
(805, 69404, 'Saurabh Kamal Patel', 5, 7, 4, 'Life Time', '1970-01-01', '', 'F - 3, ITI Colony, Korba - 495677\r\n', '', 1, 1),
(806, 59951, 'Tejasvi K.', 10, 7, 4, 'Life Time', '1970-01-01', '', 'H - 10, Scientist Hostel, Airport Terminal Building, DRDO, Jagdalpur\r\n', '', 1, 1),
(807, 59952, 'Budda Kanakaiah', 10, 7, 4, 'Life Time', '1970-01-01', '', 'D - 7, Residentail Complex, Airport, Jagdalpur - 494 001\r\n', '', 1, 1),
(808, 61820, 'Dr. Agrawal Sujan Narayan', 10, 7, 4, 'Life Time', '1970-01-01', '', 'NMDC, Iron & Steel Plant, Geedam Road, Jagdalpur - 494 001\r\n', '', 1, 1),
(809, 47307, 'Tuteja Preetpal Singh', 7, 7, 4, 'Life Time', '1970-01-01', '', 'Contractor, Handi Chowk, Raigharh - 496 001\r\n', '', 1, 1),
(810, 47309, 'Bhagat Krishna Kumar', 7, 7, 4, 'Life Time', '1970-01-01', '', 'PHC Loing, Raigarh - 496 001\r\n', '', 1, 1),
(811, 47310, 'Ms. Santosh Agrawal', 7, 7, 4, 'Life Time', '1970-01-01', '', 'Daniapara, Raigarh - 496 001\r\n', '', 1, 1),
(812, 48339, 'Sharma Sanjay', 7, 7, 4, 'Life Time', '1970-01-01', '', 'Reserve Inspector of Police, Raigarh - 497 001\r\n', '', 1, 1),
(813, 51979, 'Dr. (Mrs.) Rathi Lata', 7, 7, 4, 'Life Time', '1970-01-01', '', 'Sonarpara, Raigarh - 495 001\r\n', '', 1, 1),
(814, 51980, 'Dr. Rathi Rajeev ', 7, 7, 4, 'Life Time', '1970-01-01', '', 'Sonarpara, Raigarh - 495 001\r\n', '', 1, 1),
(815, 56714, 'Mishra Kalyani', 7, 7, 4, 'Life Time', '1970-01-01', '', 'MIG - 20, Housing Board, Mukut Colony, Raigarh\r\n', '', 1, 1),
(816, 69087, 'Pradhan Neeraj', 7, 7, 4, 'Life Time', '1970-01-01', '', 'Vill. Mahapalli, P.O. Loing, Dist. Raigarh - 496 001\r\n', '', 1, 1),
(817, 49663, 'Bhatnagar Ashit Kumar', 4, 7, 4, 'Life Time', '1970-01-01', '', 'F-6, Irrigation Colony, Near Rest House, Rudri - 493 776\r\n', '', 1, 1),
(818, 49664, 'Bhatanagar Anjali', 4, 7, 4, 'Life Time', '1970-01-01', '', 'F-6, Irrigation Colony, Near Rest House, Rudri - 493 776\r\n', '', 1, 1),
(819, 49665, 'Khandelwal Akhelesh', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Shri Shyam Rice Mill, Shankardaha Road, Dhamtari - 493 773\r\n', '', 1, 1),
(820, 49666, 'Khandelwal Savita', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. A . Khandelwal, Shri Shyam Rice Mill, Shankardaha Road, Dhamtari - 493 773\r\n', '', 1, 1),
(821, 50151, 'Soni Kanuj', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. Kailash Kumar Soni, Salhewar Para, Dhamtari - 493 773\r\n', '', 1, 1),
(822, 51170, 'Amar Nath Gupta', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Maya Saree Centre, Math Mandir, Dhamtari - 493 773\r\n', '', 1, 1),
(823, 54099, 'Ransingh Neeraj', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Marathapara, Dhamtari - 493 773\r\n', '', 1, 1),
(824, 54100, 'Singh Chandradeep', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Shika Medical Stores, Bastar Road, Dhamtari - 493 773\r\n', '', 1, 1),
(825, 54101, 'Nahar Jeetendra', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Neeraj Medical Stores, Balak Chowk, Dhamtari - 493 773\r\n', '', 1, 1),
(826, 54852, 'Mrs. Giri Shail', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Charra Kurud, Dhamtari - 493 662\r\n', '', 1, 1),
(827, 55336, 'Chandrakar Pushpa', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Maa Sharda Service Station, Kurud, Dhamtari - 493 663\r\n', '', 1, 1),
(828, 55337, 'Chandrakar Purroshottam', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Maa Sharda Service Station, Kurud, Dhamtari - 493 663\r\n', '', 1, 1),
(829, 55407, 'Baid Vijay Kumar', 4, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. Prof. G C Baid, Sadar Bazar, Dhamtari - 493 773\r\n', '', 1, 1),
(830, 55774, 'Dr. Mahawar Hira', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Station Road, Dhamtari - 493 773\r\n', '', 1, 1),
(831, 58825, 'Dewangan Kanhaiya', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Navdeep Traders, Raipur Road, Dhamtari - 493 773\r\n', '', 1, 1),
(832, 64647, 'Golecha Manoj', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Navratan Jewellers, Sadar Bazar, Dhamtari - 493 773\r\n', '', 1, 1),
(833, 64648, 'Dev Narendra', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Dev Book Depo, Station Road, Dhamtari - 493 773\r\n', '', 1, 1),
(834, 64649, 'Tiwari L K', 4, 7, 4, 'Life Time', '1970-01-01', '', 'Behind Durga Mandir, Sorid Ward, Dhamtari - 493 773\r\n', '', 1, 1),
(835, 47068, 'Atul Swarnkar', 3, 7, 4, 'Life Time', '1970-01-01', '', 'A - 28, Minocha Colony, Bilaspur - 495 004\r\n', '', 1, 1),
(836, 47069, 'Goswami Rampuri', 3, 7, 4, 'Life Time', '1970-01-01', '', 'Goswami Bhawan, Dipra Para, Near Mama Talab, Bilaspur - 495 004\r\n', '', 1, 1),
(837, 51166, 'Soni Rajendra Kumar', 3, 7, 4, 'Life Time', '1970-01-01', '', 'Soni Gali, Opp. Hotel Ajeet, Telipara, Bilaspur - 495 001\r\n', '', 1, 1),
(838, 56718, 'Dr. Chandra Shekhar Rahalkar', 3, 7, 4, 'Life Time', '1970-01-01', '', 'Endoscopy & Surgical Clinic, Jarahabhata, Bilaspur - 495 001\r\n', '', 1, 1),
(839, 61061, 'Shastri Vijay Kumar', 3, 7, 4, 'Life Time', '1970-01-01', '', 'P.O. Malkharoda, Tahsil . Sakti, Dist. Bilaspur - 495 691\r\n', '', 1, 1),
(840, 64272, 'Naushad Moosa', 3, 7, 4, 'Life Time', '1970-01-01', '', 'The Jain International School, Mungeli Road, Sakti, Bilaspur - 495 111\r\n', '', 1, 1),
(841, 64582, 'Chandrashekhar D P', 3, 7, 4, 'Life Time', '1970-01-01', '', 'The Jain International School, Mungeli Road, Sakti, Bilaspur - 495 111\r\n', '', 1, 1),
(842, 67161, 'Manu Gouraha', 3, 7, 4, 'Life Time', '1970-01-01', '', 'Plot No. 8, Sector - 2, Raj Kishore Nagar, Bilaspur - 495 007\r\n', '', 1, 1),
(843, 69132, 'Dr. Chandra Nath Bajpai', 3, 7, 4, 'Life Time', '1970-01-01', '', '27 - Kholi, Vikas Nagar, Bilaspur - 495 001\r\n', '', 1, 1),
(844, 46263, 'Ahuja Navin', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B - 502, OM Complex, Fafadih Naka, Raipur - 492 009\r\n', '', 1, 1),
(845, 46264, 'Dharmendra Rawal', 6, 7, 4, 'Life Time', '1970-01-01', '', 'State Bank of India, Zonal Office, Raipur - 492 001\r\n', '', 1, 1),
(846, 46265, 'Thakur Balmukund', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Block -D, 5/3, SBI Apartments, Raipur\r\n', '', 1, 1),
(847, 47896, 'Bhandeo Vaibhav', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Behind Balaji Mandir, Anand Nagar, Raipur - 492 001\r\n', '', 1, 1),
(848, 47897, 'Lalit Mohan', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B - 7, Shailendra Nagar, Raipur - 492 001\r\n', '', 1, 1),
(849, 49272, 'Dohare Rohitashwa Chandra', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Rajkumar College, Raipur\r\n', '', 1, 1),
(850, 49486, 'Kothari Ramesh', 6, 7, 4, 'Life Time', '1970-01-01', '', '6/15, Govind Nagar, Beside Tarun Chattisgarh Press, Raipur - 492001\r\n', '', 1, 1),
(851, 49487, 'Ajit Kumar Sur', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Flat No. 1, Vasundhara Sadan, New Shanti Nagar, Raipur - 492 007\r\n', '', 1, 1),
(852, 49488, 'Sharma Amar Nath', 6, 7, 4, 'Life Time', '1970-01-01', '', '12- A, Gulmohar, Sahakari Marg - 2, Choubey Colony, Raipur - 492 001\r\n', '', 1, 1),
(853, 51161, 'Toorray Shailendra', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C - 289, Shailendra Nagar, Raipur - 492 001\r\n', '', 1, 1),
(854, 51162, 'Suresh Kumar Bhawnani', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H.No. 8/216, Raman Mandir, Fafadih Chhoti Line, Raipur - 492 009\r\n', '', 1, 1),
(855, 51163, 'Agrawal Abhishek', 6, 7, 4, 'Life Time', '1970-01-01', '', '39 / 524, Aminpara, Purani Basti, Raipur - 492 001\r\n', '', 1, 1),
(856, 51164, 'Shrivastava Ashok', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Virdi Colony, Raipur - 492 010\r\n', '', 1, 1),
(857, 51165, 'Tanksale Akshat', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 1/4, SBI Apartments, Civil Lines, Raipur - 492 006\r\n', '', 1, 1),
(858, 51482, 'Jhabak Ashok Kumar', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 34, Shailendra Nagar, Raipur - 492 001\r\n', '', 1, 1),
(859, 51550, 'Tiwari Alok Kumar', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H - 10, Vinayaka Vihar, Ring Road No. - 1, Raipur - 491 001\r\n', '', 1, 1),
(860, 53250, 'Jai Prakash Sharma', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C - 17, Sector - 3, Devendra Nagar, Raipur - 492 009\r\n', '', 1, 1),
(861, 53291, 'A V N Ravikanth', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C - 10, Gayatri Nagar, Shankar Nagar, Raipur - 492 007\r\n', '', 1, 1),
(862, 53292, 'Bakshi Vijay', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Neelkanth Niwas, Tatyapara, Raipur - 492 001\r\n', '', 1, 1),
(863, 53843, 'Chhablani Kishor', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Fafadih, Near Ram Mandir, Raipur - 492 001\r\n', '', 1, 1),
(864, 53921, 'Barve Shruti Vivek', 6, 7, 4, 'Life Time', '1970-01-01', '', '2, College Road, Choubey Colony, Raipur - 492 001\r\n', '', 1, 1),
(865, 53922, 'Dr. (Mrs.) Pathak Nabendu', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Behind ashirwad Bhawan, Byron Bazar, Raipur - 492 001\r\n', '', 1, 1),
(866, 53924, 'Dr. Pathak Monika', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Sai Sushrusha Hospital, Behind Aashirwad Bhawan, Raipur - 492 001\r\n', '', 1, 1),
(867, 53925, 'Verma Dilip', 6, 7, 4, 'Life Time', '1970-01-01', '', 'P - 8, Sector - 2, Priya Darsni Nagar, Raipur\r\n', '', 1, 1),
(868, 53926, 'Lambey Rajesh Kumar', 6, 7, 4, 'Life Time', '1970-01-01', '', '16/184, Tatya Para, Raipur - 492 001\r\n', '', 1, 1),
(869, 54098, 'Tiwari Hemlata', 6, 7, 4, 'Life Time', '1970-01-01', '', '54/315, Krishna Nagar, Dangania, Raipur\r\n', '', 1, 1),
(870, 54329, 'Fazal Mahmood Rizvi', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Shop No. 19, Surya Apartments, Padhmedi Naka, Raipur - 492 001\r\n', '', 1, 1),
(871, 54729, 'Moghe Shashank', 6, 7, 4, 'Life Time', '1970-01-01', '', '35, 1st Floor, Gurkul Complex, Kali Badi Chowk, Raipur - 492 001\r\n', '', 1, 1),
(872, 54730, 'Moghe Aparna', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Near Sapre School, Budha Para, Raipur - 492 001\r\n', '', 1, 1),
(873, 55245, 'Joglekar Abhaya R', 6, 7, 4, 'Life Time', '1970-01-01', '', '29, Recreation Ground, Choubey Colony, Raipur - 492 001\r\n', '', 1, 1),
(874, 55246, 'Joglekar Ramdas Y', 6, 7, 4, 'Life Time', '1970-01-01', '', '29, Recreation Ground, Choubey Colony, Raipur - 492 001\r\n', '', 1, 1),
(875, 55247, 'Apte Shubhangi', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 154, M R Colony, Raipur - 492 001\r\n', '', 1, 1),
(876, 55248, 'Apte Sanjay', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 154, M R Colony, Raipur - 492 001\r\n', '', 1, 1),
(877, 55706, 'Dr. Verma Anoop', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Swapnil Nursing Home, Civil Lines, Raipur - 492 001\r\n', '', 1, 1),
(878, 55816, 'Kashyap Mahendra', 6, 7, 4, 'Life Time', '1970-01-01', '', '211 - 2nd Floor, Deshbandhu Complex, Raipur - 492 001\r\n', '', 1, 1),
(879, 56719, 'Sawargaonkar Vibhas W', 6, 7, 4, 'Life Time', '1970-01-01', '', 'A-2, RDA Building, Kali Badi Chowk, Raipur - 492 001\r\n', '', 1, 1),
(880, 57417, 'Dr. Anil Dhar Dubey', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H.No. 9, State Bank Colony, Sunder Nagar, Raipur - 492 010\r\n', '', 1, 1),
(881, 57418, 'Pandey Manoj', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B/10, Shailednra Nagar, Raipur - 492 001\r\n', '', 1, 1),
(882, 57419, 'Rajesh', 6, 7, 4, 'Life Time', '1970-01-01', '', '44/263, Budhapara, Near Karmchari Bhawan, Raipur - 492 001\r\n', '', 1, 1),
(883, 57420, 'Khetan Manish', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Sai Nagar, Fafadih, Raipur - 492 009\r\n', '', 1, 1),
(884, 57421, 'Agrawal Nilesh', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Samriddhi, B - 3, Anupam Nagar, Raipur - 492 001\r\n', '', 1, 1),
(885, 57926, 'Ayodhyawasi Iti', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 100, HCW Township, Ultratech Chemco Ltd., Raipur - 493 195\r\n', '', 1, 1),
(886, 57926, 'Ayodhyawasi Manoj', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 100, HCW Township, Ultratech Chemco Ltd., Raipur - 493 195\r\n', '', 1, 1),
(887, 58837, 'Panigrahi Shakti Prakash', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Indira Chowk, Shyam Nagar, P.O. Ravigram, Raipur - 492 006\r\n', '', 1, 1),
(888, 58838, 'Shukla Naresh', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Near Sub Post Office, Bayron Bazar, Raipur - 492 001\r\n', '', 1, 1),
(889, 59461, 'Pratima Rajiv', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D / 12, Type - 3, Central Excise Colony, Raipur - 491 001\r\n', '', 1, 1),
(890, 59462, 'M Rajiv', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D / 12, Type - 3, Central Excise Colony, Raipur - 491 001\r\n', '', 1, 1),
(891, 59463, 'Sharma Ritambhara', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 6, Pallavi Vihar, Rohinipuram, Raipur - 491 010\r\n', '', 1, 1),
(892, 60006, 'Patnaik Biraj', 6, 7, 4, 'Life Time', '1970-01-01', '', '26, B-5, Tagore Nagar, Next to Vidhayak Hostel, Raipur - 492 001\r\n', '', 1, 1),
(893, 60199, 'Mehta Sanjiv', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 28, Sector - 1, Shankar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(894, 60200, 'Mehta Sandhya', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 28, Sector - 1, Shankar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(895, 61023, 'Mehta Subodh', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 28, Sector - 1, Shankar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(896, 61024, 'Mehta Manisha', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 28, Sector - 1, Shankar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(897, 61085, 'Agarwal Sourabh', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. P D Agrawal, 2nd Floor, Dhillon Complex, Jawahar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(898, 62334, 'Abhishek', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-154, M R Colony, Raipur - 492 001\r\n', '', 1, 1),
(899, 62401, 'Soni Rajesh', 6, 7, 4, 'Life Time', '1970-01-01', '', '10 / 180, Opp. Maheshwari News Agency, Satti Bazar, Raipur - 492 001\r\n', '', 1, 1),
(900, 62673, 'Agrawal Sewashankar', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Jai Prahalad Medical Store, Saraipali - 493 558\r\n', '', 1, 1),
(901, 62934, 'Mehta Sudhir', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 28, Sector - 1, Shankar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(902, 62935, 'Mehta Sangita', 6, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 28, Sector - 1, Shankar Nagar, Raipur - 492 001\r\n', '', 1, 1),
(903, 62936, 'Khare Lokesh', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C - 9, Sector - 1, Avanti Vihar, Raipur\r\n', '', 1, 1),
(904, 62937, 'Khare Priyam', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Tatyapara Chowk, Raipur - 492 001\r\n', '', 1, 1),
(905, 63833, 'Agrawal Piyush', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. Shri. Angira Kr. Agrawal, Neoda Bada, Gudiyari, Raipur - 492 007\r\n', '', 1, 1),
(906, 65011, 'Baid Sweta', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. Arihant Netralaya, Budhapara, Raipur ', '', 1, 1),
(907, 65179, 'Dr. Sanyal Subhashis', 6, 7, 4, 'Life Time', '1970-01-01', '', 'Reader in Mechanical, Wardens Qtr - C, NIT, Raipur - 492 010\r\n', '', 1, 1),
(908, 66104, 'Mrinal Golechha', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 68/69, Shailendra Nagar, Raipur - 492 001\r\n', '', 1, 1),
(909, 66260, 'Maharishi Vivek', 6, 7, 4, 'Life Time', '1970-01-01', '', '326 - C, Vallabh Nagar, Sector - 6, Near ST. Gyaneshwar School, Raipur - 492 001\r\n', '', 1, 1),
(910, 66533, 'Priti Ramniwas', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E - 2, Civil Lines, S.R.P. Chowk, Raipur - 492 001\r\n', '', 1, 1),
(911, 66534, 'Ramniwas', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E - 2, Civil Lines, S.R.P. Chowk, Raipur - 492 001\r\n', '', 1, 1),
(912, 66535, 'Harsh Ramniwas', 6, 6, 4, 'Life Time', '1970-01-01', '', 'E - 2, Civil Lines, S.R.P. Chowk, Raipur - 492 001\r\n', '', 1, 1),
(913, 66784, 'Juneja Ashok', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-1/16, Devendra Nagar, Raipur - 492 001\r\n', '', 1, 1),
(914, 66979, 'Sanjay Sharma', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B - 109, Surya Apartments, Katora Talab, Raipur - 492 001\r\n', '', 1, 1),
(915, 66980, 'Dr. (Mrs.) Smriti Sharma', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B - 109, Surya Apartments, Katora Talab, Raipur - 492 001\r\n', '', 1, 1),
(916, 66981, 'Sinha Sujit Kumar', 6, 7, 4, 'Life Time', '1970-01-01', '', 'G - 5, Vishal Nagar, P.O. Ravigram, Raipur - 492 006\r\n', '', 1, 1),
(917, 67394, 'Megha Niwas', 6, 7, 4, 'Life Time', '1970-01-01', '', 'E - 2, Civil Lines, S.R.P. Chowk, Raipur - 492 001\r\n', '', 1, 1),
(918, 68714, 'Sharma Ramawatar', 6, 7, 4, 'Life Time', '1970-01-01', '', 'B- 14, RDA Colony, Tikrapara, Raipur - 492 001\r\n', '', 1, 1),
(919, 69031, 'Singh Shailendra Kumar', 6, 7, 4, 'Life Time', '1970-01-01', '', 'G - 6, Sector - 1, Avanti Vihar, Raipur - 492 001\r\n', '', 1, 1),
(920, 69196, 'Seema Sharma', 6, 7, 4, 'Life Time', '1970-01-01', '', 'LQ - 12, Science College, Raipur - 492 001\r\n', '', 1, 1),
(921, 69228, 'Ashok Raj Ahuja', 6, 7, 4, 'Life Time', '1970-01-01', '', 'H.No. 20/501, Near Syndicate Bank, Raipur - 492 001\r\n', '', 1, 1),
(922, 69964, 'Dhabalia Vikas', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 442 / 5, Tagore Nagar, Raipur - 492 001\r\n', '', 1, 1),
(923, 69965, 'Dhabalia Kalpana', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 442 / 5, Tagore Nagar, Raipur - 492 001\r\n', '', 1, 1),
(924, 35317, 'Gupta Ramesh', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D - 5, 338, Tagore Nagar, Raipur - 492 001\r\n', '', 1, 1),
(925, 46046, 'Ghosh Sandip Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 7-B, St.No. 23, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(926, 46266, 'Shukla Alok', 2, 7, 4, 'Life Time', '1970-01-01', '', '24 - 32 Bunglow, Bhilai - 490 009\r\n', '', 1, 1),
(927, 47900, 'Mrs. Menon Madhury', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 1 - A, St. No. 9, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(928, 49209, 'Devendra Singh Rathore', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 44, New Adarsh Nagar, Durg - 491 001\r\n', '', 1, 1),
(929, 49662, 'Jain Rajeev', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Block - 3, Plot - 14, Nehru Nagar (East), Bhilai - 490 020\r\n', '', 1, 1),
(930, 51179, 'Raju R Nagare', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 13 - C, St. No. 2, Sector - 2, Bhilai - 490 001\r\n', '', 1, 1),
(931, 52710, 'Dr. Dixit Amit', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Aashirwad, Padmanabhpur, Utai Road, Durg\r\n', '', 1, 1),
(932, 52932, 'Jagadev Sukul', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 3-C, St. No. 1, Sector - 7, Bhilai - 490 006\r\n', '', 1, 1),
(933, 53053, 'Dr. Dave Jayesh Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SM - 20, Padmanabhpur, Durg - 490 001\r\n', '', 1, 1),
(934, 53054, 'Dr. (Mrs.) Dave Rachna', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SM - 20, Padmanabhpur, Durg - 490 001\r\n', '', 1, 1),
(935, 53290, 'Rai Gourav', 2, 7, 4, 'Life Time', '1970-01-01', '', '1/7, Shastri Nagar, Supela, Bhilai - 490 006\r\n', '', 1, 1),
(936, 54938, 'Pandey Jayant Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 10-B, St.No. SPA, Sector - 5, Bhilai - 490 006\r\n', '', 1, 1),
(937, 55077, 'Shrivastava Amit', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qtr. No. 34 - B, St. No. Avenue - C, Sector - 2, Bhilai - 490 001\r\n', '', 1, 1),
(938, 55913, 'Agrawal Kavita', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Village - Berla, Dist . Durg - 491 332\r\n', '', 1, 1),
(939, 57416, 'Yadav Vijay Singh', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Plot No. 11 - A, Umda Road, Dream City, Bhilai - 490 021\r\n', '', 1, 1),
(940, 57524, 'Anil Kumar Agrawal', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Anil Furniture, Link Road, Camp, Bhilai - 490 001\r\n', '', 1, 1),
(941, 58496, 'Deshmukh Dineshwar Kr.', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 15 - C, St. No. 32, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(942, 58497, 'Deshmukh Lal Kanhaiya', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 16 - B, St. No. 15 - B, Sector - 2, Bhilai - 490 006\r\n', '', 1, 1),
(943, 58498, 'Kalmegh Praveen D', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 2 - A, St. No. 8, Sector - 1, Bhilai - 490 001\r\n', '', 1, 1),
(944, 58501, 'G Rajesh Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 2 - A, St. No. 40, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(945, 59375, 'Madharia Girish', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Indira Para, Durg - 490 021\r\n', '', 1, 1),
(946, 59874, 'Pramila Shrivastava', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Near Housing Colony, Kumhari - 490 042, Dist. Durg\r\n', '', 1, 1),
(947, 60021, 'Shukla Vaibhav', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Borsi, Dhanora Road, In Front of Kanti Bhavan, Durg - 491 001\r\n', '', 1, 1),
(948, 60022, 'Verma Om Prakash', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 3 - A, St. No. 27, Sector - 5, Bhilai - 490 001\r\n', '', 1, 1),
(949, 60023, 'Verma Kamlesh Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 3 - C, St. No. 14, Sector - 5, Bhilai - 490 001\r\n', '', 1, 1),
(950, 62110, 'Tripathi P K', 2, 7, 4, 'Life Time', '1970-01-01', '', '43 - A / 6, Nehru Nagar (West), Bhilai - 490 020\r\n', '', 1, 1),
(951, 62111, 'Tripathi Sanjeev', 2, 7, 4, 'Life Time', '1970-01-01', '', '43 - A / 6, Nehru Nagar (West), Bhilai - 490 020\r\n', '', 1, 1),
(952, 63181, 'Dr. Shamsh Pervez', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG - I - 767, Hudco, Bhilai - 490 009\r\n', '', 1, 1),
(953, 63409, 'Dhiraj Shukla', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 15-A, St. No. NPA, Sector - 9, Bhilai - 490 009\r\n', '', 1, 1),
(954, 63410, 'Khushwaha Ajay', 2, 7, 4, 'Life Time', '1970-01-01', '', '54 / 1-A, Maitri Nagar, Bhilai - 490 006\r\n', '', 1, 1),
(955, 63411, 'Deb Pradipta Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 1 - B, St.No. 34, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(956, 63412, 'Sahu R K ', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. Dr. M K Sahu, Azad Chowk, Kasardih, Durg - 491 003\r\n', '', 1, 1),
(957, 63413, 'Shukla Anupama', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 9 - A, St. No. 45, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(958, 63414, 'Shukla Aditya', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 9 - A, St. No. 45, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(959, 63415, 'Shukla Om Prakash', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 9 - A, St. No. 45, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(960, 64581, 'Chatterjee Rana', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 1-B, St. No. 19, Sector - 7, Bhilai - 490 006\r\n', '', 1, 1),
(961, 64852, 'Sanjiv Bhardwaj', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 7 - A, St. No. 40, Sector -5, Bhilai - 490 001\r\n', '', 1, 1),
(962, 66100, 'Pratik Agrawal', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - II - 32, Old Borsi, Durg - 491 001\r\n', '', 1, 1),
(963, 66623, 'Ashok Kumar Sahu', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 1-A, St. No. 21, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(964, 66740, 'Gupta Ravinder', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Contractors Colony, Supela, Sirsa Road, Bhilai - 490 023\r\n', '', 1, 1),
(965, 67185, 'Vivek Agrawal', 2, 7, 4, 'Life Time', '1970-01-01', '', '39/12, Nehru Nagar (West), Bhilai - 490 020\r\n', '', 1, 1),
(966, 67567, 'M Prem Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 1 - C, Cross Street - 4, Hospital Sector, Bhilai - 490 009\r\n', '', 1, 1),
(967, 68141, 'R . Anil Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 4 - A, St. No. 1, Sector -10, Bhilai - 490 006\r\n', '', 1, 1),
(968, 69158, 'Tushar Waghela', 2, 7, 4, 'Life Time', '1970-01-01', '', 'N - 1, Adarsh Nagar, Durg - 491 001\r\n', '', 1, 1),
(969, 69959, 'Rao P Tata', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 5 - F, St. No. Avenue - D, Zone - II, Khursipar, Bhilai\r\n', '', 1, 1),
(970, 69960, 'Sanu Sewak Ram', 2, 7, 4, 'Life Time', '1970-01-01', '', 'St. No. 1, Near Sheetla Temple, Deepak Nagar, Durg\r\n', '', 1, 1),
(971, 69961, 'Mehta Pankaj', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 6 - A, St. No. 40, Sector - 10, Bhilai - 490 006\r\n', '', 1, 1),
(972, 69962, 'Tiwari Akhilesh', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 5 - A, St. No. 5, Sector - 9, Bhilai - 490 009\r\n', '', 1, 1),
(973, 69963, 'Kotturi Subramanyam', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 4 - B, St. No. 26, Sector - 9, Bhilai - 490 009\r\n', '', 1, 1),
(974, 70196, 'Shukla Sanjeev', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 106 - A, Ruabandha Sector (HSCL Colony), Bhilai - 490 006\r\n', '', 1, 1),
(975, 29821, 'Santosh Kasar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'M - 32, Tamer Para, Durg - 491 001\r\n', '', 1, 1),
(976, 29822, 'Singh Usha', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C/o. D N Sharma, Zilla Saksharta Samiti, Durg - 491 001\r\n', '', 1, 1),
(977, 31647, 'Verma Om Prakash', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Village - Rampur, P.O. Kusmi, Block - Berla, Dist. Durg\r\n', '', 1, 1),
(978, 31648, 'Khapre Prakash Waman', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG - I - 528, Hudco, Bhilai - 490 009\r\n', '', 1, 1),
(979, 35318, 'Patel Prem Shankar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'A - 2 / 8, SBI Colony, Sector - 8, Bhilai - 490 006\r\n', '', 1, 1),
(980, 37387, 'Dr. Surya Prakash Ambika', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HIG - 43, Padmanabhpur, Durg - 491 004\r\n', '', 1, 1),
(981, 40981, 'Kosare Gopendra Singh', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Shop No - 720, C - Market, Sector - 6, Bhilai - 490 006\r\n', '', 1, 1),
(982, 44160, 'Jhamb Dhariya', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MBISPCO - 94, Industrial Estate, Bhilai - 490 026\r\n', '', 1, 1),
(983, 45422, 'Khan Salim', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 12 - A, L - Pocket, Maroda Sector, Bhilai - 490 006\r\n', '', 1, 1),
(984, 45423, 'M Ajmer Khan', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 274 - H, Risali Sector, Bhilai - 490 006\r\n', '', 1, 1),
(985, 45424, 'Deshmukh Arjun Singh', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 26 - B, K - Pocket, Maroda Sector, Bhilai - 490 006\r\n', '', 1, 1),
(986, 45425, 'Chakole Santosh', 2, 7, 4, 'Life Time', '1970-01-01', '', '39 3, Nehru Nagar (West), Bhilai - 490 020\r\n', '', 1, 1),
(987, 45426, 'Bansal Rajneesh Kumar', 2, 7, 4, 'Life Time', '1970-01-01', '', 'D P Bansal Comm. Co. Pvt. Ltd., P.O. Khursipar, G E Road, Bhilai - 490 011\r\n', '', 1, 1),
(988, 45427, 'Krishna Ravi', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 10 - B, St. No. SPA, Sector - 5, Bhilai - 490 006\r\n', '', 1, 1),
(989, 45428, 'Murty K V Ramana', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 14 - B, St. No. 17, Sector - 7, Bhilai - 490 006\r\n', '', 1, 1),
(990, 45429, 'Singh Amreek', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Qr. No. 217 - C, St. No. 19, Smriti Nagar, Bhilai - 490 020\r\n', '', 1, 1),
(991, 46046, 'GHOSH SANDIP KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 7/B, STREET 23, SECTOR 10, BHILAI 490 006, \r\n', '', 1, 1),
(992, 47900, 'MRS MENON   MADHURY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 1A, STREET 9, SECTOR 10,, BHILAI 490 006\r\n', '', 1, 1),
(993, 49209, 'DEVENDRA SINGH RATHORE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 44, NEW ADARSH NAGAR, DURG 491 001, \r\n', '', 1, 1),
(994, 49662, 'JAIN     RAJEEV', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 3, PLOT 14,, NEHRU NAGAR (E), DURG\r\n', '', 1, 1),
(995, 51179, 'NAGARE RAJU R', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 13C, STREET 2,, SECTOR 2, , BHILAI 490 001\r\n', '', 1, 1),
(996, 52710, 'DR DIXIT AMIT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'AASHIRWAD PADMANABHPUR, UTAI ROAD, DURG\r\n', '', 1, 1),
(997, 52932, 'JAGDEV SUKUL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 3-C, STREET NO 1, SECTOR 7, BHILAI, 490 006\r\n', '', 1, 1),
(998, 53053, 'DR  DAVE    JAYESH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SM 20, PADMANABHPUR, DURG 490 001, \r\n', '', 1, 1),
(999, 53054, 'DR (MRS) DAVE  RACHNA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SM 20, PADMANABHPUR, DURG 490 001, \r\n', '', 1, 1),
(1000, 53290, 'RAI GOURAV', 2, 7, 4, 'Life Time', '1970-01-01', '', '1/7SHASTRI NAGAR, SUPELA BHILAI, DURG 490 006\r\n', '', 1, 1),
(1001, 54938, 'PANDEY JAYANT KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', '10/B STREET NPA, SECTOR 5, BHILAI 490 006\r\n', '', 1, 1),
(1002, 55077, 'SHRIVASTAVA    AMIT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 34-B, STREET, AVENUE ''C'', SECTOR 2, BHILAI 490 001\r\n', '', 1, 1),
(1003, 55913, 'MS AGRAWAL KAVITA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'VILL BERLA, DURG 491 332, \r\n', '', 1, 1),
(1004, 57524, 'ANIL KUMAR AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'ANIL FURNITURE, LINK ROAD CAMP,BHILAI, DURG 490 001\r\n', '', 1, 1),
(1005, 58496, 'DESHMUKH  DINESHWAR KR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR 15/C, STREET 32, SECTOR 10, BHILAI NAGAR, DURG 490 006\r\n', '', 1, 1),
(1006, 58497, 'DESHMUKH LAL KANHAIYA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR B, BLOCK 16 ST. 15/8, SECTOR 2, BHILAINAGAR, DURG 490 006\r\n', '', 1, 1),
(1007, 58498, 'KALMEGH   PRAVEEN D', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 2-A, STREET NO 8, SECTOR 1, BHILAI 490 001\r\n', '', 1, 1),
(1008, 58501, 'G RAJESH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 2-A, STREET 40,, SECTOR 10,, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1009, 59375, 'MADHARIA    GIRISH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'INDIRA PARA, BHILAINAGAR 490 021, DURG\r\n', '', 1, 1),
(1010, 60021, 'SHUKLA   VAIBHAV', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BORSI DHANORA ROAD,, I/F OF KANTI BHAVAN, 491 001\r\n', '', 1, 1),
(1011, 60022, 'VERMA     OMPRAKASH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 3-A, STREET 27, SECTOR 5, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1012, 60023, 'VERMA    KAMLESH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 3-C, STREET 14, SECTOR 5, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1013, 62110, 'TRIPATHI     P   K', 2, 7, 4, 'Life Time', '1970-01-01', '', '43-A/6, NEHRU NAGAR (W), BHILAI 490 020, \r\n', '', 1, 1),
(1014, 62111, 'TRIPATHI   SANJEEV', 2, 7, 4, 'Life Time', '1970-01-01', '', '43-A/6, NEHRU NAGAR (E), BHILAI, \r\n', '', 1, 1),
(1015, 63181, 'DR SHAMSH PERVEZ', 2, 7, 4, 'Life Time', '1970-01-01', '', '767, MIG-I, HUDCO,, BHILAI NAGAR,, DURG 490 009\r\n', '', 1, 1),
(1016, 63409, 'DHIRAJ  SHUKLA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 15-A, NPA SECTOR 9, BHILAINAGAR 490 006, DURG\r\n', '', 1, 1),
(1017, 63410, 'KHUSHWAHA   AJAY', 2, 7, 4, 'Life Time', '1970-01-01', '', '54/1A, MAITRY NAGAR, BHILAINAGAR 490 006, DURG\r\n', '', 1, 1),
(1018, 63411, 'DEB    PRADIPTA KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 1-B, STREET 34, SECTOR 10,, BHILAI 490 006\r\n', '', 1, 1),
(1019, 63412, 'SAHU     R    K', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C/O  DR  M  K  SAHU, AZAD CHOWK, KASARIDIH, DURG  491  003\r\n', '', 1, 1),
(1020, 63413, 'MISS  SHUKLA   ANUPAMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 9-A, STREET 45,, SECTOR  10, BHILAI, DURG  490 006\r\n', '', 1, 1),
(1021, 63414, 'SHUKLA    ADITYA   KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 9-A, STREET 45,, SECTOR  10, BHILAI, DURG  490 006\r\n', '', 1, 1),
(1022, 63415, 'SHUKLA    OM PRAKASH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 9-A, STREET 45,, SECTOR  10, BHILAI, DURG  490 006\r\n', '', 1, 1),
(1023, 64581, 'CHATTERJEE   RANA', 2, 7, 4, 'Life Time', '1970-01-01', '', '1/B, STREET 19, SECTOR 7, BHILAI NAGAR 490 006, \r\n', '', 1, 1),
(1024, 64582, 'CHANDRASHEKAR  D  P', 3, 7, 4, 'Life Time', '1970-01-01', '', 'THE JAIN INTERNATIONAL, SCHOOL, MUNGELI ROAD,, PO SAKRI, BILASPUR\r\n', '', 1, 1),
(1025, 64852, 'SANJIV BHARDWAJ', 2, 7, 4, 'Life Time', '1970-01-01', '', '7A STREET 40 SECTOR 5, BHILAI, 490 006\r\n', '', 1, 1),
(1026, 66100, 'PRATIK AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 2/32, OLD BORSI, DURG 491001, \r\n', '', 1, 1),
(1027, 66623, 'ASHOK KUMAR SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', '1A, STREET-21, SECTOR 10, BHILAI 490 006, \r\n', '', 1, 1),
(1028, 66740, 'GUPTA RAVINDER', 2, 7, 4, 'Life Time', '1970-01-01', '', 'CONTRACTORS COLONY,, SUPELA SIRSA ROAD,, BHILAI 490 023\r\n', '', 1, 1),
(1029, 67185, 'VIVEK AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', '39/12, NEHRU NAGAR WEST, BHILAI, \r\n', '', 1, 1),
(1030, 67567, 'M PREM KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', '1C CROSS STREET 4, HOSPITAL SECTOR, BHILAI 490 009\r\n', '', 1, 1),
(1031, 68141, 'R ANIL KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR-4A, STREET-1, SEC-10, BHILAI, DURG - 490006, \r\n', '', 1, 1),
(1032, 69158, 'TUSHAR WAGHELA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'N-1, ADARSH NAGAR,, DURG 491 001, \r\n', '', 1, 1),
(1033, 69959, 'RAO   P  TATA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 5/F, STREET  AVD, ZONE-II, KHURSIPAR, BHILAI, DURG\r\n', '', 1, 1),
(1034, 69960, 'SANU  SEWAK RAM', 2, 7, 4, 'Life Time', '1970-01-01', '', 'ST NO 1, NEAR SHEETLA, TEMPLE DEEPAK NAGAR,, DURG\r\n', '', 1, 1),
(1035, 69961, 'MEHTA    PANKAJ', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 6/A, STREET NO 40, SECTOR 10, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1036, 69962, 'TIWARI     AKHILESH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 5-A, STREET NO 5, SECTOR 9,, BHILAI 490 009\r\n', '', 1, 1),
(1037, 69963, 'KOTTURI  SUBRAMANYAM', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 4-B STREET NO -26, SECTOR - 9 BHILAI -490009, \r\n', '', 1, 1),
(1038, 69964, 'DHABALIA   VIKAS', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-442/5, TAGORE NAGAR,, RAIPUR 492 001, \r\n', '', 1, 1),
(1039, 69965, 'MRS DHABALIA   KALPANA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'D-442/5, TAGORE NAGAR,, RAIPUR 492 001, \r\n', '', 1, 1),
(1040, 70196, 'SHUKLA SANJEEV', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR.106-A,RUABANDHA SECTOR, (H.S.C.L), BHILAI,, DURG 490 006\r\n', '', 1, 1),
(1041, 70337, 'DUSHYANT JOSHI', 2, 7, 4, 'Life Time', '1970-01-01', '', '5 BUILDING DURG, , 491 001\r\n', '', 1, 1),
(1042, 71656, 'SANJEEV BEOHAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND DIST INDUSTRIES-, CENTER, MALVIYA NAGAR,, DURG 490 001\r\n', '', 1, 1),
(1043, 71657, 'MRS ALKA  BEOHAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND DIST INDUSTRIES-, CENTER, MALVIYA NAGAR,, DURG 490 001\r\n', '', 1, 1),
(1044, 73819, 'DR(MS) JAISHRI GOPINATH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 7/A , ST NO 2, SEC-2, BHILAI, DURG 490 001\r\n', '', 1, 1),
(1045, 74141, 'CHANDRAKAR  MANISH', 2, 7, 4, 'Life Time', '1970-01-01', '', '143-B, RUABANDHA SECTOR, BHILAI 490 006, \r\n', '', 1, 1),
(1046, 74687, 'MITRA SUVENDU KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR-2A, STRETE 70, SECTOR 6, BHILAI 490 006, DURG\r\n', '', 1, 1),
(1047, 74688, 'TAUNK  RUPESH', 6, 7, 4, 'Life Time', '1970-01-01', '', 'VIJAY SOAP STREET,, FAFADIH, RAIPUR 492 001, \r\n', '', 1, 1),
(1048, 74689, 'TIWARY  SHIKHAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'A-21 / CROSS STREET 6, SMRITINAGAR, BHILAI 490 020\r\n', '', 1, 1),
(1049, 74690, 'DILLIWAR JAGDISH RAM', 2, 7, 4, 'Life Time', '1970-01-01', '', 'AT GARADIH PO KANAKOT, -AH PATAN DT DURG 491221, \r\n', '', 1, 1),
(1050, 74691, 'SANJAY DWIVEDI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-1, 158, AMDINAGAR, BHILAI 490 009, \r\n', '', 1, 1),
(1051, 74761, 'DR KEKRE  ANANT', 2, 7, 4, 'Life Time', '1970-01-01', '', '17-A, RUSSIAN COMPLEX, SECTOR 7,, BHILAI 490 006\r\n', '', 1, 1),
(1052, 74762, 'DR MEENAKSHI KEKRE', 2, 7, 4, 'Life Time', '1970-01-01', '', '17-A, RUSSIAN COMPLEX, SECTOR 7,, BHILAI 490 006\r\n', '', 1, 1),
(1053, 74763, 'MISS SUMEDHA KEKRE', 2, 7, 4, 'Life Time', '1970-01-01', '', '17-A, RUSSIAN COMPLEX, SECTOR 7, BHILAI 490 006, \r\n', '', 1, 1),
(1054, 76261, 'ABI BANI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HIG-1-46, BORSI EXTENSION, DURG 491 001, \r\n', '', 1, 1),
(1055, 77089, 'DHARKAR   RAJESH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MANUSMRITY 275, MIG II, HUDCO BHILAI 490 006, DURG\r\n', '', 1, 1),
(1056, 77454, 'CHELAK  PILA LAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'VILL KHAMHARIYA, PO JEWARA SIRSA, DURG\r\n', '', 1, 1),
(1057, 78249, 'YOGENDRA PANDEY', 2, 7, 4, 'Life Time', '1970-01-01', '', '40-2, MAITRI NAGAR,RISALI, BHILAINAGAR 490 006, \r\n', '', 1, 1),
(1058, 79247, 'CHANDRAKAR PARICHAY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'STREET NO 1, KASARIDIH, DURG\r\n', '', 1, 1),
(1059, 79248, 'SENGUPTA SUDEEP KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 383 TYPE MIG 2, AMDINAGAR HUDCO BHILAI, NAGAR DURG 490 009\r\n', '', 1, 1),
(1060, 79407, 'DR J S BAGHEL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO F-1 GAD QR, UTAI ROAD OLD CIVIL LINE, DURG 491 001\r\n', '', 1, 1),
(1061, 79893, 'NAND KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK-1/A,STREET NO.5, SECTOR -10,  BHILAI, 490 006\r\n', '', 1, 1);
INSERT INTO `member` (`Member_Id`, `Membership_No`, `Member_Name`, `Unit_Id`, `Designation_Id`, `MID`, `Membership_Type`, `Membership_Date`, `Contact_No`, `Address`, `Member_Detail`, `Member_Type`, `Member_Status`) VALUES
(1062, 80326, 'N GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', '7 NEW MOH, SECTOR - 4, BHILAI 490 001\r\n', '', 1, 1),
(1063, 80537, 'SUBBA RAO PITCHIKA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR 9B STR -3, SECTOR 9 BHILAI 490 006, \r\n', '', 1, 1),
(1064, 80587, 'MAHENDRA PAL SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C/O VIDYA COMPUTER, SANTRA BADI QR NO 166, DURG 491 001\r\n', '', 1, 1),
(1065, 81934, 'MISS SURABHI KEKRE', 2, 7, 4, 'Life Time', '1970-01-01', '', '17-A, RUSSIAN COMPLEX,, SECTOR 7,, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1066, 81935, 'DR ASHA MISHRA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 5-B, STREET 19, SECTOR 4, , BHILAINAGAR 490 001\r\n', '', 1, 1),
(1067, 82095, 'PRAMOD KUMAR UPADHYAY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SANGAM DAIRY & RESTURANT, SHOP NO 120-121,SMRITINGR, BHILAI 490 020\r\n', '', 1, 1),
(1068, 82597, 'PARTH SHUKLA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'R K PURAM OPP KANTI, BHAWAN DHANORA ROAD, BORSI DURG\r\n', '', 1, 1),
(1069, 84230, 'MISS PARUL SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 12-A, STREET NO 16,, SECTOR 10, BHILAI 490 006, DURG\r\n', '', 1, 1),
(1070, 86444, 'VIKAS MOHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', '166-A STREET-30, SMRITI, NAGAR, BHILAI, DISTT DURG, 490 020\r\n', '', 1, 1),
(1071, 86839, 'PRAVESH TANDON', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 154 PADMNABHPUR, DURG 490 001, \r\n', '', 1, 1),
(1072, 87221, 'MUJEEB AHMAD JAFRI', 2, 7, 4, 'Life Time', '1970-01-01', '', '224 MOHAN NAGAR DURG, , \r\n', '', 1, 1),
(1073, 87642, 'TRIPATHI  DURGESH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 9-A, STREET-45,, SECTOR 10, BHILAI NAGAR, DURG 490 006\r\n', '', 1, 1),
(1074, 87648, 'TIKARIHA HARENDRA KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 13/D, ST. NO 31,, SECTOR 4,, BHILAINAGAR 490 001\r\n', '', 1, 1),
(1075, 87649, 'BINITOSH BALA', 2, 7, 4, 'Life Time', '1970-01-01', '', '5-A, D-POCKET,, MARODA SECTOR,, BHILAI 490 006\r\n', '', 1, 1),
(1076, 87650, 'MISHRA  DINESH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG- I-865, HUDCO, BHILAI NAGAR, \r\n', '', 1, 1),
(1077, 87669, 'AMIT CHANDRAKER', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H4 KOLIHAPUR, DURG 491 001, \r\n', '', 1, 1),
(1078, 87670, 'RAJDEEP GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', '59/3 SAKAR PADMANABHPUR, DURG 491 001, \r\n', '', 1, 1),
(1079, 88169, 'CHANDRAKAR SANAHYA', 2, 7, 4, 'Life Time', '1970-01-01', '', '\r\nQTR 7B STREET 32, SECTOR-8 BHILAI, BHILAI 490 009\r\n', '', 1, 1),
(1080, 88197, 'MULKUNTWAR   SANJAY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'K 5-133, ZONE-2,, KHURSIPAR, SECTOR 11,, BHILAI 490 011\r\n', '', 1, 1),
(1081, 88702, 'DR SANKALP DAS', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 1 B RUABANDHA, SECTOR B S P, BHILAI\r\n', '', 1, 1),
(1082, 88710, 'SANJAY KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'JAIN BHAWAN ROAD, BHILAI - 3, BHILAI 490 021\r\n', '', 1, 1),
(1083, 89047, 'ANIL KUMAR PAUL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 332/38,STREET-2, NEAR, GREEN ATTA CHHAKKI, KELA-, BADI, DURG 491 001\r\n', '', 1, 1),
(1084, 89048, 'ANWARUL HASAN KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BEH SHIV BAJRANG TEMPLE, NEW BUSSTAND RD. PACHARI, PARA, DURG 491 001\r\n', '', 1, 1),
(1085, 89049, 'SHAHID KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HOTEL NEW INDIA, STATION ROAD,, DURG 491 001\r\n', '', 1, 1),
(1086, 90438, 'SUDARSH SHARMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'RAJNIKANT VILLA HOUSE, A1 ST 5 ASHISH NGR WEST, RISALI BHILAI 490 006\r\n', '', 1, 1),
(1087, 90533, 'DR SANDEEP CHANDRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'KILLA MANDIR CHOWK, TAMER PARA DURG, 491001\r\n', '', 1, 1),
(1088, 90567, 'ANKIT KARAMCHANDANI', 2, 7, 4, 'Life Time', '1970-01-01', '', '4A AVENUE A SECTOR -10, BHILAI, \r\n', '', 1, 1),
(1089, 91754, 'SANJAY AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 28 GAYA NAGAR, DURG, \r\n', '', 1, 1),
(1090, 92725, 'EADEZHATH MURLI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK-8/A, STREET NO 45,, SECTOR 10,, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1091, 92726, 'MISS LATA GAURKHEDE', 3, 7, 4, 'Life Time', '1970-01-01', '', '9/967, NEAR INCOME TAX, OFFICE BHARTIYA NAGAR,, BILASPUR 495 001\r\n', '', 1, 1),
(1092, 92727, 'SHEO SHARAN DHAR BADGAIYA', 3, 7, 4, 'Life Time', '1970-01-01', '', 'A 16, SONGANGA COLONY,, SEEPAT ROAD,, BILASPUR 495 001\r\n', '', 1, 1),
(1093, 92728, 'NARHARI SAHU', 6, 7, 4, 'Life Time', '1970-01-01', '', 'SR MIG 690, SECTOR 2, PT. D D UPADHYAY NAGAR,, RAIPUR 492 010\r\n', '', 1, 1),
(1094, 92729, 'ABDUL RIZWAN AHMED', 2, 7, 4, 'Life Time', '1970-01-01', '', 'RIZWAN MANZIL, KARBALA ROAD,, BILASPUR 495 001\r\n', '', 1, 1),
(1095, 92730, 'LAVBIR KUMAR GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'RAMGOPAL TIWARI MARG,, KODWA BADA MUNGELI,, BILASPUR\r\n', '', 1, 1),
(1096, 92731, 'DEEPTI BANERJEE', 6, 7, 4, 'Life Time', '1970-01-01', '', 'MIG 40, SECTOR 4,, PT. D D U NAGAR, DANGNIYA, RAIPUR 492 010\r\n', '', 1, 1),
(1097, 92732, 'ASHISH KUMAR KHANDELWAL', 3, 7, 4, 'Life Time', '1970-01-01', '', '17/222,BEHIND GEETA HOTEL, OLD BUS STAND TELE EX. RD, BILASPUR 495001\r\n', '', 1, 1),
(1098, 92733, 'ADITYA CHAKRAVARTY', 3, 7, 4, 'Life Time', '1970-01-01', '', '32/335,SAMTA VIHAR COLONY, TIKRAPARA,, BILASPUR 495 004\r\n', '', 1, 1),
(1099, 92734, 'PIYUSH PANDEY', 3, 7, 4, 'Life Time', '1970-01-01', '', 'BEH LUTHRA HOSPITAL, NEHRU NAGAR,, BILASPUR 495 001\r\n', '', 1, 1),
(1100, 93766, 'FANISH DHAR DWIVEDI', 2, 7, 4, 'Life Time', '1970-01-01', '', '37-B, STREET 36, SECTOR 4, PO BHILAI, DURG 490 001\r\n', '', 1, 1),
(1101, 93767, 'YADAV    RAMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'OPP OJASWEE APARTMENT, MAITRI NAGAR, RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1102, 93825, 'AKSHAYA KUMAR NAYAK', 2, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT-32 ST-3H PRAGATI NGR, RISALI BHILAI 490 006, \r\n', '', 1, 1),
(1103, 94340, 'DHAIRYA CHANDRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 7B STREET 32 SEC-8, BHILAI DISTT DURG, \r\n', '', 1, 1),
(1104, 94398, 'VINAY PEETHAMBARAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 19/A STREET 30, SECTOR 10 BHILAI NAGAR, DURG\r\n', '', 1, 1),
(1105, 94422, 'RAJESH SAXENA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 83 STREET 15 SMRITI, NAGAR BHILAI DIST DURG, 490 020\r\n', '', 1, 1),
(1106, 95489, 'D K GAUTAM', 2, 7, 4, 'Life Time', '1970-01-01', '', '16A STREET -25, SECTOR 10, BHILAI 490 006\r\n', '', 1, 1),
(1107, 95658, 'RAVI KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BK-12, STREET-19, SECT-09, BHILAI 490 006, \r\n', '', 1, 1),
(1108, 95659, 'MRS SANDHYA MALHOTRA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BK-12, STREET-19, SECT-09, BHILAI 490 006, \r\n', '', 1, 1),
(1109, 96000, 'RAJIV KUMAR TEWARY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C-1/86, SURYA VIHAR, JUNWANI,, BHILAI 490 020\r\n', '', 1, 1),
(1110, 96001, 'DR SHIVADEO UPADHYAYA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SM-5, MUKUT NAGAR,, TITURDIH,, DURG 491 001\r\n', '', 1, 1),
(1111, 96186, 'NARENDRA JAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'GAYATRI MANDIR WARD, NR GURUDWARA STN RD, DURG 491 001\r\n', '', 1, 1),
(1112, 96374, 'NEELABH GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'JAIN MANDIR ROAD, BANIYAPARA, DURG 491 001\r\n', '', 1, 1),
(1113, 96375, 'NISHTHA GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'JAIN MANDIR ROAD, BANIYAPARA, DURG 491 001\r\n', '', 1, 1),
(1114, 96556, 'KIRAN KUMAR LYSETTI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'KHNO 300/68 PRAKASH KUNJ, PANCHSHEEL NAGAR E, CHARODA 490 025 DURG\r\n', '', 1, 1),
(1115, 96800, 'RATNA TANDON', 2, 7, 4, 'Life Time', '1970-01-01', '', '10B/SVA/2LA, NANDINI MINES TOWNSHIP, DURG 490 036\r\n', '', 1, 1),
(1116, 97437, 'SACHIN SATHE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'STREET 1/1A ZONE 1 PLOT #, 42 NEW ADARSH NAGAR BORSI, ROAD DURG\r\n', '', 1, 1),
(1117, 97449, 'SUBHASH DAS', 2, 7, 4, 'Life Time', '1970-01-01', '', 'VILL SUNDRA, DT. PO RAJNANDGAON, RAJNANDGAON 491 441\r\n', '', 1, 1),
(1118, 97605, 'SHRIKANT SAHASRABUDDHE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SHRIKRISHNA NILAYAM, MIG-92 PADMANABHPUR DURG, \r\n', '', 1, 1),
(1119, 98179, 'RAKESH DHODY', 2, 7, 4, 'Life Time', '1970-01-01', '', '115 NEW CIVIC CENTRE, BHILAI, \r\n', '', 1, 1),
(1120, 98296, 'SANDEEP JHA', 2, 7, 4, 'Life Time', '1970-01-01', '', '13,32, BUNGLOWS,, SECTOR 8,, BHILAI\r\n', '', 1, 1),
(1121, 98297, 'VIVEK TIWARY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'A-21, CROSS STREET-6, SMRITINAGAR,, BHILAI 490 020\r\n', '', 1, 1),
(1122, 98298, 'PRAVEEN RAI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'A-41, VIDYA VIHAR, NEHRU NAGAR WEST, BHILAI 490 026\r\n', '', 1, 1),
(1123, 98299, 'SAHU  JANAK LAL', 2, 7, 4, 'Life Time', '1970-01-01', '', '3C/11/05, BHILAI, \r\n', '', 1, 1),
(1124, 98535, 'MANORAMA SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', '4A KHURSHIPAR ZONE 3, (SARAK1)BHILAI NAGAR DURG, BHILAI 490012\r\n', '', 1, 1),
(1125, 92653, 'SANDEEP JAISWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 4/A, ST-72, SECTOR 6, BHILAINAGAR,, DURG\r\n', '', 1, 1),
(1126, 98924, 'P K SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 12A STREET 16, SECTOR 1- BHILAI DT DURG, 490 006\r\n', '', 1, 1),
(1127, 99284, 'RAM BALI SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK NO 15-D,, STREET NO 12, SECTOR 2, BHILAI 490 006\r\n', '', 1, 1),
(1128, 99285, 'SAHU   PREMNARAYAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK NO 25, RNO  C, STREET NPA SECTOR 5-B,, BHILAI 490 006\r\n', '', 1, 1),
(1129, 99408, 'JAINENDRA KUMAR VERMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'VILL JHARMOKHALI, PO RANITARAI, DURG 491 223\r\n', '', 1, 1),
(1130, 100191, 'BHUVANESHWAR CHANDRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 4-B, STREET NO 3, SECTOR 1,, BHILAI 490 001\r\n', '', 1, 1),
(1131, 100192, 'PRAHLAD TAMADA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MAA RAJRAJESHWARI LAB, CAMP-1,WARD 22, PO SUPELA, BHILAI 490 023\r\n', '', 1, 1),
(1132, 100193, 'RITAM LAL SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO6-B, STREET 24, SECTOR 4, BHILAI NAGAR,, DURG 490 001\r\n', '', 1, 1),
(1133, 100230, 'DHARMENDRA KUMAR JAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'RELIANCE TRANSPORT, JAIN BHAWAN RD BHILAI 3, DURG 490021\r\n', '', 1, 1),
(1134, 100260, 'ABHIJEET KR SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'WARD 13 SAHUPARA, RAM NAGAR SUPELA, BHILAI 490 023\r\n', '', 1, 1),
(1135, 100261, 'NAVIN KUMAR SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'WARD 13 SAHUPARA, RAM NAGAR SUPELA, BHILAI 490 023\r\n', '', 1, 1),
(1136, 100628, 'KAPIL KUMAR NAGWANSHI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MUSKAN SADBHAVNA CHOWK, KOHKA BHILAI DIST DURG, \r\n', '', 1, 1),
(1137, 100791, 'RAJAN PATIL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-I-316 AMDI NAGAR, HUDCO BHILAI DIST DURG, BHILAI 490006\r\n', '', 1, 1),
(1138, 100979, 'AVINASHCHANDRASHEL SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'NEW ADARSH NAGAR,POTYA, ROAD, SAED MOTHICT TRADE, DURG\r\n', '', 1, 1),
(1139, 101150, 'AMIY KUMAR KATAKWAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 62 PLOT 04 NEHRU, NAGAR WEST, BHILAI\r\n', '', 1, 1),
(1140, 102068, 'NILESH JAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-68, CGHB COLONY, BEH, GURUDWARA, TATIBANDH, RAIPUR 492 001\r\n', '', 1, 1),
(1141, 102071, 'AVANISH DUBEY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 9 C STREET 1-A, SECTOR 10 BHILAI, \r\n', '', 1, 1),
(1142, 102740, 'KAPIL SINGH VERMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'WARD NO 35 AZAD WARD, GANJ PARA DURG, DURG 491 001\r\n', '', 1, 1),
(1143, 102817, 'AJAY KUMAR RATHOD', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 220/25, GAYATRI MANDIR WARD, DURG 491 001\r\n', '', 1, 1),
(1144, 103110, 'DR SAURABH CHAUDHARY', 2, 7, 4, 'Life Time', '1970-01-01', '', '14-B STREET 25, SECTOR 10 BHILAI, 490 006\r\n', '', 1, 1),
(1145, 103285, 'ABHILASH GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', '1F STREET 50, SECTOR 8 BHILAI, \r\n', '', 1, 1),
(1146, 103323, 'SHABANAM SHWETA', 2, 7, 4, 'Life Time', '1970-01-01', '', '6-A, AVENUE-B, SECTOR -2, BHILAI 490 001, \r\n', '', 1, 1),
(1147, 103324, 'SUMIT KUMAR SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', '6-A, AVENUE-B, SECTOR -2, BHILAI 490 001, \r\n', '', 1, 1),
(1148, 103582, 'JYOTI RANJAN MOHANTY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SAI KRIPA STREET 2C, PRAGATINAGAR RISALI, BHILAI\r\n', '', 1, 1),
(1149, 103649, 'JAGREET I', 2, 7, 4, 'Life Time', '1970-01-01', '', '3/D ST 41 SECTOR 8, BHILAI DURG 490 006, \r\n', '', 1, 1),
(1150, 104098, 'PARASOON AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 25 ST NO 2A ZONE 1, NEW ADARSH NAGAR, DURG 491 001\r\n', '', 1, 1),
(1151, 104449, 'DR KHAGESHWAR SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR ROHINIPURAM GATE, DANGANIYA, RAIPUR 492 010\r\n', '', 1, 1),
(1152, 104983, 'LUXMAN KUMAR CHANDRAKER', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 189 STATION ROAD, NR MOHAN NAGAR POLICE ST, DURG 491 001\r\n', '', 1, 1),
(1153, 104984, 'DR SHAILJA CHANDRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 309 SANTRA BADI, DURG 491 001, \r\n', '', 1, 1),
(1154, 105034, 'CHINMOY KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT 301, KALPMUKTA APTS., AWADHPURI RISALI,, BHILAI 490 006\r\n', '', 1, 1),
(1155, 105035, 'MANOJ SHRIVASTAVA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 9-A (P), STREET 16, SECTOR 02, BHILAI 490 001\r\n', '', 1, 1),
(1156, 105218, 'ATUL KAMLE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H I G I/498, NEW BORSI EXTN, DURG 491 001\r\n', '', 1, 1),
(1157, 105435, 'VIKAS SHRIVASTAVA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO D 13 CHANDRA COLONY, BASANTPUR ROAD, RAJNANDGAON 491441\r\n', '', 1, 1),
(1158, 105440, 'KESARI VERMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'LOGI SOFT SOLUTIONS, B/S ANKIT PALACE DANGANIA, RAIPUR 492010\r\n', '', 1, 1),
(1159, 105442, 'D K THAWAIT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HD 162 PHASE III, KABIR NAGAR, RAIPUR\r\n', '', 1, 1),
(1160, 106046, 'H S CHAUHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 2-B STREET 39, SECTOR 5 BHILAI, DURG 490 001\r\n', '', 1, 1),
(1161, 106177, 'SANTOSH KUMAR KALE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG 1-928, HUDCO, BHILAI 490 006, \r\n', '', 1, 1),
(1162, 106178, 'MILIND KUMAR SULBHEWAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 10-A, STREET -12, SECTOR 10,, BHILAI 490 006\r\n', '', 1, 1),
(1163, 106189, 'SURYAKANT FATING', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HIG 58, HUDCO COLONY,, AMDINAGAR, BHILAINGR, DURG 490 009\r\n', '', 1, 1),
(1164, 106191, 'IQBAL AHMED KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 2-A, STREET NO 11, SECTOR 2,, BHILAI 490 001\r\n', '', 1, 1),
(1165, 106411, 'VIKAS P KADOO', 2, 7, 4, 'Life Time', '1970-01-01', '', '5 D CROSS STREET 5, HOSPITAL SECTOR BHILAI, BHILAI 490 006\r\n', '', 1, 1),
(1166, 106976, 'C S K AGARWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 77 STREET 5A, PHASE II MAITRI NAGAR, BHILAI 490 006\r\n', '', 1, 1),
(1167, 107215, 'SUMAN SUDHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT NO 49 NARSINGH VIHAR, COLONY KATULBOD DURG, \r\n', '', 1, 1),
(1168, 108606, 'MEHUL CHAUHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'RAMESH BHAWAN, BEHIND, MG MARKET, GAYATRI MANDIR, WARD, DURG 491 001\r\n', '', 1, 1),
(1169, 108607, 'MANISH GOEL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'GOEL NIWAS,, NEW DEEPAK NAGAR,, DURG 491 001\r\n', '', 1, 1),
(1170, 108608, 'MRS SARIKA GOEL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'GOEL NIWAS,, NEW DEEPAK NAGAR,, DURG 491 001\r\n', '', 1, 1),
(1171, 106158, 'SANJIV KUMAR SINHA', 2, 7, 4, 'Life Time', '1970-01-01', '', '19-B, STREET-26,, SECTOR -10,, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1172, 106159, 'JYOTSNA SINHA', 2, 7, 4, 'Life Time', '1970-01-01', '', '19-B, STREET-26,, SECTOR -10,, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1173, 106155, 'M RAJESH KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 1/12, ISPAT NAGAR,, BHILAI NAGAR 490 006, \r\n', '', 1, 1),
(1174, 106156, 'SUBHA RAJESH M', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 1/12, ISPAT NAGAR,, BHILAI NAGAR 490 006, \r\n', '', 1, 1),
(1175, 106157, 'M SIRIJA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 1/12, ISPAT NAGAR,, BHILAI NAGAR 490 006, \r\n', '', 1, 1),
(1176, 107367, 'SOMESH CHHIBBER', 2, 7, 4, 'Life Time', '1970-01-01', '', '"AANCHAL", HNO 92,, PHASE-6,MAITRY NAGAR, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1177, 107368, 'BASANT VERMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'EWS - 641,, VAISHALI NAGAR,, BHILAI 490 023\r\n', '', 1, 1),
(1178, 109741, 'ATUL BENDALE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'A/12 STREET 3 ASHISH, NAGAR WEST RISALI, BHILAI 491 001\r\n', '', 1, 1),
(1179, 109750, 'NAVAL KISHORE SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 1/B STREET 12, SECTOR 1, BHILAI 490 001\r\n', '', 1, 1),
(1180, 110197, 'ASHISH AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 129, TAMER PAR 12 WARD 30, DURG 491 001\r\n', '', 1, 1),
(1181, 110198, 'MANISH JAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SHANT SWARUP NR SONKAR, BADI BAJINATH PARA VIJAY, NAGAR DURG 491 001\r\n', '', 1, 1),
(1182, 110214, 'SANDEEP TAMRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'TAMER PARA CHOWK, NR KILLA MANDIR, DURG 491 001\r\n', '', 1, 1),
(1183, 110215, 'VIMAL TAMRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'TAMER PARA CHOWK, NR KILLA MANDIR, DURG 491 001\r\n', '', 1, 1),
(1184, 110221, 'SUMEET TRIPATHI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'L-8 NR VIVEKANAND SABHA, GAAR PADMANABHPUR, DURG 491 001\r\n', '', 1, 1),
(1185, 110291, 'YOGENDRA KUMAR PAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C 11/10 NSPCL TOWNSHIP, RUABANDHA RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1186, 110649, 'AKSHAY SONI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'SAI VILLA PLOT # 15 ST #3, PUSHPAK NAGAR, BHILAI 491 001\r\n', '', 1, 1),
(1187, 111326, 'AJAJ AHMED', 2, 7, 4, 'Life Time', '1970-01-01', '', '4A/19/4, BHILAI 490 001, \r\n', '', 1, 1),
(1188, 111364, 'PRATEEK SHARMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'T-1 ADARSH NAGAR, DURG 491 001, \r\n', '', 1, 1),
(1189, 107373, 'AAKRIT DASROY', 2, 7, 4, 'Life Time', '1970-01-01', '', '19/7, NEHRU NAGAR EAST,, BHILAI DURG, DURG\r\n', '', 1, 1),
(1190, 111398, 'NEELRAM DUBEY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 26-G, STREET NO 33,, SECTOR 10,, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1191, 111399, 'RAJESH JAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C M JAIN CYCLE STORES, SHOP NO 67 ''A'' MKT.SEC-10, BHILAINAGAR 490 006\r\n', '', 1, 1),
(1192, 112010, 'S MANOHAR RAO', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 5A STREET NO 19, SECTOR NO 4 BHILAI, 490 001\r\n', '', 1, 1),
(1193, 112806, 'SUNANDA MANDAVI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'D-16 ADARSH NAGAR, DURG 491 001, \r\n', '', 1, 1),
(1194, 112812, 'SUMON CHAKRAWARTY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C-POCKET 1/B MARODA, SECTOR BHILAI NAGAR, BHILAI 490 006\r\n', '', 1, 1),
(1195, 113260, 'JOHNYKUTTY T', 2, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO B-303 ASHA APTS, STREET NO 11 PRAGATI NGR, RAISALI BHILAI 490 006\r\n', '', 1, 1),
(1196, 113270, 'RAHUL YADAV', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 5B STREET 37, SECTOR 4 BHILAI, DURG 490001\r\n', '', 1, 1),
(1197, 113855, 'ABHISHEK MUKHERJEE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG-1/1032, HUDCO BHILAI 490 009, \r\n', '', 1, 1),
(1198, 113972, 'ANOOP GUPTA', 6, 7, 4, 'Life Time', '1970-01-01', '', 'C-6, ANAND VIHAR,, TELIBANDHA,, RAIPUR 492 007\r\n', '', 1, 1),
(1199, 113973, 'MRS ARCHANA GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C-6, ANAND VIHAR,, TELIBANDHA,, RAIPUR 492 007\r\n', '', 1, 1),
(1200, 114015, 'NARENDRA GAUTAM', 2, 7, 4, 'Life Time', '1970-01-01', '', '59 JAWAHAR NAGAR, DURG 491 001, \r\n', '', 1, 1),
(1201, 114118, 'KEWAL KUMAR SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', '258/D RISALI SECTOR, BHILAI 490 006, \r\n', '', 1, 1),
(1202, 114121, 'TAPAN CHAURE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QRT NO 1D STREET SPA, SECTOR 8 BHILAI 490 009, \r\n', '', 1, 1),
(1203, 114212, 'MISS SHUBHAM SHREYA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 1A, STREET-9,, SECTOR 10, BHILAI, \r\n', '', 1, 1),
(1204, 114213, 'MISS PRAGYAN PRIYAM', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HNO 1A, STREET-9,, SECTOR 10, BHILAI, \r\n', '', 1, 1),
(1205, 114214, 'JAI PRAKASH DESHMUKH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'RNO 302, KALPMUKTA APTS., RISALI, BHILAI NAGAR 06, \r\n', '', 1, 1),
(1206, 114215, 'GOVENDRA KUMAR DESHMUKH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QNO 168-C, RISALI SECTOR, BHILAI NAGAR 490 006, \r\n', '', 1, 1),
(1207, 114471, 'AJAY KUMAR DHOBLE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'FLT NO 442 KALPKRITI, PARISAR AWADHPURI RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1208, 114481, 'RAJESH KUMAR RATHORE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO 442 KALPKRITI, PARISAR AWADHPURI RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1209, 114947, 'RAJESH KR RAJDHAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'F-6 DREAM HOMES CHPL, SMRITI NAGAR BHILAI NAGAR, 490 020\r\n', '', 1, 1),
(1210, 114993, 'DISHI S', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 6/B STREET 43, SECTOR 10 BHILAI NAGAR, BHILAI 490006\r\n', '', 1, 1),
(1211, 114994, 'K NAGBHUSHAN RAO', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 46C AVC-C, SECTOR 1 BHILAI, DURG  490001\r\n', '', 1, 1),
(1212, 114995, 'PAKHI MAHWAR', 2, 7, 4, 'Life Time', '1970-01-01', '', '477 PRIYADARSHANI NGR, RING ROAD NO 1, RAIPUR 492001\r\n', '', 1, 1),
(1213, 114996, 'VIDYA SAGAR DEWANGAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR 3A STREET 21, SECTOR 5, BHILAI 490006\r\n', '', 1, 1),
(1214, 114997, 'A C SHRIVASTAVI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO 303C DEEP APT, PRAGATI NAGAR, BHILAI 490006\r\n', '', 1, 1),
(1215, 114998, 'ABHINV SHRIVASTAVA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'FLAT NO 303C DEEP APT, PRAGATI NAGAR, BHILAI 490006\r\n', '', 1, 1),
(1216, 114999, 'PREM KUMAR JHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT 109 MAITRIKUNJ, RISALI BHILAI, DURG 490006\r\n', '', 1, 1),
(1217, 115596, 'ABHILASH TAMRAKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H 30 WAR 10, SHANKER NAGAR, DURG 491001\r\n', '', 1, 1),
(1218, 115919, 'ONKAR SINGH KALKAT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'KALKAT HOUSE PLOT#165/3, VIP NAGAR RISALI BHILAI, DURG BHILAI 490 006\r\n', '', 1, 1),
(1219, 115920, 'BALJINDER KAUR KALKAT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'KALKAT HOUSE PLOT#165/3, VIP NAGAR RISALI BHILAI, DURG BHILAI 490 006\r\n', '', 1, 1),
(1220, 116141, 'P NEERAJ', 2, 7, 4, 'Life Time', '1970-01-01', '', 'A-302 BALAJI APTS STREET, 19 PRAGATI NAGAR BHILAI, 490006\r\n', '', 1, 1),
(1221, 116157, 'SHEKHAR BHAGAT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'R NO 3 VIZAG HOSTEL, SECTOR 4 BHILAI DIST DURG, BHILAI 490 0011\r\n', '', 1, 1),
(1222, 116158, 'SUBHASHISH NANDI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'E W S 2766-67 INDUSTRIAL, HOUSING BOARD, BHILAI 490 026\r\n', '', 1, 1),
(1223, 116567, 'MANAV KUMAR', 2, 7, 4, 'Life Time', '1970-01-01', '', '6D RUSSIAN COMPLEX, SECTOR 7 DURG, BHILAI 490006', '', 1, 1),
(1224, 116568, 'MEENAKSHI', 2, 7, 4, 'Life Time', '1970-01-01', '', '6D RUSSIAN COMPLEX, SECTOR 7 DURG, BHILAI 490006\r\n', '', 1, 1),
(1225, 116569, 'MANMOHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', '6D RUSSIAN COMPLEX, SECTOR 7 DURG, BHILAI 490006\r\n', '', 1, 1),
(1226, 116570, 'BIDYUT KUMAR SINHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 1A STREET 4A, SECTOR 10 DURG, BHILAI 490006\r\n\r\n', '', 1, 1),
(1227, 116571, 'NIYATI SINHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 1A STREET 4A, SECTOR 10 DURG, BHILAI 490006\r\n', '', 1, 1),
(1228, 116572, 'SHIRLEY SINHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 1A STREET 4A, SECTOR 10 DURG, BHILAI 490006\r\n', '', 1, 1),
(1229, 116573, 'SAVITA SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 12A STREET 16, SECTOR 10 DURG, BHILAI 490006\r\n', '', 1, 1),
(1230, 117288, 'B ANURADHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 8A/STREET NO 23, SECTOR 10 BHILAI, 490 006\r\n', '', 1, 1),
(1231, 117562, 'SANJAY GULATI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 20B, STREET NO 2 SEC 1, BHILAI 490001\r\n', '', 1, 1),
(1232, 117915, 'SALAJ JAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 320 WARD O 27 ST #1, POLSAY PARA DURG 491001, \r\n', '', 1, 1),
(1233, 117929, 'ANIL KUMAR VASUKUTTY', 2, 7, 4, 'Life Time', '1970-01-01', '', '576 MIG I, HUDCO, DURG 491009\r\n', '', 1, 1),
(1234, 118458, 'VIKASH RANJAN MAHARANA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'KENDRIYA VIDYALAYA DURG, QTR B/7 NR FIVE BUILDINGS, DURG 491 001\r\n', '', 1, 1),
(1235, 119141, 'PIYUSH AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MOHINI VILA NR TULARAM, SCHOOL ARYANAGAR, DURG 491 001\r\n', '', 1, 1),
(1236, 119535, 'ANUP KASHYAP', 2, 7, 4, 'Life Time', '1970-01-01', '', 'VILLAGE POST SELUD, TAHASIL PATAN, DURG 491107\r\n', '', 1, 1),
(1237, 120151, 'BAPI GHOSH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 1D STREET NO 12, SECTOR 4, BHILAI 490001\r\n', '', 1, 1),
(1238, 120201, 'PRIYANKA PAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C11/10 NSPCL TOWNSHIP, RUABANDHA NR SAINT THOMAS, CLG BHILAI 490006\r\n', '', 1, 1),
(1239, 120687, 'RIZWAN M KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 10-D STREET NO 10, SECTOR NO 1 BHILAI 490001, \r\n', '', 1, 1),
(1240, 120688, 'ZAHID ALI', 10, 7, 4, 'Life Time', '1970-01-01', '', 'NATIONAL OIL&NUTBOLT MART, JAGDALPUR 494 001, \r\n', '', 1, 1),
(1241, 120689, 'RAJ SAHAB GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'DD PURAM FOREBELLS PUBLIC, SCHOOL NEW KURSIPAR, BHILAI 491 006\r\n', '', 1, 1),
(1242, 120690, 'IMRAN KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 10-D STREET NO 10, SECTOR NO 1 BHILAI 496001, \r\n', '', 1, 1),
(1243, 120691, 'SHEIKH ROBINA', 10, 7, 4, 'Life Time', '1970-01-01', '', 'BHANGA RAM CHOWK, PATHERA GUDA HOUSE #4/K, JAGDALPUR 494 001\r\n', '', 1, 1),
(1244, 120692, 'KAMAL JIT SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', '115-E RISALI SECTOR, BHILAI 490 006, \r\n', '', 1, 1),
(1245, 120693, 'SANTOSH KUMAR THAKUR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT 390 MAIN ROAD, MODEL TOWN BHILAI 490020, \r\n', '', 1, 1),
(1246, 120694, 'MOHD ZAKIR HUSSAIN', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 6B ST 20 SECTOR 7, BHILAI NAGAR DT DURG, \r\n', '', 1, 1),
(1247, 121048, 'DHANESHWAR SINGH SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR 9B STREET 8, SECTOR 10, BHILAI 490 006\r\n', '', 1, 1),
(1248, 121049, 'ATUL THACKER', 2, 7, 4, 'Life Time', '1970-01-01', '', '401-A BALAJI APARTMENTS, PRAGATI NAGAR RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1249, 121050, 'DIPTI THACKER', 2, 7, 4, 'Life Time', '1970-01-01', '', '401-A BALAJI APARTMENTS, PRAGATI NAGAR RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1250, 121051, 'RASHMI MEHTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK NO 6/A STREET #40, SECTOR NO 10, BHILAI 490 006\r\n', '', 1, 1),
(1251, 121052, 'KALA RAM SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 144 B, RUABANDHA SECTOR, BHILAI 490 006\r\n', '', 1, 1),
(1252, 121119, 'ASHUTOSH MISHRA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'GAYA NGR NEAR DEWANGAN, DHARMASHALA WARD NO 4, STRT NO3 DURG 491001\r\n', '', 1, 1),
(1253, 121619, 'BHOJRAJ PARWAT', 2, 7, 4, 'Life Time', '1970-01-01', '', 'H NO 11C STREET 31, SEC 4 BHILAI NAGAR, 490001\r\n', '', 1, 1),
(1254, 121684, 'BISWAJIT SARKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 12B STREET NO 18, SEC7 BHILAI DIST DURG, BHILAI 490006\r\n', '', 1, 1),
(1255, 121693, 'PILESH KUMAR SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK NO 2A ST NO19, SEC5 BHILAI DIST DURG, BHILAI 490006\r\n', '', 1, 1),
(1256, 121713, 'GOVIND PHATAK', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 159D RUABANDHA SEC, BHILAI NAGAR, DURG 490006\r\n', '', 1, 1),
(1257, 122456, 'SANJAY KUMAR KASAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BEHIND DEWANGAN SAMAJIK, BHAWAN MUKTIDHAM RD GAYA, NAGAR DURG 491001\r\n', '', 1, 1),
(1258, 122557, 'RINOJ KUMAR SINGH', 2, 7, 4, 'Life Time', '1970-01-01', '', '4 11 PRIYADARSHINI, PARISAR WEST, BHILAI 490020\r\n', '', 1, 1),
(1259, 122635, 'ANKIT AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BKD 29 SECTOR 9, BHILAI DURG CHHATIISGARH, BHILAI 490 006\r\n', '', 1, 1),
(1260, 122636, 'CHANDRA SHEKHAR BHARTI', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 11 VIP NAGAR, RISALI, BHILAI 490 006\r\n', '', 1, 1),
(1261, 122637, 'MADHU KUMAR SWARNKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', '8 B RUABANDHA SECTOR, BHILAI 490 006, CHHATTISGARH\r\n', '', 1, 1),
(1262, 122836, 'UMA SHANKAR AGRAWAL', 2, 7, 4, 'Life Time', '1970-01-01', '', 'UMA SHANKAR AGRAWAL SHOP, NO 14 SECTOR 11 ZONE 2, KHURSIPAR BHILAI 490011\r\n', '', 1, 1),
(1263, 125221, 'MOHAMMAD NAEEM', 6, 7, 4, 'Life Time', '1970-01-01', '', 'NEAR LAXMI GAS AGENCY, BYRON BAZAR, RAIPUR 492001\r\n', '', 1, 1),
(1264, 125299, 'LALIT CHOPRA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'PLOT 172/B ST- 8, SMRITI NAGAR DIST- DURG, BHILAI 490020\r\n', '', 1, 1),
(1265, 125649, 'SOMESH BHATTACHARYA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 12A C POCKET, MARODA SECTOR, BHILAI 490 006\r\n', '', 1, 1),
(1266, 125650, 'AKASH SAHU', 2, 7, 4, 'Life Time', '1970-01-01', '', 'MIG 563, PADMANABHPUR, DURG 491 001\r\n', '', 1, 1),
(1267, 126054, 'NEERAJ SINGH RATHAUR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C-2/8 NSPCL TOWNSHIP, RUABANDHA, BHILAI 490 006\r\n', '', 1, 1),
(1268, 126055, 'SALIL CHAKOLE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 39 PLOT 3, NEHRU NAGAR WEST, BHILAI 490 020\r\n', '', 1, 1),
(1269, 126056, 'NIMIT K PAHARIA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 52 PLOT 4, NEHRU NAGAR EAST, BHILAI 490 020\r\n', '', 1, 1),
(1270, 126061, 'ARUNANSHU KAR', 2, 7, 4, 'Life Time', '1970-01-01', '', 'IOCL DEPOT, BHILAI 490021, \r\n', '', 1, 1),
(1271, 126071, 'SAURABH VAISH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 75 PLOT NO 32, NEHRU NAGAR (EAST), BHILAI 490020\r\n', '', 1, 1),
(1272, 127314, 'MOHD FAIZAL KHAN', 2, 7, 4, 'Life Time', '1970-01-01', '', '274-4 RISALI SECTOR, BHILAI NAGAR, 490 006\r\n', '', 1, 1),
(1273, 127315, 'ABHISHEK CHAKRABORTY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR 4B STREET 12, SECTOR 10 BHILAI 480006, \r\n', '', 1, 1),
(1274, 127316, 'CHHAGAN LAL VERMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'C2/148 SURYA VIHAR, COLONY JUNWANI, BHILAI 490 020\r\n', '', 1, 1),
(1275, 127317, 'PRANAB ROY', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 29 PLOT 1, NEHRU NAGAR WEST, BHILAI 490 020\r\n', '', 1, 1),
(1276, 127318, 'NAVDEEP JHA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR NO 6B STREET 32, SECTOR 5 BHILAI 490006, \r\n', '', 1, 1),
(1277, 127319, 'RENU GUPTA', 2, 7, 4, 'Life Time', '1970-01-01', '', '5B/22/5, SECTOR 5 BHILAI 490 006, \r\n', '', 1, 1),
(1278, 127320, 'CHAITANYA CHINTAKAY ALA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'ROOM NO 57 HOSTEL NO 3, SECTOR 3 BHILAI 490 001, \r\n', '', 1, 1),
(1279, 127321, 'SHRIRANG KHANKHOJE', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QR-5A STREET 19 SEC 10, BHILAI 490 006, \r\n', '', 1, 1),
(1280, 127322, 'S GANPAT RAO', 2, 7, 4, 'Life Time', '1970-01-01', '', '4 B STREET 72 SECTOR 6, BHILAI 490 006, \r\n', '', 1, 1),
(1281, 127794, 'ABHINABA BALA', 2, 7, 4, 'Life Time', '1970-01-01', '', '301-AKRITI APARTMENT, ASHISH NAGAR, BHILAI 490006\r\n', '', 1, 1),
(1282, 131788, 'RAMESH CHANDRA SHARMA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'QTR NO 1A STREET NO 40, SECTOR 05 BHILAI 490006, \r\n', '', 1, 1),
(1283, 131789, 'DEOPRAKASH MESHRAM', 2, 7, 4, 'Life Time', '1970-01-01', '', 'BLOCK 2B STREET NDA, SECTOR 9 BHILAI 490 006, \r\n', '', 1, 1),
(1284, 123802, 'GHANSHYAM PATKAR', 2, 7, 4, 'Life Time', '1970-01-01', '', '16A NEW POLICE LINE, DURG 491 001, \r\n', '', 1, 1),
(1285, 123803, 'NEETA SIDANA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 18 ST NO 24, SECTOR 4 BHILAI, 490 001\r\n', '', 1, 1),
(1286, 123804, 'DALJIT SINGH SIDANA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'HOUSE NO 18 ST NO 24, SECTOR 4 BHILAI, 490 001\r\n', '', 1, 1),
(1287, 124465, 'SAVYASACHE SAMANTA', 2, 7, 4, 'Life Time', '1970-01-01', '', 'B/H HR TOWER BASTAL RD, NR BHAGWA LAKE, RAIPUR 492 001\r\n', '', 1, 1),
(1288, 124632, 'ANIL KATOCH', 2, 7, 4, 'Life Time', '1970-01-01', '', 'Q6A STREET 43, SECTOR - 5, BHILAI 490006\r\n', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_fees`
--

CREATE TABLE `membership_fees` (
  `MID` smallint(6) NOT NULL,
  `Membership_Type` varchar(200) NOT NULL,
  `Membership_No_Prefix` varchar(5) NOT NULL,
  `Duration` varchar(200) NOT NULL,
  `Fees` float NOT NULL,
  `CGST` float NOT NULL,
  `SGST` float NOT NULL,
  `Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_fees`
--

INSERT INTO `membership_fees` (`MID`, `Membership_Type`, `Membership_No_Prefix`, `Duration`, `Fees`, `CGST`, `SGST`, `Total`) VALUES
(1, 'Junior', 'J', '1 Year', 59.33, 5.34, 5.34, 70),
(2, 'One Year', 'S', '1 Year', 144.07, 12.97, 12.97, 170),
(3, 'Two Years', 'S', '2 Years', 254.24, 22.88, 22.88, 300),
(4, 'Life Time', 'L', 'Life Time', 2119, 190.71, 190.71, 2500),
(5, 'Institutional for Schools', 'IS', '1 Year', 635.6, 57.2, 57.2, 750),
(6, 'Institutional for Schools', 'IS', '5 Years', 2542.38, 228.81, 228.81, 3000),
(7, 'Institutional for Colleges', 'IC', '1 Year', 1271.19, 114.41, 114.41, 1500),
(8, 'Institutional for Colleges', 'IC', '5 Years', 4661.02, 419.49, 419.49, 5500);

-- --------------------------------------------------------

--
-- Table structure for table `news_and_events`
--

CREATE TABLE `news_and_events` (
  `News_And_Events_Id` int(11) NOT NULL,
  `News_Heading` varchar(200) NOT NULL,
  `News_Date` varchar(100) NOT NULL,
  `Images` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Event_Last_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news_and_events`
--

INSERT INTO `news_and_events` (`News_And_Events_Id`, `News_Heading`, `News_Date`, `Images`, `Description`, `Event_Last_Date`) VALUES
(2, 'Franchisee development - apply for Licensee Youth Hostel (LYH)', '', '', '<h2><span style="text-decoration: underline;">Some of the highlights of becoming a franchisee</span></h2>\r\n<h3>Low Investment &amp; High Returns</h3>\r\n<h3>Good profile customers</h3>\r\n<h3>Free National &amp; International Publicity</h3>\r\n<h3>Free online booking through YHAI website</h3>\r\n<h3>50% membership share on each member you make</h3>\r\n<p><strong>&nbsp;</strong></p>', '2017-12-31'),
(4, 'State Level Trekking Programme', '', '', '<h3>Units interested in organizing State Level Trekking Programme / other activities may place their proposal to State Branch.</h3>', '2017-10-31'),
(5, 'New Units', '', '', '<h3>Members interested in setting up new units at various Districts may contact State Branch.</h3>', '2017-12-31'),
(6, 'National Youth Convention Mysuru 2017', '', '1506591167.jpg', '<h3><strong>Dhamtari Unit of Chattisgarh State Branch is awarded 2nd Prize.</strong></h3>', '2017-12-31'),
(7, 'Chattisgarh Tourism Board ', '', '', '<h2>Chattisgarh Toursim Board has approved 30% discount to YHAI members at resort / rest house / motels.</h2>', '2017-12-31'),
(8, 'Swachh Bharat Mission', '', '1507438195.jpg', '<p class="MsoNormal" style="text-align: justify;"><strong>Swachhata Abhiyan</strong> was arranged at Laxman Temple, Sirpur, Chhattisgarh in association with tourism and related stakeholders viz. Archeological Survey of India, Hoteliers, Travel agents, Tour Operators, Local Guides, NSS / School / College Students from Mahasamund, Youth Hostel Association of India , C G State Branch, Nehru Yuva Kendra &ndash; Raipur &amp; members of NGO &ldquo;Bunch of Fools&rdquo; based at Raipur (TBC) etc on the birthday of father of our nation, Shri Mahatma Gandhi on <strong>Monday 02/10/2017</strong>.</p>\r\n<p class="MsoNormal" style="text-align: justify;">Chhattisgarh Tourism Board assisted us for the said programme and also given a wide publicity. Hotel Floret, Bhilai a franchisee of Youth Hostels Association of India too participated in this event.</p>\r\n<p class="MsoNormal" style="text-align: justify;">Celebrities like Padmashree Teejan Bai, Smt. Kuwar Bai Yadav Prime Minister Awardees, International Cricket Player Shri Rajesh Chauhan, International Hockey Player Ms. Neeta Dumre were present on the occasion.</p>\r\n<p class="MsoNormal" style="text-align: justify;">Mr. G Rajesh Kumar, Chairman and Mr. Salim Khan, Joint Secretary of YHAI CG State Branch were present on this occasion and contributed their services.</p>\r\n<p>Shri. Jitendra Jadhav, Manager, India Tourism, Indore was the Nodal Officer for the said event.</p>', '2017-12-31'),
(9, 'Tata Mari Bhangram - Keshkal Trekking', '', '1513249590.jpg', '<p><strong>One day Trekking cum Training program is organised. Interested Members are requested to contact immediately the office bearers of unit.</strong></p>', '2017-12-31'),
(10, 'KANCHAN PAHAAD â€ Heritage Trekking & Training Program', '', '1513315743.jpg', '<h4 class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; margin-bottom: 0.0001pt; text-align: justify;"><strong><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; color: #e36c0a;">à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤•à¤¾ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤¹à¥‡à¤°à¤¿à¤Ÿà¥‡à¤œ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤à¤‚à¤¡ à¤Ÿà¥à¤°à¥‡à¤¨à¤¿à¤‚à¤— à¤ªà¥à¤°à¥‹à¤—à¥à¤°à¤¾à¤® |</span></strong></h4>\r\n<h4 class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; margin-bottom: 0.0001pt; text-align: justify;"><strong><span lang="HI" style="font-size: 12pt; line-height: 18.4px; font-family: Mangal; color: #943634; background-image: initial; background-color: yellow; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">à¤•à¥‹à¤°à¤¬à¤¾/ à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤•à¤¾ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤¹à¥‡à¤°à¤¿à¤Ÿà¥‡à¤œ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤à¤‚à¤¡ à¤Ÿà¥à¤°à¥‡à¤¨à¤¿à¤‚à¤— à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤†à¤œ à¥¨ à¤¦à¤¿à¤¸à¤®à¥à¤¬à¤° à¤•à¥‹ à¤•à¥‹à¤°à¤¬à¤¾ à¤¸à¤¤à¤°à¥‡à¤‚à¤—à¤¾ à¤®à¤¾à¤°à¥à¤— à¤®à¥‡à¤‚ à¤—à¥à¤°à¤¾à¤® à¤—à¥à¤•à¤¾à¤Ÿà¤°à¤¾ à¤•à¥‡ à¤ªà¤¾à¤¸ à¤¸à¥à¤¥à¤¿à¤¤ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤®à¥‡à¤‚ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ |</span></strong></h4>\r\n<h4 class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;"><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; color: #1f497d;">à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤•à¥‡ à¤¸à¤¦à¤¸à¥à¤¯ à¤“à¤ªà¤¨ à¤¥à¤¿à¤¯à¤Ÿà¤° à¤•à¥‡ à¤ªà¤¾à¤¸ à¤à¤•à¤¤à¥à¤°à¤¿à¤¤ à¤¹à¥‹à¤•à¤° à¤…à¤ªà¤¨à¥‡ à¤µà¤¾à¤¹à¤¨à¥‹à¤‚ à¤¸à¥‡ à¤—à¥à¤°à¤¾à¤® à¤—à¥à¤•à¤¾à¤Ÿà¤°à¤¾ à¤ªà¤¹à¥à¤šà¥‡ | à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤ªà¥à¤°à¤¾à¤°à¤‚à¤­ à¤•à¤°à¤¨à¥‡ à¤¸à¥‡ à¤ªà¤¹à¤²à¥‡ à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤¸à¤‚à¤¯à¥‹à¤œà¤• à¤¶à¥à¤°à¥€ à¤¶à¥ˆà¤²à¥‡à¤¨à¥à¤¦à¥à¤° à¤¨à¤¾à¤®à¤¦à¥‡à¤µ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤®à¥‡à¤‚ à¤°à¤–à¤¨à¥‡ à¤µà¤¾à¤²à¥€ à¤¸à¤¾à¤µà¤§à¤¾à¤¨à¤¿à¤¯à¤¾ à¤•à¥€ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥€ | à¤²à¤—à¤­à¤— à¤à¤• à¤˜à¤‚à¤Ÿà¥‡ à¤•à¥€ à¤šà¥à¤¾à¤ˆ à¤•à¥‡ à¤ªà¤¸à¥à¤šà¤¾à¤¤ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤¦à¤² à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤ªà¤° à¤ªà¤‚à¤¹à¥à¤šà¤¾ | à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤•à¥€ à¤›à¥‹à¤Ÿà¥€ à¤ªà¤° à¤¬à¤¿à¤–à¤°à¥‡ à¤¹à¥à¤ à¤ªà¥à¤°à¤¾à¤¨à¥‡ à¤…à¤µà¤¶à¥‡à¤·à¥‹à¤‚ à¤•à¤¾ à¤…à¤§à¥à¤¯à¤¨ à¤•à¤¿à¤¯à¤¾ à¤”à¤° à¤ªà¥à¤°à¤¾à¤•à¥ƒà¤¤à¤¿à¤• à¤¦à¥ƒà¤¶à¥à¤¯à¥‹à¤‚ à¤•à¤¾ à¤­à¤°à¤ªà¥‚à¤° à¤†à¤¨à¤‚à¤¦ à¤²à¤¿à¤¯à¤¾, à¤¸à¤¾à¤¥ à¤¹à¥€</span><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; color: #1f497d;">&nbsp;</span><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; color: #1f497d;">à¤¸à¤¤à¤°à¥‡à¤‚à¤—à¤¾ à¤¡à¥‚à¤¬à¤¾à¤¨ à¤•à¥à¤·à¥‡à¤¤à¥à¤° à¤•à¤¾ à¤­à¥€ à¤¦à¥ƒà¤¶à¥à¤¯ à¤¦à¥‡à¤–à¤•à¤° à¤†à¤¨à¤¨à¥à¤¦à¤¿à¤¤ à¤¹à¥à¤ | à¤¹à¥‡à¤°à¤¿à¤Ÿà¥‡à¤œ à¤Ÿà¥à¤°à¥ˆà¤•à¤¿à¤‚à¤— à¤à¤‚à¤¡ à¤Ÿà¥à¤°à¥‡à¤¨à¤¿à¤‚à¤— à¤ªà¥à¤°à¥‹à¤—à¥à¤°à¤¾à¤® à¤®à¥‡à¤‚ à¤¬à¤šà¥à¤šà¥‹à¤‚ à¤¨à¥‡ à¤¬à¥ à¤šà¥ à¤•à¤° à¤­à¤¾à¤— à¤²à¤¿à¤¯à¤¾ | à¤°à¤¸à¥à¤¤à¥‡ à¤®à¥‡à¤‚ à¤¶à¥à¤¯à¤¾à¤® à¤•à¥‡à¤µà¤Ÿ à¤à¤µà¤‚ à¤®à¥‹à¤¹à¤¨ à¤²à¤¾à¤² à¤¸à¤¾à¤¹à¥‚à¤œà¥€ à¤¨à¥‡ à¤¬à¤°à¥à¤¡ à¤µà¤¾à¤šà¤¿à¤‚à¤— à¤•à¤°à¤¾à¤¯à¤¾ à¤à¤µà¤‚ à¤œà¤‚à¤—à¤² à¤®à¥‡à¤‚ à¤¸à¥à¤¥à¤¿à¤¤ à¤œà¥œà¥€ à¤¬à¥‚à¤Ÿà¥€ à¤•à¥‹ à¤ªà¤¹à¤šà¤¾à¤¨à¥‡ à¤à¤µà¤‚ à¤‰à¤¨à¤•à¤¾ à¤‰à¤ªà¤¯à¥‹à¤— à¤•à¥€ à¤µà¤¿à¤¸à¥à¤¤à¥ƒà¤¤ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥€ | à¤•à¤¾à¤°à¥à¤¯à¤•à¥à¤°à¤® à¤•à¥‡ à¤¦à¥‹à¤°à¤¾à¤¨ à¤¸à¤¾à¥ž à¤¸à¤«à¤¾à¤ˆ à¤•à¤¾ à¤µà¤¿à¤¶à¥‡à¤· à¤§à¥à¤¯à¤¾à¤¨ à¤°à¤–à¤¾ à¤—à¤¯à¤¾| à¤‡à¤•à¤¾à¤ˆ à¤šà¥‡à¤¯à¤°à¤®à¥ˆà¤¨ à¤à¤µà¤‚ à¤•à¥‹à¤¸à¤¾à¤§à¥à¤¯à¤•à¥à¤· à¤¸à¤‚à¤¦à¥€à¤ª à¤¸à¥‡à¤  à¤à¤µà¤‚ à¤µà¤¿à¤œà¥‡à¤¶ à¤•à¥‡ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤ªà¤¹à¤¾à¥œ à¤¸à¥‡ à¤‰à¤¤à¤°à¤¤à¥‡ à¤¸à¤®à¤¯ à¤ªà¤°à¥à¤¯à¤¾à¤µà¤°à¤£ à¤•à¤¾ à¤¸à¤¨à¥à¤¦à¥‡à¤¶ à¤¦à¥‡à¤¤à¥‡ à¤¹à¥à¤ à¤•à¤‚à¤šà¤¨ à¤ªà¤¹à¤¾à¥œ à¤¸à¥‡ à¤—à¥à¤°à¤¾à¤® à¤—à¥à¤•à¤¾à¤Ÿà¤°à¤¾ à¤¤à¤• à¤¬à¤¿à¤–à¥‡à¤°à¥‡ à¤¹à¥à¤ à¤ªà¥à¤²à¤¾à¤¸à¥à¤Ÿà¤¿à¤• à¤•à¥‹ à¤à¤•à¤¤à¥à¤°à¤¿à¤¤ à¤•à¤°à¤¤à¥‡ à¤¹à¥à¤ à¤—à¤¾à¤à¤µ à¤µà¤¾à¤²à¥‹ à¤µà¥‹ à¤¸à¥à¤µà¤šà¥à¤›à¤¤à¤¾ à¤…à¤­à¤¿à¤¯à¤¾à¤¨ à¤•à¥€ à¤œà¤¾à¤¨à¤•à¤¾à¤°à¥€ à¤¦à¥€ |</span></h4>\r\n<h4 class="m_5301890251325003306gmail-MsoNormal" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;"><span lang="HI" style="font-size: 14pt; line-height: 21.4667px; font-family: Mangal; background-image: initial; background-color: yellow; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">à¤…à¤‚à¤¤ à¤®à¥‡à¤‚ à¤¯à¥‚à¤¥ à¤¹à¥‰à¤¸à¥à¤Ÿà¤² à¤à¤¸à¥‹à¤¸à¤¿à¤à¤¶à¤¨ à¤‘à¥ž à¤‡à¤‚à¤¡à¤¿à¤¯à¤¾ à¤•à¥‹à¤°à¤¬à¤¾ à¤‡à¤•à¤¾à¤ˆ à¤¦à¥à¤µà¤¾à¤°à¤¾ à¤¸à¤­à¥€ à¤ªà¥à¤°à¤¤à¤¿à¤­à¤¾à¤—à¤¿à¤¯à¥‹à¤‚ à¤•à¤¾ à¤†à¤­à¤¾à¤° à¤ªà¥à¤°à¤•à¤Ÿ à¤•à¤°à¤¤à¥‡ à¤¹à¥à¤ à¤ªà¥à¤°à¤®à¤¾à¤£ à¤ªà¤¤à¥à¤° à¤µà¤¿à¤¤à¤°à¤£ à¤•à¤¿à¤¯à¤¾ à¤—à¤¯à¤¾ |</span></h4>', '2017-12-31'),
(11, 'Swachh Bharat Abhiyaan 2017" - Award received by Korba Unit', '', '1513315987.jpg', '<h5 class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">Youth Hostel Association of India - Korba Unit - Chattisgarhâ€‹ receiving the Certificate and Award by District Collector&nbsp;<span style="color: #464646; font-family: ''Open Sans'', sans-serif; line-height: 1.1; text-align: center;">Shree Mohammad Qaiser Abdul Haque</span></h5>\r\n<div class="gmail_default" style="color: #464646; font-family: ''Open Sans'', sans-serif; line-height: 1.1; text-align: center; display: inline;">â€‹&nbsp;</div>\r\n<h5 class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">for Participating in "Swachh Bharat Abhiyaan 2017" by Nagar Nigam Korba</h5>\r\n<h5 class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">&nbsp;</h5>\r\n<h5 class="gmail_default" style="color: #222222; font-family: arial, sans-serif; font-size: large; text-align: justify;">On behalf Award of YHAI Korba Unit , award received By : Shri Satish Shukla (President Korba Unit) , Shri Shyam Kewat, Shri Vijesh N.V.</h5>', '2017-12-31'),
(12, 'Chaiturgarh Trekking Cum Training Program', '', '1513317755.jpg', '<h3 style="text-align: justify;">Raipur Unit is organinzing&nbsp;Chaiturgadh Trekking Cum Training Program on 23rd and 24th December 2017</h3>', '2017-12-31'),
(13, 'Trekking Cum Training Program at Kanha by C G State Branch', '', '', '<h3 style="text-align: justify;">C G State Branch is organizing Trekking Cum Training Program at Kanha from 23rd to 25th December.</h3>', '2017-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `other_detail`
--

CREATE TABLE `other_detail` (
  `Other_Id` mediumint(9) NOT NULL,
  `Other_Type_Id` tinyint(4) NOT NULL,
  `Other_Name` varchar(200) NOT NULL,
  `Other_Detail` text NOT NULL,
  `Other_Files` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `Slide_Id` int(11) NOT NULL,
  `Slide_Image` varchar(100) NOT NULL,
  `Slide_Caption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`Slide_Id`, `Slide_Image`, `Slide_Caption`) VALUES
(11, '1515078312.JPG', '<p style="text-align: justify;"><strong>The camp program focuses&nbsp;</strong><strong>on values of&nbsp; respect and stewardship&nbsp;</strong><strong>for the environment and natural world.</strong></p>'),
(12, '1515078753.JPG', '<p><strong>Sua Dance by participants and local group</strong>.</p>'),
(13, '1515079048.jpg', '<p><strong>Celebration on Earth Day by Bilaspur Unit.</strong></p>'),
(14, '1515079286.jpg', '<p><strong>Vist to Dongargah by Cycle by members of Bhilai Unit.</strong></p>'),
(16, '1515079730.jpg', '<p><strong>Bi-cycle rally organized by Bhilai Unit.</strong></p>'),
(17, '1515079795.jpg', '<p style="text-align: justify;"><strong>Swach Bharat Abhiyan organized by India Tourism jointy with Hotel Floret, Bhilai and YHAI C G State Branch at Sirpur.</strong></p>'),
(18, '1515080462.jpg', '<p><strong>River Crossing by Participant.</strong></p>'),
(19, '1515080676.jpg', '<p><strong>Mountain Biking by Participant of Raipur, Chattisgarh.</strong>&nbsp;</p>'),
(20, '1515082044.jpg', '<p style="text-align: justify;"><strong>Participants of Dhamtari Unit at Mysuru, Presenting Tribal Dance and won 2nd Prize.</strong></p>'),
(21, '1515082233.jpg', '<p style="text-align: justify;"><strong>Members of Dhamtari unit at Rajim Kubh Mela.</strong></p>'),
(22, '1515082322.jpg', '<p><strong>Members of Korba Unit.</strong></p>'),
(23, '1515082351.jpg', '<p><strong>Members of Korba Unit.</strong></p>'),
(24, '1515082410.jpg', '<p><strong>Participants at Sihawa Trek.</strong></p>'),
(26, '1515299190.jpg', '<p><strong>ANATOMY OF TREKKER.</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `tourist_places`
--

CREATE TABLE `tourist_places` (
  `Place_Id` smallint(6) NOT NULL,
  `Title` varchar(300) NOT NULL,
  `About_Place` text NOT NULL,
  `Image` varchar(75) NOT NULL,
  `District_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit_master`
--

CREATE TABLE `unit_master` (
  `Unit_Id` tinyint(4) NOT NULL,
  `Unit_Name` varchar(50) NOT NULL,
  `Description` text NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_master`
--

INSERT INTO `unit_master` (`Unit_Id`, `Unit_Name`, `Description`, `status`) VALUES
(1, 'Ambikapur [ Under Process ]', 'Ambikapur Unit was formed in 1988.', 1),
(2, 'Bhilai', 'Bhilai Unit was formed in 1986 much before the formation of CG as a State and was known as part of MP State. This unit was formed under the guidance of Shri. Suresh Rao.', 1),
(3, 'Bilaspur', 'Bilaspur unit was formed in 1998.', 1),
(4, 'Dhamtari', 'Dhamtari unit was established on 16.03.1998 with the help of Shri. Kailash Soni with membership strength of 68.', 1),
(5, 'Korba', 'Korba unit was formed in 2001, with the help of Mr. Sanjeev Soni.\r\n\r\n\r\n\r\nE-mail ID : youthhostelskorba@gmail.com', 1),
(6, 'Raipur', 'Raipur unit was formed in 1988.', 1),
(7, 'Raigarh [ Under Process ]', 'Raighar unit was formed in 1998.', 1),
(8, 'CG State', 'Established in the year 2001', 1),
(9, 'Rajnandgaon [ Under Process ]', 'Under Process', 1),
(10, 'Jagdalpur [ Under Process ]', 'Under Process', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity`
--
ALTER TABLE `activity`
  ADD PRIMARY KEY (`Activity_Id`),
  ADD KEY `Unit_Id` (`Unit_Id`);

--
-- Indexes for table `activity_gallery_image`
--
ALTER TABLE `activity_gallery_image`
  ADD PRIMARY KEY (`Activity_Gallery_Image_Id`),
  ADD KEY `Activity_Id` (`Activity_Id`);

--
-- Indexes for table `activity_video`
--
ALTER TABLE `activity_video`
  ADD PRIMARY KEY (`Activity_Video_Id`),
  ADD KEY `Activity_Id` (`Activity_Id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`Asset_Id`),
  ADD KEY `Unit_Id` (`Unit_Id`);

--
-- Indexes for table `circular`
--
ALTER TABLE `circular`
  ADD PRIMARY KEY (`Circular_Id`);

--
-- Indexes for table `circular_file`
--
ALTER TABLE `circular_file`
  ADD PRIMARY KEY (`Circular_File_Id`),
  ADD KEY `Circular_Id` (`Circular_Id`);

--
-- Indexes for table `designation_master`
--
ALTER TABLE `designation_master`
  ADD PRIMARY KEY (`Designation_Id`);

--
-- Indexes for table `discount`
--
ALTER TABLE `discount`
  ADD PRIMARY KEY (`Discount_Id`);

--
-- Indexes for table `district_master`
--
ALTER TABLE `district_master`
  ADD PRIMARY KEY (`District_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_Id`);

--
-- Indexes for table `latest_news`
--
ALTER TABLE `latest_news`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Member_Id`),
  ADD KEY `Unit_Id` (`Unit_Id`);

--
-- Indexes for table `membership_fees`
--
ALTER TABLE `membership_fees`
  ADD PRIMARY KEY (`MID`);

--
-- Indexes for table `news_and_events`
--
ALTER TABLE `news_and_events`
  ADD PRIMARY KEY (`News_And_Events_Id`);

--
-- Indexes for table `other_detail`
--
ALTER TABLE `other_detail`
  ADD PRIMARY KEY (`Other_Id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`Slide_Id`);

--
-- Indexes for table `tourist_places`
--
ALTER TABLE `tourist_places`
  ADD PRIMARY KEY (`Place_Id`),
  ADD KEY `District_Id` (`District_Id`);

--
-- Indexes for table `unit_master`
--
ALTER TABLE `unit_master`
  ADD PRIMARY KEY (`Unit_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity`
--
ALTER TABLE `activity`
  MODIFY `Activity_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `activity_gallery_image`
--
ALTER TABLE `activity_gallery_image`
  MODIFY `Activity_Gallery_Image_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `activity_video`
--
ALTER TABLE `activity_video`
  MODIFY `Activity_Video_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `Asset_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `circular`
--
ALTER TABLE `circular`
  MODIFY `Circular_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `circular_file`
--
ALTER TABLE `circular_file`
  MODIFY `Circular_File_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `designation_master`
--
ALTER TABLE `designation_master`
  MODIFY `Designation_Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `Discount_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `district_master`
--
ALTER TABLE `district_master`
  MODIFY `District_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Member_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1289;
--
-- AUTO_INCREMENT for table `membership_fees`
--
ALTER TABLE `membership_fees`
  MODIFY `MID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `news_and_events`
--
ALTER TABLE `news_and_events`
  MODIFY `News_And_Events_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `other_detail`
--
ALTER TABLE `other_detail`
  MODIFY `Other_Id` mediumint(9) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `Slide_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tourist_places`
--
ALTER TABLE `tourist_places`
  MODIFY `Place_Id` smallint(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit_master`
--
ALTER TABLE `unit_master`
  MODIFY `Unit_Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity`
--
ALTER TABLE `activity`
  ADD CONSTRAINT `activity_ibfk_1` FOREIGN KEY (`Unit_Id`) REFERENCES `unit_master` (`Unit_Id`);

--
-- Constraints for table `activity_gallery_image`
--
ALTER TABLE `activity_gallery_image`
  ADD CONSTRAINT `activity_gallery_image_ibfk_1` FOREIGN KEY (`Activity_Id`) REFERENCES `activity` (`Activity_Id`);

--
-- Constraints for table `activity_video`
--
ALTER TABLE `activity_video`
  ADD CONSTRAINT `activity_video_ibfk_1` FOREIGN KEY (`Activity_Id`) REFERENCES `activity` (`Activity_Id`);

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_ibfk_1` FOREIGN KEY (`Unit_Id`) REFERENCES `unit_master` (`Unit_Id`);

--
-- Constraints for table `circular_file`
--
ALTER TABLE `circular_file`
  ADD CONSTRAINT `circular_file_ibfk_1` FOREIGN KEY (`Circular_Id`) REFERENCES `circular` (`Circular_Id`);

--
-- Constraints for table `member`
--
ALTER TABLE `member`
  ADD CONSTRAINT `member_ibfk_1` FOREIGN KEY (`Unit_Id`) REFERENCES `unit_master` (`Unit_Id`);

--
-- Constraints for table `tourist_places`
--
ALTER TABLE `tourist_places`
  ADD CONSTRAINT `tourist_places_ibfk_1` FOREIGN KEY (`District_Id`) REFERENCES `district_master` (`District_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
