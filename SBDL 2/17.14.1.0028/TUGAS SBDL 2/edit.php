<?php 
include 'koneksi.php';
 ?>
<body>
<table align="left" border="0">
<FORM METHOD="POST" action=".php">
<br>
<tr>
	<th></th>
	<th align="left"><h1>FORM EDIT DATA</h1></th>
<tr>
	<th align="right">Id Kelas :</th>
	<td><INPUT TYPE="text" name="idkelas"SIZE="30"></td>
</tr>
<tr>
	<th align="right">Nama Kelas :</th>
	<td><INPUT TYPE="text" name="nama_kelas" SIZE="30"></td>
</tr>
<tr>
	<th class="form-group">
					<label class="control-label col-sm-2">
						Nama Guru :
					</label>
					<th class="col-sm-4">
					
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

</br>
</br>
	<th align="right"></th>
	<th><a class="glyphicon glyphicon-plus" href="edit_user.php">Simpan</a>
		
</tr>
</table>
</form>
</body>
</html>