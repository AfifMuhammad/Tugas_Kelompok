<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="FaberNainggolan">
    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
  </head>
 
  <body>
    <!-- Static navbar -->

	<center><h1>CRUD</h1></center>
	<center><?php echo anchor('crud/tambah','Tambah Data'); ?></center>
	<table style="margin:20px auto;">
		<table class="table">
		<tr>
			<th>No</th>
			<th>Nama</th>
			<th>Alamat</th>
			<th>Action</th>
		</tr>
		<?php 
		$no = 1;
		foreach($anggota as $u){ 
		?>
		<tr>
			<td><?php echo $no++ ?></td>
			<td><?php echo $u->nama ?></td>
			<td><?php echo $u->alamat ?></td>
			<td>
			      <a class="btn btn-lg btn-primary" href="<?=base_url()?>crud/edit/<?=$u->id?>" role="button">Edit</a>
			      		<a class="btn btn-lg btn-primary" href="<?=base_url()?>crud/hapus/<?=$u->id?>" role="button">Hapus</a>
			</td>
		</tr>
		<?php } ?>
		</table>
	</table>
	</div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
  </body>
</html>