-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23 март 2019 в 20:42
-- Версия на сървъра: 10.1.37-MariaDB
-- PHP Version: 7.3.0

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
  `category_id` int(11) NOT NULL,
  `country` varchar(80) NOT NULL,
  `city` varchar(80) NOT NULL,
  `animal` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories_bgr`
--

INSERT INTO `categories_bgr` (`category_id`, `country`, `city`, `animal`) VALUES
(1, 'БЪЛГАРИЯ', 'СОФИЯ', 'КОН'),
(2, 'АФГАНИСТАН', 'КАБУЛ', 'КОТКА'),
(3, 'АЛБАНИЯ', 'ТИРАНА', 'ОРЕЛ'),
(4, 'АЛЖИР', 'АЛЖИР', 'ПЧЕЛОЯД'),
(5, 'РУМЪНИЯ', 'БУКУРЕЩ', 'АКУЛА'),
(6, 'АВСТРИЯ', 'ВИЕНА', 'ПЕЛИКАН'),
(7, 'БАНГЛАДЕШ', 'ДАКА', 'КРАВА'),
(8, 'БЕЛАРУС', 'МИНСК', 'ЯЗОВЕЦ'),
(9, 'БЕЛГИЯ', 'БРЮКСЕЛ', 'ПРИЛЕП'),
(10, 'ШВЕЦИЯ', 'СТОКХОЛМ', 'ПИНГВИН'),
(11, 'БРАЗИЛИЯ', 'БРАЗИЛИЯ', 'ЛИСИЦА'),
(12, 'ВАТИКАНА', 'ВАТИКАНА', 'ЗАЕК'),
(13, 'ВЕЛИКОБРИТАНИЯ', 'ЛОНДОН', 'ТАРАЛЕЖ'),
(14, 'ВЕНЕЦУЕЛА', 'КАРАКАС', 'КЪРТИЦА'),
(15, 'ВИЕТНАМ', 'ХАНОЙ', 'МИШКА'),
(16, 'ГАНА', 'АКРА', 'ВИДРА'),
(17, 'ГЕРМАНИЯ', 'БЕРЛИН', 'ЗАЕК'),
(18, 'ГРУЗИЯ', 'ТБИЛИСИ', 'ПЛЪХ'),
(19, 'ГЪРЦИЯ', 'АТИНА', 'КАТЕРИЦА'),
(20, 'ДАНИЯ', 'КОПЕНХАГЕН', 'БЕЛКА'),
(21, 'ЕГИПЕТ', 'КАЙРО', 'НЕВЕСТУЛКА'),
(22, 'ЕСТОНИЯ', 'ТАЛИН', 'ГАРВАН'),
(23, 'ЗАМБИЯ', 'ЛУСАКА', 'ГЪЛЪБ'),
(24, 'ЗИМБАБВЕ', 'ХАРАРЕ', 'ПАТИЦА'),
(25, 'ЯПОНИЯ', 'ТОКИО', 'ГЛИГАН'),
(26, 'ШВЕЙЦАРИЯ', 'БЕРН', 'ГЪСЕНИЦА'),
(27, 'ИРАН ', 'ТЕХЕРАН', 'БУХАЛ'),
(28, 'ИРАК', 'БАГДАД', 'ПАУН'),
(29, 'ИРЛАНДИЯ', 'ДЪБЛИН', 'ФАЗАН'),
(30, 'ИСПАНИЯ', 'МАДРИД', 'ЧЕРВЕНОШИЙКА'),
(31, 'ИТАЛИЯ', 'РИМ', 'ВРАНА'),
(32, 'ЙОРДАНИЯ', 'АМАН', 'ВРАБЧЕ'),
(33, 'КАЗАХСТАН', 'АСТАНА', 'СКОРЕЦ'),
(34, 'КАНАДА', 'ОТАВА', 'ЛЕБЕД'),
(35, 'КАТАР', 'ДОХА', 'МРАВКА'),
(36, 'КИПЪР', 'НИКОЗИЯ', 'ПЧЕЛА'),
(37, 'КИТАЙ', 'БЕЙДЖИНГ', 'ПЕПЕРУДА'),
(38, 'КОЛУМБИЯ', 'БОГОТА', 'СВРАКА'),
(39, 'ЧЕХИЯ', 'ПРАГА', 'ТЮЛЕН'),
(40, 'КУБА', 'ХАВАНА', 'КОМАР'),
(41, 'КУВЕЙТ', 'КУВЕЙТ', 'ПАЯК'),
(42, 'ЛИБИЯ', 'ТРИПОЛИ', 'ЖАБА'),
(43, 'ЛЮКСЕМБУРГ', 'ЛЮКСЕМБУРГ', 'ГУЩЕР'),
(44, 'МАКЕДОНИЯ', 'СКОПИЕ', 'ЗМИЯ'),
(45, 'МЕКСИКО', 'МЕКСИКО', 'ПЪСТЪРВА'),
(46, 'НИГЕРИЯ', 'АБУДЖА', 'СЬОМГА'),
(47, 'НОРВЕГИЯ', 'ОСЛО', 'ЩУКА'),
(48, 'ПОЛША', 'ВАРШАВА', 'БИЗОН'),
(49, 'ПОРТУГАЛИЯ', 'ЛИСАБОН', 'КИТ'),
(50, 'РУСИЯ', 'МОСКВА', 'ДЕЛФИН'),
(51, 'ЛАТВИЯ', 'РИГА', 'СВЕТУЛКА'),
(52, 'СИРИЯ', 'ДАМАСК', 'ЛЕОПАРД'),
(53, 'СЛОВАКИЯ', 'БРАТИСЛАВА', 'ТИГЪР'),
(54, 'СЛОВЕНИЯ', 'ЛЮБЛЯНА', 'ПАНДА'),
(55, 'СЪРБИЯ', 'БЕЛГРАД', 'СЪНЛИВЕЦ'),
(56, 'ТАЙЛАНД', 'БАНГКОК', 'КРОКОДИЛ'),
(57, 'ТУРЦИЯ', 'АНКАРА', 'КАМИЛА'),
(58, 'ТУНИС', 'ТУНИС', 'НОСОРОГ'),
(59, 'УКРАЙНА', 'КИЕВ', 'ХИПОПОТАМ'),
(60, 'УНГАРИЯ', 'БУДАПЕЩА', 'МАГАРЕ'),
(61, 'ФИНЛАНДИЯ', 'ХЕЛЗИНКИ', 'КОЗА'),
(62, 'ФРАНЦИЯ', 'ПАРИЖ', 'ПРАСЕ'),
(63, 'ХОЛАНДИЯ', 'АМСТЕРДАМ', 'ОВЦА'),
(64, 'ХЪРВАТИЯ', 'ЗАГРЕБ', 'ПУМА');

-- --------------------------------------------------------

--
-- Структура на таблица `categories_eng`
--

CREATE TABLE `categories_eng` (
  `category_id` int(11) NOT NULL,
  `Country` varchar(110) NOT NULL,
  `city` varchar(110) NOT NULL,
  `Animal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Схема на данните от таблица `categories_eng`
