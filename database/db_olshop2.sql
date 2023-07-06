-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2023 pada 09.55
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_olshop2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) DEFAULT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `deskripsi` mediumtext,
  `gambar` text,
  `berat` int(11) NOT NULL,
  `ketersediaan` enum('habis','tersedia') DEFAULT 'tersedia'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `nama_barang`, `id_kategori`, `harga`, `deskripsi`, `gambar`, `berat`, `ketersediaan`) VALUES
(14, 'AHM Oil MPX 2  0.8L', 16, 50000, 'AHM Oil MPX 2  0.8L\r\nUntuk Bebek & Sport\r\n(Spesifikasi SAE:10W-30, API-SL, JASO:MA)\r\n\r\nDiformulasikan oleh Honda R&D Japan dengan performa lubrikasi andal untuk melindungi sepeda motor Honda menjadi lebih irit namun bertenaga. \r\nSangat hemat dengan penggantian yang lebih lama dan sekaligus mengurangi dampak pencemaran lingkungan. \r\nMemberikan daya lubrikasi sempurna untuk performa prima mesin sepeda motor Honda (Bebek dan Sport).', 'mpx2.jpeg', 800, 'tersedia'),
(13, 'AHM OIL SPX 2 0.8L', 16, 55000, 'AHM OIL SPX 2 0.8L (Untuk Matic)\r\nSUPERIOR PROTECTION EXPERT\r\n10W-30 SL JASO MB\r\n\r\nDiformulasikan khusus oleh Honda R&D japan untuk mesin sepeda motor Honda tipe kopling kering, yang dibuat dengan bahan dasar full sintetis\r\n\r\nKelebihan\r\n• Sangat cocok digunakan untuk mesin dengan performa tinggi\r\n• Memaksimalkan kinerja mesin\r\n• Tetap stabil pada suhu panas\r\n• Memberikan perlindungan maksimal pada mesin', 'spx.jpeg', 800, 'tersedia'),
(15, 'Yamalube Super Matic 1L', 16, 55000, 'Super Matic Oil\r\nSL 10W-40 JASO MB 1lt Full Synthetic\r\n\r\nYamalube Super Matic Oil diformulasikan khusus untuk mesin motor matik 4-Tak premium yang membutuhkan pelumasan maksimal untuk putaran mesin yang tinggi di segala kondisi jalan dan cuaca. Kelebihan Yamalube Super Matic Oil : \r\n\r\n\r\n1. Material full sintetis diformulasikan khusus untuk melumasi mesin hingga ke celah-celah tersempit.\r\n2. Material full sintetis melumasi setiap part mesin dengan bersih tanpa meninggalkan kerak.\r\n3. Memaksimalkan power di setiap putaran mesin.\r\n4. Mengandung Molybdenum yang memberikan tingkat gesekan yang sangat rendah sehingga mesin motor bekerja dengan maksimal.\r\n\r\nDengan volume 1000ml, direkomendasikan untuk motor matik 4-Tak premium seperti :\r\n\r\n1. N-Max\r\n2. Aerox 155\r\n3. Lexi', 'yamalube.jpeg', 1000, 'tersedia'),
(16, 'FEDERAL OIL ULTRATEC 0.8L', 17, 40000, 'FEDERAL OIL ULTRATEC 0.8L\r\nSpesifikasi (SAE:20W-50, JASO:MA)\r\n\r\nTeruji & terbukti untuk pelumas motor 4T transmisi manual dengan beban kerja berat\r\n\r\nKelebihan:\r\nWear Protection Technology\r\nMemberikan perlindungan maksimal terhadap keausan komponen mesin\r\nMeminimalisir gesekan pada mesin sehingga suara mesin menjadi lebih halus\r\nDaya tahan pelumas yang baik', 'ultratec.jpeg', 800, 'tersedia'),
(17, 'PERTAMINA MESRAN 1L', 17, 45000, 'OLI PERTAMINA MESRAN SUPER \r\nSAE 20W-50 1 LITER\r\n\r\nPelumas Mesin Bensin 4 Langkah\r\n•Memenuhi persyaratan mutu\r\ninternasional API Service SG/CD\r\ndan JASO MA\r\n\r\n•Tidak perlu menambah lagi aditif /\r\noil treatment / engine protection /\r\natau sejenisnya.\r\n\r\nSAE 20W-50, API Service SG/CD\r\nPelumas Untuk Kendaraan Mesin Bensin', 'mesran.jpeg', 1000, 'tersedia'),
(18, 'AHM OIL-MPX1 1L', 17, 40000, 'AHM OIL-MPX1 4T\r\n(Maximum Protection Expert)\r\n10W-30 SL JASO MA\r\n\r\nDiformulasikan khusus oleh Honda R & D Japan\r\nuntuk teknologi mesin sepeda motor Honda ripe\r\nKopling basah, dengan keunggulan:\r\n• Memaksimalkan kinerja mesin\r\n• Menghemat Konsumsi bahan bakar\r\n• Menghemat biaya perawatan\r\n• Usia pemakaian oli yang lebih lama', 'mpx1.jpeg', 1000, 'tersedia'),
(19, 'YAMALUBE GEAR OIL 150ml', 18, 15000, 'YAMALUBE GEAR OIL 150ml\r\n\r\nDikembangkan untuk semua mesin motor matic 4-Tak Yamaha. Yamalube Gear oil diformulasikan khusus untuk melumasi dan membersihkan transmisi rasio gear dan memberikan perlindungan terhadap gesekan dan keausan.\r\n\r\n- Tahan terhadap tekanan dan beban kerja yang tinggi.\r\n- Memberikan perlindungan terhadap gesekan dan keausan.\r\n- Melumasi dan membersihkan transmisi gear\r\n\r\nDirekomendasikan untuk semua motor matic 4-Tak Yamaha\r\n\r\nHappy Shopping', 'gardan_yamalube.jpeg', 150, 'tersedia'),
(20, 'Gear Oil AHM 120ml', 18, 10000, 'Gear Oil AHM 120ml\r\n\r\nMerupakan oli transmisi untuk sepeda motor matik Honda. \r\nGear Matic Oil ini memiliki formulasi khusus dari Honda R&D Japan dengan keunggulan:\r\n- Memiliki tingkat gesek rendah. \r\n- Mampu melumasi celah tersempit pada Gear CVT.\r\n- Mampu menahan tekanan kerja & temperatur yang tinggi terhadap daya pelumasan.\r\nDengan formulasi tersebut, perpindahan gigi otomatis dapat tetap lembut dan lancar serta umur pakai unit CVT menjadi jauh lebih lama.\r\n\r\nHappy Shopping', 'gardan_ahm.jpeg', 120, 'tersedia'),
(21, 'Air Radiator AHM', 19, 15000, 'Air Radiator\r\nMerk : AHM / Honda\r\nKemasan : 500ml / 0,5Liter\r\nWarna : Hijau\r\nAir Radiator merk AHM (Astra Honda Motor)\r\n\r\nBisa digunakan untuk segala jenis motor berpendingin radiator, tidak hanya Honda saja.\r\n\r\nUntuk mendinginkan mesin Anda dan mencegahnya overheat\r\nSebaiknya rutin dikuras secara berkala sebelum penggantian air radiator yang lama.\r\n\r\nORIGINAL AHM 100%', 'air_coolant.jpeg', 500, 'tersedia'),
(22, 'Pelumas Gemuk CVT Honda', 20, 5000, 'Gear Oil AHM 120ml\r\n\r\nMerupakan oli transmisi untuk sepeda motor matik Honda. \r\nGear Matic Oil ini memiliki formulasi khusus dari Honda R&D Japan dengan keunggulan:\r\n- Memiliki tingkat gesek rendah. \r\n- Mampu melumasi celah tersempit pada Gear CVT.\r\n- Mampu menahan tekanan kerja & temperatur yang tinggi terhadap daya pelumasan.\r\nDengan formulasi tersebut, perpindahan gigi otomatis dapat tetap lembut dan lancar serta umur pakai unit CVT menjadi jauh lebih lama.\r\n\r\nHappy Shopping', 'paslin.jpeg', 10, 'tersedia');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gambar`
--

CREATE TABLE `tbl_gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `ket` varchar(255) DEFAULT NULL,
  `gambar` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_gambar`
--

INSERT INTO `tbl_gambar` (`id_gambar`, `id_barang`, `ket`, `gambar`) VALUES
(26, 12, 'Gambar 2', '1488a5310ccfa3d1c64ca447b94ea72b.jpg'),
(27, 12, 'Gambar 3', '9aa26a7c318f842481877e2bbb47aac8.jpg'),
(28, 13, 'gambar spx2', 'spx2.jpeg'),
(29, 14, 'gambar mpx2', 'mpx2(1).jpeg'),
(30, 15, 'gambar yamalube', 'yamalube2.jpeg'),
(31, 16, 'gambar ultratec', 'ultratec2.jpeg'),
(32, 17, 'gambar mesran', 'mesran2.jpeg'),
(33, 18, 'gambar mpx1', 'mpx1(1).jpeg'),
(34, 19, 'gambar gardan yamalube', 'gardan_yamalube2.jpeg'),
(35, 20, 'gambar gardan ahm', 'gardan_ahm(1).jpeg'),
(36, 21, 'gambar air coolant', 'aircoolant2.jpeg'),
(37, 22, 'gambar paslin cvt', 'WhatsApp_Image_2023-02-24_at_22_55_39.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama_kategori`) VALUES
(17, 'Oli Motor Manual'),
(16, 'Oli Motor Matic'),
(18, 'Oli Gardan'),
(19, 'Air Coolant'),
(20, 'Paslin CVT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `email`, `password`) VALUES
(2, 'Maman', 'maman@gmail.com', '1234'),
(3, 'jbing', 'jbing@gmail.com', 'widia'),
(4, 'Budi', 'budi@gmail.com', '1234'),
(5, 'Badu', 'badu@gmail.com', '1234'),
(6, 'Nabila Syifa', 'nabilasyifa2015@gmail.com', '12345');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rekening`
--

CREATE TABLE `tbl_rekening` (
  `id_rekening` int(11) NOT NULL,
  `nama_bank` varchar(25) DEFAULT NULL,
  `no_rek` varchar(25) DEFAULT NULL,
  `atas_nama` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_rekening`
--

INSERT INTO `tbl_rekening` (`id_rekening`, `nama_bank`, `no_rek`, `atas_nama`) VALUES
(1, 'BRI', '592201038365536', 'MUHAMMAD ULUL ALBAB'),
(2, 'Mandiri', '1840005250624', 'MUHAMMAD ULUL ALBAB');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rinci_transaksi`
--

CREATE TABLE `tbl_rinci_transaksi` (
  `id_rinci` int(11) NOT NULL,
  `no_order` varchar(25) DEFAULT NULL,
  `id_barang` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `nama_barang` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_rinci_transaksi`
--

INSERT INTO `tbl_rinci_transaksi` (`id_rinci`, `no_order`, `id_barang`, `qty`, `nama_barang`) VALUES
(57, '20230502NI8D27XZ', 13, 2, 'AHM OIL SPX 2 0.8L'),
(56, '20230502NI8D27XZ', 19, 1, 'YAMALUBE GEAR OIL 150ml'),
(55, '20230502NI8D27XZ', 18, 2, 'AHM OIL-MPX1 1L');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(1) NOT NULL,
  `nama_toko` varchar(255) DEFAULT NULL,
  `lokasi` int(11) DEFAULT NULL,
  `alamat_toko` text,
  `no_telpon` varchar(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `nama_toko`, `lokasi`, `alamat_toko`, `no_telpon`) VALUES
(1, 'Pawon Wighi', 209, 'Gang Damai', '085156563147');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_transaksi`
--

CREATE TABLE `tbl_transaksi` (
  `id_transaksi` int(11) NOT NULL,
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
  `no_resi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_transaksi`
--

INSERT INTO `tbl_transaksi` (`id_transaksi`, `id_pelanggan`, `no_order`, `tgl_order`, `nama_penerima`, `hp_penerima`, `provinsi`, `kota`, `alamat`, `kode_pos`, `expedisi`, `paket`, `estimasi`, `ongkir`, `berat`, `grand_total`, `total_bayar`, `status_bayar`, `bukti_bayar`, `atas_nama`, `nama_bank`, `no_rek`, `status_order`, `no_resi`) VALUES
(47, 6, '20230502NI8D27XZ', '2023-05-02', 'sinta', '085724567098', 'DKI Jakarta', '152', 'jakarta pusat', '12345', 'jne', 'OKE', '2-3 Hari', 68000, 3750, 205000, 273000, 1, 'IMG_8517.jpg', 'sinta', 'BRI', '5927860100002', 3, '0000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(25) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `nama_user`, `username`, `password`) VALUES
(2, 'Budi', 'user', 'user'),
(5, 'Nabilla', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`) USING BTREE;

--
-- Indeks untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  ADD PRIMARY KEY (`id_gambar`) USING BTREE;

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`) USING BTREE;

--
-- Indeks untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`) USING BTREE;

--
-- Indeks untuk tabel `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  ADD PRIMARY KEY (`id_rekening`) USING BTREE;

--
-- Indeks untuk tabel `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  ADD PRIMARY KEY (`id_rinci`) USING BTREE;

--
-- Indeks untuk tabel `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indeks untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  ADD PRIMARY KEY (`id_transaksi`) USING BTREE;

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`) USING BTREE;

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tbl_gambar`
--
ALTER TABLE `tbl_gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tbl_rekening`
--
ALTER TABLE `tbl_rekening`
  MODIFY `id_rekening` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_rinci_transaksi`
--
ALTER TABLE `tbl_rinci_transaksi`
  MODIFY `id_rinci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `tbl_transaksi`
--
ALTER TABLE `tbl_transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
