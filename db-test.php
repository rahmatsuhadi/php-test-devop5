<?php
$host = "mysql-server-core";
$username = "root";    
$password = "2wsx1qaz";
$dbname = "php_db";     

$koneksi = new mysqli($host, $username, $password, $dbname);

if ($koneksi->connect_error){
    die("Koneksi gagal: ". $koneksi->connect_error);
}

echo "Koneksi berhasil<br>";

// Query untuk mengambil data dari tabel users
$sql = "SELECT id, name, email FROM users";
$result = $koneksi->query($sql);

// Menampilkan data
if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Nama: " . $row["name"]. " - Email: " . $row["email"]. "<br>";
    }
} else {
    echo "0 hasil";
}

$koneksi->close();
?>
