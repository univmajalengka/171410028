<form class="form-horizontal" action="simpan_anggota1.php" method="POST">
			<center><h3>Input Data Admin</h3></center><br/>
				<div class="form-group">
					<label class="control-label col-sm-2">
						ID GURU :
					</label>
					<div class="col-sm-4">
						<input type="text" name="idguru" placeholder="Masukan ID Guru" required><br>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">
						NIP :
					</label>
					<div class="col-sm-4">
						<input type="text" name="guru" placeholder="Masukan Nip " required><br>
					</div>
				</div>
				
				<div class="form-group">
					<label class="control-label col-sm-2">
						 NAMA GURU	:
					</label>
					<div class="col-sm-4">
						<select name="nama_guru" id="jenis_kelamin" onchange="changeValue(this.value)"required>

				<div class="form-group">
					<label class="control-label col-sm-2">
						 JENIS KELAMIN	:
					</label>
					<div class="col-sm-4">
						<select name="jenis_kelamin" id="jenis_kelamin" onchange="changeValue(this.value)"required>

				<div class="form-group">	
					<label class="control-label col-sm-2">
						ALAMAT :
					</label>
					<div class="col-sm-4">
						<select name="alamat" id="alamat" onchange="changeValue(this.value)" required>						
							<option value="">-- Pilih Guru --</option>
							<?php
							include 'koneksi.php';
							$result = mysqli_query("select * from guru");   
							$jsArray = "var dtguru = new Array();\n";       
							while ($row = mysqli_fetch_array($result)) {   
							echo '<option value="' . $row['idguru'] . '">' . $row['nama_guru'] . '</option>'; 
							}
							?>
						</select><br>
					</div>
				</div>
				
				<input type="submit" class="btn btn-primary" value="Simpan Data" >
				<input type="reset" name="reset" class="btn btn-danger" value="reset" >
			</form>