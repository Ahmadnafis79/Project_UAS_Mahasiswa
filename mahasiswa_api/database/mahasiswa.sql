-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2023 at 02:46 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perkuliahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` int(10) NOT NULL,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `jenis_kelamin` enum('LAKI-LAKI','PEREMPUAN') DEFAULT NULL,
  `tempat_lahir` varchar(20) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama_lengkap`, `jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `alamat`) VALUES
(2010020003, 'Muhammad Syariansyah', 'LAKI-LAKI', 'TABALONG', '2002-08-01', 'Jl. Guntung Payung'),
(2010020021, 'Muhammad Fahmi', 'LAKI-LAKI', 'Martapura', '2002-01-05', 'Jl. Sekumpul Martapura'),
(2010020025, 'Muhammad Rizky', 'LAKI-LAKI', 'Martapura', '2002-01-05', 'Jl. Sekumpul Martapura'),
(2010020027, 'Syarief Hidayat', 'LAKI-LAKI', 'Banjarbaru', '2001-08-25', 'Jl. Kuningan'),
(2010020049, 'Nur Sari', 'PEREMPUAN', 'Martapura', '2001-11-20', 'Jl. Bunga'),
(2010020077, 'Muhammad Alif Fadhillah', 'LAKI-LAKI', 'Banjarbaru', '2001-09-25', 'Jl. Sungai Ulin'),
(2010020103, 'Ahmad Nafis Almadani', 'LAKI-LAKI', 'Tabalong', '2002-02-01', 'Jl. Benua Permai II'),
(2010020105, 'Nurul Irma Wildaniati', 'PEREMPUAN', 'Rantau', '2002-03-05', 'Jl. Intan Sari'),
(2010020108, 'Ahmad Ridwan', 'LAKI-LAKI', 'Binuang', '2001-12-15', 'Jl. Berimbun'),
(2010020109, 'Lody Nopriansyah', 'LAKI-LAKI', 'BANJARBARU', '2002-08-20', 'Jl. Palm Baru');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`npm`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
