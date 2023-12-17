<?php
include 'connnetion.php';

// Memulai session
session_start();

$dataHandler = new DataMakanan($conn);

// Parsing data dari variabel global $_POST
$id = $_POST['id'];

// Simpan alamat IP pengguna
$alamat_ip = $_SERVER['REMOTE_ADDR'];

$dataHandler->deletedata($id, $alamat_ip);

// Simpan informasi pengguna ke dalam session
$_SESSION['last_action'] = time();

$conn->close();
?>
