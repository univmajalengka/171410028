<?php 
	include 'koneksi.php';
 ?>
<?php 
$idkls = $_POST['idkelas'];
$nama = $_POST['nama_kelas'];
$idgr = $_POST['idguru'];

$s=mysql_query("INSERT INTO kelas VALUES('$idkls','$nama','$idgr')") or die(mysql_error());{
	?>
	<script>
		alert("Data Kelas Berhasil Disimpan");
		window.location.href='index.php?page=kelas';

	</script>
	<?php 
}
?>
<?php 
$idguru = $_POST['idguru'];
$nip = $_POST['nip'];
$namaguru = $_POST['nama_guru'];
$jeniskelamin = $_POST['jenis_kelamin'];
$alamat = $_POST['alamat'];


$s=mysql_query("INSERT INTO kelas VALUES('$idguru','$nip','$nama_guru','$jenis_kelamin','$alamat')") or die(mysql_error());{
	?>
	<script>
		alert("Data Kelas Berhasil Disimpan");
		window.location.href='index.php?page=guru';

	</script>
	<?php 
}

 ?>