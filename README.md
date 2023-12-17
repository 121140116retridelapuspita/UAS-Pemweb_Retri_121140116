# TUGAS BESAR UAS PEMWEB
# Biodata
Nama  : Retri Dela Puspita
NIM   : 121140116
Kelas : RB

# Instruksi Menggunakan
1. Pastikan PC Anda dilengkapi dengan web server, dalam hal ini, saya menggunakan XAMPP.
2. Jika belum terpasang, instal XAMPP di komputer Anda, dan selanjutnya jalankan program tersebut.
3. Untuk memastikan kelancaran penggunaan, simpan semua file terkait di dalam folder 'htdocs' pada instalasi XAMPP.
4. Saya telah menyediakan file database dengan nama 'webdela' di dalam folder 'db/webdela.sql'. Lakukan proses import file ini ke dalam sistem database MySQL Anda.
5. Untuk membuat database dengan nama 'webdela', gunakan perintah SQL berikut: "CREATE DATABASE webdela". Sebagai alternatif, Anda dapat merujuk pada perintah di bawah ini.

# Langkah-langkah dalam membuat basis data dengan code SQL
## 1.	Membuat database
CREATE DATABASE webdela;

## 2.	Membuat Table
CREATE TABLE `tabelmakanan` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `penjelasan` varchar(500) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `jenis_browser` varchar(200) NOT NULL,
  `alamat_ip` varchar(160) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

## 2. Menambahkan data menggunakan code SQL
INSERT INTO `tabelmakanan` (`id`, `nama`, `penjelasan`, `jenis`, `rating`, `foto`, `jenis_browser`, `alamat_ip`) VALUES
(46, 'Rendang', ' Rendang adalah sebuah hidangan khas Indonesia yang terkenal karena rasa kaya rempah-rempah dan cita rasa yang mendalam. Hidangan ini berasal dari Minangkabau, Sumatra Barat, dan telah menjadi salah satu makanan Indonesia yang paling populer di dunia.', 'Makanan Ringan', 4, 'img/1702844906_1.webp', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36', '::1');


## 3.  Menampilkan data menggunakan SQL
SELECT * FROM `tabelmakanan`

## 4. Mengedit data dengan SQL
UPDATE `tabelmakanan` SET `nama` = 'Rendang Khas', `penjelasan` = 'Rendang adalah sebuah hidangan khas Indonesia yang terkenal karena rasa kaya rempah-rempah dan cita rasa yang mendalam. Hidangan ini berasal dari Minangkabau, Sumatra Barat, dan telah menjadi salah satu makanan Indonesia yang paling populer di dunia.' WHERE `tabelmakanan`.`id` = 46

## 5. Menghapus data dengan SQL
DELETE FROM tabelmakanan WHERE `tabelmakanan`.`id` = 46

