-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 15 Des 2020 pada 17.43
-- Versi Server: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wo`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `is_private_key` tinyint(1) NOT NULL DEFAULT '0',
  `ip_addresses` text,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `keys`
--

INSERT INTO `keys` (`id`, `user_id`, `key`, `level`, `ignore_limits`, `is_private_key`, `ip_addresses`, `date_created`) VALUES
(1, 1, '123456789', 1, 1, 0, '1', 0),
(2, 2, '123456798', 1, 1, 0, '1', 0),
(3, 3, '123654987', 1, 1, 0, '1', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis`
--

INSERT INTO `tb_jenis` (`id_jenis`, `nama_jenis`) VALUES
(1, 'Tidak Ada'),
(2, 'Make Up Artist & Hair Do'),
(3, 'Dress & Attire'),
(4, 'Photographer & Videographer'),
(5, 'Venue'),
(6, 'Decoration & Lighting'),
(7, 'Catering'),
(8, 'Favors & Gifts'),
(9, 'Invitation'),
(10, 'Jewelry'),
(11, 'Bridal');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_konsumen`
--

CREATE TABLE `tb_konsumen` (
  `id_konsumen` int(11) NOT NULL,
  `nama_konsumen` varchar(255) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `id_vendor` bigint(20) DEFAULT NULL,
  `nama_vendor` varchar(255) NOT NULL,
  `tgl_pemesanan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_konsumen`
--

INSERT INTO `tb_konsumen` (`id_konsumen`, `nama_konsumen`, `layanan`, `id_vendor`, `nama_vendor`, `tgl_pemesanan`) VALUES
(1, 'Fitri Febrianti', 'Pernikahan Tradisional', NULL, 'Sanggar Lisa Amanda', '2019-01-01'),
(2, 'Devina Olivia Herwanda', 'Akad Nikah', NULL, 'Flo Make Up Artist', '2019-01-01'),
(3, 'Ezra Kusumaningrum', 'Foto Prewedd', NULL, 'ISO DUO', '2019-02-02'),
(4, 'Sema Kurniawan', 'Katering 500pax', NULL, 'Sono Kembang', '2019-02-02'),
(5, 'Jeanneth Angelina', 'Katering 600pax', NULL, 'Sono Kembang', '2019-03-16'),
(6, 'David Samuel Galla', 'Foto & Video Prewedd', NULL, 'Home Native Photography', '2019-04-06'),
(7, 'Desvianty Ayu', 'Souvenir 300 item', NULL, 'Gifu Invitation & Souvenir', '2019-04-06'),
(8, 'Dik Ajeng Ayu', 'Souvenir 200 item', NULL, 'Rove Gift', '2019-03-16'),
(9, 'Deltalovita Astrid', 'Undangan', NULL, 'Creatzy Paperless', '2019-03-16'),
(10, 'Tareh Rozzaq Adzdziqri', 'Tuxedo 1 Set', NULL, 'Gester Bridal & Salon Smart Hair', '2019-01-01'),
(11, 'Stella Venezia', 'Bride Dress & Bridesmaid Dress', NULL, 'ChrisYen Wedding Boutique', '2019-04-06'),
(12, 'Gina Christina', 'Cincin Pernikahan', NULL, 'Grace Jewerly', '2019-05-25'),
(13, 'Hana Dwi Putri', 'Kebaya', NULL, 'Luminous Bridal Boutique', '2019-01-01'),
(14, 'Karina Aziqri', 'Dekorasi Rustic', NULL, 'FIORE & Co. Decoration', '2019-01-01'),
(15, 'Kiki Indah', 'Resepsi Pernikahan Internasional', NULL, 'Anantara Seminyak Bali Resort', '2019-02-02'),
(16, 'Mufida', 'Dekorasi Tradisional Jawa', NULL, 'Silverdust Decoration', '2019-05-25'),
(17, 'Nikita Savira', 'Ballroom 2000 Undangan', NULL, 'JW Marriott Hotel Surabaya', '2019-05-25'),
(18, 'Rizky Thomas', 'Souvenir 200 item', NULL, 'Rove Gift', '2019-06-29'),
(19, 'Adityo Permana', 'Katering 500 pax', NULL, 'Oma Thia', '2019-06-29'),
(20, 'Bima Aremedianto', 'Perhiasan Seserahan', NULL, 'Grace Jewerly', '2019-06-29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kota`
--

