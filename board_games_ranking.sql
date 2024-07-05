-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lip 05, 2024 at 04:45 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `board_games_ranking`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `board_games`
--

CREATE TABLE `board_games` (
  `board_game_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `creator_id` int(11) NOT NULL,
  `publisher_id` int(11) NOT NULL,
  `average_min_play_time` varchar(7) NOT NULL,
  `average_max_play_time` varchar(7) DEFAULT NULL,
  `min_player_count` int(11) NOT NULL,
  `max_player_count` int(11) DEFAULT NULL,
  `recommended_age` varchar(3) NOT NULL,
  `year_published` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `board_games`
--

INSERT INTO `board_games` (`board_game_id`, `title`, `creator_id`, `publisher_id`, `average_min_play_time`, `average_max_play_time`, `min_player_count`, `max_player_count`, `recommended_age`, `year_published`) VALUES
(1, '51. Stan', 1, 1, '60', '90', 1, 4, '14+', 2016),
(2, '7 Cudów Świata', 2, 25, '30', '30', 2, 7, '10+', 2010),
(3, 'Górą i Dołem', 3, 3, '90', '90', 2, 4, '13+', 2015),
(4, 'Alchemicy', 4, 2, '120', '120', 2, 4, '13+', 2014),
(5, 'Alhambra', 5, 4, '45', '60', 2, 6, '8+', 2003),
(6, 'Pośród Gwiazd', 6, 1, '30', '30', 2, 4, '12+', 2012),
(7, 'Ankh: Bogowie Egiptu', 7, 1, '90', '90', 2, 5, '14+', 2021),
(8, 'Architekci Zachodniego Królestwa', 8, 1, '60', '80', 1, 5, '12+', 2018),
(9, 'Ark Nova', 9, 1, '90', '150', 1, 4, '14+', 2021),
(10, 'AuZtralia', 10, 5, '30', '120', 1, 4, '13+', 2018),
(11, 'Niepożądani Goście', 11, 6, '45', '75', 1, 8, '12+', 2016),
(12, 'Azul', 12, 7, '30', '45', 2, 4, '8+', 2017),
(13, 'Park Niedźwiedzi', 13, 7, '30', '45', 2, 4, '8+', 2017),
(14, 'Barrage', 14, 1, '60', '120', 1, 4, '14+', 2019),
(15, 'Blackout: Hongkong', 15, 7, '75', '150', 1, 4, '14+', 2018),
(16, 'Blood rage', 7, 1, '60', '90', 2, 4, '14+', 2015),
(17, 'Brass: Birmingham', 10, 5, '60', '120', 2, 4, '14+', 2018),
(18, 'Brazil: Świt Imperium', 16, 8, '100', '100', 1, 4, '14+', 2021),
(19, 'Carcassonne', 17, 3, '30', '45', 2, 5, '7+', 2000),
(20, 'Carson City', 18, 9, '90', '90', 2, 5, '12+', 2009),
(21, 'Kaskadia', 19, 10, '30', '45', 1, 4, '10+', 2021),
(22, 'Zamki Burgundii', 20, 2, '30', '90', 2, 4, '12+', 2011),
(23, 'Catan', 21, 11, '60', '120', 3, 4, '10+', 1995),
(24, 'Kawerna: Rolnicy z Jaskiń', 22, 7, '30', '210', 1, 7, '12+', 2013),
(25, 'Celestia', 23, 12, '30', '30', 2, 6, '8+', 2015),
(26, 'Century: Nowy Świat', 24, 14, '30', '45', 2, 4, '8+', 2019),
(27, 'Charterstone', 25, 5, '45', '75', 1, 6, '14+', 2017),
(28, 'Brzdęk! Nie drażnij smoka', 26, 8, '30', '60', 2, 4, '12+', 2016),
(29, 'Klany Kaledonii ', 27, 35, '30', '120', 1, 4, '12+', 2017),
(30, 'Tajniacy', 28, 2, '15', '15', 2, 8, '10+', 2015),
(31, 'Concordia', 29, 36, '100', '100', 2, 5, '13+', 2013),
(32, 'Załoga: Wyprawa w głębiny', 30, 11, '20', '20', 2, 5, '10+', 2021),
(33, 'Cyklady', 31, 2, '60', '90', 2, 5, '13+', 2009),
(34, 'Dolina Kupców 2', 32, 13, '30', '30', 2, 4, '10+', 2016),
(35, 'Martwa Zima: Gra rozdroży', 33, 14, '60', '120', 2, 5, '13+', 2014),
(36, 'Dixit', 34, 2, '30', '30', 3, 8, '8+', 2008),
(37, 'Dominion', 35, 15, '30', '30', 2, 4, '13+', 2008),
(38, 'Domek', 36, 2, '30', '30', 2, 4, '7+', 2016),
(39, 'Diuna: Imperium', 26, 8, '60', '120', 1, 4, '14+', 2020),
(40, 'Eclipse: Drugi świt galaktyki', 37, 37, '60', '200', 2, 6, '14+', 2020),
(41, 'Eldritch Horror', 38, 11, '120', '240', 1, 8, '14+', 2014),
(42, 'Endeavor', 39, 35, '90', '90', 3, 5, '12+', 2009),
(43, 'Everdell', 40, 2, '40', '80', 1, 4, '13+', 2018),
(44, 'Ex Libris', 41, 1, '45', '45', 1, 4, '10+', 2017),
(45, 'Wyprawa do Newdale', 15, 7, '90', '90', 1, 4, '12+', 2019),
(46, 'Uczta dla Odyna', 22, 7, '30', '120', 1, 4, '12+', 2016),
(47, 'Pięć Klanów', 31, 2, '40', '80', 2, 4, '13+', 2014),
(48, 'Zakazane Gwiazdy', 38, 11, '120', '180', 2, 4, '14+', 2015),
(49, 'Projekt Gaja', 116, 15, '60', '150', 1, 4, '12+', 2017),
(50, 'Ciężarówką przez Galaktykę', 28, 2, '60', '60', 2, 4, '10+', 2007),
(51, 'Glen More II: Kroniki', 43, 2, '90', '120', 2, 4, '12+', 2019),
(52, 'Gloomhaven', 44, 16, '60', '120', 1, 4, '14+', 2017),
(53, 'Na chwałę Rzymu', 45, 17, '60', '60', 2, 5, '12+', 2005),
(54, 'Gejsze', 46, 6, '15', '15', 2, 2, '10+', 2013),
(55, 'Great Western Trail', 15, 7, '75', '150', 2, 4, '12+', 2016),
(56, 'Le Havre', 22, 7, '30', '150', 1, 5, '12+', 2008),
(57, 'Gildie Londynu', 47, 35, '45', '90', 1, 4, '10+', 2016),
(58, 'Hero Realms', 48, 18, '20', '20', 2, 4, '12+', 2016),
(59, 'Karak', 49, 16, '45', '45', 2, 5, '7+', 2017),
(60, 'Wyspa Kotów', 50, 10, '60', '90', 1, 4, '8+', 2019),
(61, 'Wyspa Skye', 51, 7, '30', '50', 2, 5, '8+', 2015),
(62, 'Istanbul', 52, 19, '40', '60', 2, 5, '10+', 2014),
(63, 'Nowy wspaniały świat', 53, 20, '30', '60', 1, 5, '14+', 2019),
(64, 'Keyflower', 54, 35, '90', '120', 2, 6, '12+', 2012),
(65, 'Król Ozo', 55, 7, '15', '15', 2, 5, '6+', 2017),
(66, 'Londyn', 10, 5, '60', '90', 2, 4, '14+', 2017),
(67, 'Pan lodowego ogrodu', 56, 21, '90', '90', 1, 4, '14+', 2014),
(68, 'Kingdomino', 31, 2, '15', '25', 2, 4, '8+', 2016),
(69, 'Lords of Hellas', 57, 2, '60', '90', 1, 4, '14+', 2018),
(70, 'Kuchenna Gorączka', 58, 11, '30', '45', 1, 4, '12+', 2017),
(71, 'Kolejka', 59, 22, '60', '60', 2, 5, '12+', 2011),
(72, 'Zaginiona ekspedycja', 60, 23, '30', '50', 1, 5, '14+', 2017),
(73, 'Posiadłość Szaleństwa: Druga Edycja', 61, 11, '120', '180', 1, 5, '14+', 2016),
(74, 'Zaginiona wyspa Arnak', 62, 2, '30', '120', 1, 4, '12+', 2020),
(75, 'Maracaibo', 15, 7, '30', '120', 1, 4, '12+', 2019),
(76, 'Łąka', 36, 2, '60', '90', 1, 4, '10+', 2021),
(77, 'Namiji', 2, 25, '30', '45', 2, 5, '8+', 2022),
(78, 'Magia i Myszy', 63, 2, '60', '90', 1, 4, '7+', 2012),
(79, 'Dzieci z Carcassonne', 64, 3, '10', '20', 2, 4, '4+', 2009),
(80, 'Nanty Narking', 10, 5, '60', '60', 2, 4, '14+', 2019),
(81, 'Bliżej i Dalej', 3, 3, '90', '120', 2, 4, '13+', 2017),
(82, 'Nemesis', 57, 2, '90', '180', 1, 5, '12+', 2018),
(83, 'Wojna Nemo', 65, 11, '60', '120', 1, 4, '13+', 2017),
(84, 'Obecność', 66, 15, '30', '45', 2, 7, '10+', 2016),
(85, 'O mój zboże!', 15, 7, '30', '30', 2, 4, '10+', 2015),
(86, 'Karciane Podziemia', 67, 35, '30', '30', 1, 2, '14+', 2016),
(87, 'Orlean', 68, 26, '90', '90', 2, 5, '12+', 2014),
(88, 'Paladyni zachodniego królestwa', 8, 1, '90', '120', 1, 4, '12+', 2019),
(89, 'Pangea', 69, 21, '60', '90', 1, 4, '14+', 2019),
(90, 'Parki', 70, 16, '30', '60', 1, 5, '10+', 2019),
(91, 'Patchwork', 22, 7, '15', '30', 2, 2, '8+', 2014),
(92, 'Pax Pamir', 71, 11, '45', '120', 1, 5, '13+', 2019),
(93, '7 Cudów Świata: Pojedynek', 2, 25, '30', '45', 2, 2, '10+', 2015),
(94, 'Puerto Rico', 72, 7, '90', '150', 3, 5, '12+', 2002),
(95, 'Szarlatani z Pasikurowic', 73, 4, '45', '45', 2, 4, '10+', 2018),
(96, 'Wyprawa do El Dorado', 74, 6, '30', '60', 2, 4, '10+', 2017),
(97, 'Quoridor', 75, 27, '15', '15', 2, 4, '8+', 1997),
(98, 'Najeźdźcy z Północy', 8, 1, '60', '80', 2, 4, '12+', 2015),
(99, 'Rising Sun', 7, 1, '90', '120', 3, 5, '14+', 2018),
(100, 'Robinson Crusoe', 1, 1, '60', '120', 1, 4, '14+', 2012),
(101, 'Roll for the Galaxy', 76, 1, '45', '45', 2, 5, '13+', 2014),
(102, 'Root', 77, 1, '60', '90', 2, 4, '10+', 2018),
(103, 'Rosyjskie Koleje', 78, 3, '120', '120', 2, 4, '13+', 2013),
(104, 'Sabotażysta', 79, 2, '30', '30', 3, 10, '8+', 2004),
(105, 'Santorini', 80, 28, '20', '20', 2, 4, '8+', 2016),
(106, 'Scythe', 25, 5, '90', '115', 1, 5, '14+', 2016),
(107, 'Szogun', 5, 4, '90', '120', 3, 5, '12+', 2006),
(108, 'Uśpieni bogowie', 3, 3, '60', '120', 1, 4, '13+', 2021),
(109, 'Small World', 81, 2, '40', '80', 2, 5, '8+', 2009),
(110, 'Zdobywcy Kosmosu', 82, 29, '20', '40', 2, 4, '10+', 2017),
(111, 'Spirit Island', 83, 7, '90', '120', 1, 4, '13+', 2017),
(112, 'Splendor', 84, 2, '30', '30', 2, 4, '10+', 2014),
(113, 'Star Realms', 85, 18, '20', '20', 2, 2, '12+', 2014),
(114, 'Odlotowy wyścig', 86, 15, '45', '60', 2, 8, '14+', 2015),
(115, 'Epoka Kamienia', 87, 3, '60', '90', 2, 4, '10+', 2008),
(116, 'Stroganov', 88, 35, '90', '90', 1, 4, '12+', 2021),
(117, 'Stworze', 89, 30, '90', '180', 1, 5, '12+', 2017),
(118, 'Sushi Go!', 13, 7, '15', '15', 2, 5, '8+', 2013),
(119, 'T.I.M.E Stories', 90, 2, '90', '90', 2, 4, '12+', 2015),
(120, 'Takenoko', 2, 25, '45', '45', 2, 4, '8+', 2011),
(121, 'Taluva ', 91, 31, '45', '45', 2, 4, '8+', 2006),
(122, 'Terra Mystica', 42, 3, '60', '150', 2, 5, '12+', 2012),
(123, 'Terraformacja Marsa ', 92, 2, '120', '120', 1, 5, '12+', 2016),
(124, 'Wsiąść do Pociągu: Europa', 93, 2, '30', '60', 2, 5, '8+', 2005),
(125, 'Tikal', 115, 36, '90', '90', 2, 4, '10+', 1999),
(126, 'Tokaido', 2, 25, '45', '45', 2, 5, '8+', 2012),
(127, 'Kupcy z Osaki', 94, 14, '30', '30', 2, 4, '13+', 2006),
(128, 'Twilight Struggle: Zimna Wojna 1945-1989', 95, 5, '120', '180', 2, 2, '13+', 2005),
(129, 'Tzolkin: Kalendarz Majów', 96, 2, '90', '90', 2, 4, '13+', 2012),
(130, 'U-Boot: Gra planszowa', 97, 5, '30', '120', 1, 4, '12+', 2019),
(131, 'Podwodne miasta', 98, 1, '80', '150', 1, 4, '12+', 2018),
(132, 'Valhalla', 99, 32, '30', '60', 1, 6, '13+', 2018),
(133, 'Vikings Gone Wild', 100, 15, '45', '90', 2, 4, '10+', 2017),
(134, 'Wicehrabiowie zachodniego królestwa', 8, 1, '60', '90', 1, 4, '12+', 2020),
(135, 'Viticulture Essential Edition', 25, 5, '45', '90', 1, 6, '13+', 2015),
(136, 'Wojna o pierścień', 101, 33, '180', '180', 2, 4, '13+', 2012),
(137, 'Na skrzydłach', 102, 2, '40', '70', 1, 5, '10+', 2019),
(138, 'Wiedźmin: Stary Świat', 99, 32, '90', '150', 1, 5, '14+', 2023),
(139, 'Bossmonster: gra karcian o budowaniu podziemi', 103, 24, '30', '30', 2, 4, '13+', 2013),
(140, 'Aeon\'s End', 104, 1, '60', '60', 1, 4, '14+', 2016),
(141, 'This War of Mine', 105, 11, '45', '120', 1, 6, '18+', 2017),
(142, 'Res Arcana', 106, 2, '30', '60', 2, 4, '12+', 2019),
(143, 'Ekosystem', 107, 6, '15', '20', 2, 6, '10+', 2019),
(144, 'Jungle Speed', 108, 2, '10', '10', 2, 10, '7+', 1997),
(145, 'Bitwa o Tortugę', 109, 20, '10', '10', 2, 2, '6+', 2013),
(146, 'Fotosynteza', 110, 19, '30', '60', 2, 4, '10+', 2017),
(147, 'BANG!', 111, 3, '20', '40', 4, 7, '8+', 2002),
(148, 'Valeria: Karciane Królestwa', 112, 15, '30', '45', 1, 5, '13+', 2016),
(149, 'Jaipur', 113, 2, '30', '30', 2, 2, '12+', 2009),
(150, 'UNO', 114, 34, '30', '30', 2, 10, '6+', 1971),
(151, 'Splendor: Pojedynek', 31, 2, '30', '30', 2, 2, '10+', 2022);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `creators`
--

CREATE TABLE `creators` (
  `creator_id` int(11) NOT NULL,
  `creator_name` text CHARACTER SET utf16 COLLATE utf16_unicode_ci NOT NULL,
  `publisher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `creators`
--

INSERT INTO `creators` (`creator_id`, `creator_name`, `publisher_id`) VALUES
(1, 'Ignacy Trzewiczek', 1),
(2, 'Antoine Bauza', 25),
(3, 'Ryan Laukat', 3),
(4, 'Matúš Kotry', 2),
(5, 'Dirk Henn', 4),
(6, 'Vangelis Bagiartakis', 1),
(7, 'Eric M. Lang', 1),
(8, 'Shem Phillips', 1),
(9, 'Mathias Wigge', 1),
(10, 'Martin Wallace', 5),
(11, 'Ron Gonzalo García\r\n', 6),
(12, 'Michael Kiesling', 7),
(13, 'Phil Walker-Harding', 7),
(14, 'Tommaso Battista', 1),
(15, 'Alexander Pfister', 7),
(16, 'Zé Mendes', 8),
(17, 'Klaus-Jürgen Wrede', 3),
(18, 'Xavier Georges', 9),
(19, 'Randy Flynn', 10),
(20, 'Stefan Feld', 2),
(21, 'Klaus Teuber', 11),
(22, 'Uwe Rosenberg', 7),
(23, 'Aaron Weissblum', 12),
(24, 'Emerson Matsuuchi', 14),
(25, 'Jamey Stegmaier', 5),
(26, 'Paul Dennen', 8),
(27, 'Juma Al-JouJou', 35),
(28, 'Vlaada Chvátil', 2),
(29, 'Mac Gerdts', 37),
(30, 'Thomas Sing', 11),
(31, 'Bruno Cathala', 2),
(32, 'Sami Laakso', 13),
(33, 'Jonathan Gilmour', 14),
(34, 'Jean-Louis Roubira', 2),
(35, 'Donald X. Vaccarino', 15),
(36, 'Klemens Kalicki', 2),
(37, 'Touko Tahkokallio', 37),
(38, 'Corey Konieczka', 11),
(39, 'Carl de Visser', 35),
(40, 'James A. Wilson', 2),
(41, 'Adam P. McIver', 1),
(42, 'Jens Drögemüller', 3),
(43, 'Matthias Cramer', 2),
(44, 'Isaac Childres', 16),
(45, 'Carl Chudyk', 17),
(46, 'Kota Nakayama', 6),
(47, 'Tony Boydell', 35),
(48, 'Robert Dougherty', 18),
(49, 'Petr Mikša', 16),
(50, 'Frank West', 10),
(51, 'Andreas Pelikan', 7),
(52, 'Rüdiger Dorn', 19),
(53, 'Frédéric Guérard', 20),
(54, 'Sebastian Bleasdale', 35),
(55, 'Wydawnictwo Zanzoon', 7),
(56, 'Krzysztof Wolicki', 21),
(57, 'Adam Kwapiński', 2),
(58, 'Natalia Kordowska', 11),
(59, 'Natalia Baranowska', 22),
(60, 'Peer Sylvester', 23),
(61, 'Nikki Valens', 11),
(62, 'Elwen', 2),
(63, 'Jerry Hawthorne', 2),
(64, 'Marco Teubner', 3),
(65, 'Chris Taylor', 11),
(66, 'Ghislain Masson', 15),
(67, 'Chris Cieslik', 35),
(68, 'Reiner Stockhausen', 26),
(69, 'Aleksander Jagodziński', 21),
(70, 'Henry Audubon', 16),
(71, 'Richard Wilkins', 11),
(72, 'Andreas Seyfarth', 7),
(73, 'Wolfgang Warsch', 4),
(74, 'Reiner Knizia', 6),
(75, 'Mirko Marchesi', 27),
(76, 'Wei-Hwa Huang', 1),
(77, 'Cole Wehrle', 1),
(78, 'Helmut Ohley', 3),
(79, 'Fréderic Moyersoen', 2),
(80, 'Gord', 28),
(81, 'Philippe Keyaerts', 2),
(82, 'Yuri Zhuravljov', 29),
(83, 'R. Eric Reuss', 7),
(84, 'Marc André\r\n', 2),
(85, 'Darwin Kastle', 18),
(86, 'Orin Bishop', 15),
(87, 'Michael Tummelhoffer', 3),
(88, 'Andreas Steding', 35),
(89, 'Grzegorz Arabczyk', 30),
(90, 'Peggy Chassenet', 2),
(91, 'Marcel-André Casasola Merkle', 31),
(92, 'Jacob Fryxelius', 2),
(93, 'Alan R. Moon', 2),
(94, 'Susumu Kawasaki', 14),
(95, 'Ananda Gupta', 5),
(96, 'Simone Luciani', 2),
(97, 'Bartosz Pluta', 5),
(98, 'Vladimír Suchý', 1),
(99, 'Łukasz Woźniak', 32),
(100, 'Julien Vergonjeanne', 15),
(101, 'Roberto Di Meglio', 33),
(102, 'Elizabeth Hargrave', 2),
(103, 'Johnny O\'Neal', 24),
(104, 'Jenny Iglesias', 1),
(105, 'Michał Oracz', 11),
(106, 'Thomas Lehmann', 2),
(107, 'Matt Simpson', 6),
(108, 'Thomas Vuarchex', 2),
(109, 'Hiroki Kaneko', 20),
(110, 'Hjalmar Hach', 19),
(111, 'Emiliano Sciarra', 3),
(112, 'Isaias Vallejo', 15),
(113, 'Sébastien Pauchon', 2),
(114, 'Merle Robbins', 34),
(115, 'Wolfgang Kramer', 36),
(116, 'Helge Ostertag', 15);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `games_owned`
--

CREATE TABLE `games_owned` (
  `games_owned_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `board_game_id` int(11) NOT NULL,
  `user_rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `games_owned`
--

INSERT INTO `games_owned` (`games_owned_id`, `user_id`, `board_game_id`, `user_rating`) VALUES
(1, 1, 1, 4),
(2, 1, 3, 5),
(3, 1, 5, 3),
(4, 1, 7, 4),
(5, 1, 9, 5),
(6, 2, 11, 5),
(7, 2, 13, 4),
(8, 2, 15, 3),
(9, 2, 17, 4),
(10, 2, 19, 5),
(11, 3, 21, 4),
(12, 3, 23, 3),
(13, 3, 25, 5),
(14, 3, 27, 4),
(15, 3, 29, 3),
(16, 4, 31, 5),
(17, 4, 33, 4),
(18, 4, 35, 3),
(19, 4, 37, 4),
(20, 4, 39, 5),
(21, 5, 41, 4),
(22, 5, 43, 3),
(23, 5, 45, 5),
(24, 5, 47, 4),
(25, 5, 49, 3),
(26, 6, 51, 5),
(27, 6, 53, 4),
(28, 6, 55, 3),
(29, 6, 57, 4),
(30, 6, 59, 5),
(31, 7, 61, 4),
(32, 7, 63, 3),
(33, 7, 65, 5),
(34, 7, 67, 4),
(35, 7, 69, 3),
(36, 8, 71, 5),
(37, 8, 73, 4),
(38, 8, 75, 3),
(39, 8, 77, 4),
(40, 8, 79, 5),
(41, 9, 81, 4),
(42, 9, 83, 3),
(43, 9, 85, 5),
(44, 9, 87, 4),
(45, 9, 89, 3),
(46, 10, 91, 5),
(47, 10, 93, 4),
(48, 10, 95, 3),
(49, 10, 97, 4),
(50, 10, 99, 5),
(56, 11, 111, 5),
(57, 11, 113, 3),
(58, 11, 115, 4),
(59, 11, 117, 5),
(60, 11, 119, 3),
(61, 12, 121, 4),
(62, 12, 123, 5),
(63, 12, 125, 3),
(64, 12, 127, 4),
(65, 12, 129, 5),
(66, 13, 131, 3),
(67, 13, 133, 4),
(68, 13, 135, 5),
(69, 13, 137, 3),
(70, 13, 139, 4),
(71, 14, 141, 5),
(72, 14, 143, 3),
(73, 14, 145, 4),
(74, 14, 147, 5),
(75, 14, 149, 3),
(76, 15, 151, 4),
(77, 15, 1, 5),
(78, 15, 3, 3),
(79, 15, 5, 4),
(80, 15, 7, 5),
(81, 16, 9, 3),
(82, 16, 11, 4),
(83, 16, 13, 5),
(84, 16, 15, 3),
(85, 16, 17, 4),
(86, 17, 19, 5),
(87, 17, 21, 3),
(88, 17, 23, 4),
(89, 17, 25, 5),
(90, 17, 27, 3),
(91, 18, 29, 4),
(92, 18, 31, 5),
(93, 18, 33, 3),
(94, 18, 35, 4),
(95, 18, 37, 5),
(96, 19, 39, 3),
(97, 19, 41, 4),
(98, 19, 43, 5),
(99, 19, 45, 3),
(100, 19, 47, 4),
(101, 20, 49, 5),
(102, 20, 51, 3),
(103, 20, 53, 4),
(104, 20, 55, 5),
(105, 20, 57, 3),
(106, 21, 59, 4),
(107, 21, 61, 5),
(108, 21, 63, 3),
(109, 21, 65, 4),
(110, 21, 67, 5),
(111, 22, 69, 3),
(112, 22, 71, 4),
(113, 22, 73, 5),
(114, 22, 75, 3),
(115, 22, 77, 4),
(116, 23, 79, 5),
(117, 23, 81, 3),
(118, 23, 83, 4),
(119, 23, 85, 5),
(120, 23, 87, 3),
(121, 24, 89, 4),
(122, 24, 91, 5),
(123, 24, 93, 3),
(124, 24, 95, 4),
(125, 24, 97, 5),
(126, 25, 99, 3),
(127, 25, 101, 4),
(128, 25, 103, 5),
(129, 25, 105, 3),
(130, 25, 107, 4),
(131, 26, 109, 5),
(132, 26, 111, 3),
(133, 26, 113, 4),
(134, 26, 115, 5),
(135, 26, 117, 3),
(136, 27, 119, 4),
(137, 27, 121, 5),
(138, 27, 123, 3),
(139, 27, 125, 4),
(140, 27, 127, 5),
(141, 28, 129, 3),
(142, 28, 131, 4),
(143, 28, 133, 5),
(144, 28, 135, 3),
(145, 28, 137, 4),
(146, 29, 139, 5),
(147, 29, 141, 3),
(148, 29, 143, 4),
(149, 29, 145, 5),
(150, 29, 147, 3),
(151, 30, 149, 4),
(152, 30, 151, 5),
(153, 30, 2, 3),
(154, 30, 4, 4),
(155, 30, 6, 5),
(156, 31, 8, 3),
(157, 31, 10, 4),
(158, 31, 12, 5),
(159, 31, 14, 3),
(160, 31, 16, 4),
(161, 32, 18, 5),
(162, 32, 20, 3),
(163, 32, 22, 4),
(164, 32, 24, 5),
(165, 32, 26, 3),
(166, 33, 28, 4),
(167, 33, 30, 5),
(168, 33, 32, 3),
(169, 33, 34, 4),
(170, 33, 36, 5),
(171, 34, 38, 3),
(172, 34, 40, 4),
(173, 34, 42, 5),
(174, 34, 44, 3),
(175, 34, 46, 4),
(176, 35, 48, 5),
(177, 35, 50, 3),
(178, 35, 52, 4),
(179, 35, 54, 5),
(180, 35, 56, 3),
(181, 36, 58, 4),
(182, 36, 60, 5),
(183, 36, 62, 3),
(184, 36, 64, 4),
(185, 36, 66, 5),
(186, 37, 68, 3),
(187, 37, 70, 4),
(188, 37, 72, 5),
(189, 37, 74, 3),
(190, 37, 76, 4),
(191, 38, 78, 5),
(192, 38, 80, 3),
(193, 38, 82, 4),
(194, 38, 84, 5),
(195, 38, 86, 3),
(196, 39, 88, 4),
(197, 39, 90, 5),
(198, 39, 92, 3),
(199, 39, 94, 4),
(200, 39, 96, 5),
(201, 40, 98, 3),
(202, 40, 100, 4),
(203, 40, 102, 5),
(204, 40, 104, 3),
(205, 40, 106, 4),
(206, 41, 108, 5),
(207, 41, 110, 3),
(208, 41, 112, 4),
(209, 41, 114, 5),
(210, 41, 116, 3),
(211, 42, 118, 4),
(212, 42, 120, 5),
(213, 42, 122, 3),
(214, 42, 124, 4),
(215, 42, 126, 5),
(216, 43, 128, 3),
(217, 43, 130, 4),
(218, 43, 132, 5),
(219, 43, 134, 3),
(220, 43, 136, 4),
(221, 44, 138, 5),
(222, 44, 140, 3),
(223, 44, 142, 4),
(224, 44, 144, 5),
(225, 44, 146, 3),
(226, 45, 148, 4),
(227, 45, 150, 5),
(228, 45, 151, 3),
(229, 45, 15, 4),
(230, 45, 15, 5),
(231, 46, 58, 3),
(232, 46, 60, 4),
(233, 46, 62, 5),
(234, 46, 64, 3),
(235, 46, 66, 4),
(236, 47, 18, 5),
(237, 47, 10, 3),
(238, 47, 12, 4),
(239, 47, 14, 5),
(240, 47, 16, 3),
(241, 48, 17, 4),
(242, 48, 18, 5),
(243, 48, 18, 3),
(244, 48, 18, 4),
(245, 48, 18, 5),
(246, 49, 88, 3),
(247, 49, 90, 4),
(248, 49, 92, 5),
(249, 49, 94, 3),
(250, 49, 96, 4),
(251, 50, 18, 5),
(252, 50, 20, 3),
(253, 50, 22, 4),
(254, 50, 24, 5),
(255, 50, 26, 3),
(256, 2, 1, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `game_categories`
--

CREATE TABLE `game_categories` (
  `board_game_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `game_categories`
--

INSERT INTO `game_categories` (`board_game_id`, `category_id`) VALUES
(1, 6),
(2, 3),
(3, 7),
(4, 6),
(5, 6),
(6, 6),
(7, 6),
(8, 6),
(9, 6),
(10, 6),
(11, 3),
(12, 1),
(13, 3),
(14, 6),
(15, 6),
(16, 6),
(17, 6),
(18, 6),
(19, 3),
(20, 6),
(21, 1),
(22, 6),
(23, 6),
(24, 6),
(25, 3),
(26, 6),
(27, 6),
(28, 6),
(29, 6),
(30, 4),
(31, 6),
(32, 6),
(33, 6),
(34, 3),
(35, 7),
(36, 4),
(37, 6),
(38, 3),
(39, 6),
(40, 6),
(41, 7),
(42, 6),
(43, 6),
(44, 6),
(45, 6),
(46, 6),
(47, 6),
(48, 6),
(49, 6),
(50, 7),
(51, 6),
(52, 7),
(53, 6),
(54, 3),
(55, 6),
(56, 6),
(57, 6),
(58, 6),
(59, 3),
(60, 6),
(61, 6),
(62, 6),
(63, 6),
(64, 6),
(65, 9),
(66, 6),
(67, 6),
(68, 3),
(69, 6),
(70, 7),
(71, 3),
(72, 7),
(73, 7),
(74, 6),
(75, 6),
(76, 3),
(77, 3),
(78, 5),
(79, 2),
(80, 7),
(81, 7),
(82, 7),
(83, 7),
(84, 6),
(85, 6),
(86, 7),
(87, 6),
(88, 6),
(89, 6),
(90, 3),
(91, 1),
(92, 6),
(94, 6),
(95, 3),
(96, 3),
(97, 1),
(98, 6),
(99, 6),
(100, 7),
(101, 6),
(102, 6),
(103, 6),
(104, 4),
(105, 1),
(106, 6),
(107, 6),
(108, 7),
(109, 6),
(110, 3),
(111, 6),
(112, 3),
(113, 6),
(114, 6),
(115, 6),
(116, 6),
(117, 7),
(118, 3),
(119, 7),
(120, 3),
(121, 1),
(122, 6),
(123, 6),
(124, 3),
(125, 6),
(126, 3),
(127, 6),
(128, 8),
(129, 6),
(130, 8),
(131, 6),
(132, 6),
(133, 6),
(134, 6),
(135, 6),
(136, 8),
(137, 6),
(138, 7),
(139, 3),
(140, 6),
(141, 7),
(142, 6),
(143, 3),
(144, 4),
(145, 1),
(146, 1),
(147, 4),
(148, 6),
(149, 3),
(150, 4),
(5, 3),
(12, 3),
(21, 3),
(23, 3),
(26, 3),
(28, 3),
(35, 5),
(41, 5),
(43, 3),
(52, 6),
(59, 2),
(60, 3),
(61, 3),
(62, 3),
(65, 2),
(70, 3),
(73, 5),
(74, 3),
(78, 7),
(80, 6),
(82, 5),
(91, 3),
(100, 5),
(104, 3),
(109, 3),
(114, 3),
(115, 3),
(117, 6),
(118, 4),
(119, 5),
(121, 6),
(128, 6),
(130, 7),
(136, 7),
(137, 3),
(140, 5),
(141, 5),
(144, 9),
(146, 3),
(148, 3),
(150, 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` int(11) NOT NULL,
  `publisher_name` text CHARACTER SET cp1250 COLLATE cp1250_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `publisher_name`) VALUES
(1, 'Portal Games'),
(2, 'Rebel'),
(3, 'Bard Centrum Gier'),
(4, 'G3'),
(5, 'Phalanx Games'),
(6, 'Nasza Księgarnia'),
(7, 'Lacerta '),
(8, 'Lucrum Games'),
(9, 'Quined Games'),
(10, 'Lucky Duck Games'),
(11, 'Galakta'),
(12, 'Hobbity'),
(13, 'Fullcap Games'),
(14, 'Cube Factory of Ideas'),
(15, 'Games Factory'),
(16, 'Albi'),
(17, 'Boat City'),
(18, 'IUVI Games'),
(19, '2 Pionki'),
(20, 'FoxGames'),
(21, 'Redimp'),
(22, 'Instytut Pamięci Narodowej'),
(23, 'All In Games'),
(24, 'Trefl Joker Line'),
(25, 'Funforge'),
(26, 'Baldar'),
(27, 'Gigamic'),
(28, 'Roxley Games'),
(29, 'Watermelon Publishing'),
(30, 'Underworld Kingdom'),
(31, 'Ferti Games'),
(32, 'Go On Board'),
(33, 'Ares Games'),
(34, 'Mattel'),
(35, 'Czacha Games'),
(36, 'Egmont'),
(37, 'Lautapelit.fi');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'user_1', 'hashed_common_password', 'user_1@user.com'),
(2, 'user_2', 'hashed_common_password', 'user_2@user.com'),
(3, 'user_3', 'hashed_common_password', 'user_3@user.com'),
(4, 'user_4', 'hashed_common_password', 'user_4@user.com'),
(5, 'user_5', 'hashed_common_password', 'user_5@user.com'),
(6, 'user_6', 'hashed_common_password', 'user_6@user.com'),
(7, 'user_7', 'hashed_common_password', 'user_7@user.com'),
(8, 'user_8', 'hashed_common_password', 'user_8@user.com'),
(9, 'user_9', 'hashed_common_password', 'user_9@user.com'),
(10, 'user_10', 'hashed_common_password', 'user_10@user.com'),
(11, 'user_11', 'hashed_common_password', 'user_11@user.com'),
(12, 'user_12', 'hashed_common_password', 'user_12@user.com'),
(13, 'user_13', 'hashed_common_password', 'user_13@user.com'),
(14, 'user_14', 'hashed_common_password', 'user_14@user.com'),
(15, 'user_15', 'hashed_common_password', 'user_15@user.com'),
(16, 'user_16', 'hashed_common_password', 'user_16@user.com'),
(17, 'user_17', 'hashed_common_password', 'user_17@user.com'),
(18, 'user_18', 'hashed_common_password', 'user_18@user.com'),
(19, 'user_19', 'hashed_common_password', 'user_19@user.com'),
(20, 'user_20', 'hashed_common_password', 'user_20@user.com'),
(21, 'user_21', 'hashed_common_password', 'user_21@user.com'),
(22, 'user_22', 'hashed_common_password', 'user_22@user.com'),
(23, 'user_23', 'hashed_common_password', 'user_23@user.com'),
(24, 'user_24', 'hashed_common_password', 'user_24@user.com'),
(25, 'user_25', 'hashed_common_password', 'user_25@user.com'),
(26, 'user_26', 'hashed_common_password', 'user_26@user.com'),
(27, 'user_27', 'hashed_common_password', 'user_27@user.com'),
(28, 'user_28', 'hashed_common_password', 'user_28@user.com'),
(29, 'user_29', 'hashed_common_password', 'user_29@user.com'),
(30, 'user_30', 'hashed_common_password', 'user_30@user.com'),
(31, 'user_31', 'hashed_common_password', 'user_31@user.com'),
(32, 'user_32', 'hashed_common_password', 'user_32@user.com'),
(33, 'user_33', 'hashed_common_password', 'user_33@user.com'),
(34, 'user_34', 'hashed_common_password', 'user_34@user.com'),
(35, 'user_35', 'hashed_common_password', 'user_35@user.com'),
(36, 'user_36', 'hashed_common_password', 'user_36@user.com'),
(37, 'user_37', 'hashed_common_password', 'user_37@user.com'),
(38, 'user_38', 'hashed_common_password', 'user_38@user.com'),
(39, 'user_39', 'hashed_common_password', 'user_39@user.com'),
(40, 'user_40', 'hashed_common_password', 'user_40@user.com'),
(41, 'user_41', 'hashed_common_password', 'user_41@user.com'),
(42, 'user_42', 'hashed_common_password', 'user_42@user.com'),
(43, 'user_43', 'hashed_common_password', 'user_43@user.com'),
(44, 'user_44', 'hashed_common_password', 'user_44@user.com'),
(45, 'user_45', 'hashed_common_password', 'user_45@user.com'),
(46, 'user_46', 'hashed_common_password', 'user_46@user.com'),
(47, 'user_47', 'hashed_common_password', 'user_47@user.com'),
(48, 'user_48', 'hashed_common_password', 'user_48@user.com'),
(49, 'user_49', 'hashed_common_password', 'user_49@user.com'),
(50, 'user_50', 'hashed_common_password', 'user_50@user.com');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `board_games`
--
ALTER TABLE `board_games`
  ADD PRIMARY KEY (`board_game_id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indeksy dla tabeli `creators`
--
ALTER TABLE `creators`
  ADD PRIMARY KEY (`creator_id`),
  ADD KEY `creators_publishers` (`publisher_id`);

--
-- Indeksy dla tabeli `games_owned`
--
ALTER TABLE `games_owned`
  ADD PRIMARY KEY (`games_owned_id`),
  ADD KEY `board_game_id` (`board_game_id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indeksy dla tabeli `game_categories`
--
ALTER TABLE `game_categories`
  ADD KEY `game_categories` (`category_id`),
  ADD KEY `board_game_id` (`board_game_id`) USING BTREE;

--
-- Indeksy dla tabeli `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `games_owned`
--
ALTER TABLE `games_owned`
  MODIFY `games_owned_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `board_games`
--
ALTER TABLE `board_games`
  ADD CONSTRAINT `games_creators` FOREIGN KEY (`creator_id`) REFERENCES `creators` (`creator_id`),
  ADD CONSTRAINT `games_publishers` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`);

--
-- Constraints for table `creators`
--
ALTER TABLE `creators`
  ADD CONSTRAINT `creators_publishers` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`);

--
-- Constraints for table `games_owned`
--
ALTER TABLE `games_owned`
  ADD CONSTRAINT `games_to_own` FOREIGN KEY (`board_game_id`) REFERENCES `board_games` (`board_game_id`),
  ADD CONSTRAINT `users_owning` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `game_categories`
--
ALTER TABLE `game_categories`
  ADD CONSTRAINT `game_categories` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `game_games` FOREIGN KEY (`board_game_id`) REFERENCES `board_games` (`board_game_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
