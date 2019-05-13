<?php

include 'koneksi.php';

$idkelas = $_POST['idkelas'];
$nama_kelas = $_POST['nama_kelas'];
$idguru = $_POST['idguru'];


$query = "INSERT INTO kelas VALUES ('$idkelas','$nama_kelas','$idguru')";
$result = mysqli_query($conn, $query);
include 'kelas.php';
if($result){
	echo"<script>
			alert('input data sukses');
	</script>";
} else {
	echo"<script>
			alert('input data gagal');
	</script>";
}
?>