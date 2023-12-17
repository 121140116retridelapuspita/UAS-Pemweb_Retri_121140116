<?php
include 'connnetion.php';

// Memulai session
session_start();

$dataHandler = new DataMakanan($conn);

// Parsing data dari variabel global $_POST
$nama = $_POST['nama'];
$penjelasan = $_POST['penjelasan'];
$jenis = $_POST['jenis'];
$rating = $_POST['rating'];

// Simpan jenis browser pengguna
$jenis_browser = $_SERVER['HTTP_USER_AGENT'];

// Simpan alamat IP pengguna
$alamat_ip = $_SERVER['REMOTE_ADDR'];

$dataHandler->adddata($nama, $penjelasan, $jenis, $rating, $_FILES["foto"], $jenis_browser, $alamat_ip);

// Simpan informasi pengguna ke dalam session
$_SESSION['last_action'] = time();

$conn->close();
?>
