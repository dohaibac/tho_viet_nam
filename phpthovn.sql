-- phpMyAdmin SQL Dump
-- version 3.2.2.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 24, 2010 at 05:36 PM
-- Server version: 5.1.37
-- PHP Version: 5.2.10-2ubuntu6.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `phpthovn`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `introduction` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `poems_count` int(11) DEFAULT '0',
  `photo_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_file_size` int(11) DEFAULT NULL,
  `photo_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `name`, `introduction`, `created_at`, `updated_at`, `order`, `poems_count`, `photo_file_name`, `photo_content_type`, `photo_file_size`, `photo_updated_at`) VALUES
(1, 'nguyen BInh', 'demo dem\r\ndemo dem\r\ndemo dem\r\ndemo dem\r\ndemo dem\r\ndemo dem\r\n', '2009-12-04 14:49:48', '2009-12-04 15:22:41', NULL, 0, 'vietnamese_flag.jpg', 'image/jpeg', 34687, '2009-12-04 15:22:41'),
(2, 'Thuáº­n HÃ³a', 'nothing', '2009-12-07 14:57:43', '2009-12-07 14:57:43', NULL, 1, 'vietnamese_flag.jpg', 'image/jpeg', 34687, '2009-12-07 14:57:43'),
(3, 'ÄÃ´ng TÃ ', '<p class="pBody">C&aacute;c quan chá»©c ABAE giáº£i th&iacute;ch: &ldquo;R&acirc;u (cáº±m láº«n m&eacute;p) Ä‘á»u bá»‹ cáº¥m trong quyá»n anh nghiá»‡p dÆ° v&igrave; l&yacute; do an to&agrave;n v&agrave; sá»©c khá»e cá»§a c&aacute;c v&otilde; sÄ©. Theo Ä‘&oacute;, luáº­t quy Ä‘á»‹nh c&aacute;c v&otilde; sÄ© pháº£i cáº¡o r&acirc;u trÆ°á»›c khi c&acirc;n trá»ng lÆ°á»£ng. Viá»‡c Ä‘á»ƒ r&acirc;u cÅ©ng bá»‹ cáº¥m á»Ÿ quyá»n anh chuy&ecirc;n nghiá»‡p tá»« nÄƒm nÄƒm trÆ°á»›c sau khi Danny Williams - nh&agrave; v&ocirc; Ä‘á»‹ch háº¡ng náº·ng cá»§a Anh (l&agrave; ngÆ°á»i theo Ä‘áº¡o Há»“i) - bá»‹ Vitali Klitschko Ä‘&aacute;nh t&oacute;e m&aacute;u á»Ÿ cáº±m v&igrave; r&acirc;u&rdquo;.</p>\r\n<p class="pBody">Äiá»u luáº­t c&oacute; váº» há»£p l&yacute; náº¿u n&oacute; kh&ocirc;ng c&oacute; Ä‘iá»u khoáº£n phá»¥ tá»“n táº¡i nhiá»u nÄƒm qua: &ldquo;Chá»‰ nhá»¯ng v&otilde; sÄ© theo Ä‘áº¡o Sikh má»›i Ä‘Æ°á»£c Ä‘á»ƒ r&acirc;u thi Ä‘áº¥u náº¿u d&aacute;n keo hoáº·c che s&aacute;t cáº±m&rdquo;. Tá»« Ä‘&acirc;y, n&oacute; trá»Ÿ th&agrave;nh cÆ¡ sá»Ÿ Ä‘á»ƒ nhá»¯ng ngÆ°á»i Há»“i gi&aacute;o pháº£n á»©ng quyáº¿t liá»‡t bá»Ÿi há» cho ráº±ng m&igrave;nh Ä‘ang bá»‹ &eacute;p v&igrave; ABAE ho&agrave;n to&agrave;n c&oacute; thá»ƒ má»Ÿ rá»™ng luáº­t cho ngÆ°á»i Há»“i gi&aacute;o Ä‘Æ°á»£c thi Ä‘áº¥u nhÆ° ngÆ°á»i Sikh.</p>', '2009-12-29 15:09:17', '2009-12-29 15:09:17', NULL, 2, 'ImageView.aspx.jpeg', 'image/jpeg', 24969, '2009-12-29 15:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `banner_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `posting_validation_id` int(11) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `ranking_order` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(16) NOT NULL DEFAULT '0',
  `user_agent` varchar(50) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `session_data`) VALUES
