-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 02 Lut 2021, 11:09
-- Wersja serwera: 10.4.11-MariaDB
-- Wersja PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `karpadresy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `osoby`
--

CREATE TABLE `osoby` (
  `id` int(11) NOT NULL,
  `name` text COLLATE utf8_polish_ci NOT NULL,
  `surname` text COLLATE utf8_polish_ci NOT NULL,
  `bdate` date NOT NULL,
  `adres` text COLLATE utf8_polish_ci NOT NULL,
  `num` int(11) NOT NULL,
  `sex` text COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `osoby`
--

INSERT INTO `osoby` (`id`, `name`, `surname`, `bdate`, `adres`, `num`, `sex`) VALUES
(1, 'Bogumił', 'Kalinowski', '2019-02-12', 'Drućwińska 23/34', 2387679, 'm'),
(2, 'Maciej', 'Kucharski', '2019-02-14', 'Drzymowskiego 1a/24', 23554546, 'm'),
(3, 'Emil', 'Mazurek', '2020-01-06', 'Freuda4/6', 86789439, 'm'),
(4, 'Kamil', 'Kaczmarek', '2020-06-17', 'Trekowskiego 4B/78', 87556749, 'm'),
(5, 'Jędrzej', 'Baranowski', '2018-09-19', 'Mareckiego 34/12', 86769896, 'm'),
(6, 'Radosław', 'Brzeziński', '2019-12-24', 'Jarseckiego 45/56', 98879845, 'm'),
(7, 'Alan', 'Kucharski', '2020-06-11', 'Groteckiego 67/78', 985679864, 'm'),
(8, 'Arkadiusz', 'Wójcik', '2019-09-10', 'Trycetkiego 65/45', 863456545, 'm'),
(9, 'Gustaw', 'Sikora', '2020-03-02', 'Jarecjka 6b/7', 7865353, 'm'),
(10, 'Dariusz', 'Ziółkowski', '2019-12-17', 'Tryfecka 67/98', 98796497, 'm'),
(11, 'Amadeusz', 'Kucharski', '2020-08-05', 'Reduty 4/32', 74579393, 'm'),
(12, 'Andrzej ', 'Kamiński', '2018-10-17', 'Francuska 8/9\r\n', 9896083, 'm'),
(13, 'Ernest', 'Baranowski', '2019-12-10', 'Lokowska 5', 9869835, 'm'),
(14, 'Gracjan ', 'Dąbrowski', '2020-02-29', 'Trzebietowskiego 6', 9906473, 'm'),
(15, 'Marcel ', 'Wróblewski', '2020-03-27', 'Drzebnikowska 6', 987986, 'm'),
(16, 'Piotr ', 'Walczak', '2019-06-29', 'Reeszaka 6 ', 8509864, 'm'),
(17, 'Krzysztof', 'Adamski', '2019-11-03', 'Hynka 5/12', 98566809, 'm'),
(18, 'Henryk', 'Zakrzewski', '2020-02-18', 'Kłopotowska 98', 87799345, 'm'),
(19, 'Jacek', 'Pawlak', '2020-02-23', 'Trzemieska 5', 9089054, 'm'),
(20, 'Konrad', 'Sawicki', '2020-02-11', 'Fiołkowa 45/8', 89780978, 'm'),
(21, 'Aleks', 'Błaszczyk', '2019-04-13', 'Kijańska 6/9', 9080946, 'm'),
(22, 'Kornel', 'Krawczyk', '2020-06-08', 'Warecka', 9080808, 'm'),
(23, 'Janusz', 'Lewandowski', '2020-07-22', 'Gierecka 8/90', 90568096, 'm'),
(24, 'Ernest', 'Kaczmarczyk', '2020-05-05', 'Jeżowska', 90546843, 'm');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `osoby`
--
ALTER TABLE `osoby`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `osoby`
--
ALTER TABLE `osoby`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
