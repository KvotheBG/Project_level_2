-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 19 март 2019 в 16:45
-- Версия на сървъра: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hangman`
--

-- --------------------------------------------------------

--
-- Структура на таблица `categories_bgr`
--

CREATE TABLE `categories_bgr` (
  `id` int(11) NOT NULL,
  `Държави` varchar(80) NOT NULL,
  `Столици` varchar(80) NOT NULL,
  `Животни` varchar(80) NOT NULL,
  `language_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories_bgr`
--

INSERT INTO `categories_bgr` (`id`, `Държави`, `Столици`, `Животни`, `language_id`) VALUES
(1, 'БЪЛГАРИЯ', 'СОФИЯ', 'КОН', 2),
(2, 'АФГАНИСТАН', 'КАБУЛ', 'КОТКА', 2),
(3, 'АЛБАНИЯ', 'ТИРАНА', 'ОРЕЛ', 2),
(4, 'АЛЖИР', 'АЛЖИР', 'ПЧЕЛОЯД', 2),
(5, 'АРЖЕНТИНА', 'БУЕНОС АЙРЕС', 'СВРАКА', 2),
(6, 'АВСТРИЯ', 'ВИЕНА', 'ПЕЛИКАН', 2),
(7, 'БАМГЛАДЕШ', 'ДАКА', 'КРАВА', 2),
(8, 'БЕЛАРУС', 'МИНСК', 'ЯЗОВЕЦ', 2),
(9, 'БЕЛГИЯ', 'БРЮКСЕЛ', 'ПРИЛЕП', 2),
(10, 'БОСНА И ХЕРЦЕГОВИНА', 'САРАЕВО', 'ЕЛЕН', 2),
(11, 'БРАЗИЛИЯ', 'БРАЗИЛИЯ', 'ЛИСИЦА', 2),
(12, 'ВАТИКАНА', 'ВАТИКАНА', 'ЗАЕК', 2),
(13, 'ВЕЛИКОБРИТАНИЯ', 'ЛОНДОН', 'ТАРАЛЕЖ', 2),
(14, 'ВЕНЕЦУЕЛА', 'КАРАКАС', 'КЪРТИЦА', 2),
(15, 'ВИЕТНАМ', 'ХАНОЙ', 'МИШКА', 2),
(16, 'ГАНА', 'АКРА', 'ВИДРА', 2),
(17, 'ГЕРМАНИЯ', 'БЕРЛИН', 'ЗАЕК', 2),
(18, 'ГРУЗИЯ', 'ТБИЛИСИ', 'ПЛЪХ', 2),
(19, 'ГЪРЦИЯ', 'АТИНА', 'КАТЕРИЦА', 2),
(20, 'ДАНИЯ', 'КОПЕНХАГЕН', 'БЕЛКА', 2),
(21, 'ЕГИПЕТ', 'КАЙРО', 'НЕВЕСТУЛКА', 2),
(22, 'ЕСТОНИЯ', 'ТАЛИН', 'ГАРВАН', 2),
(23, 'ЗАМБИЯ', 'ЛУСАКА', 'ГЪЛЪБ', 2),
(24, 'ЗИМБАБВЕ', 'ХАРАРЕ', 'ПАТИЦА', 2),
(25, 'ИЗРАЕЛ', 'ТЕЛ АВИВ', 'ГЪСКА', 2),
(26, 'ИНДИЯ', 'НЮ ДЕЛХИ', 'ЯСТРЕБ', 2),
(27, 'ИРАН ', 'ТЕХЕРАН', 'БУХАЛ', 2),
(28, 'ИРАК', 'БАГДАД', 'ПАУН', 2),
(29, 'ИРЛАНДИЯ', 'ДЪБЛИН', 'ФАЗАН', 2),
(30, 'ИСПАНИЯ', 'МАДРИД', 'ЧЕРВЕНОШИЙКА', 2),
(31, 'ИТАЛИЯ', 'РИМ', 'ВРАНА', 2),
(32, 'ЙОРДАНИЯ', 'АМАН', 'ВРАБЧЕ', 2),
(33, 'КАЗАХСТАН', 'АСТАНА', 'СКОРЕЦ', 2),
(34, 'КАНАДА', 'ОТАВА', 'ЛЕБЕД', 2),
(35, 'КАТАР', 'ДОХА', 'МРАВКА', 2),
(36, 'КИПЪР', 'НИКОЗИЯ', 'ПЧЕЛА', 2),
(37, 'КИТАЙ', 'БЕЙДЖИНГ', 'ПЕПЕРУДА', 2),
(38, 'КОЛУМБИЯ', 'БОГОТА', 'МОРСКО КОНЧЕ', 2),
(39, 'КОСТА РИКА', 'САН ХОСЕ', 'МУХА', 2),
(40, 'КУБА', 'ХАВАНА', 'КОМАР', 2),
(41, 'КУВЕЙТ', 'КУВЕЙТ', 'ПАЯК', 2),
(42, 'ЛИБИЯ', 'ТРИПОЛИ', 'ЖАБА', 2),
(43, 'ЛЮКСЕМБУРГ', 'ЛЮКСЕМБУРГ', 'ГУЩЕР', 2),
(44, 'МАКЕДОНИЯ', 'СКОПИЕ', 'ЗМИЯ', 2),
(45, 'МЕКСИКО', 'МЕКСИКО', 'ПЪСТЪРВА', 2),
(46, 'НИГЕРИЯ', 'АБУДЖА', 'СЬОМГА', 2),
(47, 'НОРВЕГИЯ', 'ОСЛО', 'ЩУКА', 2),
(48, 'ПОЛША', 'ВАРШАВА', 'БИЗОН', 2),
(49, 'ПОРТУГАЛИЯ', 'ЛИСАБОН', 'КИТ', 2),
(50, 'РУСИЯ', 'МОСКВА', 'ДЕЛФИН', 2),
(51, 'СЕВЕРНА КОРЕА', 'ПХЕНЯН', 'ПУМА', 2),
(52, 'СИРИЯ', 'ДАМАСК', 'ЛЕОПАРД', 2),
(53, 'СЛОВАКИЯ', 'БРАТИСЛАВА', 'ТИГЪР', 2),
(54, 'РУМЪНИЯ', 'БУКУРЕЩ', 'АКУЛА', 2),
(70, 'СЛОВЕНИЯ', 'ЛЮБЛЯНА', 'ПАНДА', 2),
(71, 'СЪРБИЯ', 'БЕЛГРАД', 'СЪНЛИВЕЦ', 2),
(72, 'ТАЙЛАНД', 'БАНГКОК', 'КРОКОДИЛ', 2),
(73, 'ТУРЦИЯ', 'АНКАРА', 'КАМИЛА', 2),
(74, 'ТУНИС', 'ТУНИС', 'НОСОРОГ', 2),
(75, 'УКРАЙНА', 'КИЕВ', 'ХИПОПОТАМ', 2),
(76, 'УНГАРИЯ', 'БУДАПЕЩА', 'МАГАРЕ', 2),
(77, 'ФИНЛАНДИЯ', 'ХЕЛЗИНКИ', 'КОЗА', 2),
(78, 'ФРАНЦИЯ', 'ПАРИЖ', 'ПРАСЕ', 2),
(79, 'ХОЛАНДИЯ', 'АМСТЕРДАМ', 'ОВЦА', 2),
(80, 'ХЪРВАТИЯ', 'ЗАГРЕБ', 'МОРСКО СВИНЧЕ', 2),
(81, 'ЧЕХИЯ', 'ПРАГА', 'ТЮЛЕН', 2),
(82, 'ШВЕЙЦАРИЯ', 'БЕРН', 'ГЪСЕНИЦА', 2),
(83, 'ЯПОНИЯ', 'ТОКИО', 'ГЛИГАН', 2),
(84, 'ШВЕЦИЯ', 'СТОКХОЛМ', 'ПИНГВИН', 2);

-- --------------------------------------------------------

--
-- Структура на таблица `categories_eng`
--

CREATE TABLE `categories_eng` (
  `category_id` int(11) NOT NULL,
  `Country` varchar(110) NOT NULL,
  `city` varchar(110) NOT NULL,
  `Animal` varchar(100) NOT NULL,
  `language_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories_eng`
--

INSERT INTO `categories_eng` (`category_id`, `Country`, `city`, `Animal`, `language_id`) VALUES
(1, 'UNITED ARAB EMIRATES', 'ABU DHABI', 'DOG', 1),
(2, 'NIGERIA', 'ABUJA', 'CAT', 1),
(3, 'ALGERIA', 'ALGIERS', 'BABOON', 1),
(4, 'JORDAN', 'AMMAN', 'BUFFALO', 1),
(5, 'TURKEY', 'ANKARA', 'DARTER', 1),
(6, 'NETHERLANDS', 'AMSTERDAM', 'ELEPHANT', 1),
(7, 'MADADASCAR', 'ANTANANARIVO', 'LION', 1),
(8, 'TURKMENISTAN', 'ASHGABAT', 'LYNX', 1),
(9, 'KAZAKHSTAN', 'ASTANA', 'ALBATROSS', 1),
(10, 'PARAGUAI', 'ASUNCION', 'ALLIGATOR', 1),
(11, 'GRECEE', 'ATHENS', 'BEAVER', 1),
(12, 'AZERBAIJAN', 'BAKU', 'BISON', 1),
(13, 'MALI', 'BAMAKO', 'BEAR', 1),
(14, 'GAMBIA', 'BANJUL', 'CROW', 1),
(15, 'THAILAND', 'BANGKOK', 'FOX', 1),
(16, 'CHINA', 'BEIJING', 'GIANT ARMADILO', 1),
(17, 'LEBANON', 'BEIRUT', 'WATER DRAGON ', 1),
(18, 'SERBIA', 'BELGRADE', 'JACKAL', 1),
(19, 'GERMANY', 'BERLIN', 'PELICAN', 1),
(20, 'SWITZERLAND', 'BERN', 'EAGLE', 1),
(21, 'KYRGYZSTAN', 'BISHKEK', 'BANDICOOT', 1),
(22, 'COLOMBIA', 'BOGOTA', 'DEER', 1),
(23, 'BRAZIL', 'BRAZILIA', 'BEAVER', 1),
(24, 'SLOVAKIA', 'BRATISLAVA', 'BEE-EATER', 1),
(25, 'REPUBLIC OF THE CONGO', 'BRAZZAVILLE', 'VULTURE', 1),
(26, 'BELGIUM', 'BRUSSELS', 'BIRD', 1),
(27, 'BARBADOS', 'BRIDGETOWN', 'BISON', 1),
(28, 'ROMANIA', 'BUCHAREST', 'BLACK KITE', 1),
(29, 'HUNGARY', 'BUDAPEST', 'RHINOCEROS', 1),
(30, 'ARGENTINA', 'BUENOS AIRES', 'MONKEY', 1),
(31, 'EGYPT', 'CAIRO', 'SWAN', 1),
(32, 'VENEZUELA', 'CARACAS', 'VULTURE', 1),
(33, 'MOLDOVA', 'CHISINAU', 'MAGPIE', 1),
(34, 'DENMARK', 'COPENHAGEN', 'BLACKBUCK', 1),
(35, 'SENEGAL', 'DAKAR', 'BLESBOK', 1),
(36, 'SYRIA', 'DAMASCUS', 'CATFISH', 1),
(37, 'BANGLADESH', 'DHAKA', 'DUCK', 1),
(38, 'TANZANIA', 'DODOMA', 'PEACOCK', 1),
(39, 'QATAR', 'DOHA', 'BLUE RACER', 1),
(40, 'IRELAND', 'DUBLIN', 'SHARK', 1),
(41, 'BOTSWANA', 'GABORONE', 'WILDEBEEST', 1),
(42, 'GIBRALTAR', 'GIBRATAL', 'BOA', 1),
(43, 'GUATEMALA', 'GUATEMALA CITY', 'BOBCAT', 1),
(45, 'VIETNAM', 'HANOI', 'TAPIR', 1),
(46, 'ZIMBABWE', 'HARARE', 'BROCKET', 1),
(47, 'CUBA', 'HAVANA', 'HYENA', 1),
(48, 'FINLAND', 'HELSINKI', 'BROWN LEMUR', 1),
(49, 'PAKISTAN', 'ISLAMABAD', 'PELICAN', 1),
(50, 'INDONESIAN', 'JAKARTA', 'KANGAROO', 1),
(51, 'ISRAEL', 'JERUSALEM', 'BUSTARD', 1),
(52, 'AFGHANISTAN', 'KABUL', 'BUTTERFLY', 1),
(53, 'UGANDA', 'KAMPALA', 'SNAKE', 1),
(54, 'NEPAL', 'KATHMANDU', 'COBRA', 1),
(55, 'SUDAN', 'KHARTOUM', 'GOOSE', 1),
(56, 'UKRAINE', 'KIEV', 'CAPYBARA', 1),
(57, 'JAMAICA', 'KINGSTON', 'CARACAL', 1),
(59, 'MALAYSIA', 'KUALA LUMPUR', 'TIGER', 1),
(60, 'KUWAIT', 'KUWAIT CITY', 'EGRET', 1),
(61, 'PERY', 'LIMA', 'CHAMELEON', 1),
(62, 'PORTUGAL', 'LISBON', 'CHEETAH', 1),
(63, 'UNITED KINGDOM', 'LONDON', 'CHIMPANZEE', 1),
(64, 'SLOVENIA', 'LJIBLJANA', 'CHITAL', 1),
(65, 'ANGOLA', 'LUANDA', 'CHUCKWALLA', 1),
(66, 'ZAMBIA', 'LUSAKA', 'COCKATOO', 1),
(67, 'LUXEMBOURG', 'LUXEMBOURG', 'DOLPHIN', 1),
(68, 'SPAIN', 'MADRID', 'DUIKER', 1),
(69, 'MALDIVES', 'MALE', 'FISH', 1),
(70, 'NICARAGUAL', 'MANAGUA', 'LANGUR', 1),
(71, 'BAHRAIN', 'MANAMA', 'PHEASANT', 1),
(72, 'PHILIPPINES', 'MANILA', 'RACCON', 1),
(73, 'MOZAMBIQUE', 'MAPUTO', 'WALLAROO', 1),
(74, 'MEXICO', 'MEXICO CITY ', 'WATERBUCK', 1),
(75, 'BELARUS', 'MINSK', 'WOLF', 1),
(76, 'Somalia', 'Mogadishu', 'Wombat', 1),
(77, 'Monaco', 'Monaco', 'Zebra', 1),
(78, 'LIBERIA', 'MONROVIA', 'PARTRIDGE', 1),
(79, 'URUGUAY', 'MONTEVIDEO', 'CORMORANT', 1),
(80, 'RUSSIA', 'MOSCOW', 'COUGAR', 1),
(81, 'KENYA', 'NAIROBI', 'COW', 1),
(82, 'BAHAMAS', 'NASSAU', 'CRAB', 1),
(83, 'INDIA', 'NEW DELPHI', 'CROW', 1),
(84, 'NIGER', 'NIAMEY', 'CROCODILE', 1),
(85, 'CYPRUS', 'NICOSIA', 'DARK-WINGED TRUMPETER', 1),
(86, 'NORWAY', 'OSLO', 'DEER', 1),
(87, 'CANADA', 'OTTAWA', 'MULE', 1),
(88, 'PANAMA', 'PANAMA CITY', 'DOVE', 1),
(89, 'FRANCE', 'PARIS', 'WOODPECKER', 1),
(90, 'CAMBODIA', 'PHNOM PENH', 'DRAGON', 1),
(91, 'MONTSERRAT', 'PLYMOUTH', 'DUIKER', 1),
(92, 'MONTENEGRO', 'PODGORICA', 'GULL', 1),
(93, 'HAITI', 'PORT-AU-PRINCE', 'TURTLE', 1),
(94, 'CZECH REPUBLIC', 'PRAGUE', 'RABBIT', 1),
(95, 'CAPE VERDE', 'PRAIA', 'MONGOOSE', 1),
(96, 'KosovoKOSOVO', 'PRISTINA', 'EASTERN QUOLL', 1),
(97, 'ORTH KOREA', 'PYONGYANG', 'EGRET', 1),
(98, 'ECUADOR', 'QUITO', 'GOOSE', 1),
(99, 'MOROCCO', 'RABAT', 'VIPER', 1),
(100, 'LATVIA', 'RIGA', 'HOOPOE', 1),
(101, 'SAUDI ARABIA', 'RIYADH', 'DONKEY', 1),
(102, 'ITALY', 'ROME', 'GOAT', 1),
(103, 'COSTA RICA', 'SAN JOSE', 'HORSE', 1),
(104, 'PUERTO RICO', 'SAN JUAN', 'SHEEP', 1),
(105, 'SAN MARINO', 'SAN MARINO', 'PIG', 1),
(106, 'YEMEN', 'SANA', 'GUINEA PIG', 1),
(107, 'CHILE', 'SANTIAGO', 'LIZARD', 1),
(108, 'DOMINICAN REPUBLIC', 'SANTO DOMINGO', 'TOAD', 1),
(109, 'SOUTH KOREA', 'SEOUL', 'ANT', 1),
(110, 'BOSNIA AND HERZEGOVINA', 'SARAJEVO', 'BEE', 1),
(111, 'SINGAPORE', 'SINGAPORE', 'DRAGONFLY', 1),
(112, 'MACEDONIA', 'SKOPJE', 'FLY', 1),
(113, 'BULGARIA', 'SOFIA', 'MOSQUITO', 1),
(114, 'SWEDEN', 'STOCKHOLMS', 'OWL', 1),
(115, 'BOLIVIA', 'SUCRE ', 'SPIDER', 1),
(116, 'TAIWAN', 'TAIPEI', 'PEAFOW', 1),
(117, 'ESTONIA', 'TALLINN', 'SWAN', 1),
(118, 'HONDURAS', 'TEGUCIGALPA', 'SPARROW', 1),
(119, 'JAPAN', 'TOKYO', 'STARLING', 1),
(120, 'LIBYA', 'TRIPOLI', 'BAT', 1),
(121, 'TUNISIA', 'TUNIS', 'HEDGEHOG', 1),
(122, 'MONGOLIA', 'ULAN BATOR', 'MOUSE', 1),
(123, 'MALTA', 'VALLETTA', 'SQUIRREL', 1),
(125, 'VATICAN ', 'VATICAN CITY', 'RAT', 1),
(126, 'AUSTRIA', 'VIENNA', 'SPOONBILL', 1),
(127, 'POLAND', 'WARSAW', 'FALCON', 1),
(128, 'UNITED STATES', 'WASHINGTON', 'FLAMINGO', 1),
(129, 'NEW ZELAND', 'WELLINGTON', 'FROG', 1),
(130, 'ARMENIA', 'YEREVAN', 'HAWK', 1),
(131, 'CAMEROON', 'YAOUNDE', 'GAZER', 1),
(132, 'CROATIA', 'ZAGREB', 'GIRAFFE', 1);

-- --------------------------------------------------------

--
-- Структура на таблица `history`
--

CREATE TABLE `history` (
  `history_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `points` int(11) NOT NULL,
  `word` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `history`
