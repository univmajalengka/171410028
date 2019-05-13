<?php
include 'kelas.php';	
include 'edit.php';
if (isset($_POST['simpan'])) {
	
$idkelas = $_POST['idkelas'];
$namakelas = $_POST['nama_kelas'];
$namaguru = $_POST['nama_guru'];

$query = "UPDATE kelas SET idkelas = '$idkelas', namakelas = '$nama_kelas', namaguru = '$nama_guru' WHERE idkelas = '$_GET[idkelas]' ";

$tampil = mysqli_query($koneksi, $query);

	echo"<script>
			alert('Edit Data Sukses');
	</script>";
	echo "<meta http-equiv='refresh' content='1;url=index.php'>";
}
else {
		echo"<script>
			alert('edit data gagal');
	</script>";
	echo "<meta http-equiv='refresh' content='1;url=edit.php'>";
}

?>