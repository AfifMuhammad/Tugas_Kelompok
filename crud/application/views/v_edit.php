<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="FaberNainggolan">
    <!-- Bootstrap core CSS -->
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../../assets/css/style.css" rel="stylesheet">
  </head>
 
  <body>
	<center>
		<h3>Edit Data</h3>
	</center>
	<?php foreach($anggota as $u){ ?>
	<div class="container">

	<form class="form-signin" action="<?php echo base_url(). 'crud/update'; ?>" method="post">
		

	<div class="container">
      <form class="form-signin">
      <table style="margin:20px auto;">
      	<input type="hidden" name="id" value="<?php echo $u->id ?>">
      	<tr>
      		<td>Nama</td>
      		<td><input type="text" name="nama" class="form-control" required autofocus value="<?php echo $u->nama ?>"></td>
      	</tr>
        <tr>
        	<td>Alamat</td>
        	<td><input type="text" name="alamat" class="form-control" required value="<?php echo $u->alamat ?>"></td>
        </tr>
        <tr>
        	<td></td>
        	<td><button class="btn btn-lg btn-primary btn-block" type="submit" value="Simpan">Simpan</button></td>
        </tr>
      </form>
      </table>
    </div> 
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


	</form>	
	</div>
	<?php } ?>
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="../../assets/js/bootstrap.min.js"></script>

  </body>
</html>