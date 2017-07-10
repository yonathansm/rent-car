-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2017 at 07:24 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrentalmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `harga`
--

CREATE TABLE `harga` (
  `id_harga` varchar(5) NOT NULL,
  `harga_sewa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `harga`
--

INSERT INTO `harga` (`id_harga`, `harga_sewa`) VALUES
('HRG01', 200000),
('HRG02', 250000),
('HRG03', 350000),
('HRG04', 400000);

-- --------------------------------------------------------

--
-- Table structure for table `mitra`
--

CREATE TABLE `mitra` (
  `id_mitra` varchar(10) NOT NULL,
  `nama_mitra` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mitra`
--

INSERT INTO `mitra` (`id_mitra`, `nama_mitra`, `alamat`, `no_telp`) VALUES
('MT001', 'Sincars', 'Jl. Mercubuana 1, Semarang', '024-834122'),
('MT002', 'CheapRent', 'Jl. Madagascar Selatab', '024-856557');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` varchar(5) NOT NULL,
  `id_mitra` varchar(10) NOT NULL,
  `no_polisi` varchar(12) NOT NULL,
  `no_rangka` varchar(20) NOT NULL,
  `nama_mobil` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `warna` varchar(50) NOT NULL,
  `tipe` varchar(50) NOT NULL,
  `id_harga` varchar(5) NOT NULL,
  `harga_sewa` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `id_mitra`, `no_polisi`, `no_rangka`, `nama_mobil`, `tahun`, `warna`, `tipe`, `id_harga`, `harga_sewa`) VALUES
('MB001', 'MT001', 'H 3737 K', 'AV012017', 'Avanza Veloz', 2016, 'Abu - Abu', 'MPV', 'HRG02', 250000),
('MB002', 'MT001', 'H 2323 L', 'ML022017', 'Mobilio RS', 2017, 'Putih', 'MPV', 'HRG02', 250000),
('MB003', 'MT002', 'H 4565 KL', 'AG012017', 'Agya G', 2016, 'Merah', 'Hatchback', 'HRG01', 200000),
('MB004', 'MT002', 'H 7687 KG', 'BR022017', 'Brio E', 2017, 'Abu - Abu', 'Hatchback', 'HRG01', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `rental`
--

CREATE TABLE `rental` (
  `no_transaksi` varchar(10) NOT NULL,
  `no_ktp` int(20) NOT NULL,
  `id_mobil` varchar(20) NOT NULL,
  `id_mitra` varchar(6) NOT NULL,
  `tgl_rental` date NOT NULL,
  `tgl_kembali` date NOT NULL,
  `harga_sewa` int(10) NOT NULL,
  `total_biaya` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rental`
--

INSERT INTO `rental` (`no_transaksi`, `no_ktp`, `id_mobil`, `id_mitra`, `tgl_rental`, `tgl_kembali`, `harga_sewa`, `total_biaya`) VALUES
('RE001', 12345555, 'MB001', 'MT001', '2017-07-09', '2017-07-11', 250000, 500000),
('RE002', 12346666, 'MB002', 'MT001', '2017-07-10', '2017-07-11', 250000, 500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `harga`
--
ALTER TABLE `harga`
  ADD PRIMARY KEY (`id_harga`);

--
-- Indexes for table `mitra`
--
ALTER TABLE `mitra`
  ADD PRIMARY KEY (`id_mitra`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indexes for table `rental`
--
ALTER TABLE `rental`
  ADD PRIMARY KEY (`no_transaksi`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