--

INSERT INTO `history` (`history_id`, `user_id`, `points`, `word`, `date`) VALUES
(1, 2, 0, '', '2019-03-19 15:45:01'),
(2, 2, 0, 'HARARE', '2019-03-19 15:57:43');

-- --------------------------------------------------------

--
-- Структура на таблица `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(90) NOT NULL,
  `code` varchar(90) NOT NULL,
  `image` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `languages`
--

INSERT INTO `languages` (`id`, `language`, `code`, `image`) VALUES
(1, 'English', 'eng', ''),
(2, 'Bulgarian', 'bgr', ''),
(3, 'Russian', 'ru', '');

-- --------------------------------------------------------

--
-- Структура на таблица `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(110) NOT NULL,
  `password` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`) VALUES
(1, 'svetlidj', '2222'),
(2, 'koko', '5555');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_bgr`
--
ALTER TABLE `categories_bgr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `languages` (`language_id`);

--
-- Indexes for table `categories_eng`
--
ALTER TABLE `categories_eng`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `languages` (`language_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories_bgr`
--
ALTER TABLE `categories_bgr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `categories_eng`
--
ALTER TABLE `categories_eng`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `categories_bgr`
--
ALTER TABLE `categories_bgr`
  ADD CONSTRAINT `categories_bgr_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Ограничения за таблица `categories_eng`
--
ALTER TABLE `categories_eng`
  ADD CONSTRAINT `categories_eng_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Ограничения за таблица `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
