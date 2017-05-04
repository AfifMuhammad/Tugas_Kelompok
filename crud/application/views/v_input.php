<!DOCTYPE html>
<html>
<head>
	<title>Crud</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="FaberNainggolan">
    <!-- Bootstrap core CSS -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../assets/css/style.css" rel="stylesheet">
</head>
<body>
	<center>
		<h3>Tambah data baru</h3>
	</center>
	<form action="<?php echo base_url(). 'crud/tambah_aksi'; ?>" method="post">
		<table style="margin:20px auto;">
			<tr>
				<td><input class="form-control" type="text" name="nama" placeholder="Nama"></td>
			</tr>
			<tr>
				<td><input class="form-control" type="text" name="alamat" placeholder="Alamat"></td>
			</tr>
			<tr>
				<td><button class="btn btn-lg btn-primary btn-block" type="submit" value="Tambah">Simpan</button></td>
			</tr>
		</table>
		<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	</form>	
	<script src="../assets/js/jquery.min.js"></script>
    <script src="../assets/js/bootstrap.min.js"></script>
</body>
</html>