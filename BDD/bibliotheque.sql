-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 24 jan. 2022 à 11:25
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `bibliotheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `bibliotheque`
--

DROP TABLE IF EXISTS `bibliotheque`;
CREATE TABLE IF NOT EXISTS `bibliotheque` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `bibliotheque`
--

INSERT INTO `bibliotheque` (`id`, `name`) VALUES
(2, 'djiliflix'),
(3, 'Harvard');

-- --------------------------------------------------------

--
-- Structure de la table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kind` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publishing_date` date NOT NULL,
  `attach` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` double DEFAULT NULL,
  `bibliotheque_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CBE5A3314419DE7D` (`bibliotheque_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `book`
--

INSERT INTO `book` (`id`, `title`, `kind`, `publishing_date`, `attach`, `remark`, `note`, `bibliotheque_id`) VALUES
(10, 'Les 12 coups de midi', 'Divertissement', '2022-01-04', NULL, 'Très bon livre !', 9, 2),
(11, 'Lupin', 'Fantastique', '2022-01-06', 'https://products-images.di-static.com/image/maurice-leblanc-arsene-lupin-tome-1-arsene-lupin-gentleman-cambrioleur-suivi-de-les-confidences-d-arsene-lupin/9782377359493-475x500-1.jpg', 'Un excellent ouvrage', 10, 3);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `book`
--
ALTER TABLE `book`
  ADD CONSTRAINT `FK_CBE5A3314419DE7D` FOREIGN KEY (`bibliotheque_id`) REFERENCES `bibliotheque` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
