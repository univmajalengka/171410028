<html>
<?php include "koneksi.php" ?>
<head>
<title></title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
	<center><h3>Data Kelas</h3></center><br/>
		<a href="index.php?page=input_kls" class="btn btn-primary">
	<span class="glyphicon glyphicon-plus"></span> Tambah Data </a>
<br/><br/>
	<center><table class="table table-bordered"  border="1">
<thead> <tr>
		<th>ID KELAS</th>
		<th>NAMA KELAS</th>
		<th> GURU</th>
	</tr>
</thead>
<tbody>
<?php 

	$ambil= $conn->query("SELECT * FROM kelas"); ?>
		<?php while($d = $ambil-> fetch_assoc()){ ?>
<tr>
		<td><?php echo $d['idkelas']; ?></td>
		<td><?php echo $d['nama_kelas']; ?></td>
		<td><?php echo $d['idguru']; ?></td>
		<td>
		<a class="btn btn-primary" href="edit.php?idkelas=<?php echo $d['idkelas']; ?>">Edit</a>
		<a class="btn btn-danger" href="delete.php?idkelas=<?php echo $d['idkelas']; ?>">Hapus</a>
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