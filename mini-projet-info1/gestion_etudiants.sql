-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2022 at 03:01 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gestion_etudiants`
--

-- --------------------------------------------------------

--
-- Table structure for table `absence`
--

CREATE TABLE `absence` (
  `cin` int(8) NOT NULL,
  `groupe` varchar(40) NOT NULL,
  `matiere` varchar(40) CHARACTER SET latin1 NOT NULL,
  `dateAbs` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `absence`
--

INSERT INTO `absence` (`cin`, `groupe`, `matiere`, `dateAbs`) VALUES
(77777777, 'INFO1-A', 'SGBD', '2022-05-09'),
(88888888, 'INFO1-A', 'SGBD', '2022-05-09'),
(11111111, 'INFO1-D', 'TECHWEB', '2022-05-03'),
(11111111, 'INFO1-D', 'TECHWEB', '2022-05-06'),
(22222222, 'INFO1-D', 'TECHWEB', '2022-05-06'),
(33333333, 'INFO2-B', 'IA', '2022-05-04'),
(33333333, 'INFO2-B', 'IA', '2022-05-07'),
(55555555, 'INFO2-B', 'IA', '2022-05-07');

-- --------------------------------------------------------

--
-- Table structure for table `enseignant`
--

CREATE TABLE `enseignant` (
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `nom` varchar(40) NOT NULL,
  `prenom` varchar(40) NOT NULL,
  `login` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enseignant`
--