CREATE TABLE `tb_kota` (
  `id_kota` int(11) NOT NULL,
  `kab_kota` varchar(255) NOT NULL,
  `provinsi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kota`
--

INSERT INTO `tb_kota` (`id_kota`, `kab_kota`, `provinsi`) VALUES
(3, 'Jakarta Barat', 'DKI Jakarta'),
(31, 'Jakarta Pusat', 'DKI Jakarta'),
(2, 'Jakarta Selatan', 'DKI Jakarta'),
(1, 'Jakarta Timur', 'DKI Jakarta'),
(4, 'Jakarta Utara', 'DKI Jakarta'),
(18, 'Kabupaten Banyuwangi', 'Jawa Timur'),
(19, 'Kabupaten Blitar', 'Jawa Timur'),
(20, 'Kabupaten Gresik', 'Jawa Timur'),
(21, 'Kabupaten Jember', 'Jawa Timur'),
(12, 'Kabupaten Kudus', 'Jawa Tengah'),
(22, 'Kabupaten Malang', 'Jawa Timur'),
(5, 'Kota Bandung', 'Jawa Barat'),
(23, 'Kota Batu', 'Jawa Timur'),
(6, 'Kota Bekasi', 'Jawa Barat'),
(24, 'Kota Blitar', 'Jawa Timur'),
(7, 'Kota Bogor', 'Jawa Barat'),
(8, 'Kota Cimahi', 'Jawa Barat'),
(9, 'Kota Cirebon', 'Jawa Barat'),
(28, 'Kota Denpasar', 'Bali'),
(10, 'Kota Depok', 'Jawa Barat'),
(25, 'Kota Kediri', 'Jawa Timur'),
(13, 'Kota Magelang', 'Jawa Tengah'),
(26, 'Kota Malang', 'Jawa Timur'),
(14, 'Kota Salatiga', 'Jawa Tengah'),
(15, 'Kota Semarang', 'Jawa Tengah'),
(32, 'Kota Solo', 'Jawa Tengah'),
(27, 'Kota Surabaya', 'Jawa Timur'),
(16, 'Kota Surakarta', 'Jawa Tengah'),
(11, 'Kota Tasikmalaya', 'Jawa Barat'),
(17, 'Kota Tegal', 'Jawa Tengah'),
(30, 'Kupang', 'Nusa Tenggara Timur'),
(29, 'Mataram', 'Nusa Tenggara Barat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_vendor`
--

CREATE TABLE `tb_vendor` (
  `id_vendor` bigint(20) NOT NULL,
  `nama_vendor` varchar(255) NOT NULL,
  `alamat_vendor` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_wo` bigint(20) DEFAULT NULL,
  `nama_wo` varchar(255) NOT NULL,
  `nama_jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_vendor`
--

INSERT INTO `tb_vendor` (`id_vendor`, `nama_vendor`, `alamat_vendor`, `no_telp`, `id_wo`, `nama_wo`, `nama_jenis`) VALUES
(1, 'Grace Jewerly', 'Malang Town Square Kav 24-26', '085239012332', 3, 'Sido Rabi Wedding Organizer', 'Jewelry'),
(2, 'Gifu Invitation & Souvenir', 'Ruko Boulevard no. 27 Jakarta Garden City', '081398408188', 2, 'Sido Rabi Wedding Organizer', 'Jewelry'),
(3, 'ISO DUO', 'Jl. Melati no 108', '085210456789', 3, 'Feliz Organizer', 'Photographer & Videographer'),
(4, 'Sono Kembang', 'Jl. Borobudur 99', '089874532111', 4, 'Oppie Wedding Organizer', 'Catering'),
(5, 'Philips Kwok', 'Foresta Albera D6-29', '081314666900', 5, 'My Story Event Organizer', 'Make Up Artist & Hair Do'),
(6, 'Sanggar Lisa Amanda', 'Jalan Mabes AL Delta V Cilangkap', '085239012332', 6, 'Martha Wedding Organizer', 'Make Up Artist & Hair Do'),
(7, 'Flo Make Up Artist', 'Cengkareng indah', '087885931386', 8, 'Bless Wedding', 'Make Up Artist & Hair Do'),
(8, 'Creatzy Paperless', 'Jl. Cokroaminoto Gg. Katalia III No. 9', '08814815899', 9, 'Bless Wedding Surabaya', 'Invitation'),
(9, 'Luminous Bridal Boutique', 'Kelapa Nias Raya QE 1 NO 7 Kelapa Gading Permai', '081213400688', 10, 'Majestic The Conceptual Wedding', 'Bridal'),
(10, 'JCL FOTO BRIDAL SALON', 'Jl. Boulevard Raya Blok QJ 1 No.05', '0811812171', 11, 'Glowy Wedding Organizer', 'Bridal'),
(11, 'Gester Bridal & Salon Smart Hair', 'Kompleks Kelapa Gading Square D 26-27, Jl. Ry Boulevard Barat', '08155000463', 12, 'Andie Oyong Project', 'Bridal'),
(12, 'ChrisYen Wedding Boutique', 'Jl Marina Indah Raya, Rukan PIK Cordoba Blok H No 59', '087877980808', 13, 'Finest Organizer', 'Dress & Attire'),
(13, 'New Melati Salon Bali', 'Jl. Blambangan no.1 Denpasar', '081246323393', 14, 'Hilda by Bridestory', 'Dress & Attire'),
(14, 'Hanaliewear', 'Jl. Abbey Road 2 No 11', '087884302788', 15, 'Edelweis Organizer', 'Dress & Attire'),
(15, 'Silverdust Decoration', 'Jl. Wanagiri No.1H, Jimbaran, Kuta ', '03614463008', 16, 'Varawedding', 'Decoration & Lighting'),
(16, 'Joelle Decoration', 'Jln Jomas no 21A', '08176670477', 17, 'White Roses Planner', 'Decoration & Lighting'),
(17, 'FIORE & Co. Decoration', 'Jl. Merawan, Pangkalan Jati', '087874738884', 18, 'PRIDE Organizer', 'Decoration & Lighting'),
(18, 'Home Native Photography', 'Jl. Kl Yos Sudarso Lingkungan 14a', '082216670582', 19, 'Vinz Production', 'Photographer & Videographer'),
(19, 'Kairos Works', 'Citra Garden City 6 Fine Homes, Blok L5 No.3', '08170863305', 20, 'Azka Wedding Organizer', 'Photographer & Videographer'),
(20, 'Anantara Seminyak Bali Resort', 'Jl. Abimanyu (Dhyana Pura) Seminyak', '0361737773', 21, 'SEDJOLI WEDDING ORGANIZER', 'Venue'),
(21, 'JW Marriott Hotel Surabaya', 'Jalan Embong Malang 85-89', '08113640166', 22, 'Sugar Planner', 'Venue'),
(22, 'The Vida Ballroom', ' Jl. Raya Perjuangan No. 8', '081212695519', 23, 'Point One Wedding Organizer', 'Venue'),
(23, 'Royal Ballroom The Springs Club', 'Jalan Springs Boulevard Blok C/01 , Summarecon Serpong', '02129171515', 24, 'Alfida Wedding', 'Venue'),
(24, 'Table d\'Or', 'Jalan Pengubengan Kauh no. 69', '082144928410', 25, 'Red Hat Organizer', 'Catering'),
(25, 'Oma Thia\'s Kitchen Catering', 'Jalan Gunung Salak Gang Puri Ratu No. 23', '08161180055', 26, 'Lily Wedding Services', 'Catering');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wo`
--

CREATE TABLE `tb_wo` (
  `id_wo` bigint(20) NOT NULL,
  `nama_wo` varchar(255) NOT NULL,
  `alamat_wo` varchar(255) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `kab_kota` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_wo`
--

INSERT INTO `tb_wo` (`id_wo`, `nama_wo`, `alamat_wo`, `no_telp`, `layanan`, `kab_kota`) VALUES
(1, 'Indies Organizer Event and Wedding Planner', 'Jalan Sigura-gura VI', '03414561888', 'Event Planner & Wedding Planner', 'Kota Bekasi'),
(2, 'Sido Rabi Wedding Organizer', 'Perumahan Pandanwangi No 10', '085239012331', 'Pernikahan Tradisional, Pernikahan Modern', 'Kota Malang'),
(3, 'Feliz Organizer', 'N3 Perum Graha Mulya', '081333439990', 'Wedding Planner, Wedding Consultant', 'Kota Bogor'),
(4, 'Oppie Wedding Organizer', 'Jl. Sudimoro Kav.4 Perum ABM Malang', '085236147361', 'Pernikahan Tradisional, Pernikahan Modern, Dekorasi', 'Kota Malang'),
(5, 'My Story Event Organizer', 'Jl. Borobudur No.3G, Mojolangu', '08121745428', 'Wedding Planner, Brithday Planner, Event Consultant', 'Kota Malang'),
(6, 'Martha Wedding Organizer', 'Surabaya City, East Java', '081234464078', 'Wedding Planner, Wedding Consultant', 'Kota Surabaya'),
(7, 'Elita Wedding Organizer', 'Perumahan Permata Jingga G19', '082333960285', 'Traditional Wedding Consultant & Planner', 'Kota Malang'),
(8, 'Bless Wedding Surabaya', 'Surabaya City, East Java', '081230583174', 'Wedding Planner, Wedding Consultant', 'Kota Surabaya'),
(9, 'Bless Wedding', 'Jl. Cipta Menanggal Utara No.68, Menanggal', '081230583174', 'Pernikahan Tradisional, Pernikahan Modern, Pernikahan Internasional.', 'Kota Surabaya'),
(10, 'Majestic The Conceptual Wedding', 'Jl. Raya Ngagel Jaya No.59, Pucang Sewu', '(031) 5051116', 'Wedding Consultant, Wedding Planner, MC', 'Kota Surabaya'),
(11, 'Glowy Wedding Organizer', 'Menara Kuningan Lt. 11', '081380405525', 'Wedding Planner', 'Jakarta Barat'),
(12, 'Andie Oyong Project', 'l P.Tubagus Angke Komp Taman Harapan Indah Blok G 3/3 ', '087888392016', 'Persiapan daftar tamu, Pilihan venue, Perencanaan resepsi, Paket pernikahan', 'Jakarta Barat'),
(13, 'Finest Organizer', 'Jl. Mutiara Palem Blok A 19 No. 1 , Cengkareng', '08119780242', '	Wedding Planner, Wedding Organizer, and Reception Only', 'Jakarta Utara'),
(14, 'Hilda by Bridestory', 'Bellezza Shopping Arcade', '08118672444', 'Wedding Consultant', 'Jakarta Timur'),
(15, 'Edelweis Organizer', 'Kebon Kacang 1 No. 73 ', '0818809267', 'Wedding Planner Wedding Organizer Event Organizer', 'Jakarta Pusat'),
(16, 'Varawedding', 'Jl. Wanagiri No. I H Jimbaran ', '0361 4463008', 'Gaya dan Konsep Pernikahan, Persiapan daftar tamu, Pilihan venue, Perencanaan resepsi, Paket pernikahan', 'Kota Denpasar'),
(17, 'White Roses Planner', 'Pertokoan Diponegoro Megah', '081805515604', 'Pilihan venue, Perencanaan resepsi, Gaya dan Konsep Pernikahan', 'Kota Denpasar'),
(18, 'PRIDE Organizer', 'Cikawao Permai Kav. B1/1 ', '08112182810', 'Wedding Planner, Wedding Consultant', 'Kota Bandung'),
(19, 'Vinz Production', 'Ruko Yosodipuro B6, Jalan Yosodipuro 135', '081915357005', 'Perencanaan pernikahan lengkap mulai dari penganggaran, pencarian & pemilihan vendor, membuat jadwal acara.', 'Kota Solo'),
(20, 'Azka Wedding Organizer', 'Sukamulih Kec. Sariwangi', '081321264958', 'Persiapan daftar tamu, Pilihan venue, Perencanaan resepsi, Gaya dan Konsep Pernikahan.', 'Kota Tasikmalaya'),
(21, 'SEDJOLI WEDDING ORGANIZER', 'Griya Indah Bogor, blok L no 6', '08128424524', ' pernikahan internasional, Pernikahan tradisional, Upacara pernikahan dengan tata cara agama tertentu.', 'Kota Bogor'),
(22, 'Sugar Planner', 'Graha Yasa no : D9 Ungaran', '082137425401', 'Hiasan dekorasi, Event Decor, Perencanaan acara, Desain bunga', 'Kota Semarang'),
(23, 'Point One Wedding Organizer', 'Tambak Mas 19 No 76', '087832041313', 'Persiapan daftar tamu, Pilihan venue, Perencanaan resepsi', 'Kota Salatiga'),
(24, 'Alfida Wedding', 'Jl Damar VI Terusan No 12, Pekayon Jaya, Bekasi Selatan', '081210941212', 'Resepsi, Akad nikah, Prewedd, Garden Party', 'Kota Bekasi'),
(25, 'Red Hat Organizer', 'Taman Bromo Jl. Gunung Merak No.9 Lippo Village', '085210456789', 'Wedding Planner, Wedding Consultant, Wedding Organizer, Entertainment & Photobooth', 'Kota Bekasi'),
(26, 'Lily Wedding Services', 'Jalan Raya Uluwatu 97x , Badung', '08589663125', 'Pilihan venue, Perencanaan resepsi', 'Kota Denpasar'),
(27, 'Piong Wedding', 'Jl. Raya Kalimulya No.95', '08545698712', 'ersiapan daftar tamu, Pilihan venue, Perencanaan resepsi', 'Kota Depok'),
(28, 'My Dream Wedding Organizer', 'Perum Griya Mangli Blok O No. 7', '08567718886', 'Persiapan daftar tamu, Pilihan venue, Perencanaan resepsi, Gaya dan Konsep Pernikahan', 'Kabupaten Jember'),
(29, 'Kanaya Wedding Planner', 'Jl. Lumbu Timur Raya no 30 Rt.01/32, Kel. Bojong Rawalumbu', '021-0997867', 'Daftar detail tugas, Persiapan daftar tamu, Pilihan venue, Perencanaan resepsi', 'Kota Bekasi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD PRIMARY KEY (`id_konsumen`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `tb_kota`
--
ALTER TABLE `tb_kota`
  ADD PRIMARY KEY (`kab_kota`),
  ADD UNIQUE KEY `id_kota` (`id_kota`);

--
-- Indexes for table `tb_vendor`
--
ALTER TABLE `tb_vendor`
  ADD PRIMARY KEY (`id_vendor`),
  ADD KEY `id_wo` (`id_wo`);

--
-- Indexes for table `tb_wo`
--
ALTER TABLE `tb_wo`
  ADD PRIMARY KEY (`id_wo`),
  ADD UNIQUE KEY `nama_wo` (`nama_wo`),
  ADD KEY `kab_kota` (`kab_kota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  MODIFY `id_konsumen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb_kota`
--
ALTER TABLE `tb_kota`
  MODIFY `id_kota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_vendor`
--
ALTER TABLE `tb_vendor`
  MODIFY `id_vendor` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tb_wo`
--
ALTER TABLE `tb_wo`
  MODIFY `id_wo` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_konsumen`
--
ALTER TABLE `tb_konsumen`
  ADD CONSTRAINT `tb_konsumen_ibfk_1` FOREIGN KEY (`id_vendor`) REFERENCES `tb_vendor` (`id_vendor`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_vendor`
--
ALTER TABLE `tb_vendor`
  ADD CONSTRAINT `tb_vendor_ibfk_1` FOREIGN KEY (`id_wo`) REFERENCES `tb_wo` (`id_wo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_wo`
--
ALTER TABLE `tb_wo`
  ADD CONSTRAINT `tb_wo_ibfk_1` FOREIGN KEY (`kab_kota`) REFERENCES `tb_kota` (`kab_kota`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
