<?php

include 'koneksi.php';

$idkelas = $_POST['idkelas'];
$namakelas = $_POST['nama_guru'];
$idguru = $_POST['idguru'];


$query = "INSERT INTO kelas VALUES ('$idkelas','$namakelas','$idguru')";
$result = mysqli_query($conn, $query);

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