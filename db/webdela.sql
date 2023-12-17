-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Des 2023 pada 22.06
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webdela`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tabelmakanan`
--

CREATE TABLE `tabelmakanan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `penjelasan` varchar(500) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_browser` varchar(200) NOT NULL,
  `alamat_ip` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tabelmakanan`
--

INSERT INTO `tabelmakanan` (`id`, `nama`, `penjelasan`, `jenis`, `rating`, `foto`, `jenis_browser`, `alamat_ip`) VALUES
(46, 'Rendang', ' Rendang adalah sebuah hidangan khas Indonesia yang terkenal karena rasa kaya rempah-rempah dan cita rasa yang mendalam. Hidangan ini berasal dari Minangkabau, Sumatra Barat, dan telah menjadi salah satu makanan Indonesia yang paling populer di dunia.', 'Makanan Ringan', 4, 'img/1702844906_1.webp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(47, 'Pempek', 'Pempek adalah hidangan khas Palembang, Sumatra Selatan, Indonesia. Hidangan ini terkenal karena adonan ikan yang kenyal dan cita rasa saus cuko yang khas. Pempek biasanya terbuat dari ikan tenggiri yang digiling halus dan dicampur dengan tepung sagu atau tepung kanji, serta bumbu-bumbu lainnya seperti garam, bawang putih, dan penyedap rasa.', 'Makanan Ringan', 4, 'img/1702845060_2.webp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(48, 'Nasi Goreng', 'Nasi goreng adalah hidangan khas Indonesia yang terdiri dari nasi yang digoreng bersama bumbu-bumbu tertentu. Hidangan ini sering dianggap sebagai salah satu makanan nasional Indonesia dan sangat populer di seluruh negeri. Setiap daerah atau rumah tangga mungkin memiliki resep nasi goreng yang sedikit berbeda, dan bisa dimodifikasi sesuai selera.', 'Makanan Berat', 3, 'img/1702845111_nasigoreng.webp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(49, 'Gudeg', 'Gudeg adalah hidangan khas Yogyakarta dan Jawa Tengah, Indonesia. Hidangan ini terkenal karena menggunakan kelapa muda yang dimasak bersama nangka muda dan dimasak dengan bumbu khas, menghasilkan rasa yang unik dan lezat. Gudeg umumnya disajikan sebagai hidangan utama, seringkali dengan tambahan nasi, ayam, telur, dan sambal.', 'Makanan Ringan', 3, 'img/1702845162_5.webp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1'),
(50, 'Sarabba', 'Minuman khas nusantara berikutnya adalah Sarabba. Minuman yang berasal dari Makassar, Sulawesi Selatan ini dikenal sebagai minuman penghangat dan penambah stamina. Karena minuman ini terbuat dari ramuan jahe, gula, santan, dan kuning telur. Sarabba punya cita rasa pedas rempah, dan cocok sekali diminum saat malam hari atau saat cuaca hujan. Di Makassar, Sarabba cocok diminum sambil makan pisang goreng.', 'Minuman', 4, 'img/1702845283_Ragam Minuman khas Nusantara_Sarabba_Shutterstock 1361075450_Ariyani Tedjo.jpg', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tabelmakanan`
--
ALTER TABLE `tabelmakanan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tabelmakanan`
--
ALTER TABLE `tabelmakanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
