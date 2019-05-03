-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 23, 2019 at 09:58 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admininfo`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookinfo`
--

DROP TABLE IF EXISTS `bookinfo`;
CREATE TABLE IF NOT EXISTS `bookinfo` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` text NOT NULL,
  `password` text NOT NULL,
  `insertdate` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookinfo`
--

INSERT INTO `bookinfo` (`ID`, `NAME`, `password`, `insertdate`) VALUES
(1, 'kuk', 'kuk', '2018-12-01'),
(2, 'Dhyey', 'VORA', '2019-01-26'),
(3, 'aritha', 'mika', '2018-12-15'),
(4, 'dushman', 'enemy', '2018-12-29'),
(5, 'f', 'a', '2018-12-27'),
(6, 'hh', 'uu', '2018-12-30'),
(7, 'GG', 'ASAS', '2018-12-21'),
(8, 'GG', 'ASAS', '2018-12-21'),
(9, 'HU', 'OO', '2018-12-29'),
(10, 'HU', 'OO', '2018-12-29'),
(11, 'Dynamo', 'gaming', '2018-12-30'),
(12, 'hii', 'hello', '2018-12-27'),
(13, 'hii', 'hello', '2018-12-27'),
(14, 'yu', 'OO', '2019-01-05'),
(15, 'aa', 'bb', '2018-12-27'),
(16, 'aa', 'bb', '2018-12-27'),
(17, 'aa', 'bb', '2018-12-27'),
(18, 'Alska', 'Vaska', '2018-12-11'),
(19, 'Alska', 'Vaska', '2018-12-18'),
(20, 'Alska', 'Vaska', '2018-12-18'),
(21, 'Mika', 'Chika', '2018-12-14'),
(22, 'Mika', 'Chika', '2018-12-14'),
(23, 'yoglo', 'bb', '2018-12-19'),
(24, 'Mika', 'Chika', '2018-12-14'),
(25, 'yo', 'no', '2018-12-18'),
(26, 'man', 'woman', '2018-12-12'),
(27, 'oyo', 'yoy', '2018-12-13'),
(28, 'Rajiv', 'Gandhi', '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

DROP TABLE IF EXISTS `combo`;
CREATE TABLE IF NOT EXISTS `combo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `vid_name` varchar(255) NOT NULL,
  `insert_name` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`id`, `user_name`, `vid_name`, `insert_name`) VALUES
(1, 'Mika', 'Justin Bieber - Never Let You Go.mp4', '2018-12-14'),
(2, 'Mika', 'Justin Bieber - Never Let You Go.mp4', '2018-12-14'),
(3, 'yo', 'Mere Brother Ki Dulhan (Theatrical Trailer) (www.DJMaza.Com).mp4', '2018-12-18'),
(4, 'man', 'Hold My Hand.mp4', '2018-12-12'),
(5, 'oyo', 'Achko Machko Yo Yo Honey Singh Brand New Song 2.mp4', '2018-12-13'),
(6, 'Rajiv', 'Achko Machko Yo Yo Honey Singh Brand New Song 2.mp4', '2018-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `international`
--

DROP TABLE IF EXISTS `international`;
CREATE TABLE IF NOT EXISTS `international` (
  `Country` text NOT NULL,
  `Code` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `international`
--

INSERT INTO `international` (`Country`, `Code`) VALUES
('Afghanistan ', 93),
('Albania ', 355),
('Algeria ', 213),
('American Samoa', 1),
('Andorra, Principality of ', 376),
('Angola', 244),
('Anguilla ', 1),
('Antarctica', 672),
('Antigua and Barbuda', 1),
('Argentina ', 54),
('Armenia', 374),
('Aruba', 297),
('Australia', 61),
('Austria', 43),
('Azerbaijan or Azerbaidjan (Former Azerbaijan Soviet Socialist Republic)', 994),
('Bahamas, Commonwealth of The', 1),
('Bahrain, Kingdom of (Former Dilmun)', 973),
('Bangladesh (Former East Pakistan)', 880),
('Barbados ', 1),
('Belarus (Former Belorussian [Byelorussian] Soviet Socialist Republic)', 375),
('Belgium ', 32),
('Belize (Former British Honduras)', 501),
('Benin (Former Dahomey)', 229),
('Bermuda ', 1),
('Bhutan, Kingdom of', 975),
('Bolivia ', 591),
('Bosnia and Herzegovina ', 387),
('Botswana (Former Bechuanaland)', 267),
('Brazil ', 55),
('Brunei (Negara Brunei Darussalam) ', 673),
('Bulgaria ', 359),
('Burkina Faso (Former Upper Volta)', 226),
('Burundi (Former Urundi)', 257),
('Cambodia, Kingdom of (Former Khmer Republic, Kampuchea Republic)', 855),
('Cameroon (Former French Cameroon)', 237),
('Canada ', 1),
('Cape Verde ', 238),
('Cayman Islands ', 1),
('Central African Republic ', 236),
('Chad ', 235),
('Chile ', 56),
('China ', 86),
('Christmas Island ', 53),
('Cocos (Keeling) Islands ', 61),
('Colombia ', 57),
('Comoros, Union of the ', 269),
('Congo, Democratic Republic of the (Former Zaire) ', 243),
('Congo, Republic of the', 242),
('Cook Islands (Former Harvey Islands)', 682),
('Costa Rica ', 506),
('Cote D\'Ivoire (Former Ivory Coast) ', 225),
('Croatia (Hrvatska) ', 385),
('Cuba ', 53),
('Cyprus ', 357),
('Czech Republic', 420),
('Denmark ', 45),
('Djibouti (Former French Territory of the Afars and Issas, French Somaliland)', 253),
('Dominica ', 1),
('Dominican Republic ', 1),
('East Timor (Former Portuguese Timor)', 670),
('Ecuador ', 593),
('Egypt (Former United Arab Republic - with Syria)', 20),
('El Salvador ', 503),
('Equatorial Guinea (Former Spanish Guinea)', 240),
('Eritrea (Former Eritrea Autonomous Region in Ethiopia)', 291),
('Estonia (Former Estonian Soviet Socialist Republic)', 372),
('Ethiopia (Former Abyssinia, Italian East Africa)', 251),
('Falkland Islands (Islas Malvinas) ', 500),
('Faroe Islands ', 298),
('Fiji ', 679),
('Finland ', 358),
('France ', 33),
('French Guiana or French Guyana ', 594),
('French Polynesia (Former French Colony of Oceania)', 689),
('Gabon (Gabonese Republic)', 241),
('Gambia, The ', 220),
('Georgia (Former Georgian Soviet Socialist Republic)', 995),
('Germany ', 49),
('Ghana (Former Gold Coast)', 233),
('Gibraltar ', 350),
('Greece ', 30),
('Greenland ', 299),
('Grenada ', 1),
('Guadeloupe', 590),
('Guam', 1),
('Guatemala ', 502),
('Guinea (Former French Guinea)', 224),
('Guinea-Bissau (Former Portuguese Guinea)', 245),
('Guyana (Former British Guiana)', 592),
('Haiti ', 509),
('Honduras ', 504),
('Hong Kong ', 852),
('Hungary ', 36),
('Iceland ', 354),
('India ', 91),
('Indonesia (Former Netherlands East Indies; Dutch East Indies)', 62),
('Iran, Islamic Republic of', 98),
('Iraq ', 964),
('Ireland ', 353),
('Israel ', 972),
('Italy ', 39),
('Jamaica ', 1),
('Japan ', 81),
('Jordan (Former Transjordan)', 962),
('Kazakstan or Kazakhstan (Former Kazakh Soviet Socialist Republic)', 7),
('Kenya (Former British East Africa)', 254),
('Kiribati (Pronounced keer-ree-bahss) (Former Gilbert Islands)', 686),
('Korea, Democratic People\'s Republic of (North Korea)', 850),
('Korea, Republic of (South Korea) ', 82),
('Kuwait ', 965),
('Kyrgyzstan (Kyrgyz Republic) (Former Kirghiz Soviet Socialist Republic)', 996),
('Lao People\'s Democratic Republic (Laos)', 856),
('Latvia (Former Latvian Soviet Socialist Republic)', 371),
('Lebanon ', 961),
('Lesotho (Former Basutoland)', 266),
('Liberia ', 231),
('Libya (Libyan Arab Jamahiriya)', 218),
('Liechtenstein ', 423),
('Lithuania (Former Lithuanian Soviet Socialist Republic)', 370),
('Luxembourg ', 352),
('Macau ', 853),
('Macedonia, The Former Yugoslav Republic of', 389),
('Madagascar (Former Malagasy Republic)', 261),
('Malawi (Former British Central African Protectorate, Nyasaland)', 265),
('Malaysia ', 60),
('Maldives ', 960),
('Mali (Former French Sudan and Sudanese Republic) ', 223),
('Malta ', 356),
('Marshall Islands (Former Marshall Islands District - Trust Territory of the Pacific Islands)', 692),
('Martinique (French) ', 596),
('Mauritania ', 222),
('Mauritius ', 230),
('Mayotte (Territorial Collectivity of Mayotte)', 269),
('Mexico ', 52),
('Micronesia, Federated States of (Former Ponape, Truk, and Yap Districts - Trust Territory of the Pacific Islands)', 691),
('Moldova, Republic of', 373),
('Monaco, Principality of', 377),
('Mongolia (Former Outer Mongolia)', 976),
('Montserrat ', 1),
('Morocco ', 212),
('Mozambique (Former Portuguese East Africa)', 258),
('Myanmar, Union of (Former Burma)', 95),
('Namibia (Former German Southwest Africa, South-West Africa)', 264),
('Nauru (Former Pleasant Island)', 674),
('Nepal ', 977),
('Netherlands ', 31),
('Netherlands Antilles (Former Curacao and Dependencies)', 599),
('New Caledonia ', 687),
('New Zealand (Aotearoa) ', 64),
('Nicaragua ', 505),
('Niger ', 227),
('Nigeria ', 234),
('Niue (Former Savage Island)', 683),
('Norfolk Island ', 672),
('Northern Mariana Islands (Former Mariana Islands District - Trust Territory of the Pacific Islands)', 1),
('Norway ', 47),
('Oman, Sultanate of (Former Muscat and Oman)', 968),
('Pakistan (Former West Pakistan)', 92),
('Palau (Former Palau District - Trust Terriroty of the Pacific Islands)', 680),
('Palestinian State (Proposed)', 970),
('Panama ', 507),
('Papua New Guinea (Former Territory of Papua and New Guinea)', 675),
('Paraguay ', 595),
('Peru ', 51),
('Philippines ', 63),
('Poland ', 48),
('Portugal ', 351),
('Puerto Rico ', 1),
('Qatar, State of ', 974),
('Reunion (French) (Former Bourbon Island)', 262),
('Romania ', 40),
('Russian Federation ', 7),
('Rwanda (Rwandese Republic) (Former Ruanda)', 250),
('Saint Helena ', 290),
('Saint Kitts and Nevis (Former Federation of Saint Christopher and Nevis)', 1),
('Saint Lucia ', 1),
('Saint Pierre and Miquelon ', 508),
('Saint Vincent and the Grenadines ', 1),
('Samoa (Former Western Samoa)', 685),
('San Marino ', 378),
('Sao Tome and Principe ', 239),
('Saudi Arabia ', 966),
('Senegal ', 221),
('Seychelles ', 248),
('Sierra Leone ', 232),
('Singapore ', 65),
('Slovakia', 421),
('Slovenia ', 386),
('Solomon Islands (Former British Solomon Islands)', 677),
('Somalia (Former Somali Republic, Somali Democratic Republic) ', 252),
('South Africa (Former Union of South Africa)', 27),
('Spain ', 34),
('Sri Lanka (Former Serendib, Ceylon) ', 94),
('Sudan (Former Anglo-Egyptian Sudan) ', 249),
('Suriname (Former Netherlands Guiana, Dutch Guiana)', 597),
('Swaziland, Kingdom of ', 268),
('Sweden ', 46),
('Switzerland ', 41),
('Syria (Syrian Arab Republic) (Former United Arab Republic - with Egypt)', 963),
('Taiwan (Former Formosa)', 886),
('Tajikistan (Former Tajik Soviet Socialist Republic)', 992),
('Tanzania, United Republic of (Former United Republic of Tanganyika and Zanzibar)', 255),
('Thailand (Former Siam)', 66),
('Tokelau ', 690),
('Tonga, Kingdom of (Former Friendly Islands)', 676),
('Trinidad and Tobago ', 1),
('Tunisia ', 216),
('Turkey ', 90),
('Turkmenistan (Former Turkmen Soviet Socialist Republic)', 993),
('Turks and Caicos Islands ', 1),
('Tuvalu (Former Ellice Islands)', 688),
('Uganda, Republic of', 256),
('Ukraine (Former Ukrainian National Republic, Ukrainian State, Ukrainian Soviet Socialist Republic)', 380),
('United Arab Emirates (UAE) (Former Trucial Oman, Trucial States)', 971),
('United Kingdom (Great Britain / UK)', 44),
('United States ', 1),
('Uruguay, Oriental Republic of (Former Banda Oriental, Cisplatine Province)', 598),
('Uzbekistan (Former UZbek Soviet Socialist Republic)', 998),
('Vanuatu (Former New Hebrides)', 678),
('Vatican City State (Holy See)', 418),
('Venezuela ', 58),
('Vietnam ', 84),
('Virgin Islands, British ', 1),
('Virgin Islands, United States (Former Danish West Indies) ', 1),
('Wallis and Futuna Islands ', 681),
('Yemen ', 967),
('Zambia, Republic of (Former Northern Rhodesia) ', 260),
('Zimbabwe, Republic of (Former Southern Rhodesia, Rhodesia) ', 263);

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

DROP TABLE IF EXISTS `search`;
CREATE TABLE IF NOT EXISTS `search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vid_name` varchar(255) NOT NULL,
  `vid_dir` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `vid_name`, `vid_dir`) VALUES
(19, 'Hold My Hand.mp4', 'video/Hold My Hand.mp4'),
(17, 'AWARAPAN- To phir ao (SAD).mp4', 'video/AWARAPAN- To phir ao (SAD).mp4'),
(18, 'Justin Bieber - Never Let You Go.mp4', 'video/Justin Bieber - Never Let You Go.mp4'),
(16, 'Achko Machko Yo Yo Honey Singh Brand New Song 2.mp4', 'video/Achko Machko Yo Yo Honey Singh Brand New Song 2.mp4'),
(20, 'Mere Brother Ki Dulhan (Theatrical Trailer) (www.DJMaza.Com).mp4', 'video/Mere Brother Ki Dulhan (Theatrical Trailer) (www.DJMaza.Com).mp4');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
