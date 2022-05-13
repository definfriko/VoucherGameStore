-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2022 at 04:35 PM
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
-- Database: `tubessbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$dMlI7rPBgyU/nePbt5RVveCYvJuwuf1U7rLeSc5Ebcix4SdeMreKK', '2021-11-25 12:47:34');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_bayar` int(5) NOT NULL,
  `id_wallet` int(5) NOT NULL,
  `id_pembeli` int(5) NOT NULL,
  `tanggal` varchar(20) NOT NULL,
  `is_delete` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_bayar`, `id_wallet`, `id_pembeli`, `tanggal`, `is_delete`) VALUES
(1, 1, 1, '1 April 2019', b'0'),
(2, 3, 2, '9 Juli 2021', b'0'),
(4, 5, 3, 'akhir', b'0'),
(5, 5, 4, 'bruh', b'0'),
(6, 3, 2, 'asas', b'0'),
(7, 4, 1, 'sekarang', b'0'),
(9, 1, 6, 'kiamat', b'0'),
(11, 3, 6, 'nanti habis itu', b'0'),
(12, 15, 7, 'sekarang', b'0'),
(13, 4, 7, '1', b'0');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(5) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `rekening` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_delete` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama`, `no_hp`, `rekening`, `email`, `is_delete`) VALUES
(1, 'Defin', '085123123123', '1290487', 'defin@gmail.com', b'0'),
(2, 'Kolonel Jik', '089573982783', '1234', 'kolonel@gmail.com', b'0'),
(3, 'Bagusalter', '087646837847', '13456345', 'bagusalter@gmail.com', b'0'),
(4, 'Setod', '081999333888', '9823745', 'setod@gmail.com', b'0'),
(5, 'Asheng', '081983874721', '7889201', 'asheng@gmail.com', b'0'),
(6, 'Joel', '', '3289457', '', b'0'),
(7, 'Defin', '', '123456', '', b'0'),
(8, 'Defin 10', '', '999999999', '', b'0');

-- --------------------------------------------------------

--
-- Stand-in structure for view `tabel transaksi`
-- (See below for the actual view)
--
CREATE TABLE `tabel transaksi` (
`tipe_wallet` varchar(20)
,`jenis_wallet` varchar(20)
,`harga` varchar(20)
,`nama` varchar(20)
,`rekening` varchar(20)
);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(5, 'user', '$2y$10$dMlI7rPBgyU/nePbt5RVveCYvJuwuf1U7rLeSc5Ebcix4SdeMreKK', '2021-11-25 12:47:11'),
(6, 'defin', '$2y$10$dPsQIbmSlPzR7cFmhyz7KOQ8/sqG/G6PX32iSqOpNjRIsAXEGMRqa', '2021-11-26 14:19:15'),
(7, 'defin123', '$2y$10$YKgQWn7gOQoVLhDiiXEQy.Snb7h/C3O5Bm9/OpYP/GRhXRx3NiWvi', '2021-11-29 11:34:16'),
(8, 'definfriko', '$2y$10$6l6KWXB8rCmVMnvn4fL2xOUELM6NdXDjUfTrLE9NPbS29F/f2AXcq', '2021-12-01 00:09:25'),
(9, 'defin12', '$2y$10$cpaW38/i9kk7M6EodXy6o.Qt3oaLYh97IX7Ol6wBY8yUZHpM83MjW', '2022-04-27 14:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `wallet`
--

CREATE TABLE `wallet` (
  `id_wallet` int(5) NOT NULL,
  `tipe_wallet` varchar(20) NOT NULL,
  `jenis_wallet` varchar(20) NOT NULL,
  `harga` varchar(20) NOT NULL,
  `is_delete` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet`
--

INSERT INTO `wallet` (`id_wallet`, `tipe_wallet`, `jenis_wallet`, `harga`, `is_delete`) VALUES
(1, 'A1Steam', '20000', '25000', b'0'),
(2, 'A2Steam', '40000', '47000', b'0'),
(3, 'A3Steam', '90000', '100000', b'0'),
(4, 'A4Steam', '200000', '214000', b'0'),
(5, 'A5Steam', '400000', '420000', b'0'),
(6, 'A6Steam', '600000', '625000', b'0'),
(8, 'A7Steam', '700000', '730000', b'0'),
(9, 'A8Steam', '800000', '835000', b'0'),
(10, 'A10Steam', '900000', '930000', b'0'),
(11, 'A11Steam', '950000', '960000', b'0'),
(12, 'A12Steam', '960000', '970000', b'0'),
(13, 'A13Steam', '970000', '980000', b'0'),
(14, 'A14Steam', '1000000', '1020000', b'0'),
(15, 'A15', '1200000', '13000001', b'0'),
(16, 'A16', '2000000', '2200000', b'0');

-- --------------------------------------------------------

--
-- Structure for view `tabel transaksi`
--
DROP TABLE IF EXISTS `tabel transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tabel transaksi`  AS SELECT `wallet`.`tipe_wallet` AS `tipe_wallet`, `wallet`.`jenis_wallet` AS `jenis_wallet`, `wallet`.`harga` AS `harga`, `pembeli`.`nama` AS `nama`, `pembeli`.`rekening` AS `rekening` FROM ((`wallet` join `pembayaran` on(`wallet`.`id_wallet` = `pembayaran`.`id_wallet`)) join `pembeli` on(`pembeli`.`id_pembeli` = `pembayaran`.`id_pembeli`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `FK_pembeli` (`id_pembeli`),
  ADD KEY `FK_wallet` (`id_wallet`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `wallet`
--
ALTER TABLE `wallet`
  ADD PRIMARY KEY (`id_wallet`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_bayar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wallet`
--
ALTER TABLE `wallet`
  MODIFY `id_wallet` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_pembeli` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`),
  ADD CONSTRAINT `FK_wallet` FOREIGN KEY (`id_wallet`) REFERENCES `wallet` (`id_wallet`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
