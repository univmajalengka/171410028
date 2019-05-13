<?php 
include 'koneksi.php';
$idkelas = $_POST['idkelas'];
$Namakelas = $_POST['Nama_kelas'];
$idguru = $_POST['idguru'];

mysql_query("INSERT INTO kelas VALUES(NULL,'$IDKLS','$Nama','$IDGURU')");
 
header("location:kelas.php?pesan=input");