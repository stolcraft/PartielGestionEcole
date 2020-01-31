-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 30 jan. 2020 à 18:12
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `ecolegestion`
--
CREATE DATABASE IF NOT EXISTS `ecolegestion` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ecolegestion`;

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `idPersonne` varchar(50) NOT NULL,
  `idConseiller` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idPersonne`, `idConseiller`) VALUES
('1', '1'),
('2', '2');

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE IF NOT EXISTS `compte` (
  `numCompte` varchar(50) NOT NULL,
  `solde` float NOT NULL,
  `dateOuverture` date NOT NULL,
  `type` tinyint(1) NOT NULL,
  `idClient` varchar(50) NOT NULL,
  PRIMARY KEY (`numCompte`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`numCompte`, `solde`, `dateOuverture`, `type`, `idClient`) VALUES
('aa', 2000, '2019-05-16', 0, '1'),
('aaa', 1000, '2019-05-04', 1, '1');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
CREATE TABLE IF NOT EXISTS `etudiant` (
  `Id` int(20) NOT NULL AUTO_INCREMENT,
  `Nom` varchar(40) NOT NULL,
  `Prenom` varchar(40) NOT NULL,
  `Mail` varchar(60) NOT NULL,
  `Adresse` varchar(60) NOT NULL,
  `Tel` int(10) NOT NULL,
  `DateNaissance` varchar(30) NOT NULL,
  `Ecole` varchar(30) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `etudiant`
--

INSERT INTO `etudiant` (`Id`, `Nom`, `Prenom`, `Mail`, `Adresse`, `Tel`, `DateNaissance`, `Ecole`) VALUES
(2, 'touchard', 'david', 'david@touchard.com', 'lePecq', 6426782, '09/98/1209', 'ensup'),
(3, 'gillard', 'cyril', 'cyril@tavu.com', 'Versaille', 293848, '09/98/230', 'ensup');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `codePostal` int(5) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `telephone` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id`, `nom`, `prenom`, `adresse`, `codePostal`, `ville`, `telephone`) VALUES
('1', 'jean', 'pierre', 'abcvhvfhyvufgbul', 78140, 'lepecq', 10002200),
('2', 'pierre', 'rond', 'hygygtg', 78140, 'hhhhhh', 10002200),
('3', 'le', 'conseiller', 'uhuh', 78140, 'jhh_ou', 10002200);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `gerant` tinyint(1) NOT NULL,
  `idPersonne` varchar(50) NOT NULL,
  `idAgence` varchar(5) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pwd` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`gerant`, `idPersonne`, `idAgence`, `login`, `pwd`) VALUES
(0, '1', '1', 'test', 'test');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
