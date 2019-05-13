<html>
<?php include "koneksi.php" ?>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<center><h3>Data Mata Pelajaran</h3></center><br/>
		<a href="index.php?page=input_kls" class="btn btn-primary">
	<span class="glyphicon glyphicon-plus"></span> Tambah Data </a>
<br/><br/>
	<center><table class="table table-bordered"  border="1">
<thead> <tr>
		<th>ID  MATPEL</th>
		<th>NAMA PELAJARAN</th>
		<th>ID GURU</th>
		<th>ID NILAI</th>
	</tr>
</thead>
<tbody>
<?php 

	$ambil= $conn->query("SELECT * FROM mata pelajaran"); ?>
		<?php while($d = $ambil-> fetch_assoc()){ ?>
<tr>
		<td><?php echo $d['idmatapelajaran']; ?></td>
		<td><?php echo $d['nama_mata_pelajaran']; ?></td>
		<td><?php echo $d['idguru']; ?></td>
		<td><?php echo $d['idnilai']; ?></td>
		<td>
		<a class="btn btn-primary" href="edit.php?idmatapelajaran=<?php echo $d['idmatapelajaran']; ?>">Edit</a>
		<a class="btn btn-danger" href="delete.php?idmatapelajaran=<?php echo $d['idmatapelajaran']; ?>">Hapus</a>
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