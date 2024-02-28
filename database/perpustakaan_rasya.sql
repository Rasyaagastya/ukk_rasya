-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 10:16 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpustakaan_rasya`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama_admin` varchar(255) NOT NULL,
  `password` varchar(25) NOT NULL,
  `kode_admin` varchar(12) NOT NULL,
  `no_tlp` varchar(13) NOT NULL,
  `role` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `nama_admin`, `password`, `kode_admin`, `no_tlp`, `role`) VALUES
(1, 'rasya', '1234', 'admin19', '0896283', 'admin'),
(2, 'delvira', '1234', 'petugas', '0394934', 'petugas'),
(3, 'rafa', '1234', 'admin2', '08293923', 'admin'),
(4, 'adzan', '1234', 'petugas2', '03493493', 'petugas'),
(6, 'rumay', '123', '1212', '093439', 'petugas'),
(7, 'rasyaagastya', '123', '999', '089977878278', 'petugas'),
(8, 'inumaki', '999', '777', '08989898989', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `cover` varchar(255) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `tahun_terbit` date NOT NULL,
  `jumlah_halaman` int(50) NOT NULL,
  `buku_deskripsi` text NOT NULL,
  `isi_buku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`cover`, `id_buku`, `kategori`, `judul`, `pengarang`, `penerbit`, `tahun_terbit`, `jumlah_halaman`, `buku_deskripsi`, `isi_buku`) VALUES
('65d36d263a63d.png', 'ZID0001', 'bisnis', 'Pengantar Administrasi Bisnis', 'Nur Widyawati', 'Widina', '2023-03-20', 61, 'Konsep Dasar Ilmu Administrasi Bisnis', '560114-pengantar-administrasi-bisnis-cf052c55.pdf'),
('65d36d96dc7f4.jpg', 'ZID0002', 'informatika', 'INFORMATIKA', 'Vania Natali, dkk.', 'Pusat Perbukuan', '2021-06-22', 320, 'Materi tentang Konsep Informatika', 'Informatika-BS-KLS-VIII (1).pdf'),
('65d36ed3aef90.png', 'ZID0003', 'filsafat', 'Filsafat Ilmu', 'Yeremias Jena', 'Deepublish', '2013-03-06', 292, 'Kajian Filosofis atas Sejarah dan Metodologi Ilmu Pengetahuan', 'BukuFilsafatIlmu_KajianFilosofisatasSejarahdanMetodologiIlmuPengetahuan_Yeremias_jena.pdf'),
('65d36fa68965f.png', 'ZID0004', 'sains', 'Filsafat Sains', 'Muhammad Djajadi, S.Pd., M.Pd., Ph.D.', 'ARTI BUMI INTARAN (ANGGOTA IKAPI)', '2019-04-10', 177, 'Filsafat Sains sebagai cabang filsafat yang mencoba mengkaji Sains dari segi ciri-ciri dan cara pemerolehannya. Filsafat Sains merupakan jawaban filsafat atas pertanyaan sains, atau Filsafat Sains merupakan upaya penjelasan dan penelaahan secara mendalam hal-hal yang berkaitan dengan sains terutama berhubungan dengan Sains Fisika.', 'filsafatsains-lengkap.pdf'),
('65d373891e6cc.jpeg', 'ZID0005', 'novel', 'Jodoh Terbaik', 'Seolhan-Na', 'Kawah Media', '2024-02-19', 406, 'perempuan cantik berusia 20 tahun yang harus berlapang dada menerima perjodohan dengan anak dari sahabat ayahnya. Gibran Muhammad Azzam, lelaki tampan ini baru baru berusia 24 tahun. Di usianya yang masih sangat muda, Azzam sudah menjadi CEO di perusahaan keluarganya.', '{LV} Jodoh Terbaik - Unknown.pdf'),
('65d3746464a95.jpeg', 'ZID0006', 'novel', 'Dilan : Dia adalah Dilan ku 1990', 'Pidi Baiq', 'Gramedia', '2021-02-23', 333, 'tentang seorang laki-laki bernama Dilan dan seorang gadis bernama Milea. Berbagai kisah dalam buku Dilan 1990 ini, ditulis dari sudut pandang seorang Milea.', 'DILAN 1 (shabrinabachtiar).pdf'),
('65dc4c4d4c15f.jpg', 'ZID0007', 'novel', 'one piece ', 'Eiichiro Oda', 'Gramedia ', '2024-02-26', 197, 'Ceritanya mengisahkan petualangan Monkey D. Luffy, seorang anak laki-laki yang memiliki kemampuan tubuh elastis seperti karet setelah memakan Buah Iblis secara tidak disengaja. Luffy bersama kru bajak lautnya, yang dinamakan Bajak Laut Topi Jerami, menjelajahi Grand Line untuk mencari harta karun terbesar di dunia yang dikenal sebagai &quot;One Piece&quot; dalam rangka untuk menjadi Raja Bajak Laut yang berikutnya.', '[Meganebuk] OP Vol.01.pdf'),
('65dc4db56ab2c.jpg', 'ZID0008', 'novel', 'Naruto shippuden', 'mashasi khisimoto', 'Shueisha', '2016-12-15', 95, ' Naruto bercerita seputar kehidupan tokoh utamanya, Naruto Uzumaki, seorang ninja yang hiperaktif, periang, dan ambisius yang ingin mewujudkan keinginannya untuk mendapatkan gelar Hokage, pemimpin dan ninja terkuat di desanya.', '[Meganebuk] Naruto Vol.01.pdf'),
('65dc4e927e26d.jpg', 'ZID0009', 'novel', 'Bumi', 'Tere liye', 'Gramedia ', '2021-05-19', 376, 'berkisah mengenai petualangan antarklan dengan tokoh utamanya, yaitu Raib. Raib adalah generasi keturunan murni dari Klan Bulan dan ia melakukan petualangan ke dunia paralel bersama dua sahabatnya, yaitu Seli dan Ali. Seli berasal dari keturunan klan Matahari, sementara Ali berasal dari klan Bumi atau tanah. Sebenarnya, mereka bertiga merupakan anak remaja pada umumnya, tetapi di novel inilah awal dari segalanya terungkap.', 'Bumi - Tere liye.pdf'),
('65dc4f491643b.jpg', 'ZID0010', 'novel', 'Dilan 1991', 'pidi baiq', 'Gramedia ', '2015-08-29', 345, 'Kisah cinta Dilan dan Milea akan kembali berlanjut. Di film Dilan 1991 ini kisah cinta mereka akan mulai diuji. Banyak rintangan yang harus Dilan dan Milea lalui, mampukah cinta mereka bertahan?', 'Dilan 1991.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_buku`
--

CREATE TABLE `kategori_buku` (
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori_buku`
--

INSERT INTO `kategori_buku` (`kategori`) VALUES
('bisnis'),
('filsafat'),
('informatika'),
('novel'),
('sains');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `nisn` int(11) NOT NULL,
  `kode_member` varchar(12) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `tgl_pendaftaran` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`nisn`, `kode_member`, `nama`, `password`, `jenis_kelamin`, `kelas`, `jurusan`, `no_tlp`, `tgl_pendaftaran`) VALUES
(123, '123', 'rafa', '$2y$10$6A5sVTzmv0HCZKFp1/LENuGUZQupG6r/jpOiB9LGUCY0Zns4BbH6q', 'Laki laki', 'XII', 'Teknik Tenaga Listrik', '094646164', '2024-02-12'),
(789, '987', 'aca', '$2y$10$CAOghvbF4GsazFZJs2cExOlOpz6PCS6KmUcZ7yKSDh708e.QZVC9S', 'Laki laki', 'XII', 'Desain Gambar Mesin', '08989779', '2024-02-26'),
(999, '333', 'rasyaa', '$2y$10$4F6E4JbKec9W9OTxOO074OkZpkqJKii9YckOpI/kFtXhScrRsxeeW', 'Laki laki', 'XII', 'Teknik Instalasi Tenaga Listrik', '0889797778', '2024-02-24'),
(2222, '22', 'rumay', '$2y$10$js8IqOHfEIJgZHgzG00Wz.NoF4aXzluG22NP/3QEiaAcrvf5NWZzK', 'Laki laki', 'XIII', 'Desain Gambar Mesin', '09438349', '2024-02-15'),
(12345, '1234', 'ahmad', '$2y$10$8zOCtAEPblrg5.GM3GyN9uozsoZw8ibG9rlVCGXUPg.pF2yHEZyba', 'Laki laki', 'X', 'Desain Pemodelan Informasi Bangunan', '1234', '2024-02-09'),
(164545, '0726382', 'delvira', '$2y$10$kqvHmlIo9zGYTA1AYcfxwOH9I2qvxBKTpLRveRmB5sY9SPrw7jm22', 'Perempuan', 'XII', 'Desain Komunikasi Visual', '08888', '2024-02-12'),
(123456789, '999', 'rasya agastya', '$2y$10$gnq4uxQKtAmQHp11kenTYuDTKsqjOsbE1xiFGpZj243gtTbbCMjMC', 'Laki laki', 'XII', 'Teknik Konstruksi Perumahan', '08667564564', '2024-02-11');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `tgl_peminjaman` date NOT NULL,
  `tgl_pengembalian` date NOT NULL,
  `status` enum('ya','tidak') NOT NULL,
  `harga` int(50) NOT NULL,
  `no_petgas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengembalian`
--

CREATE TABLE `pengembalian` (
  `id_pengembalian` int(11) NOT NULL,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` varchar(20) NOT NULL,
  `nisn` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `buku_kembali` date NOT NULL,
  `keterlambatan` enum('YA','TIDAK') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengembalian`
--

INSERT INTO `pengembalian` (`id_pengembalian`, `id_peminjaman`, `id_buku`, `nisn`, `id_admin`, `buku_kembali`, `keterlambatan`) VALUES
(69, 117, 'ZID0005', 12345, 4, '2024-02-25', 'TIDAK'),
(70, 116, 'ZID0006', 999, 7, '2024-02-26', 'TIDAK'),
(71, 118, 'ZID0005', 999, 2, '2024-02-26', 'TIDAK'),
(72, 119, 'ZID0002', 999, 2, '2024-02-26', 'TIDAK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_admin` (`kode_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`),
  ADD KEY `kategori` (`kategori`);

--
-- Indexes for table `kategori_buku`
--
ALTER TABLE `kategori_buku`
  ADD PRIMARY KEY (`kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`nisn`),
  ADD UNIQUE KEY `kode_member` (`kode_member`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- Indexes for table `pengembalian`
--
ALTER TABLE `pengembalian`
  ADD PRIMARY KEY (`id_pengembalian`),
  ADD KEY `id_peminjaman` (`id_peminjaman`),
  ADD KEY `id_buku` (`id_buku`),
  ADD KEY `nisn` (`nisn`),
  ADD KEY `id_admin` (`id_admin`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `pengembalian`
--
ALTER TABLE `pengembalian`
  MODIFY `id_pengembalian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `buku_ibfk_1` FOREIGN KEY (`kategori`) REFERENCES `kategori_buku` (`kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
