-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 192.168.0.200
-- Létrehozás ideje: 2023. Feb 10. 15:03
-- Kiszolgáló verziója: 10.5.17-MariaDB-log
-- PHP verzió: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `s47_db`
--
CREATE DATABASE IF NOT EXISTS `s47_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `s47_db`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cipok`
--

CREATE TABLE `cipok` (
  `cipo_id` int(11) NOT NULL,
  `cipo_nev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `cipo_kep` varchar(255) COLLATE utf8mb4_hungarian_ci NOT NULL,
  `cipo_ar` int(11) NOT NULL,
  `cipo_kategoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `cipok`
--

INSERT INTO `cipok` (`cipo_id`, `cipo_nev`, `cipo_kep`, `cipo_ar`, `cipo_kategoria`) VALUES
(1, 'Nike Air Max 97', '1.jfif', 73000, 1),
(2, 'Nike Phantom GT Elite', '2.jpg', 30000, 2),
(3, 'Air Jordan XXXVI Low', '3.jfif', 41000, 3),
(4, 'Nike SB Force 58 Premium', '4.jfif', 20000, 4),
(5, 'Nike Dunk Low Panda', '5.jpg', 50000, 1),
(6, 'Nike Zoom Mercurial Superfly 9', '6.jfif', 35000, 2),
(7, 'Zion 2', '7.jpeg', 40000, 3),
(8, 'Nike Blazer Mid 77', '8.jpg', 30000, 4),
(9, 'Nike Air Force 1 \'07', '9.jpg', 45000, 1),
(10, 'Nike Tiempo Legend 9', '10.jpg', 50000, 2),
(11, 'Jordan One Take 4', '11.jfif', 40000, 3),
(12, 'Nike SB Dunk High', '12.jfif', 27000, 4),
(13, 'Air Jordan 1 Mid', '13.jpg', 55000, 1),
(14, 'Nike Zoom Mercurial Vapor 15', '14.jpg', 35000, 2),
(15, 'KD Trey 5 X', '15.jfif', 40000, 3),
(16, 'Nike SB Zoom Blazer Mid', '16.jfif', 33000, 4),
(17, 'Nike Dunk Low', '17.jpg', 47000, 1),
(18, 'Nike Phantom GX Pro FG', '18.png', 60000, 2),
(19, 'Air Jordan XXXVI Psychic Energy', '19.jfif', 40000, 3),
(20, 'Nike SB Ishod Wair Premium', '20.jpg', 27000, 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `kategoria`
--

CREATE TABLE `kategoria` (
  `kategoria_id` int(11) NOT NULL,
  `kategoria_nev` varchar(100) COLLATE utf8mb4_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `kategoria`
--

INSERT INTO `kategoria` (`kategoria_id`, `kategoria_nev`) VALUES
(1, 'Utcai cipők'),
(2, 'Futballcipők'),
(3, 'Kosárlabdacipők'),
(4, 'Gördeszkacipők');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cipok`
--
ALTER TABLE `cipok`
  ADD PRIMARY KEY (`cipo_id`);

--
-- A tábla indexei `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`kategoria_id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cipok`
--
ALTER TABLE `cipok`
  MODIFY `cipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT a táblához `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `kategoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
