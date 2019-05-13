<?php 
include 'koneksi.php';
$IDKLS = $_POST['IDKLS'];
$Nama = $_POST['Nama'];
$IDGURU = $_POST['IDGURU'];

mysql_query("INSERT INTO petugas VALUES(NULL,'$IDKLS','$Nama','$IDGURU')");
 
header("location:index.php?pesan=input");
?>