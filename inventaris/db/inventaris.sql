-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 22 Mar 2019 pada 13.56
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bangunan`
--

CREATE TABLE `bangunan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `inventaris` varchar(255) NOT NULL,
  `letak` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `keadaan` varchar(2555) NOT NULL,
  `tahun` int(11) NOT NULL,
  `luas` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `konstruksi` varchar(2555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bangunan`
--

INSERT INTO `bangunan` (`id`, `nama`, `inventaris`, `letak`, `asal`, `status`, `keadaan`, `tahun`, `luas`, `harga`, `konstruksi`) VALUES
(2, 'Ruang Tamu a', 'Perabotan', 'Lantai 1', 'Yogyakarta z', 'Baru', 'Baik z', 2010, 201, 2000000, 'Baja Kuat'),
(3, 'Kantor', 'Bangunan', 'Lantai 1', 'Banguntapan', 'Baru', 'Baik', 2011, 120, 150000, 'Baja'),
(4, 'Kursi Kantor', 'Perabotan', 'Halaman', 'Medan', 'Baru', 'Baik', 2004, 150, 250, 'Baja'),
(5, 'Meja Kayu', 'Elektronik', 'Lantai 1', 'Yogyakarta', 'Bekas', 'Rusak', 2006, 100, 6000, 'Baja Kuat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `inventaris` varchar(255) NOT NULL,
  `letak` varchar(255) NOT NULL,
  `merek` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `bahan` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `ukuran` varchar(255) NOT NULL,
  `tahun` date NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `gambar`, `inventaris`, `letak`, `merek`, `asal`, `status`, `bahan`, `satuan`, `ukuran`, `tahun`, `jumlah`, `harga`, `ket`) VALUES
(32, 'Kursi Kantor', 'barang1552535575.jpg', 'Perabotan', 'Lantai 1', 'Krisbow', 'Jepang', 'Baru', 'Plastik', 'Liter', 'Standar', '0000-00-00', 7, 750000, 'Kursinya nyaman'),
(33, 'Meja Kayu', 'meja-kayu.jpg', 'Perabotan', 'Lantai 1', 'Mabloo', 'Kalimantan Utara', 'Baru', 'Kayu Jati', 'Pcs', 'Besar', '0000-00-00', 1, 1250000, 'Kualitas kayu bagus'),
(34, 'Lemari Kayu', 'lemari-kayu-kaca.jpg', 'Perabotan', 'Basement', 'Mabloo', 'Medan', 'Bekas', 'Kayu Cendana', 'Pcs', 'Besar', '0000-00-00', 1, 500000, 'Kaca ada yang kurang'),
(35, 'Meja Plastik', 'meja-plastik.jpg', 'Perabotan', 'Lantai 2', 'Krisbow', 'Karawang', 'Baru', 'Plastik', 'Pcs', 'Standar', '0000-00-00', 4, 500000, 'Permukaan meja seperti agak berminyak'),
(36, 'Kursi Lipat', 'barang1552535927.jpg', 'Perabotan', 'Lantai 2', 'Krisbow', 'Karawang', 'Baru', 'Plastik', 'Pcs', 'Standar', '0000-00-00', 8, 75000, 'Kursi Minimalis'),
(38, 'mahardhika', 'barang1552537101.jpg', 'Meja', 'Lantai 1', 'asli', 'sdadsad', 'Baru', 'kayu', 'Pcs', '201727', '0000-00-00', 1, 120000, 'nyamanaaa'),
(39, 'deadpool', 'barang1552537067.jpg', 'Meja', 'Lantai 1', 'asli', 'banjarnegara', 'Baru', 'kayu', 'Pcs', '201727', '0000-00-00', 1, 120000, 'adssadsadasd');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventaris`
--

CREATE TABLE `inventaris` (
  `id` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `inventaris`
--

INSERT INTO `inventaris` (`id`, `jenis`) VALUES
(3, 'Perabotan'),
(18, 'Elektronik'),
(19, 'Peralatan'),
(20, 'Bangunan'),
(21, 'Kendaraan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id` int(11) NOT NULL,
  `letak` varchar(255) NOT NULL,
  `inventaris` varchar(255) NOT NULL,
  `asal` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `merek` varchar(2555) NOT NULL,
  `tahun` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `keadaan` varchar(255) NOT NULL,
  `no_rangka` varchar(255) NOT NULL,
  `no_polisi` varchar(255) NOT NULL,
  `no_bpkb` varchar(255) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kendaraan`
--

INSERT INTO `kendaraan` (`id`, `letak`, `inventaris`, `asal`, `status`, `merek`, `tahun`, `harga`, `keadaan`, `no_rangka`, `no_polisi`, `no_bpkb`, `ket`) VALUES
(1, 'Basement', 'Kendaraan', 'Jepang', 'Bekas', 'Honda', 1997, 6000, 'Rusak', '001758329', 'AB 1937 H', '108437', 'Tidak Layak Pakai'),
(2, 'Halaman', 'Kendaraan', 'Jepang', 'Baru', 'Yamaha', 2017, 15000, 'Baik', '002937542', 'AB 1264 Y', '274305', 'Nyaman'),
(3, 'Lantai 1', 'Perabotan', 'Sleman', 'Baru', 'Yamaha', 2009, 15000, 'Baik', '759362', 'AB 1762 Y', '198364', 'Motor keren!'),
(6, 'Lantai 1', 'Kendaraan', 'Yogyakarta', 'Baru', 'Honda', 1996, 1500, 'Baik', 'aaqq1', 'AB 1264 Y', '198364a', 'keren deh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `letak`
--

CREATE TABLE `letak` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `letak`
--

INSERT INTO `letak` (`id`, `nama`) VALUES
(16, 'Basement'),
(17, 'Lantai 1'),
(18, 'Lantai 2'),
(19, 'Halaman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lokasi`
--

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL,
  `letak` varchar(255) NOT NULL,
  `barang` varchar(255) NOT NULL,
  `bangunan` varchar(255) NOT NULL,
  `kendaraan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `lokasi`
--

INSERT INTO `lokasi` (`id`, `letak`, `barang`, `bangunan`, `kendaraan`) VALUES
(1, 'Lantai 1', 'Meja Kayu', 'Ruang Tamu', 'Honda'),
(2, 'Lantai 2', 'Kursi Kantor', 'Kantor', 'Yamaha'),
(5, 'Lantai 1', 'Lemari Kayu', 'Ruang Tamu', 'Yamaha');

-- --------------------------------------------------------

--
-- Struktur dari tabel `merek`
--

CREATE TABLE `merek` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `merek`
--

INSERT INTO `merek` (`id`, `nama`) VALUES
(3, 'Samsung'),
(4, 'Lenovo'),
(5, 'LG'),
(6, 'Mabloo'),
(7, 'Maspion'),
(9, 'Honda'),
(10, 'Yamaha'),
(11, 'Krisbow');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `id` int(11) NOT NULL,
  `jenis_mutasi` varchar(255) NOT NULL,
  `inventaris` varchar(255) NOT NULL,
  `letak_lama` varchar(255) NOT NULL,
  `letak_baru` varchar(255) NOT NULL,
  `barang` varchar(2555) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tanggal` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `ket` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mutasi`
--

INSERT INTO `mutasi` (`id`, `jenis_mutasi`, `inventaris`, `letak_lama`, `letak_baru`, `barang`, `nama`, `tanggal`, `jumlah`, `ket`) VALUES
(3, 'Jual', 'Perabotan', 'Luar', 'Luar', 'Kursi', 'Kur', '2019-02-11', 2, 'Kursi Rusak'),
(4, 'Pindah', 'Elektronik', 'Lantai 1', 'Lantai 2', 'Kursi', 'Kursi Kantor', '2019-01-10', 2, 'Kursi lantai 2 kurang'),
(5, 'Jual', 'Perabotan', 'Basement', 'Lantai 1', 'Kursi', 'Kursi Kantor', '2019-02-08', 1, 'Nyaman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id` int(11) NOT NULL,
  `send_to` char(5) NOT NULL,
  `send_by` int(3) NOT NULL,
  `pesan` tinytext NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id`, `send_to`, `send_by`, `pesan`, `time`) VALUES
(1, '2', 18, 'santai bro', '2019-03-22 07:37:57'),
(2, '2', 18, 'yoi', '2019-03-22 09:18:04'),
(3, '18', 2, 'oppo', '2019-03-22 09:18:28'),
(4, '18', 2, 'siap', '2019-03-22 09:19:28'),
(5, '18', 2, 'hai', '2019-03-22 09:39:34'),
(6, '18', 2, 'oppo', '2019-03-22 09:39:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`id`, `nama`) VALUES
(3, 'Pcs'),
(5, 'Lusin'),
(6, 'Kodi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id`, `nama`) VALUES
(1, 'Baru'),
(5, 'Bekas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ukuran`
--

CREATE TABLE `ukuran` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ukuran`
--

INSERT INTO `ukuran` (`id`, `nama`) VALUES
(6, 'Kecil'),
(11, 'Standar'),
(12, 'Besar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `tempat_lahir` varchar(255) NOT NULL,
  `tanggal_lahir` varchar(255) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `level` enum('admin','user') NOT NULL,
  `status` enum('aktif','mati') NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `agama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `username`, `password`, `level`, `status`, `deskripsi`) VALUES
(2, 'Mahardhika Arya', 'Banjarnegara', 'Islam', 'Banjarnegara', '2002-04-07', 'laki-laki', 'Mahardika2016', '$2y$10$Z7X.iN/vBn3Qu1YQrJ1.veAUa/1XpIfVg0b7mzKCQqeyZFl/xdzGO', 'admin', 'aktif', ''),
(8, 'Raihan', 'Babakan, RT 07 RW II, Kecamatan Kalimanah, Kabupaten Purbalingga, Provinsi Jawa Tengah.', 'Islam', 'Purbalingga', '2002-06-21', 'laki-laki', 'raihan', 'raihan', 'user', 'aktif', ''),
(9, 'Sasha', 'Kelurahan Keponggok, RT 02 RW III, Kecamatan Purbalingga, Kabupaten Purbalingga, Provinsi Jawa Tengah.', 'Islam', 'Purbalingga', '2002-07-27', 'perempuan', 'sasha', '321', 'user', 'aktif', ''),
(18, 'Mahardhika User', 'Banjarnegara', '', 'Jawa Tengah', '2019-03-19', 'laki-laki', 'dika', '$2y$10$5yaWsiJ7z.BBzQ7ZvRVYL.ClUHc8/0oRCoTWiKV4t8PV8mSACiDe2', 'user', 'aktif', ''),
(20, '', '', '', '', '', 'laki-laki', 'satu', '$2y$10$0EDNApNiGbtwBi9Uq4RZ6uG/26DDsokgDfpIjXwSGFjkau5kzoXjy', 'user', 'aktif', ''),
(31, '', '', '', '', '', 'laki-laki', 'subekti', '$2y$10$RpPiWl6uVCHaKu4UAx.NPu7JUio1PHkqJClY9OY4DsvrsCJEuB7O.', 'admin', 'aktif', ''),
(32, '', '', '', '', '', 'laki-laki', 'data2', '$2y$10$oVcK0Z6S0CN/lsD2/hllb.3svUbSPHM2NAHDN1FfeqPWrPBINmuS6', 'admin', 'mati', ''),
(33, '', '', '', '', '', 'laki-laki', 'AJAX', '$2y$10$A5awrrsbo7r7Jhcbngi5yemozb/E2gj/JdGGazbNygzKMxzQLpjkC', 'admin', 'aktif', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bangunan`
--
ALTER TABLE `bangunan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `letak`
--
ALTER TABLE `letak`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_by` (`send_by`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bangunan`
--
ALTER TABLE `bangunan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT untuk tabel `inventaris`
--
ALTER TABLE `inventaris`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `letak`
--
ALTER TABLE `letak`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `merek`
--
ALTER TABLE `merek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `status`
--
ALTER TABLE `status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `ukuran`
--
ALTER TABLE `ukuran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD CONSTRAINT `pesan_ibfk_1` FOREIGN KEY (`send_by`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
