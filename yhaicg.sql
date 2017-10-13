-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2017 at 05:00 PM
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
(25, 5, 'Ajgarbahar', '', '<p>Ajgarbahar Trek</p>', '2016-10-02', '1506596185.jpg');

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
(61, 23, '1475390593P_20160918_091106.jpg');

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
(35, 'Defunct [ Harayana State Branch. ]', 'Haryana State Branch is became defunct State Branch.', '2017-09-03'),
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
(74, 'Notification in regard to Defunct the Haryana State Branch.pdf', 35),
(75, 'Membership Fees w.e.f 01.10.2017.jpg', 38),
(76, 'C G Tourism.jpg', 39);

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
(20, 'Franchisee Hostels / Hotel', 0x54776f204672616e63686973656520486f7374656c73202f20486f74656c7320617265206c61756e6368656420696e2043686174746973676172682053746174652e0d0a0d0a312e20486f74656c20466c6f72657420617420537570656c612c204e65617220204e61676172204e6967616d2c204268696c61692e0d0a0d0a322e20486f74656c205368616c696e206174204b6f726261, 1, 0, '2017-08-18'),
(18, 'Chattisgarh Tourism Board', 0x436861747469736761726820546f757269736d20426f6172642068617320617070726f7665642033302520646973636f756e7420746f2059484149206d656d62657273206f6e205245534f5254202f205245535420484f555345202f204d4f54454c53, 2, 0, '2017-10-03'),
(19, 'NATIONAL YOUTH CONVENTION - 2017, MYSURU', 0x4368617474697367617268205374617465204272616e636820686173206265656e206177617264656420326e64205072697a65206174204e6174696f6e616c20596f75746820436f6e76656e74696f6e2068656c64206174204d79737572752e20416c6c20536978205061727469636970616e747320776572652066726f6d204468616d7461726920556e69742e0d0a0d0a436f6e67726174756c6174696f6e7320746f205061727469636970616e747320616e64204468616d7461726920556e69742e, 2, 0, '2017-09-23');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Member_Id` int(11) NOT NULL,
  `Membership_No` varchar(100) NOT NULL,
  `Member_Name` varchar(40) NOT NULL,
  `Unit_Id` tinyint(4) NOT NULL,
  `Designation_Id` tinyint(4) NOT NULL,
  `Membership_Type` varchar(20) NOT NULL,
  `Membership_Date` varchar(30) NOT NULL,
  `Contact_No` varchar(20) NOT NULL,
  `Address` varchar(100) NOT NULL,
  `Member_Detail` text NOT NULL,
  `Member_Type` tinyint(4) NOT NULL COMMENT '1-member,2-office \r\n\r\nbarrier',
  `Member_Status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1-active,0-unactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_Id`, `Membership_No`, `Member_Name`, `Unit_Id`, `Designation_Id`, `Membership_Type`, `Membership_Date`, `Contact_No`, `Address`, `Member_Detail`, `Member_Type`, `Member_Status`) VALUES
(1, '', 'S K Mitra', 2, 1, 'Life Time', '1970-01-01', '9425244106', 'Street No. 70, Sector - 6, Bhilai', 'subhmee@yahoo.co.in', 2, 1),
(2, '', 'P K Deb', 2, 3, 'Life Time', '1970-01-01', '7587141002', 'Sector - 10, Bhilai', '', 2, 1),
(3, '', 'Basant Verma', 2, 3, 'Life Time', '1970-01-01', '7587440037', 'Vaishali Nagar, Bhilai', '', 2, 1),
(4, '', 'Santosh Chakole', 2, 2, 'Life Time', '1970-01-01', '9407980507', 'Nehru Nagar (West), Bhilai', 'santosh_chakole@yahoo.com', 2, 1),
(5, '', 'Praveen Kalmegh', 2, 4, 'Life Time', '1970-01-01', '9242410670', 'Sector - 1, Bhilai', 'pdkalmegh@gmail.com', 2, 1),
(6, '', 'K . Subramanyam', 2, 5, 'Life Time', '1970-01-01', '9425294099', 'Qtr. No. 4-B, Street No. 26, Sector - 9, Bhilai', 'ksubu2008@gmail.com', 2, 1),
(8, '', 'Dr. K . Subramaniam ', 8, 1, 'Three Year', '1970-01-01', '9826148944', 'Addl. PCCF, Forest HQRS, Aranya Bhawan, Raipur (CG)', 'maniiyer1958@yahoo.co.in', 2, 1),
(9, '', 'Mrs. Sushma Nanda', 8, 3, 'Life Time', '1970-01-01', '9827116116', '98, M G Road, Dhamtari - 493773 (CG)', 'snanda.dmt@gmail.com', 2, 1),
(10, '', 'Laxmi Kant Dwivedi', 8, 3, 'Life Time', '1970-01-01', '9425516057', 'Old Bus Stand, Kurud - 493663, Dist. Dhamtari (CG)', '', 2, 1),
(11, '', 'B C S Naidu', 8, 3, 'Life Time', '1970-01-01', '9425202924', '9/110, Near Dr. Kukreja, Budhapara, Raipur (CG)', 'b.naidu@sbi.co.in', 2, 1),
(12, '', 'G . Rajesh Kumar', 8, 2, 'Life Time', '1970-01-01', '9406009872', 'Qtr. No. 2-A, St.No. 40, Sector - 10, Bhilai-490006', 'g.rajeshkumar777@yahoo.com', 2, 1),
(13, '', 'Pankaj Kr. Mehta', 8, 4, 'Life Time', '1970-01-01', '7587100953', 'Qtr. No. 6-A, St.No.40,  Sector - 10, \r\nBhilai - 490 006', 'pankajrashmimehta@gmail.com', 2, 1),
(14, '', 'K . Subramanyam', 8, 5, 'Life Time', '1970-01-01', '9425294099', '4-B, St. No. 26, Sector - 9, Bhilai - 490 009', 'ksubu2008@gmail.com', 2, 1),
(20, '', 'K . Subramanyam', 8, 10, 'Life Time', '1970-01-01', '9425294099', '4-B, Street No. 26, Sector - 9, Bhilai - 490 009', 'ksubu2008@gmail.com', 2, 1),
(24, '', 'Salim Khan', 8, 11, 'Life Time', '1970-01-01', '9425246018', 'L - Pocket, 12 - A, Maroda Sector, Bhilai - 490001', 'salimkhan.ashu@gmail.com', 2, 1),
(25, '', 'Shashank Moghe', 8, 12, 'Life Time', '1970-01-01', '9425215330', 'Shop no. 35 1st floor Gurukul comp. Kalibadi Chowk, Raipur (C.G.) 492001', 'shashankmoghe23@gmail.com', 2, 1),
(26, '', 'Praveen Kalmegh', 8, 13, 'Life Time', '1970-01-01', '9424106740', '2 - A, Street No. 8, Sector - 1, Bhilai - 490 001', 'pdkalmegh@gmail.com', 2, 1),
(27, '', 'Sandeep Seth', 8, 14, 'Life Time', '1970-01-01', '9425079888', 'Korba', 'sandeepseth.korba@gmail.com', 2, 1),
(28, '123123123', 'Durgashankar Pargania', 6, 1, 'Life Time', '1970-01-01', '7898987850', '30/165 Amapara Chowk,\r\nRaipur (C.G.) 492001.', 'durgasparganiha@yahoo.com', 2, 1),
(29, '', 'Vimal Srivas', 6, 3, 'Life Time', '1970-01-01', '9826415916', 'Near Dudhadari Mandir Mathpara \r\nRaipur (C.G.) 492001.', 'vimal_raipur@rediffmail.com', 2, 1),
(30, '', 'Dilip Verma', 6, 3, 'Life Time', '1970-01-01', '9407755936', 'P-8 Sector-2, Priyadarshini Nagar,\r\nRaipur (C.G.) 492001.', 'karanverma007@ymail.com', 2, 1),
(31, '', 'Mahendra Pansari', 6, 3, 'Life Time', '1970-01-01', '9826559066', 'Puspak Villa Lily Chowk,\r\nRaipur (C.G.) 492001.', 'mahendra70@rediffmail.com', 2, 1),
(32, '', 'CA .Shashank Moghe', 6, 2, 'Life Time', '1970-01-01', '9425215330', 'Shop no. 35 1st floor Gurukul comp. Kalibadi Chowk,\r\nRaipur (C.G.) 492001.', 'shashankmoghe@hotmail.com', 2, 1),
(33, '', 'CA. Rajesh Rathi', 6, 4, 'Life Time', '1970-01-01', '9407715045', '44/263 Budhapara\r\nRaipur (C.G.) 492001.', 'rajeshrathica@gmail.com', 2, 1),
(34, '', 'Dr. Pravin Chandrakar', 6, 6, 'Life Time', '1970-01-01', '9425216064', 'Raj Bhawan Colony E-1,\r\nRaipur (C.G.) 492001.', '', 2, 1),
(35, '', 'CA. Sagar Jain', 6, 6, 'Life Time', '1970-01-01', '9755117060', 'B-6 2nd Floor \r\nDeepak App. Budhapara,\r\nRaipur (C.G.) 492001.', 'sagarjain_87@yahoo.co.in', 2, 1),
(36, '', 'CA. Varun Mutha', 6, 6, 'Life Time', '1970-01-01', '9752018001', 'Old Cloth Market Road N.H. 6 Kumhari\r\nRaipur (C.G.) 492001.', 'cavarun@live.com', 2, 1),
(37, '', 'Rahul Srivastava', 6, 6, 'Life Time', '1970-01-01', '9827111988', 'K-4 Aurobindo Enclsve Pachpedi Naka,\r\nRaipur (C.G.) 492001.', 'rahulkrishna1977@rediffmail.com', 2, 1),
(38, '', 'Arvind Naidu', 6, 6, 'Life Time', '1970-01-01', '9300200332', 'Ganesh Chowk Mathpara,\r\nRaipur (C.G.) 492001.', 'arvindnaidu332@gmail.com', 2, 1),
(39, '', 'Anil Golechha', 6, 6, 'Life Time', '1970-01-01', '9425205497', 'Bhairav Society,\r\nRaipur (C.G.) 492001.', 'sunidhijain15@gmail.com', 2, 1),
(40, '', 'Dr. Alok Pal', 6, 6, 'Life Time', '1970-01-01', '7049645132', 'Pal Complex Tikraapara,\r\nRaipur (C.G.) 492001.', 'dralokpal32001@yahoo.co.in', 2, 1),
(41, '', 'Rajesh Singh', 6, 6, 'Life Time', '1970-01-01', '9425210091', '27/325 Shankar Nagar,\r\nRaipur (C.G.) 492001.', 'rasttrack0091@yahoo.in', 2, 0),
(42, '', 'Manoj Pandey', 6, 6, 'Life Time', '1970-01-01', '9907130700', 'B-10 Shailendra Nagar,\r\nRaipur (C.G.) 492001.', 'manoj67pandey@gmail.com', 2, 0),
(43, '', 'Smt. Nilu Pargania', 6, 6, 'Life Time', '1970-01-01', '7898987850', '30/165 Amapara Chowk,\r\nRaipur (C.G.) 492001.', 'durgasparganiha@yahoo.com', 2, 1),
(44, '', 'Smt. Rakhi Jhabak', 6, 6, 'Life Time', '1970-01-01', '9425212510', 'Shop no. 39 1st floor \r\nGurukul comp. Kalibadi Chowk,\r\nRaipur (C.G.) 492001.', 'ashokjhabak_fca@yahoo.co.in', 2, 1),
(45, '', 'Smt. Aparna Moghe', 6, 6, 'Life Time', '1970-01-01', '9425215330', 'Shop no. 35 1st floor Gurukul comp. Kalibadi Chowk,', 'shashankmoghe@hotmail.com', 2, 1),
(46, '', 'Ku. Priyam Khare', 6, 6, 'Life Time', '1970-01-01', '9893199395', 'Sai Mandir Road Danganiya,\r\nRaipur (C.G.) 492001.', 'priyamkhare29@gmail.com', 2, 1),
(47, '', 'Ashok Kumar Jhabak', 6, 5, 'Life Time', '1970-01-01', '9425212510', 'Shop no. 39 1st floor Gurukul comp. Kalibadi Chowk,\r\nRaipur (C.G.) 492001.', 'ashokjhabak_fca@yahoo.co.in', 2, 1),
(49, '', 'Laxmikant Diwedi', 4, 3, 'Life Time', '1970-01-01', '9425516057', 'Old Bus Stand, Kurud', '', 2, 1),
(50, '', 'Mohendra Chandrakar', 4, 3, 'Life Time', '1970-01-01', '9098166315', 'Azad Chowk, Brahman Para, Kurud', '', 2, 1),
(51, '', 'Kajal Munjwani', 4, 3, 'Life Time', '1970-01-01', '9770512123', 'Gurudev Fabrics, Goal Bazar, Dhamtari', '', 2, 0),
(52, '', 'Hukum Chand Jain', 4, 2, 'Life Time', '1970-01-01', '9406186567', 'Panchulal Jain Stores, Math Mandir Chowk, Dhamtari - 493773', 'lionhukumjain@gmail.com', 2, 1),
(53, '', 'Chandradeep Singh', 4, 4, 'Life Time', '1970-01-01', '9425657164', 'Shikha Medical Stores, Bastar Road, Dhamtari', 'chandradeepsingh43@gmail.com', 2, 1),
(55, '', 'Neeraj Shukla', 4, 5, 'Life Time', '1970-01-01', '9425516148', 'College Road, Kurud', 'nrjshukla00@gmail.com', 2, 1),
(57, '', 'CA. Sameer Singh', 3, 1, 'Life Time', '1970-01-01', '9425530094', '9-B, 1st Foor, Arpa Complex, Opp. District Hospital, Near Nav Bharat Press, Bilaspur (CG)', 'casameersingh@gmail.com', 2, 1),
(58, '', 'Akhilesh Chandra Pradeep Bajpai', 3, 2, 'Life Time', '1970-01-01', '9826241042', '27 Kholi,  Vikas Nagar, Bilaspur (CG)\r\n', 'akhileshbajpai10nov@gmail.com', 2, 1),
(59, '', 'Dr. Ajay Shrivastava', 3, 3, 'Life Time', '1970-01-01', '9300696921', 'Opp. Chhattisgarh Bhawan, Tilak Nagar, Bilaspur (CG)\r\n', 'ajayspicmacay@yahoo.com', 2, 1),
(60, '', 'Mahendra Pandy', 3, 3, 'Life Time', '1970-01-01', '9827954547', 'Saket Enclave, Mungeli Road, Bilaspur (CG)\r\n', 'mmpandey24@gmail.com', 2, 1),
(61, '', 'Akshay jain', 3, 4, 'Life Time', '1970-01-01', '9039680570', 'M.I.G. 29 Shrda Sadan Nehru Nagar Bilaspur (CG)\r\n', 'mahamayaagencies@gmail.com', 2, 1),
(62, '', 'Keshav Bajpai', 3, 5, 'Life Time', '1970-01-01', '9039630700', 'Subhas Nagar Gondpara Bilaspur (CG)\r\n', 'bajpaikeshav@gmail.com', 2, 1),
(63, '', 'Chandra Nath Bajpai', 3, 6, 'Life Time', '1970-01-01', '9425227483', 'Bilaspur', '', 1, 1),
(64, '', 'Deependra Padhi', 3, 6, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 1, 1),
(65, '', 'Dr Ajay Shrivastava', 3, 6, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 1, 1),
(66, '', 'Pankaj Panchayiti', 3, 6, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 1, 1),
(67, '', 'Shushil Mishra', 3, 6, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 1, 1),
(68, '', 'Vikas Singh', 3, 6, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 1, 1),
(69, '', 'Manoj Yadav', 3, 6, 'Life Time', '1970-01-01', '9039630700', 'Bilaspur', '', 1, 1),
(70, '', 'Neeraj Shukla', 8, 11, 'Life Time', '1970-01-01', '9098913383', 'College Road, Kurud', 'nrjshukla00@gmail.com', 2, 1),
(71, '', 'G . Rajesh Kumar', 8, 11, 'Life Time', '1970-01-01', '9406009872', 'Qtr. No. 2-A, St.No. 40, Sector - 10, Bhilai-490006', 'g.rajeshkumar777@yahoo.com', 2, 1),
(72, '', 'K V R Murty   [ State Council ]', 8, 9, 'Life Time', '1970-01-01', '9425565886', 'Sector - 7, Bhilai', '', 1, 1),
(73, '', 'Shailesh Shukla  [ State Council ]', 8, 9, 'Life Time', '1970-01-01', '9425516148', 'Bilaspur', '', 1, 1),
(74, '', 'Shailendra Namdeo  [ State Council ]', 8, 9, 'Life Time', '1970-01-01', '9826194048', 'Korba', 'vskkrb@gmail.com', 1, 1),
(75, '', 'Ramesh Deo  [ State Council ]', 8, 9, 'Life Time', '1970-01-01', '0000000000', 'Dhamtari', '', 1, 1),
(76, '', 'Sunil Vishnoi  [ State Executive ]', 8, 9, 'Life Time', '1970-01-01', '9424226547', 'R-26, Sector-II, Avanti Vihar Colony, Raipur', 'sunilvishnoisp26@yahoo.com', 1, 1),
(77, '', 'Ravi Krishna  [ State Executive ]', 8, 9, 'Life Time', '1970-01-01', '9407935270', 'Sector-5, Bhiali', '', 1, 1),
(78, '', 'Salim Khan', 8, 8, 'Life Time', '1970-01-01', '9425246018', 'L Pocket, 12 - A, Maroda Sector, Bhilai - 490001', 'salimkhan.ashu@gmail.com', 2, 1),
(79, '', 'Ashok Kumar Jhabak', 8, 11, 'Life Time', '1970-01-01', '9425212510', 'Shop no. 39 1st floor Gurukul comp. Kalibadi Chowk, Raipur (C.G.) 492001.', 'ashokjhabak_fca@yahoo.co.in', 2, 1),
(80, '', 'Satish Shukla', 5, 1, 'Life Time', '2016-01-01', '9425224422', 'Korba', '', 2, 1),
(81, '', 'M L Sahu', 5, 3, 'Life Time', '2016-01-01', '9425539735', 'Korba', '', 2, 1),
(82, '', 'Dixen Masiah', 5, 3, 'Life Time', '2016-01-01', '9826680190', 'Korba', '', 2, 1),
(83, '', 'Sandeep Seth', 5, 2, 'Life Time', '2016-01-01', '9425079888', 'Korba', '', 2, 1),
(84, '', 'N V Vijesh', 5, 4, 'Life Time', '2016-01-01', '9827181326', 'Korba', '', 2, 1),
(85, '', 'Shailendra Namdeo', 5, 5, 'Life Time', '2016-01-01', '9826194048', 'Korba', '', 2, 1),
(86, '', 'Shyam Kewat', 5, 6, 'Life Time', '2016-01-01', '9826114808', 'Korba', '', 2, 1),
(87, '', 'Dr. Sanjay Tiwari', 5, 6, 'Life Time', '2016-01-01', '9827186431', 'Korba', '', 2, 1),
(88, '', 'Mrs. Sharda Namdeo', 5, 6, 'Life Time', '2016-01-01', '9826132048', 'Korba', '', 2, 1),
(89, '', 'Mrs. Kalpana Seth', 5, 6, 'Life Time', '2016-01-01', '7828126667', 'Korba', '', 2, 1),
(90, '', 'Mrs. Rekha Kewat', 5, 6, 'Life Time', '2016-01-01', '7024254398', 'Korba', '', 2, 1),
(91, '', 'Deepak Soni', 5, 6, 'Life Time', '2016-01-01', '9424144055', 'Korba', '', 2, 1),
(92, '', 'Shashi Bhushan Netam', 5, 6, 'Life Time', '2016-01-01', '9827114498', 'Korba', '', 2, 1),
(93, '', 'Ms. Ruchie Sahu', 5, 6, 'Life Time', '2016-01-01', '9893115102', 'Korba', '', 2, 1),
(94, '', 'Dr. Dinesh Singh', 5, 6, 'Life Time', '2016-01-01', '9039681828', 'Korba', '', 2, 1),
(95, '', 'Govind Sahu', 5, 6, 'Life Time', '2016-01-01', '9302671844', 'Korba', '', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `membership_fees`
--

CREATE TABLE `membership_fees` (
  `MID` smallint(6) NOT NULL,
  `Membership_Type` varchar(200) NOT NULL,
  `Duration` varchar(200) NOT NULL,
  `Fees` float NOT NULL,
  `CGST` float NOT NULL,
  `SGST` float NOT NULL,
  `Total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership_fees`
--

INSERT INTO `membership_fees` (`MID`, `Membership_Type`, `Duration`, `Fees`, `CGST`, `SGST`, `Total`) VALUES
(1, 'Junior', '1 Year', 59.33, 5.34, 5.34, 70);

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
(8, 'Swachh Bharat Mission', '', '', '<p class="MsoNormal" style="text-align: justify;"><strong>Swachhata Abhiyan</strong> was arranged at Laxman Temple, Sirpur, Chhattisgarh in association with tourism and related stakeholders viz. Archeological Survey of India, Hoteliers, Travel agents, Tour Operators, Local Guides, NSS / School / College Students from Mahasamund, Youth Hostel Association of India , C G State Branch, Nehru Yuva Kendra &ndash; Raipur &amp; members of NGO &ldquo;Bunch of Fools&rdquo; based at Raipur (TBC) etc on the birthday of father of our nation, Shri Mahatma Gandhi on <strong>Monday 02/10/2017</strong>.</p>\r\n<p class="MsoNormal" style="text-align: justify;">Chhattisgarh Tourism Board assisted us for the said programme and also given a wide publicity. Hotel Floret, Bhilai a franchisee of Youth Hostels Association of India too participated in this event.</p>\r\n<p class="MsoNormal" style="text-align: justify;">Celebrities like Padmashree Teejan Bai, Smt. Kuwar Bai Yadav Prime Minister Awardees, International Cricket Player Shri Rajesh Chauhan, International Hockey Player Ms. Neeta Dumre were present on the occasion.</p>\r\n<p class="MsoNormal" style="text-align: justify;">Mr. G Rajesh Kumar, Chairman and Mr. Salim Khan, Joint Secretary of YHAI CG State Branch were present on this occasion and contributed their services.</p>\r\n<p>Shri. Jitendra Jadhav, Manager, India Tourism, Indore was the Nodal Officer for the said event.</p>', '2017-12-31');

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

--
-- Dumping data for table `other_detail`
--

INSERT INTO `other_detail` (`Other_Id`, `Other_Type_Id`, `Other_Name`, `Other_Detail`, `Other_Files`) VALUES
(1, 1, 'test', 'test', '1492531013x.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `unit_master`
--

CREATE TABLE `unit_master` (
  `Unit_Id` tinyint(4) NOT NULL,
  `Unit_Name` varchar(50) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_master`
