<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webdela";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}

class DataMakanan {
    private $conn;

    public function __construct($conn) {
        $this->conn = $conn;
    }

    public function adddata($nama, $penjelasan, $jenis, $rating, $foto, $jenis_browser, $alamat_ip) {
        $target_dir = "img/";
        $target_file = $target_dir . basename($foto["name"]);
        
        // Menghindari konflik nama file dengan menggabungkan timestamp
        $target_file = $target_dir . time() . "_" . basename($foto["name"]);

        move_uploaded_file($foto["tmp_name"], $target_file);

        $query = $this->conn->prepare("INSERT INTO tabelmakanan (nama, penjelasan, jenis, rating, foto, jenis_browser, alamat_ip) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $query->bind_param("sssssss", $nama, $penjelasan, $jenis, $rating, $target_file, $jenis_browser, $alamat_ip);
        $query->execute();
        $query->close();
    }

    public function deletedata($id, $alamat_ip) {
        // Menambahkan LIMIT 1 untuk memastikan hanya satu baris yang dihapus
        $query = $this->conn->prepare("DELETE FROM tabelmakanan WHERE id = ? AND alamat_ip = ? LIMIT 1");
        $query->bind_param("is", $id, $alamat_ip);
        $query->execute();
        $query->close();
    }
}
?>