('d7ff984bfe03f4789f1ce93c6b1a9642', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.6', 1264259089, NULL),
('6884721ffe200f65b62c07df062f6f97', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.6', 1264259438, NULL),
('48c22e81dc7e280100dda679b6b4ed83', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.7', 1264327967, 'a:0:{}'),
('64977bd662a6beae594044fa77a4d9a4', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.6', 1264259669, NULL),
('bb5f8ab2c39689bed84ca60b22b217bf', '127.0.0.1', 'Mozilla/5.0 (X11; U; Linux i686; en-US; rv:1.9.1.6', 1264263537, 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `poem_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `poem_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '<p>bai tho nay hay lam</p>\r\n<p style="text-align: right;"><strong>to thich lam</strong></p>\r\n<p>cho to nhe</p>', '2009-12-13 15:10:28', '2009-12-13 15:14:26'),
(2, 1, 1, '<p>hay qua, bai nay duoc day</p>', '2009-12-27 06:02:50', '2009-12-27 06:02:50');

-- --------------------------------------------------------

--
-- Table structure for table `downloads`
--

CREATE TABLE IF NOT EXISTS `downloads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `show` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dumping data for table `downloads`
--


-- --------------------------------------------------------

--
-- Table structure for table `fa_country`
--

CREATE TABLE IF NOT EXISTS `fa_country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=240 ;

--
-- Dumping data for table `fa_country`
--

INSERT INTO `fa_country` (`id`, `iso`, `name`, `iso3`, `numcode`) VALUES
(1, 'AF', 'Afghanistan', 'AFG', 4),
(2, 'AL', 'Albania', 'ALB', 8),
(3, 'DZ', 'Algeria', 'DZA', 12),
(4, 'AS', 'American Samoa', 'ASM', 16),
(5, 'AD', 'Andorra', 'AND', 20),
(6, 'AO', 'Angola', 'AGO', 24),
(7, 'AI', 'Anguilla', 'AIA', 660),
(8, 'AQ', 'Antarctica', NULL, NULL),
(9, 'AG', 'Antigua and Barbuda', 'ATG', 28),
(10, 'AR', 'Argentina', 'ARG', 32),
(11, 'AM', 'Armenia', 'ARM', 51),
(12, 'AW', 'Aruba', 'ABW', 533),
(13, 'AU', 'Australia', 'AUS', 36),
(14, 'AT', 'Austria', 'AUT', 40),
(15, 'AZ', 'Azerbaijan', 'AZE', 31),
(16, 'BS', 'Bahamas', 'BHS', 44),
(17, 'BH', 'Bahrain', 'BHR', 48),
(18, 'BD', 'Bangladesh', 'BGD', 50),
(19, 'BB', 'Barbados', 'BRB', 52),
(20, 'BY', 'Belarus', 'BLR', 112),
(21, 'BE', 'Belgium', 'BEL', 56),
(22, 'BZ', 'Belize', 'BLZ', 84),
(23, 'BJ', 'Benin', 'BEN', 204),
(24, 'BM', 'Bermuda', 'BMU', 60),
(25, 'BT', 'Bhutan', 'BTN', 64),
(26, 'BO', 'Bolivia', 'BOL', 68),
(27, 'BA', 'Bosnia and Herzegovina', 'BIH', 70),
(28, 'BW', 'Botswana', 'BWA', 72),
(29, 'BV', 'Bouvet Island', NULL, NULL),
(30, 'BR', 'Brazil', 'BRA', 76),
(31, 'IO', 'British Indian Ocean Territory', NULL, NULL),
(32, 'BN', 'Brunei Darussalam', 'BRN', 96),
(33, 'BG', 'Bulgaria', 'BGR', 100),
(34, 'BF', 'Burkina Faso', 'BFA', 854),
(35, 'BI', 'Burundi', 'BDI', 108),
(36, 'KH', 'Cambodia', 'KHM', 116),
(37, 'CM', 'Cameroon', 'CMR', 120),
(38, 'CA', 'Canada', 'CAN', 124),
(39, 'CV', 'Cape Verde', 'CPV', 132),
(40, 'KY', 'Cayman Islands', 'CYM', 136),
(41, 'CF', 'Central African Republic', 'CAF', 140),
(42, 'TD', 'Chad', 'TCD', 148),
(43, 'CL', 'Chile', 'CHL', 152),
(44, 'CN', 'China', 'CHN', 156),
(45, 'CX', 'Christmas Island', NULL, NULL),
(46, 'CC', 'Cocos (Keeling) Islands', NULL, NULL),
(47, 'CO', 'Colombia', 'COL', 170),
(48, 'KM', 'Comoros', 'COM', 174),
(49, 'CG', 'Congo', 'COG', 178),
(50, 'CD', 'Congo, the Democratic Republic of the', 'COD', 180),
(51, 'CK', 'Cook Islands', 'COK', 184),
(52, 'CR', 'Costa Rica', 'CRI', 188),
(53, 'CI', 'Cote D''Ivoire', 'CIV', 384),
(54, 'HR', 'Croatia', 'HRV', 191),
(55, 'CU', 'Cuba', 'CUB', 192),
(56, 'CY', 'Cyprus', 'CYP', 196),
(57, 'CZ', 'Czech Republic', 'CZE', 203),
(58, 'DK', 'Denmark', 'DNK', 208),
(59, 'DJ', 'Djibouti', 'DJI', 262),
(60, 'DM', 'Dominica', 'DMA', 212),
(61, 'DO', 'Dominican Republic', 'DOM', 214),
(62, 'EC', 'Ecuador', 'ECU', 218),
(63, 'EG', 'Egypt', 'EGY', 818),
(64, 'SV', 'El Salvador', 'SLV', 222),
(65, 'GQ', 'Equatorial Guinea', 'GNQ', 226),
(66, 'ER', 'Eritrea', 'ERI', 232),
(67, 'EE', 'Estonia', 'EST', 233),
(68, 'ET', 'Ethiopia', 'ETH', 231),
(69, 'FK', 'Falkland Islands (Malvinas)', 'FLK', 238),
(70, 'FO', 'Faroe Islands', 'FRO', 234),
(71, 'FJ', 'Fiji', 'FJI', 242),
(72, 'FI', 'Finland', 'FIN', 246),
(73, 'FR', 'France', 'FRA', 250),
(74, 'GF', 'French Guiana', 'GUF', 254),
(75, 'PF', 'French Polynesia', 'PYF', 258),
(76, 'TF', 'French Southern Territories', NULL, NULL),
(77, 'GA', 'Gabon', 'GAB', 266),
(78, 'GM', 'Gambia', 'GMB', 270),
(79, 'GE', 'Georgia', 'GEO', 268),
(80, 'DE', 'Germany', 'DEU', 276),
(81, 'GH', 'Ghana', 'GHA', 288),
(82, 'GI', 'Gibraltar', 'GIB', 292),
(83, 'GR', 'Greece', 'GRC', 300),
(84, 'GL', 'Greenland', 'GRL', 304),
(85, 'GD', 'Grenada', 'GRD', 308),
(86, 'GP', 'Guadeloupe', 'GLP', 312),
(87, 'GU', 'Guam', 'GUM', 316),
(88, 'GT', 'Guatemala', 'GTM', 320),
(89, 'GN', 'Guinea', 'GIN', 324),
(90, 'GW', 'Guinea-Bissau', 'GNB', 624),
(91, 'GY', 'Guyana', 'GUY', 328),
(92, 'HT', 'Haiti', 'HTI', 332),
(93, 'HM', 'Heard Island and Mcdonald Islands', NULL, NULL),
(94, 'VA', 'Holy See (Vatican City State)', 'VAT', 336),
(95, 'HN', 'Honduras', 'HND', 340),
(96, 'HK', 'Hong Kong', 'HKG', 344),
(97, 'HU', 'Hungary', 'HUN', 348),
(98, 'IS', 'Iceland', 'ISL', 352),
(99, 'IN', 'India', 'IND', 356),
(100, 'ID', 'Indonesia', 'IDN', 360),
(101, 'IR', 'Iran, Islamic Republic of', 'IRN', 364),
(102, 'IQ', 'Iraq', 'IRQ', 368),
(103, 'IE', 'Ireland', 'IRL', 372),
(104, 'IL', 'Israel', 'ISR', 376),
(105, 'IT', 'Italy', 'ITA', 380),
(106, 'JM', 'Jamaica', 'JAM', 388),
(107, 'JP', 'Japan', 'JPN', 392),
(108, 'JO', 'Jordan', 'JOR', 400),
(109, 'KZ', 'Kazakhstan', 'KAZ', 398),
(110, 'KE', 'Kenya', 'KEN', 404),
(111, 'KI', 'Kiribati', 'KIR', 296),
(112, 'KP', 'Korea, Democratic People''s Republic of', 'PRK', 408),
(113, 'KR', 'Korea, Republic of', 'KOR', 410),
(114, 'KW', 'Kuwait', 'KWT', 414),
(115, 'KG', 'Kyrgyzstan', 'KGZ', 417),
(116, 'LA', 'Lao People''s Democratic Republic', 'LAO', 418),
(117, 'LV', 'Latvia', 'LVA', 428),
(118, 'LB', 'Lebanon', 'LBN', 422),
(119, 'LS', 'Lesotho', 'LSO', 426),
(120, 'LR', 'Liberia', 'LBR', 430),
(121, 'LY', 'Libyan Arab Jamahiriya', 'LBY', 434),
(122, 'LI', 'Liechtenstein', 'LIE', 438),
(123, 'LT', 'Lithuania', 'LTU', 440),
(124, 'LU', 'Luxembourg', 'LUX', 442),
(125, 'MO', 'Macao', 'MAC', 446),
(126, 'MK', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807),
(127, 'MG', 'Madagascar', 'MDG', 450),
(128, 'MW', 'Malawi', 'MWI', 454),
(129, 'MY', 'Malaysia', 'MYS', 458),
(130, 'MV', 'Maldives', 'MDV', 462),
(131, 'ML', 'Mali', 'MLI', 466),
(132, 'MT', 'Malta', 'MLT', 470),
(133, 'MH', 'Marshall Islands', 'MHL', 584),
(134, 'MQ', 'Martinique', 'MTQ', 474),
(135, 'MR', 'Mauritania', 'MRT', 478),
(136, 'MU', 'Mauritius', 'MUS', 480),
(137, 'YT', 'Mayotte', NULL, NULL),
(138, 'MX', 'Mexico', 'MEX', 484),
(139, 'FM', 'Micronesia, Federated States of', 'FSM', 583),
(140, 'MD', 'Moldova, Republic of', 'MDA', 498),
(141, 'MC', 'Monaco', 'MCO', 492),
(142, 'MN', 'Mongolia', 'MNG', 496),
(143, 'MS', 'Montserrat', 'MSR', 500),
(144, 'MA', 'Morocco', 'MAR', 504),
(145, 'MZ', 'Mozambique', 'MOZ', 508),
(146, 'MM', 'Myanmar', 'MMR', 104),
(147, 'NA', 'Namibia', 'NAM', 516),
(148, 'NR', 'Nauru', 'NRU', 520),
(149, 'NP', 'Nepal', 'NPL', 524),
(150, 'NL', 'Netherlands', 'NLD', 528),
(151, 'AN', 'Netherlands Antilles', 'ANT', 530),
(152, 'NC', 'New Caledonia', 'NCL', 540),
(153, 'NZ', 'New Zealand', 'NZL', 554),
(154, 'NI', 'Nicaragua', 'NIC', 558),
(155, 'NE', 'Niger', 'NER', 562),
(156, 'NG', 'Nigeria', 'NGA', 566),
(157, 'NU', 'Niue', 'NIU', 570),
(158, 'NF', 'Norfolk Island', 'NFK', 574),
(159, 'MP', 'Northern Mariana Islands', 'MNP', 580),
(160, 'NO', 'Norway', 'NOR', 578),
(161, 'OM', 'Oman', 'OMN', 512),
(162, 'PK', 'Pakistan', 'PAK', 586),
(163, 'PW', 'Palau', 'PLW', 585),
(164, 'PS', 'Palestinian Territory, Occupied', NULL, NULL),
(165, 'PA', 'Panama', 'PAN', 591),
(166, 'PG', 'Papua New Guinea', 'PNG', 598),
(167, 'PY', 'Paraguay', 'PRY', 600),
(168, 'PE', 'Peru', 'PER', 604),
(169, 'PH', 'Philippines', 'PHL', 608),
(170, 'PN', 'Pitcairn', 'PCN', 612),
(171, 'PL', 'Poland', 'POL', 616),
(172, 'PT', 'Portugal', 'PRT', 620),
(173, 'PR', 'Puerto Rico', 'PRI', 630),
(174, 'QA', 'Qatar', 'QAT', 634),
(175, 'RE', 'Reunion', 'REU', 638),
(176, 'RO', 'Romania', 'ROM', 642),
(177, 'RU', 'Russian Federation', 'RUS', 643),
(178, 'RW', 'Rwanda', 'RWA', 646),
(179, 'SH', 'Saint Helena', 'SHN', 654),
(180, 'KN', 'Saint Kitts and Nevis', 'KNA', 659),
(181, 'LC', 'Saint Lucia', 'LCA', 662),
(182, 'PM', 'Saint Pierre and Miquelon', 'SPM', 666),
(183, 'VC', 'Saint Vincent and the Grenadines', 'VCT', 670),
(184, 'WS', 'Samoa', 'WSM', 882),
(185, 'SM', 'San Marino', 'SMR', 674),
(186, 'ST', 'Sao Tome and Principe', 'STP', 678),
(187, 'SA', 'Saudi Arabia', 'SAU', 682),
(188, 'SN', 'Senegal', 'SEN', 686),
(189, 'CS', 'Serbia and Montenegro', NULL, NULL),
(190, 'SC', 'Seychelles', 'SYC', 690),
(191, 'SL', 'Sierra Leone', 'SLE', 694),
(192, 'SG', 'Singapore', 'SGP', 702),
(193, 'SK', 'Slovakia', 'SVK', 703),
(194, 'SI', 'Slovenia', 'SVN', 705),
(195, 'SB', 'Solomon Islands', 'SLB', 90),
(196, 'SO', 'Somalia', 'SOM', 706),
(197, 'ZA', 'South Africa', 'ZAF', 710),
(198, 'GS', 'South Georgia and the South Sandwich Islands', NULL, NULL),
(199, 'ES', 'Spain', 'ESP', 724),
(200, 'LK', 'Sri Lanka', 'LKA', 144),
(201, 'SD', 'Sudan', 'SDN', 736),
(202, 'SR', 'Suriname', 'SUR', 740),
(203, 'SJ', 'Svalbard and Jan Mayen', 'SJM', 744),
(204, 'SZ', 'Swaziland', 'SWZ', 748),
(205, 'SE', 'Sweden', 'SWE', 752),
(206, 'CH', 'Switzerland', 'CHE', 756),
(207, 'SY', 'Syrian Arab Republic', 'SYR', 760),
(208, 'TW', 'Taiwan, Province of China', 'TWN', 158),
(209, 'TJ', 'Tajikistan', 'TJK', 762),
(210, 'TZ', 'Tanzania, United Republic of', 'TZA', 834),
(211, 'TH', 'Thailand', 'THA', 764),
(212, 'TL', 'Timor-Leste', NULL, NULL),
(213, 'TG', 'Togo', 'TGO', 768),
(214, 'TK', 'Tokelau', 'TKL', 772),
(215, 'TO', 'Tonga', 'TON', 776),
(216, 'TT', 'Trinidad and Tobago', 'TTO', 780),
(217, 'TN', 'Tunisia', 'TUN', 788),
(218, 'TR', 'Turkey', 'TUR', 792),
(219, 'TM', 'Turkmenistan', 'TKM', 795),
(220, 'TC', 'Turks and Caicos Islands', 'TCA', 796),
(221, 'TV', 'Tuvalu', 'TUV', 798),
(222, 'UG', 'Uganda', 'UGA', 800),
(223, 'UA', 'Ukraine', 'UKR', 804),
(224, 'AE', 'United Arab Emirates', 'ARE', 784),
(225, 'GB', 'United Kingdom', 'GBR', 826),
(226, 'US', 'United States', 'USA', 840),
(227, 'UM', 'United States Minor Outlying Islands', NULL, NULL),
(228, 'UY', 'Uruguay', 'URY', 858),
(229, 'UZ', 'Uzbekistan', 'UZB', 860),
(230, 'VU', 'Vanuatu', 'VUT', 548),
(231, 'VE', 'Venezuela', 'VEN', 862),
(232, 'VN', 'Viet Nam', 'VNM', 704),
(233, 'VG', 'Virgin Islands, British', 'VGB', 92),
(234, 'VI', 'Virgin Islands, U.s.', 'VIR', 850),
(235, 'WF', 'Wallis and Futuna', 'WLF', 876),
(236, 'EH', 'Western Sahara', 'ESH', 732),
(237, 'YE', 'Yemen', 'YEM', 887),
(238, 'ZM', 'Zambia', 'ZMB', 894),
(239, 'ZW', 'Zimbabwe', 'ZWE', 716);

-- --------------------------------------------------------

--
-- Table structure for table `fa_user`
--

CREATE TABLE IF NOT EXISTS `fa_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `forgotten_password_code` varchar(50) DEFAULT NULL,
  `last_visit` datetime DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `user_FI_1` (`country_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `fa_user`
--

INSERT INTO `fa_user` (`id`, `user_name`, `country_id`, `password`, `email`, `role`, `banned`, `forgotten_password_code`, `last_visit`, `created`, `modified`) VALUES
(1, 'sqics', NULL, 'd5baf2e52557a2463a7725e2a5b64fd2', 'sqics.sqics@gmail.com', 'superadmin', 0, NULL, NULL, '2010-01-16 17:42:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `fa_user_profile`
--

CREATE TABLE IF NOT EXISTS `fa_user_profile` (
  `id` int(11) NOT NULL,
  `field_1` varchar(50) DEFAULT NULL,
  `field_2` varchar(50) DEFAULT NULL,
  `call_me_nicely` varchar(3) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fa_user_profile`
--

INSERT INTO `fa_user_profile` (`id`, `field_1`, `field_2`, `call_me_nicely`) VALUES
(1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fa_user_temp`
--

CREATE TABLE IF NOT EXISTS `fa_user_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) NOT NULL,
  `country_id` int(11) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(120) NOT NULL,
  `activation_code` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_FI_1` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `fa_user_temp`
--


-- --------------------------------------------------------

--
-- Table structure for table `infos`
--

CREATE TABLE IF NOT EXISTS `infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permalink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `infos`
--

INSERT INTO `infos` (`id`, `name`, `permalink`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 'Rule', 'rule', 'Cac quy dinh va thuat ngu cua Tho Viet Nan', '1> thanh vien', '2010-01-02 15:03:01', '2010-01-02 15:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `news_codes`
--

CREATE TABLE IF NOT EXISTS `news_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `brief_intro` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news_codes`
--

INSERT INTO `news_codes` (`id`, `title`, `image_title`, `show`, `brief_intro`, `content`, `created_at`, `updated_at`, `image_file_name`, `image_content_type`, `image_file_size`, `image_updated_at`) VALUES
(1, 'U-23 Viá»‡t Nam - U-23 ThÃ¡i Lan 1-1: Khá»Ÿi Ä‘áº§u cháº­t váº­t', 'Niá»m vui cá»§a ÄÃ¬nh TÃ¹ng sau khi thá»±c hiá»‡n thÃ nh cÃ´ng quáº£ pháº¡t 11m', 1, 'TT - Quáº£ táº¡t hiá»ƒm hÃ³c cá»§a HoÃ ng Quáº£ng vÃ  báº£n lÄ©nh cá»§a ÄÃ¬nh TÃ¹ng khi thá»±c hiá»‡n cÃº sÃºt 11m Ä‘Ã£ Ä‘em láº¡i 1 Ä‘iá»ƒm quÃ½ giÃ¡ cho tuyá»ƒn U-23 VN Ä‘Ãºng vÃ o phÃºt 90 cá»§a tráº­n Ä‘áº¥u.', '<p>Má»™t cuá»™c Ä‘áº¥u tr&iacute; gian nan cho U-23 VN khi ngÆ°á»i Th&aacute;i c&oacute; hai so&aacute;i tÆ°á»›ng hiá»ƒu qu&aacute; r&otilde; b&oacute;ng Ä‘&aacute; VN l&agrave; HLV Darby v&agrave; trá»£ l&yacute; Kiatisak. Äiá»u n&agrave;y Ä‘&atilde; khiáº¿n phÆ°Æ¡ng &aacute;n sÄƒn b&agrave;n tá»« tuyáº¿n hai cá»§a U-23 VN bá»‹ ph&aacute; sáº£n. ChÆ¡i máº¡nh máº½, cÆ¡ Ä‘á»™ng, c&aacute;c tiá»n vá»‡ Th&aacute;i Lan Ä‘&atilde; cáº¯t nhá» tuyáº¿n giá»¯a cá»§a VN. Trong khi Ä‘&oacute; Thanh B&igrave;nh trá»Ÿ th&agrave;nh &ldquo;m&oacute;n sandwich káº¹p thá»‹t&rdquo; cá»§a hai trung vá»‡ cao to Th&aacute;i Lan.  V&agrave; &ldquo;chá»‹u Ä‘&ograve;n&rdquo; ch&iacute;nh l&agrave; h&igrave;nh áº£nh cá»§a U-23 VN trong suá»‘t hiá»‡p má»™t. Trong sá»‘ nÄƒm quáº£ s&uacute;t tr&uacute;ng Ä‘&iacute;ch cá»§a U-23 Th&aacute;i Lan á»Ÿ hiá»‡p Ä‘áº¥u n&agrave;y, c&uacute; s&uacute;t xo&aacute;y báº±ng m&aacute; ngo&agrave;i cá»§a Arthit (7) Ä‘&atilde; su&yacute;t háº¡ thá»§ m&ocirc;n Táº¥n TrÆ°á»ng. D&ugrave; váº­y, trong kh&oacute; khÄƒn thá»§ m&ocirc;n Táº¥n TrÆ°á»ng Ä‘&atilde; l&agrave;m má»i ngÆ°á»i y&ecirc;n l&ograve;ng vá»›i lá»‘i báº¯t b&oacute;ng cháº¯c cháº¯n v&agrave; ra v&agrave;o há»£p l&yacute;.  Trong tháº¿ tráº­n bá»‹ v&acirc;y &eacute;p, má»™t t&igrave;nh huá»‘ng Ä‘á»™t biáº¿n c&oacute; thá»ƒ sáº½ l&agrave;m thay Ä‘á»•i tháº¿ tráº­n cho Ä‘o&agrave;n qu&acirc;n cá»§a &ocirc;ng Calisto. Äiá»u Ä‘&oacute; Ä‘&atilde; Ä‘áº¿n á»Ÿ ph&uacute;t 29 vá»›i c&uacute; báº¥m b&oacute;ng cá»§a Th&aacute;i DÆ°Æ¡ng. Má»™t quáº£ báº¥m b&oacute;ng tháº­t tuyá»‡t vá»i khi n&oacute; loáº¡i ho&agrave;n to&agrave;n hai trung vá»‡ Th&aacute;i Lan v&agrave; táº¡o Ä‘iá»u kiá»‡n cho tiá»n Ä‘áº¡o Thanh B&igrave;nh c&oacute; cÆ¡ há»™i s&uacute;t b&oacute;ng trong tÆ° tháº¿ Ä‘á»‘i máº·t vá»›i thá»§ m&ocirc;n Kawin. NhÆ°ng má»™t tho&aacute;ng cháº§n chá»« cá»§a Thanh B&igrave;nh Ä‘&atilde; táº¡o Ä‘iá»u kiá»‡n Ä‘á»ƒ thá»§ m&ocirc;n Kawin lao ra cáº£n ph&aacute;.  Hiá»‡p hai láº¡i l&agrave; má»™t cuá»™c Ä‘áº¥u tr&iacute; má»›i cá»§a bá»™ Ä‘&ocirc;i Darby - Kiatisak v&agrave; bá»™ sáº­u cá»§a HLV Calisto. Sau nhá»¯ng láº§n c&ocirc;ng ph&aacute; kh&oacute; khÄƒn á»Ÿ hai c&aacute;nh do váº¥p pháº£i sá»± chá»‘ng tráº£ quyáº¿t liá»‡t cá»§a Ho&agrave;ng Quáº£ng v&agrave; Ä&igrave;nh Äá»“ng, c&aacute;c cáº§u thá»§ Th&aacute;i Lan Ä‘&atilde; li&ecirc;n tá»¥c Ä‘&aacute;nh vá»— máº·t v&agrave;o trung lá»™. V&agrave; d&ugrave; mÅ©i nhá»n nguy hiá»ƒm nháº¥t l&agrave; Dangda rá»i s&acirc;n nhÆ°ng c&aacute;c cáº§u thá»§ Th&aacute;i váº«n Ä‘&aacute;nh thá»§ng Ä‘Æ°á»£c h&agrave;ng thá»§ cá»§a U-23 VN. May máº¯n l&agrave; Soleb (14) v&agrave; Sompong (thay Dangda) Ä‘&atilde; bá» qua hai cÆ¡ há»™i Äƒn b&agrave;n mÆ°á»i mÆ°Æ¡i á»Ÿ ph&uacute;t 60 v&agrave; 62.  Äá»‘i láº¡i, &ocirc;ng Calisto r&uacute;t Thanh B&igrave;nh v&agrave; C&ocirc;ng Minh ra Ä‘á»ƒ thay báº±ng Ä&igrave;nh T&ugrave;ng (ph&uacute;t 54) v&agrave; Qu&yacute; Sá»­u (ph&uacute;t 49). Sá»± thay ngÆ°á»i Ä‘&atilde; l&agrave;m tuyáº¿n giá»¯a cá»§a U-23 VN báº¯t Ä‘áº§u tá»• chá»©c Ä‘Æ°á»£c nhá»¯ng miáº¿ng Ä‘&aacute;nh liá»n láº¡c. Trong khi Ä‘&oacute;, ká»¹ thuáº­t c&aacute; nh&acirc;n v&agrave; sá»± di chuyá»ƒn kháº¯p máº·t s&acirc;n cá»§a tiá»n Ä‘áº¡o Ä&igrave;nh T&ugrave;ng Ä‘&atilde; l&agrave;m h&agrave;ng thá»§ Th&aacute;i Lan báº¯t Ä‘áº§u máº¥t phÆ°Æ¡ng hÆ°á»›ng. Sá»± Ä‘iá»u chá»‰nh n&agrave;y Ä‘&atilde; gi&uacute;p U-23 VN c&oacute; pha pháº£n c&ocirc;ng nhanh tuyá»‡t Ä‘áº¹p á»Ÿ ph&uacute;t 64. á»ž pha b&oacute;ng n&agrave;y, b&oacute;ng báº­t nhanh nhÆ° Ä‘iá»‡n qua Ä‘&ocirc;i ch&acirc;n cá»§a Qu&yacute; Sá»­u, Th&agrave;nh LÆ°Æ¡ng... loáº¡i bá» ho&agrave;n to&agrave;n c&aacute;c chiáº¿c &aacute;o xanh. Tiáº¿c l&agrave; Ä&igrave;nh T&ugrave;ng láº¡i háº¥p táº¥p s&uacute;t vá»t x&agrave;.  T&igrave;nh huá»‘ng Ä‘á»™t biáº¿n bá»‹ bá» qua n&agrave;y c&agrave;ng l&agrave;m má»i ngÆ°á»i tiáº¿c Ä‘á»©t ruá»™t bá»Ÿi ngÆ°á»i Th&aacute;i Ä‘&atilde; thá»±c hiá»‡n th&agrave;nh c&ocirc;ng trÆ°á»›c Ä‘iá»u n&agrave;y. Ph&uacute;t 72, tá»« quáº£ pháº¡t g&oacute;c, do bá»‹ che máº¯t, Táº¥n TrÆ°á»ng Ä‘&atilde; nho&agrave;i ngÆ°á»i trong tuyá»‡t vá»ng trÆ°á»›c c&uacute; s&uacute;t cá»§a Kirati. U-23 Th&aacute;i Lan vÆ°á»£t l&ecirc;n dáº«n trÆ°á»›c 1-0. D&ugrave; rÆ¡i v&agrave;o tháº¿ mu&ocirc;n v&agrave;n kh&oacute; khÄƒn nhÆ°ng cÅ©ng ch&iacute;nh tá»« Ä‘&acirc;y, &yacute; ch&iacute; chiáº¿n Ä‘áº¥u cá»§a c&aacute;c cáº§u thá»§ VN láº¡i c&agrave;ng m&atilde;nh liá»‡t. Nhá»¯ng chiáº¿c &aacute;o tráº¯ng váº«n b&igrave;nh tÄ©nh tá»• chá»©c c&aacute;c Ä‘á»£t táº¥n c&ocirc;ng vá» ph&iacute;a khung th&agrave;nh thá»§ m&ocirc;n Kawin. Ph&uacute;t 89, quáº£ táº¡t b&oacute;ng tá»« cá»± ly kh&aacute; xa cá»§a Ho&agrave;ng Quáº£ng Ä‘&atilde; khiáº¿n má»™t chiáº¿c &aacute;o xanh pháº¡m lá»—i trong v&ograve;ng cáº¥m. Pháº¡t Ä‘á»n cho U-23 VN.  Má»«ng nhÆ°ng Ä‘&acirc;y l&agrave; quáº£ pháº¡t 11m kh&oacute; Ä‘&aacute; bá»Ÿi cáº§u thá»§ thá»±c hiá»‡n chá»‹u g&aacute;nh náº·ng t&acirc;m l&yacute; ráº¥t lá»›n. Ngay c&aacute;c cáº§u thá»§ Th&aacute;i Lan cÅ©ng &ldquo;l&agrave;m tr&ograve;&rdquo; á»Ÿ b&ecirc;n ngo&agrave;i cháº¥m 11m Ä‘á»ƒ táº¡o sá»©c &eacute;p cho Ä&igrave;nh T&ugrave;ng. NhÆ°ng anh Ä‘&atilde; c&oacute; c&uacute; s&uacute;t Ä‘&aacute;nh lá»«a Ä‘Æ°á»£c thá»§ m&ocirc;n Kawin v&agrave; Ä‘Æ°a b&oacute;ng v&agrave;o g&oacute;c lÆ°á»›i trong sá»± thá»Ÿ ph&agrave;o cá»§a má»i ngÆ°á»i. L&uacute;c n&agrave;y tráº­n Ä‘áº¥u Ä‘&atilde; v&agrave;o ph&uacute;t 90.  Láº¥y láº¡i 1 Ä‘iá»ƒm nhá»c nháº±n v&agrave;o giá» cuá»‘i, U-23 VN Ä‘&atilde; t&igrave;m láº¡i Ä‘Æ°á»£c sá»± thuáº­n lá»£i trÆ°á»›c khi bÆ°á»›c v&agrave;o tráº­n quyáº¿t chiáº¿n vá»›i U-23 Malaysia v&agrave;o ng&agrave;y 6-12</p>', '2009-12-03 14:28:05', '2010-01-02 15:33:51', 'images1.jpeg', 'image/jpeg', 3885, '2010-01-02 15:33:51'),
(2, 'Nhiá»u hÃ£ng sá»¯a tÄƒng giÃ¡', 'testing', 1, 'TT (TP.HCM) - NgÃ y 2-12, cÃ¡c cÃ´ng ty sáº£n xuáº¥t sá»¯a trong nÆ°á»›c cho biáº¿t giÃ¡ Ä‘Æ°á»ng thá»i gian qua tÄƒng buá»™c há» pháº£i Ä‘iá»u chá»‰nh tÄƒng giÃ¡ má»™t sá»‘ sáº£n pháº©m 5-7%.', '<p>Theo Ä‘&oacute;, tá»« th&aacute;ng 12-2009 gi&aacute; sáº£n pháº©m sá»¯a c&aacute;c loáº¡i cá»§a Vinamilk tÄƒng b&igrave;nh qu&acirc;n 6%, ri&ecirc;ng sá»¯a nÆ°á»›c gi&aacute; kh&ocirc;ng Ä‘á»•i. Tuy nhi&ecirc;n, ghi nháº­n tr&ecirc;n thá»‹ trÆ°á»ng má»™t sá»‘ cá»­a h&agrave;ng Ä‘&atilde; tá»± Ä‘á»™ng tÄƒng gi&aacute; sá»¯a nÆ°á»›c Vinamilk loáº¡i lá»‘c tá»« 500-1.000 Ä‘á»“ng/lá»‘c, loáº¡i 1 l&iacute;t/há»™p tÄƒng 20.000 Ä‘á»“ng/th&ugrave;ng.  Vinamilk cho biáº¿t sau má»™t thá»i gian giá»¯ gi&aacute;, c&ocirc;ng ty pháº£i tÄƒng gi&aacute; b&aacute;n do gi&aacute; Ä‘Æ°á»ng tÄƒng gáº§n 30% trong v&ograve;ng hai th&aacute;ng. C&ograve;n Hancofood cho biáº¿t sáº½ tÄƒng gi&aacute; sá»¯a trung b&igrave;nh 10-15% v&agrave;o Ä‘áº§u th&aacute;ng 1- 2010. Ri&ecirc;ng C&ocirc;ng ty TNHH ph&acirc;n phá»‘i Ti&ecirc;n Tiáº¿n - nh&agrave; ph&acirc;n phá»‘i ch&iacute;nh thá»©c sá»¯a Mead Johnson á»Ÿ VN - cho biáº¿t kh&ocirc;ng tÄƒng gi&aacute; b&aacute;n trong cáº£ nÄƒm 2009 vá»›i c&aacute;c sáº£n pháº©m sá»¯a Enfa A+.</p>', '2009-12-03 15:22:21', '2009-12-12 14:48:46', 'vietnamese_flag.jpg', 'image/jpeg', 34687, '2009-12-12 14:48:46');

-- --------------------------------------------------------

--
-- Table structure for table `poems`
--

CREATE TABLE IF NOT EXISTS `poems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `poemname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `display` int(11) DEFAULT '0',
  `vote_number` int(11) DEFAULT '0',
  `avg_vote` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `views` int(11) DEFAULT '0',
  `comments_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `poems`
--

INSERT INTO `poems` (`id`, `poemname`, `author_id`, `content`, `user_id`, `display`, `vote_number`, `avg_vote`, `created_at`, `updated_at`, `views`, `comments_count`) VALUES
(1, 'ÄÃ”I DÃ‰P', 2, '<p style="text-align: left;"><font color="#191970"><span style="font-size: 10pt; color: black; font-family: Verdana;"><strong><font color="#660066">Váº§n thÆ¡ Ä‘áº§u anh viáº¿t táº·ng cho em <br />\r\nL&agrave; váº§n thÆ¡ anh viáº¿t vá» Ä‘&ocirc;i d&eacute;p <br />\r\nKhi anh nhá»› á»Ÿ trong l&ograve;ng da diáº¿t <br />\r\nÄ&ocirc;i d&eacute;p táº§m thÆ°á»ng cÅ©ng viáº¿t th&agrave;nh thÆ¡ <br />\r\n<br />\r\nHai chiáº¿c d&eacute;p gáº·p gá»¡ tá»± bao giá» <br />\r\nC&oacute; y&ecirc;u nhau Ä‘&acirc;u m&agrave; cháº³ng rá»i nhau ná»­a bÆ°á»›c <br />\r\nÄi l&agrave;m C&aacute;ch máº¡ng nhá»¯ng náº»o Ä‘Æ°á»ng xu&ocirc;i ngÆ°á»£c <br />\r\nTá»« báº¯c v&agrave;o nam c&aacute;t bá»¥i c&ugrave;ng nhau <br />\r\n<br />\r\nC&ugrave;ng bÆ°á»›c c&ugrave;ng m&ograve;n kh&ocirc;ng káº» tháº¥p ngÆ°á»i cao <br />\r\nC&ugrave;ng chung chia sáº» sá»©c ngÆ°á»i Ä‘á»i ch&agrave; Ä‘áº¡p <br />\r\nKhi vinh nhá»¥c kh&ocirc;ng Ä‘i c&ugrave;ng ngÆ°á»i kh&aacute;c <br />\r\nSá»‘ pháº­n chiáº¿c n&agrave;y phá»¥ thuá»™c chiáº¿c kia <br />\r\n<br />\r\nNáº¿u má»™t ng&agrave;y má»™t chiáº¿c máº¥t Ä‘i <br />\r\nMá»i thay tháº¿ Ä‘á»u trá»Ÿ n&ecirc;n kháº­p khiá»…ng <br />\r\nGiá»‘ng nhau láº¯m nhÆ°ng ngÆ°á»i Ä‘i sáº½ biáº¿t <br />\r\nHai chiáº¿c n&agrave;y cháº³ng pháº£i má»™t Ä‘&ocirc;i Ä‘&acirc;u. <br />\r\n<br />\r\nCÅ©ng nhÆ° m&igrave;nh trong nhá»¯ng l&uacute;c váº¯ng nhau <br />\r\nBÆ°á»›c há»¥t háº«ng cá»© nghi&ecirc;ng vá» má»™t ph&iacute;a <br />\r\nDáº«u b&ecirc;n cáº¡nh Ä‘&atilde; c&oacute; ngÆ°á»i thay tháº¿ <br />\r\nM&agrave; trong l&ograve;ng... ná»—i nhá»› &Yacute; Nhi Æ¡i! <br />\r\n<br />\r\nÄ&ocirc;i d&eacute;p v&ocirc; tÆ° kháº¯ng kh&iacute;t bÆ°á»›c song h&agrave;nh <br />\r\nCháº³ng thá» nguyá»n m&agrave; kh&ocirc;ng há» giáº£ dá»‘i <br />\r\nCháº³ng há»©a háº¹n nhÆ°ng kh&ocirc;ng há» pháº£n bá»™i <br />\r\nLá»‘i Ä‘i n&agrave;o cÅ©ng c&oacute; máº·t cáº£ Ä‘&ocirc;i <br />\r\n<br />\r\nKh&ocirc;ng thiáº¿u nhau tr&ecirc;n nhá»¯ng bÆ°á»›c Ä‘Æ°á»ng Ä‘á»i <br />\r\nDáº«u má»™t chiáº¿c á»Ÿ má»—i b&ecirc;n pháº£i tr&aacute;i <br />\r\nNhÆ° t&ocirc;i y&ecirc;u em bá»Ÿi nhá»¯ng Ä‘iá»u ngÆ°á»£c láº¡i <br />\r\nGáº¯n b&oacute; Ä‘á»i nhau báº±ng má»™t lá»‘i Ä‘i chung <br />\r\n<br />\r\nHai ch&uacute;ng m&igrave;nh tháº§m láº·ng bÆ°á»›c song song <br />\r\nSáº½ dá»«ng láº¡i khi chá»‰ c&ograve;n má»™t chiáº¿c <br />\r\nChá»‰ c&ograve;n má»™t l&agrave; kh&ocirc;ng c&ograve;n g&igrave; háº¿t <br />\r\nNhÆ° anh v&agrave; em... thÆ°Æ¡ng láº¯m &Yacute; Nhi Æ¡i! </font></strong></span></font></p>', NULL, 1, 4, 3.75, '2009-12-07 15:03:35', '2009-12-29 15:32:59', 56, 2),
(2, 'HÆ°Æ¡ng khuya', 3, '<p><font size="3"><font color="#6600cc"><font face="Times New Roman"><em>Ä&ecirc;m láº¡nh buá»“n nhÆ° cho&aacute;ng ngá»£p há»“n <br />\r\nNáº·ng t&igrave;nh bao káº» lá»‡ rÆ¡i tu&ocirc;n <br />\r\nPháº£i chÄƒng y&ecirc;u Ä‘á»ƒ vÆ°Æ¡ng sáº§u khá»• <br />\r\nHay Ä‘á»ƒ ho&agrave;i tr&ocirc;ng má»™ng nhá»› thÆ°Æ¡ng? <br />\r\n<br />\r\nGi&oacute; ná»•i lÆ°ng trá»i l&ograve;ng dáº­y s&oacute;ng <br />\r\nNiá»m y&ecirc;u thuá»Ÿ áº¥y ngá»¡ nhÆ° xong <br />\r\nMá»›i hay thá»•n thá»©c c&ugrave;ng mÆ°a Ä‘á»• <br />\r\nNgÆ°á»i há»¡i!c&ograve;n Ä‘&acirc;y má»™t táº¥m l&ograve;ng <br />\r\n<br />\r\n..Nguyá»‡n ráº±ng xin ch&uacute;t hÆ°Æ¡ng t&agrave;n láº¡nh <br />\r\nB&agrave;ng ho&agrave;ng nghe sáº¥m th&eacute;t trá»i xanh <br />\r\n&Ocirc; h&ocirc;!mÆ°á»i máº¥y thu xoay t&iacute;t <br />\r\nL&aacute; v&agrave;ng dá»‡t tháº£m tráº£i nhÆ° tranh.. <br />\r\n<br />\r\nM&acirc;y táº¡nh trá»i quang mÆ°a gi&oacute; tan <br />\r\nÄ&ecirc;m d&agrave;i l&ograve;ng láº·ng Ä‘áº¿m thá»i gian <br />\r\nKh&oacute;i hÆ°Æ¡ng lan toáº£ há»“n c&ocirc; quáº¡nh <br />\r\nSÆ°Æ¡ng tháº¥m t&agrave;n canh giáº¥c muá»™n m&agrave;ng <br />\r\n<br />\r\n</em>11/04/2006 <br />\r\n<em>CSL</em></font></font></font></p>', NULL, 1, 3, 6.66667, '2009-12-29 15:33:51', '2010-01-02 15:17:45', 33, NULL),
(3, 'Em váº«n háº±ng hy vá»ng', 3, '<p><font color="#6600cc">Nhá»¯ng sá»›m mai b&igrave;nh minh vá» g&otilde; cá»­a <br />\r\n&Aacute;nh náº¯ng v&agrave;ng nh&egrave; nháº¹ Ä‘áº¿n Ä‘áº§u ti&ecirc;n <br />\r\nH&ocirc;n phá»›t há»“ng g&ograve; m&aacute; nhuá»‘m muá»™n phiá»n <br />\r\nEm lÆ¡ Ä‘&atilde;ng ngáº¯m táº§ng m&acirc;y phi&ecirc;u l&atilde;ng </font></p>\r\n<br />\r\n<p><font color="#6600cc">Khi ná»—i nhá»› kháº½ rung theo ng&agrave;y th&aacute;ng <br />\r\nV&agrave; ban trÆ°a náº¯ng oi áº£ tr&ecirc;n Ä‘á»“i <br />\r\nEm Ä‘áº¿m tháº§m tá»«ng chiáº¿c l&aacute; rá»›t rÆ¡i <br />\r\nC&ugrave;ng nhá»¯ng c&aacute;nh hoa xoay theo l&agrave;n gi&oacute; </font></p>\r\n<br />\r\n<p><font color="#6600cc">V&ograve;m báº±ng lÄƒng nháº¡t nho&agrave; nhÆ° bung ná»Ÿ <br />\r\nR&aacute;ng chiá»u bu&ocirc;ng len l&eacute;n phá»§ máº·t há»“ <br />\r\nGá»£n s&oacute;ng l&ecirc;n tá»« &aacute;nh máº¯t má»™ng mÆ¡ <br />\r\nM&ugrave;a y&ecirc;u dáº¥u l&ecirc;n ng&ocirc;i chÆ°a anh nhá»‰? </font></p>\r\n<br />\r\n<p><font color="#6600cc">Ho&agrave;ng h&ocirc;n táº¯t em chÆ°a ngu&ocirc;i suy nghÄ© <br />\r\nTh&aacute;i dÆ°Æ¡ng t&agrave;n Ä‘&aacute;nh dáº¥u má»™t ng&agrave;y qua <br />\r\nTr&ecirc;n con Ä‘Æ°á»ng ho&agrave;ng Ä‘iá»‡p nhá»› thiáº¿t tha <br />\r\nThÆ°Æ¡ng x&aacute;c l&aacute; rÆ¡i Ä‘á»u con phá»‘ váº¯ng </font></p>\r\n<br />\r\n<p><font color="#6600cc">M&agrave;n Ä‘&ecirc;m xuá»‘ng ná»—i l&ograve;ng th&ecirc;m tháº§m láº·ng <br />\r\n&Aacute;nh sao xanh le l&oacute;i táº­n cuá»‘i trá»i <br />\r\nSau r&egrave;m nhung hy vá»ng Ä‘áº¿n anh Æ¡i!.. <br />\r\nD&ugrave; má»™t ch&uacute;t nhÆ°ng em háº±ng mong Ä‘á»£i </font></p>\r\n<br />\r\n<font color="#6600cc">13/04/2006 <br />\r\nCSL</font>', NULL, 1, 0, 0, '2010-01-02 13:40:51', '2010-01-02 15:13:06', 13, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `random_poems`
--

CREATE TABLE IF NOT EXISTS `random_poems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `author_id` int(11) DEFAULT NULL,
  `poem_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `random_poems`
--

INSERT INTO `random_poems` (`id`, `content`, `author_id`, `poem_id`, `created_at`, `updated_at`) VALUES
(2, '<p>nha nang o canh nha toi<br />\r\ncach nhau cai dau mong toi xanh ron</p>', 1, 1, '2009-12-23 15:24:42', '2009-12-23 15:32:09');