--

INSERT INTO `categories_eng` (`category_id`, `Country`, `city`, `Animal`) VALUES
(1, 'CROATIA', 'ZAGREB', 'GIRAFFE'),
(2, 'NIGERIA', 'ABUJA', 'CAT'),
(3, 'ALGERIA', 'ALGIERS', 'BABOON'),
(4, 'JORDAN', 'AMMAN', 'BUFFALO'),
(5, 'TURKEY', 'ANKARA', 'DARTER'),
(6, 'NETHERLANDS', 'AMSTERDAM', 'ELEPHANT'),
(7, 'MADADASCAR', 'ANTANANARIVO', 'LION'),
(8, 'TURKMENISTAN', 'ASHGABAT', 'LYNX'),
(9, 'KAZAKHSTAN', 'ASTANA', 'ALBATROSS'),
(10, 'PARAGUAI', 'ASUNCION', 'ALLIGATOR'),
(11, 'GRECEE', 'ATHENS', 'BEAVER'),
(12, 'AZERBAIJAN', 'BAKU', 'BISON'),
(13, 'MALI', 'BAMAKO', 'BEAR'),
(14, 'GAMBIA', 'BANJUL', 'CROW'),
(15, 'THAILAND', 'BANGKOK', 'FOX'),
(16, 'CHINA', 'BEIJING', 'VULTURE'),
(17, 'LEBANON', 'BEIRUT', 'FROG'),
(18, 'SERBIA', 'BELGRADE', 'JACKAL'),
(19, 'GERMANY', 'BERLIN', 'PELICAN'),
(20, 'SWITZERLAND', 'BERN', 'EAGLE'),
(21, 'KYRGYZSTAN', 'BISHKEK', 'BANDICOOT'),
(22, 'COLOMBIA', 'BOGOTA', 'DEER'),
(23, 'BRAZIL', 'BRAZILIA', 'BEAVER'),
(24, 'SLOVAKIA', 'BRATISLAVA', 'GAZER'),
(25, 'ARMENIA', 'YEREVAN', 'HAWK'),
(26, 'BELGIUM', 'BRUSSELS', 'BIRD'),
(27, 'BARBADOS', 'BRIDGETOWN', 'BISON'),
(28, 'ROMANIA', 'BUCHAREST', 'FLAMINGO'),
(29, 'HUNGARY', 'BUDAPEST', 'RHINOCEROS'),
(30, 'ARGENTINA', 'BUENOS AIRES', 'MONKEY'),
(31, 'EGYPT', 'CAIRO', 'SWAN'),
(32, 'VENEZUELA', 'CARACAS', 'VULTURE'),
(33, 'MOLDOVA', 'CHISINAU', 'MAGPIE'),
(34, 'DENMARK', 'COPENHAGEN', 'BLACKBUCK'),
(35, 'SENEGAL', 'DAKAR', 'BLESBOK'),
(36, 'SYRIA', 'DAMASCUS', 'CATFISH'),
(37, 'BANGLADESH', 'DHAKA', 'DUCK'),
(38, 'TANZANIA', 'DODOMA', 'PEACOCK'),
(39, 'QATAR', 'DOHA', 'FALCON'),
(40, 'IRELAND', 'DUBLIN', 'SHARK'),
(41, 'BOTSWANA', 'GABORONE', 'WILDEBEEST'),
(42, 'GIBRALTAR', 'GIBRATAL', 'BOA'),
(43, 'GUATEMALA', 'GUATEMALA ', 'BOBCAT'),
(44, 'AUSTRIA', 'VIENNA', 'SPOONBILL'),
(45, 'VIETNAM', 'HANOI', 'TAPIR'),
(46, 'ZIMBABWE', 'HARARE', 'BROCKET'),
(47, 'CUBA', 'HAVANA', 'HYENA'),
(48, 'FINLAND', 'HELSINKI', 'LEMUR'),
(49, 'PAKISTAN', 'ISLAMABAD', 'PELICAN'),
(50, 'INDONESIAN', 'JAKARTA', 'KANGAROO'),
(51, 'ISRAEL', 'JERUSALEM', 'BUSTARD'),
(52, 'AFGHANISTAN', 'KABUL', 'BUTTERFLY'),
(53, 'UGANDA', 'KAMPALA', 'SNAKE'),
(54, 'NEPAL', 'KATHMANDU', 'COBRA'),
(55, 'SUDAN', 'KHARTOUM', 'GOOSE'),
(56, 'UKRAINE', 'KIEV', 'CAPYBARA'),
(57, 'JAMAICA', 'KINGSTON', 'CARACAL'),
(58, 'JAPAN', 'TOKYO', 'STARLING'),
(59, 'MALAYSIA', 'LUMPUR', 'TIGER'),
(60, 'SPAIN', 'MADRID', 'EGRET'),
(61, 'PERY', 'LIMA', 'CHAMELEON'),
(62, 'PORTUGAL', 'LISBON', 'CHEETAH'),
(63, 'ENGLAND', 'LONDON', 'CHIMPANZEE'),
(64, 'SLOVENIA', 'LJIBLJANA', 'CHITAL');

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
(2, 2, 0, 'HARARE', '2019-03-19 15:57:43'),
(3, 1, 16, 'FISH', '2019-03-19 20:11:24'),
(4, 3, 0, 'DUIKER', '2019-03-19 20:13:48'),
(5, 3, 0, 'BLACK KITE', '2019-03-19 20:14:48'),
(6, 3, 0, 'CROCODILE', '2019-03-19 20:16:30'),
(7, 4, 14, 'BISON', '2019-03-21 11:53:47'),
(8, 3, 0, 'ECUADOR', '2019-03-21 11:55:59'),
(9, 3, 13, 'DUIKER', '2019-03-21 11:58:04'),
(10, 3, 0, 'Monaco', '2019-03-21 11:58:19'),
(11, 3, 0, 'RHINOCEROS', '2019-03-21 11:59:04'),
(12, 3, 0, 'Wombat', '2019-03-21 12:00:04'),
(13, 3, 0, 'TAPIR', '2019-03-21 12:00:31'),
(14, 3, 0, 'DUIKER', '2019-03-21 13:03:28'),
(15, 3, 0, 'FISH', '2019-03-21 13:03:49'),
(16, 3, 0, 'BOBCAT', '2019-03-21 13:04:14'),
(17, 3, 0, 'FALCON', '2019-03-21 13:08:21'),
(18, 3, 0, 'JAPAN', '2019-03-21 13:10:58'),
(19, 3, 14, 'CUBA', '2019-03-21 13:12:09'),
(20, 3, 0, 'CHITAL', '2019-03-21 18:42:27'),
(21, 3, 16, 'SENEGAL', '2019-03-21 18:43:45'),
(22, 3, 0, 'VULTURE', '2019-03-21 20:15:39'),
(23, 3, 0, 'HAWK', '2019-03-21 20:15:49'),
(24, 3, 17, 'DOVE', '2019-03-21 20:16:31'),
(25, 3, 0, 'TAPIR', '2019-03-21 20:17:09'),
(26, 3, 0, 'BLESBOK', '2019-03-21 21:01:51'),
(27, 3, 0, 'BEE-EATER', '2019-03-21 21:02:03'),
(29, 2, 0, 'GIBRALTAR', '2019-03-21 23:06:59'),
(34, 2, 0, 'SOFIA', '2019-03-21 23:46:26'),
(39, 2, 0, 'AMSTERDAM', '2019-03-22 10:21:22'),
(40, 3, 0, '?????????', '2019-03-22 10:25:10'),
(41, 3, 0, '????', '2019-03-22 21:02:02'),
(42, 3, 0, '??????', '2019-03-22 21:06:03'),
(43, 3, 0, '?????', '2019-03-22 21:07:08'),
(44, 3, 0, '??????', '2019-03-22 21:07:51'),
(45, 3, 0, '???????', '2019-03-22 21:08:53'),
(46, 3, 0, '??????', '2019-03-22 21:09:03'),
(47, 3, 0, '????????', '2019-03-22 21:10:14'),
(48, 3, 0, '?????', '2019-03-22 21:10:48'),
(49, 3, 0, '?????', '2019-03-22 21:12:10'),
(50, 3, 0, '??????', '2019-03-22 21:19:44'),
(51, 3, 0, '?????', '2019-03-22 21:21:13'),
(52, 3, 0, '??????', '2019-03-22 21:22:49'),
(53, 3, 0, '?????', '2019-03-22 21:23:34'),
(54, 3, 0, 'БУХАЛ', '2019-03-22 21:50:30'),
(55, 3, 0, 'ГЪЛЪБ', '2019-03-22 21:50:45'),
(56, 3, 0, 'КАТЕРИЦА', '2019-03-22 21:50:54'),
(57, 3, 0, 'КАТЕРИЦА', '2019-03-22 21:51:22'),
(58, 3, 0, 'СЪНЛИВЕЦ', '2019-03-22 21:56:53'),
(59, 3, 0, 'ПЕПЕРУДА', '2019-03-22 21:57:16'),
(60, 3, 0, 'ЯЗОВЕЦ', '2019-03-22 22:17:02'),
(61, 3, 0, 'КОТКА', '2019-03-22 22:17:12'),
(62, 3, 17, 'КОТКА', '2019-03-22 22:18:34'),
(63, 3, 17, 'КОТКА', '2019-03-22 22:19:39'),
(64, 3, 0, 'ЛИСИЦА', '2019-03-22 22:20:13'),
(65, 3, 17, 'СВРАКА', '2019-03-22 22:20:45'),
(66, 3, 0, 'ТИГЪР', '2019-03-22 22:27:38'),
(67, 3, 0, '?????', '2019-03-22 22:35:58'),
(68, 3, 0, 'КОН', '2019-03-22 22:36:42'),
(69, 3, 0, 'АМСТЕРДАМ', '2019-03-22 22:36:52'),
(77, 3, 0, 'FLAMINGO', '2019-03-23 17:54:22'),
(78, 3, 0, 'BUTTERFLY', '2019-03-23 17:55:49'),
(79, 3, 0, 'BUTTERFLY', '2019-03-23 17:58:13'),
(80, 3, 0, 'BUFFALO', '2019-03-23 17:58:15'),
(81, 3, 0, 'LYNX', '2019-03-23 17:58:52'),
(82, 3, 0, 'LYNX', '2019-03-23 18:00:19'),
(83, 3, 0, 'LYNX', '2019-03-23 18:00:50'),
(84, 3, 0, 'BEAVER', '2019-03-23 18:00:54'),
(85, 3, 0, 'JAKARTA', '2019-03-23 18:00:57'),
(86, 3, 0, 'JAKARTA', '2019-03-23 18:01:52'),
(87, 3, 0, 'ALBATROSS', '2019-03-23 18:01:55'),
(88, 3, 0, 'BUFFALO', '2019-03-23 18:02:48'),
(89, 3, 0, 'BUFFALO', '2019-03-23 18:03:46'),
(90, 3, 0, 'STARLING', '2019-03-23 18:05:22'),
(91, 3, 0, 'STARLING', '2019-03-23 18:05:35'),
(92, 3, 0, 'DARTER', '2019-03-23 18:05:45'),
(93, 3, 16, 'CROW', '2019-03-23 18:07:18'),
(94, 3, 16, 'CROW', '2019-03-23 18:07:34'),
(95, 3, 0, 'CROW', '2019-03-23 18:10:22'),
(96, 3, 0, 'CAPYBARA', '2019-03-23 18:10:55'),
(97, 3, 0, 'ALLIGATOR', '2019-03-23 18:13:08'),
(98, 3, 0, 'LEMUR', '2019-03-23 18:19:13'),
(99, 3, 0, 'ЛЕБЕД', '2019-03-23 18:21:53'),
(100, 3, 0, 'ЛЕБЕД', '2019-03-23 18:22:49'),
(101, 3, 13, 'СКОРЕЦ', '2019-03-23 18:23:53'),
(102, 3, 0, 'KAZAKHSTAN', '2019-03-23 19:35:26'),
(103, 3, 0, 'BLESBOK', '2019-03-23 19:41:50');

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
(2, 'koko', '5555'),
(3, 'kik', 'kik'),
(4, 'tanq', 'tanq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories_bgr`
--
ALTER TABLE `categories_bgr`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `categories_eng`
--
ALTER TABLE `categories_eng`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_id`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `categories_eng`
--
ALTER TABLE `categories_eng`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ограничения за дъмпнати таблици
--

--
-- Ограничения за таблица `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
