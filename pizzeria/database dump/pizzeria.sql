-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 aug 2024 om 15:35
-- Serverversie: 10.4.32-MariaDB
-- PHP-versie: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzeria`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestelbonnen`
--

CREATE TABLE `bestelbonnen` (
  `id` int(11) NOT NULL,
  `datum` varchar(45) NOT NULL,
  `klant_id` int(11) DEFAULT NULL,
  `afleveradres` varchar(255) DEFAULT NULL,
  `opmerking` varchar(255) DEFAULT NULL,
  `verkoopprijs` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestelbonnen`
--

INSERT INTO `bestelbonnen` (`id`, `datum`, `klant_id`, `afleveradres`, `opmerking`, `verkoopprijs`) VALUES
(1, '2024/08/12 16:30:19', 0, 'Pietje Puk Pukstraat 123 3600 Genk', '', 51);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `bestellijnen`
--

CREATE TABLE `bestellijnen` (
  `id` int(11) NOT NULL,
  `bestelbon_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `aantal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `bestellijnen`
--

INSERT INTO `bestellijnen` (`id`, `bestelbon_id`, `pizza_id`, `aantal`) VALUES
(1, 1, 4, 1),
(2, 1, 3, 1),
(3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL,
  `naam` varchar(50) NOT NULL,
  `prijs` float NOT NULL,
  `ingredienten` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `pizzas`
--

INSERT INTO `pizzas` (`id`, `naam`, `prijs`, `ingredienten`) VALUES
(1, 'Margherita', 13, 'tomatensaus, mozzarella, basilicum'),
(2, 'Casareccia', 19, 'kerstomaatjes, ansjovis, look, olijven en Parmiggiano'),
(3, 'Salame', 15, 'tomatensaus, mozzarella, salame Milano'),
(4, 'Prosciutto Crudo San Daniele', 17, 'tomatensaus, mozzarella, San Daniele ham'),
(5, 'Sole mio', 16, 'tomatensaus, mozzarella, gekookte ham, ei'),
(6, 'Napoli', 17, 'tomatensaus, mozzarella, ansjovis, olijven'),
(7, 'Frutti di Mare', 19, 'tomatensaus, mozzarella, zeevruchten, look'),
(8, 'Carbonara', 18, 'tomatensaus, mozzarella, spek, ei, Parmiggiano'),
(9, 'Vegetariana', 18, 'tomatensaus, mozzarella, aubergine, paprika’s, courgettes'),
(10, 'Cacciatore', 19, 'tomatensaus, mozzarella, gemarineerde kip'),
(11, 'Arrabbiata', 17, 'tomatensaus, mozzarella, spek, pikante olie'),
(12, 'Prosciutto e funghi', 16, 'tomatensaus, mozzarella, ham, champignons'),
(13, 'Tonno e cipolla', 18, 'tomatensaus, mozzarella, tonijn, ui'),
(14, 'Siciliana', 18, 'tomatensaus, mozzarella, ansjovis, kappertjes, olijven'),
(15, 'Diavola', 16, 'tomatensaus, mozzarella, pikante salami Mugnano'),
(16, '4 Formaggi', 18, 'tomatensaus, mozzarella, gorgonzola, provolone, parmiggiano'),
(17, '4 Stagioni', 18, 'tomatensaus, mozzarella, ham, champignons, olijven, artisjokken'),
(18, 'Capricciosa', 19, 'tomatensaus, mozzarella, ham, champignons, olijven, artisjokken, ei'),
(19, 'Scampi', 19, 'tomatensaus, mozzarella, scampi’s, look'),
(20, 'Rustica', 19, 'mozzarella, gemarineerde kip, aardappelschijfjes, rozemarijn, Parmiggiano'),
(21, 'Dello Chef', 19, 'tomatensaus, mozzarella, gorgonzola, pikante salami, ui,ei'),
(22, 'Suprema', 19, 'tomatensaus, mozzarella, Parma ham, rucola, San Marzano tomaten, schilfers Parmiggiano'),
(23, 'Vesuvio', 19, 'halve calzone: tomatensaus, mozzarella, ham, ricotta - halve pizza: rucola, San Marzano tomaten, Grana Padano '),
(24, 'Italia', 19, 'tomatensaus, mozzarella, ricotta, spinazie, San Marzano tomaten, Parmiggiano, look');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `plaatsen`
--

CREATE TABLE `plaatsen` (
  `plaatsId` int(11) NOT NULL,
  `postcode` varchar(4) NOT NULL,
  `plaats` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Gegevens worden geëxporteerd voor tabel `plaatsen`
--

INSERT INTO `plaatsen` (`plaatsId`, `postcode`, `plaats`) VALUES
(1, '3600', 'Genk'),
(2, '3665', 'As'),
(3, '3668', 'Niel-bij-As'),
(4, '3660', 'Oudsbergen'),
(5, '3530', 'Houthalen-Helchteren'),
(6, '3520', 'Zonhoven'),
(7, '3690', 'Zutendaal'),
(8, '3590', 'Diepenbeek'),
(9, '3740', 'Bilzen'),
(10, '3500', 'Hasselt');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `familienaam` varchar(35) DEFAULT NULL,
  `voornaam` varchar(35) DEFAULT NULL,
  `adres` varchar(55) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `wachtwoord` varchar(500) DEFAULT NULL,
  `tel` varchar(12) DEFAULT NULL,
  `plaatsId` int(11) DEFAULT NULL,
  `kortingsTarief` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `bestelbonnen`
--
ALTER TABLE `bestelbonnen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_klant_id` (`klant_id`);

--
-- Indexen voor tabel `bestellijnen`
--
ALTER TABLE `bestellijnen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bestelbon_id` (`bestelbon_id`),
  ADD KEY `pizza_id` (`pizza_id`);

--
-- Indexen voor tabel `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `plaatsen`
--
ALTER TABLE `plaatsen`
  ADD PRIMARY KEY (`plaatsId`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_plaatsId` (`plaatsId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `bestelbonnen`
--
ALTER TABLE `bestelbonnen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT voor een tabel `bestellijnen`
--
ALTER TABLE `bestellijnen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT voor een tabel `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT voor een tabel `plaatsen`
--
ALTER TABLE `plaatsen`
  MODIFY `plaatsId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `bestellijnen`
--
ALTER TABLE `bestellijnen`
  ADD CONSTRAINT `bestellijnen_ibfk_1` FOREIGN KEY (`bestelbon_id`) REFERENCES `bestelbonnen` (`id`),
  ADD CONSTRAINT `bestellijnen_ibfk_2` FOREIGN KEY (`pizza_id`) REFERENCES `pizzas` (`id`);

--
-- Beperkingen voor tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_plaatsId` FOREIGN KEY (`plaatsId`) REFERENCES `plaatsen` (`plaatsId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