--

INSERT INTO `unit_master` (`Unit_Id`, `Unit_Name`, `Description`) VALUES
(1, 'Ambikapur', 'Ambikapur Unit was formed in 1988.'),
(2, 'Bhilai', 'Bhilai Unit was formed in 1986 much before the formation of CG as a State and was known as part of MP State. This unit was formed under the guidance of Shri. Suresh Rao.'),
(3, 'Bilaspur', 'Bilaspur unit was formed in 1998.'),
(4, 'Dhamtari', 'Dhamtari unit was established on 16.03.1998 with the help of Shri. Kailash Soni with membership strength of 68.'),
(5, 'Korba', 'Korba unit was formed in 2001, with the help of Mr. Sanjeev Soni.\r\n\r\n\r\n\r\nE-mail ID : youthhostelskorba@gmail.com'),
(6, 'Raipur', 'Raipur unit was formed in 1988.'),
(7, 'Raigarh', 'Raighar unit was formed in 1998.'),
(8, 'CG State', 'Established in the year 2001');

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
  MODIFY `Activity_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `activity_gallery_image`
--
ALTER TABLE `activity_gallery_image`
  MODIFY `Activity_Gallery_Image_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
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
  MODIFY `Circular_File_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `designation_master`
--
ALTER TABLE `designation_master`
  MODIFY `Designation_Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `discount`
--
ALTER TABLE `discount`
  MODIFY `Discount_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `latest_news`
--
ALTER TABLE `latest_news`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `Member_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;
--
-- AUTO_INCREMENT for table `membership_fees`
--
ALTER TABLE `membership_fees`
  MODIFY `MID` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news_and_events`
--
ALTER TABLE `news_and_events`
  MODIFY `News_And_Events_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `other_detail`
--
ALTER TABLE `other_detail`
  MODIFY `Other_Id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `unit_master`
--
ALTER TABLE `unit_master`
  MODIFY `Unit_Id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
