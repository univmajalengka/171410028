<form class="form-horizontal" action="simpan_anggota1.php" method="POST">
			<center><h3>Input Data Admin</h3></center><br/>
				<div class="form-group">
					<label class="control-label col-sm-2">
						Id Kelas :
					</label>
					<div class="col-sm-4">
						<input type="text" name="idkelas" placeholder="Masukan ID Kelas" required><br>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">
						Nama Kelas:
					</label>
					<div class="col-sm-4">
						<input type="text" name="nama_kelas" placeholder="Masukan Nama Kelas" required><br>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">
						Nama Guru :
					</label>
					<div class="col-sm-4">
					
					<select name="idguru">
<?php
$con = mysqli_connect("localhost","root","","bootstrap");

//display values in combobox/dropdown
$result = mysqli_query($con,"SELECT * FROM guru ORDER BY nama_guru");
  while($row = mysqli_fetch_assoc($result))
   {
     echo "<option value='$row[idguru]'>$row[nama_guru]</option>";
    } 
?>
</select>
						<br>

					</div>
				</div>
				
				<input type="submit" class="btn btn-primary" value="Simpan Data" >
				<input type="reset" name="reset" class="btn btn-danger" value="reset" >
			</form>