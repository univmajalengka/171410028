<html>
<head>
	<title>My web | Teknik Informatika Universitas Majalengka</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
</head>
<body>
<div class="panel panel-primary">
	<div class="panel panel-heading">
		<center>
		<h2>Sistem Informasi Sekolah</h2>
		</center>
		</div>
			<div class="container">
				<ul class="breadcrumb">
					<li><a href="index.php?page=home">HOME</a></li>
					<li><a href="index.php?page=kelas">KELAS</a></li>
					<li><a href="index.php?page=guru">GURU</a></li>
					<li><a href="index.php?page=mata_pelajaran">MATA PELAJARAN</a></li>
				</ul>
		<div class="jumbotron">
<?php
	if(isset($_GET['page'])){
		$page = $_GET['page'];
 
		switch ($page) {
			case 'home':
				include "home.php";
				break;
			case 'kelas':
				include "kelas.php";
				break;
			case 'input_kls':
				include "input_kls.php";
				break;
				case 'guru':
				include "guru.php";
				break;
			case 'input_guru':
				include "input_guru.php";
				break;
				case 'mata_pelajaran':
				include "mata_pelajaran.php";
				break;
			case 'input_mata_pelajaran':
				include "input_mata_pelajaran.php";
				break;
			
			default:
				echo "<center><h3>Maaf. Halaman tidak di temukan !</h3></center>";
				break;
		}
	}else{
		include "home.php";
	}
 
	 ?>
	 </div>
	<b><br><div class= "panel panel-primary">
			<div class= "panel-heading">
				<h3 class= "panel-title">copyright &copy; Babarengan Pikeun Jadi Sarjana - Universitas Majalengka</h3></b>
			</div>
		</div>
</body>
</html>