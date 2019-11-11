-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Nov 2019 pada 05.17
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `informatika`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` varchar(50) NOT NULL,
  `nama_barang` varchar(50) DEFAULT NULL,
  `kode_gudang` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `kode_gudang`) VALUES
('A01', 'Handphone', 'A11'),
('A02', 'Playstation', 'A11'),
('A03', 'Computer', 'A11'),
('B01', 'Motorcycle', 'B11'),
('B02', 'Mobil', 'B11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(50) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `kode_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`kode_buku`, `nama_buku`, `kode_jenis`) VALUES
('BI66', 'Bahasa Indonesia', '070');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gudang`
--

CREATE TABLE `gudang` (
  `kode_gudang` varchar(50) NOT NULL,
  `nama_gudang` varchar(50) NOT NULL,
  `lokasi` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gudang`
--

INSERT INTO `gudang` (`kode_gudang`, `nama_gudang`, `lokasi`) VALUES
('A11', 'Tokopedia', 'Jakarta'),
('B11', 'Showroom X', 'Solo');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jenis_buku`
--

CREATE TABLE `jenis_buku` (
  `kode_jenis` varchar(50) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL,
  `keterangan_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jenis_buku`
--

INSERT INTO `jenis_buku` (`kode_jenis`, `nama_jenis`, `keterangan_jenis`) VALUES
('070', 'Buku Pelajaran', 'SMA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `Nama` char(50) DEFAULT NULL,
  `Kelas` char(5) DEFAULT NULL,
  `Alamat` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`NIM`, `Nama`, `Kelas`, `Alamat`) VALUES
('L200170052', 'Zulfikar Bayu Budiman', 'C', 'Sragen'),
('L200170056', 'Naufal Alip', 'C', 'Bogor'),
('L200170027', 'Rendra Rizki Kurniawan', 'A', 'Surakarta'),
('L200170001', 'Roberto Arturo', 'A', 'Cilacap');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `status`) VALUES
('admin', '1234', '', 'administrator'),
('uyabayu', '6969', '', 'member');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`),
  ADD KEY `kode_gudang` (`kode_gudang`);

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `kode_jenis` (`kode_jenis`);

--
-- Indeks untuk tabel `gudang`
--
ALTER TABLE `gudang`
  ADD PRIMARY KEY (`kode_gudang`);

--
-- Indeks untuk tabel `jenis_buku`
--
ALTER TABLE `jenis_buku`
  ADD PRIMARY KEY (`kode_jenis`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kode_gudang`) REFERENCES `gudang` (`kode_gudang`);

--
-- Ketidakleluasaan untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kode_jenis`) REFERENCES `jenis_buku` (`kode_jenis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
