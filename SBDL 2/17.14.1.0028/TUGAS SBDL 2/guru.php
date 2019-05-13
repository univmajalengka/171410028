<html>
<?php include "koneksi.php" ?>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<center><h3>Data Guru</h3></center><br/>
		<a href="index.php?page=input_guru" class="btn btn-primary">
	<span class="glyphicon glyphicon-plus"></span> Tambah Data </a>
<br/><br/>
	<center><table class="table table-bordered"  border="1">
<thead> <tr>
		<th>ID GURU</th>
		<th>NIP</th>
		<th>NAMA GURU</th>
		<th>JENIS KELAMIN </th>
		<th>ALAMAT</th>
	</tr>
</thead>
<tbody>
<?php 

	$ambil= $conn->query("SELECT * FROM guru"); ?>
		<?php while($d = $ambil-> fetch_assoc()){ ?>
<tr>
		<td><?php echo $d['idguru']; ?></td>
		<td><?php echo $d['nip']; ?></td>
		<td><?php echo $d['nama_guru']; ?></td>
		<td><?php echo $d['jenis_kelamin']; ?></td>
		<td><?php echo $d['alamat']; ?></td>
		<td>
		<a class="btn btn-primary" href="edit.php?idguru=<?php echo $d['idguru']; ?>">Edit</a>
		<a class="btn btn-danger" href="delete.php?idguru=<?php echo $d['idguru']; ?>">Hapus</a>
		</td>
</tr>

<?php 
}
?>
<tbody>
</table>
</center>
</body>
</html>