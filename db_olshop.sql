-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 09 Jul 2022 pada 15.17
-- Versi server: 5.7.36
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

DROP TABLE IF EXISTS `tbl_barang`;
CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `id_barang` int(11) NOT NULL AUTO_INCREMENT,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext,
  `gambar` text,
  `berat` int(11) NOT NULL,
  `ketersediaan` enum('habis','tersedia') DEFAULT 'tersedia',
  PRIMARY KEY (`id_barang`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`, `ketersediaan`) VALUES
(9, 'Risol Beku', 15, 25000, 'Isi 10Pcs', 'risolbeku.jpg', 30, 'tersedia'),
(11, 'Kentang Mustofa', 12, 18000, '---', 'kentang1.jpg', 100, 'tersedia'),
(12, 'Sepatu nNike', 15, 200000, 'deskripsi sepatu', 'sepatu.jpg', 500, 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gambar`
--

DROP TABLE IF EXISTS `tbl_gambar`;
CREATE TABLE IF NOT EXISTS `tbl_gambar` (
  `id_gambar` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text,
  PRIMARY KEY (`id_gambar`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(26, 12, 'Gambar 2', '1488a5310ccfa3d1c64ca447b94ea72b.jpg'),
(27, 12, 'Gambar 3', '9aa26a7c318f842481877e2bbb47aac8.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

DROP TABLE IF EXISTS `tbl_kategori`;
CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(12, 'Olahan Kentang'),
(13, 'Olahan Tempe'),
(14, 'Aneka Sambal'),
(15, 'Makanan Beku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

DROP TABLE IF EXISTS `tbl_pelanggan`;
CREATE TABLE IF NOT EXISTS `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text,
  PRIMARY KEY (`id_pelanggan`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`) VALUES
(2, 'Maman', 'maman@gmail.com', '1234'),
(3, 'jbing', 'jbing@gmail.com', 'widia'),
(4, 'Budi', 'budi@gmail.com', '1234'),
(5, 'Badu', 'badu@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rekening`
--

DROP TABLE IF EXISTS `tbl_rekening`;
CREATE TABLE IF NOT EXISTS `tbl_rekening` (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_rekening`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BRI', '5434-4382-3434-4345', 'Padang Tekno'),
(2, 'BNI', '3342-3456-2346', 'Padang Tekno');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rinci_transaksi`
--

DROP TABLE IF EXISTS `tbl_rinci_transaksi`;
CREATE TABLE IF NOT EXISTS `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL AUTO_INCREMENT,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL,
  PRIMARY KEY (`id_rinci`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`, `nama_barang`) VALUES
(46, '20220708BKTSM1VX', 9, 1, 'Risol Beku'),
(45, '20220708BKTSM1VX', 11, 1, 'Kentang Mustofa'),
(44, '202207089IMOEIL7', 9, 1, 'Risol Beku'),
(43, '202207089IMOEIL7', 11, 1, 'Kentang Mustofa'),
(47, '20220708ONWIYOHK', 11, 1, 'Kentang Mustofa'),
(48, '20220708ONWIYOHK', 9, 1, 'Risol Beku'),
(49, '20220708UBOCNQIX', 11, 1, 'Kentang Mustofa'),
(50, '20220708UBOCNQIX', 9, 1, 'Risol Beku'),
(51, '20220709Y18W4VXT', 11, 5, 'Kentang Mustofa'),
(52, '20220709Y18W4VXT', 9, 3, 'Risol Beku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

DROP TABLE IF EXISTS `tbl_setting`;
CREATE TABLE IF NOT EXISTS `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text,
  `no_telpon` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'Pawon Wighi', 154, 'Gang Damai', '085156563147');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

DROP TABLE IF EXISTS `tbl_transaksi`;
CREATE TABLE IF NOT EXISTS `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelanggan` int(11) DEFAULT NULL,
  `no_order` varchar(25) NOT NULL,
  `tgl_order` date DEFAULT NULL,
  `nama_penerima` varchar(25) DEFAULT NULL,
  `hp_penerima` varchar(20) DEFAULT NULL,
  `provinsi` varchar(25) DEFAULT NULL,
  `kota` varchar(25) DEFAULT NULL,
  `alamat` text,
  `kode_pos` varchar(8) DEFAULT NULL,
  `expedisi` varchar(255) DEFAULT NULL,
  `paket` varchar(255) DEFAULT NULL,
  `estimasi` varchar(255) DEFAULT NULL,
  `ongkir` int(11) DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `grand_total` int(11) DEFAULT NULL,
  `total_bayar` int(11) DEFAULT NULL,
  `status_bayar` int(1) DEFAULT NULL,
  `bukti_bayar` text,
  `atas_nama` varchar(25) DEFAULT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `status_order` int(1) DEFAULT NULL,
  `no_resi` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_transaksi`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(44, 3, '20220708UBOCNQIX', '2022-07-08', 'lia', '131344', 'DKI Jakarta', '154', 'Pinang Ranti, Makasar', '13560', 'tiki', 'ECO', '4 Hari', 8000, 130, 43000, 51000, 1, 'Activity_admin-Page-3_drawio.png', 'Widia', 'BRI', '56568944901', 3, '11111'),
(41, 3, '20220708BKTSM1VX', '2022-07-08', 'dita', '131344', 'DKI Jakarta', '152', 'Pinang Ranti, Makasar', '13560', 'jne', 'CTC', '1-2 Hari', 9000, 130, 43000, 52000, 1, 'perpustakaan_ci4.jpg', 'AAAAA', 'BRI', '123456789', 2, '11111'),
(40, 3, '202207089IMOEIL7', '2022-07-08', 'widia', '081657656651', 'DKI Jakarta', '152', 'Pinang Ranti, Makasar', '13560', 'jne', 'CTC', '1-2 Hari', 9000, 130, 43000, 52000, 0, NULL, NULL, NULL, NULL, 0, NULL),
(45, 3, '20220709Y18W4VXT', '2022-07-09', 'Sartono', '0822938493', 'Sumatera Barat', '93', 'Jl. Prof.H.M.Yamin No.173, Kisaran Naga', '21222', 'jne', 'REG', '2-3 Hari', 40000, 590, 165000, 205000, 1, 'perpustakaan_ci41.jpg', 'Sartono', 'BRI', '10255458545', 3, '1234323344');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(1, 'Widia Cantik', 'admin', 'admin'),
(2, 'Budi', 'user', 'user');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