INSERT INTO `enseignant` (`date`, `nom`, `prenom`, `login`, `pass`) VALUES
('2022-05-08 12:54:18', 'Ghazouani', 'Haithem', 'haithemgh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
('2022-05-08 00:05:09', 'Hamrouni', 'Tarek', 'tarekh@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
('2022-05-07 23:34:02', 'Saad', 'Walid', 'walidsaad@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `etudiant`
--

CREATE TABLE `etudiant` (
  `cin` int(8) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `cpassword` varchar(40) NOT NULL,
  `nom` varchar(20) NOT NULL,
  `prenom` varchar(20) NOT NULL,
  `adresse` text NOT NULL,
  `Classe` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `etudiant`
--

INSERT INTO `etudiant` (`cin`, `email`, `password`, `cpassword`, `nom`, `prenom`, `adresse`, `Classe`) VALUES
(11111111, 'jnaouinour@gmail.com', '9824b17e4045e099bc4be647ea08ab03', '9824b17e4045e099bc4be647ea08ab03', 'Jnaoui', 'Nour', 'Ariana', 'INFO1-D'),
(22222222, 'omarhajjaji@gmail.com', '2f72d8c34b78c151ec06a2071d7902d3', '2f72d8c34b78c151ec06a2071d7902d3', 'Hajjaji', 'Omar', 'Byrsa', 'INFO1-D'),
(33333333, 'karimbf@gmail.com', '8949aa4afee559073bbcb1b3f2e96aca', '8949aa4afee559073bbcb1b3f2e96aca', 'Ben Foulen', 'Karim', 'Hammamet', 'INFO2-B'),
(44444444, 'kaoutherrz@gmail.com', 'cc13ab41582bb824ad62bc1bfe40a16d', 'cc13ab41582bb824ad62bc1bfe40a16d', 'Rezgui', 'Kaouther', 'Sousse', 'INFO2-B'),
(55555555, 'bilelsaa@gmail.com', 'eb7ff87786d98f7758fd1b295fd7c269', 'eb7ff87786d98f7758fd1b295fd7c269', 'Saadi', 'Bilel', 'Monastir', 'INFO2-B'),
(66666666, 'ouaneski@gmail.com', '28f1b195ade0812794f4a460c3ed67fb', '28f1b195ade0812794f4a460c3ed67fb', 'Kilani', 'Ouanes', 'Tunis', 'INFO3-A'),
(77777777, 'fatmarh@gmail.com', 'bcb5561b2f4d8d4c2a625198367cf2d4', 'bcb5561b2f4d8d4c2a625198367cf2d4', 'Rhouma', 'Fatma', 'Nabeul', 'INFO1-A'),
(88888888, 'fatenfatouna@gmai.com', 'fb30d5acd3a7aedd65054887ccd9b5a7', 'fb30d5acd3a7aedd65054887ccd9b5a7', 'Ben Yahia', 'Faten', 'Tunis', 'INFO1-A');

-- --------------------------------------------------------

--
-- Table structure for table `groupe`
--

CREATE TABLE `groupe` (
  `code` varchar(40) NOT NULL DEFAULT 'INFO',
  `niveau` int(11) NOT NULL,
  `nb_eleves` int(11) NOT NULL,
  `nb_absenceJ` int(11) NOT NULL,
  `nb_absenceNJ` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groupe`
--

INSERT INTO `groupe` (`code`, `niveau`, `nb_eleves`, `nb_absenceJ`, `nb_absenceNJ`) VALUES
('INFO1-A', 1, 20, 0, 0),
('INFO1-B', 1, 20, 0, 0),
('INFO1-D', 1, 20, 0, 0),
('INFO2-B', 2, 20, 0, 0),
('INFO2-C', 2, 23, 0, 0),
('INFO2-E', 2, 19, 0, 0),
('INFO3-A', 3, 18, 0, 0),
('INFO3-B', 3, 21, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `matiere`
--

CREATE TABLE `matiere` (
  `id_mat` varchar(40) CHARACTER SET latin1 NOT NULL,
  `nom_mat` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matiere`
--

INSERT INTO `matiere` (`id_mat`, `nom_mat`) VALUES
('CPP', 'Prog Oriente Objet'),
('IA', 'Intelligence artificielle'),
('MATHING', 'Mathématique de l\'ingénieur'),
('SGBD', 'Sys. Gest. Base De Données'),
('TECHWEB', 'Technologie Web'),
('TLA', 'Théorie des langages');

-- --------------------------------------------------------

--
-- Table structure for table `prof_mat`
--

CREATE TABLE `prof_mat` (
  `id_prof` varchar(40) CHARACTER SET latin1 NOT NULL,
  `id_mat` varchar(40) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prof_mat`
--

INSERT INTO `prof_mat` (`id_prof`, `id_mat`) VALUES
('haithemgh@gmail.com', 'CPP'),
('haithemgh@gmail.com', 'IA'),
('haithemgh@gmail.com', 'TLA'),
('tarekh@gmail.com', 'CPP'),
('tarekh@gmail.com', 'TLA'),
('walidsaad@gmail.com', 'SGBD'),
('walidsaad@gmail.com', 'TECHWEB');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`cin`,`matiere`,`dateAbs`),
  ADD KEY `groupe` (`groupe`),
  ADD KEY `matiere` (`matiere`);

--
-- Indexes for table `enseignant`
--
ALTER TABLE `enseignant`
  ADD PRIMARY KEY (`login`);

--
-- Indexes for table `etudiant`
--
ALTER TABLE `etudiant`
  ADD PRIMARY KEY (`cin`);

--
-- Indexes for table `groupe`
--
ALTER TABLE `groupe`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `matiere`
--
ALTER TABLE `matiere`
  ADD PRIMARY KEY (`id_mat`);

--
-- Indexes for table `prof_mat`
--
ALTER TABLE `prof_mat`
  ADD PRIMARY KEY (`id_prof`,`id_mat`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absence`
--
ALTER TABLE `absence`
  ADD CONSTRAINT `absence_ibfk_1` FOREIGN KEY (`cin`) REFERENCES `etudiant` (`cin`),
  ADD CONSTRAINT `absence_ibfk_2` FOREIGN KEY (`groupe`) REFERENCES `groupe` (`code`),
  ADD CONSTRAINT `absence_ibfk_3` FOREIGN KEY (`matiere`) REFERENCES `matiere` (`id_mat`);

--
-- Constraints for table `prof_mat`
--
ALTER TABLE `prof_mat`
  ADD CONSTRAINT `prof_mat_ibfk_1` FOREIGN KEY (`id_mat`) REFERENCES `matiere` (`id_mat`),
  ADD CONSTRAINT `prof_mat_ibfk_2` FOREIGN KEY (`id_prof`) REFERENCES `enseignant` (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
