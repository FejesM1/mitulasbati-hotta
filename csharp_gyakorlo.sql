-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Dec 11. 10:10
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `csharp_gyakorlo`
--
CREATE DATABASE IF NOT EXISTS `csharp_gyakorlo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `csharp_gyakorlo`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Nev` varchar(256) NOT NULL,
  `LoginName` varchar(128) NOT NULL,
  `Aktiv` tinyint(1) NOT NULL,
  `Salt` varchar(64) NOT NULL,
  `Hash` varchar(64) NOT NULL,
  `SzuletesiIdo` date NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `LoginName` (`LoginName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `user`
--

INSERT INTO `user` (`Id`, `Nev`, `LoginName`, `Aktiv`, `Salt`, `Hash`, `SzuletesiIdo`) VALUES
(1, 'Próba Ödön', 'probaodon', 1, 'p', 'p', '1995-12-01'),
(2, 'Kiss Piroska', 'kisspiroska', 1, 'p', 'p', '2005-03-01'),
(3, 'Nagy Zoltán', 'nagyzoltan', 0, 'p', 'p', '2010-03-15'),
(4, 'Hapci Benő', 'hapcibeno', 1, 'q', 'q', '1980-03-01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
