<form method="post" enctype="multipart/form-data">
    <input type="file" name="files[]" id="files" multiple="" directory="" webkitdirectory="" mozdirectory="">
    <input type="submit" name="submit" value="Import" /><br/>
    <label><input type="checkbox" name="drop" value="1" /> <u>Kosongkan tabel sql terlebih dahulu.</u> </label>
</form>
<?php 
//koneksi ke database, username,password  dan namadatabase menyesuaikan 
mysql_connect('localhost', 'root', '');
mysql_select_db('kelompok');
 
//memanggil file excel_reader
require "excel_reader.php";
			  	if ($_SERVER['REQUEST_METHOD'] == 'POST'){
			  		$drop = isset( $_POST["drop"] ) ? $_POST["drop"] : 0 ;
				    if($drop == 1){
				//             kosongkan tabel pegawai
				             $truncate ="TRUNCATE TABLE import";
				             mysql_query($truncate);
				    };
				    foreach ($_FILES['files']['name'] as $j => $name) {
				        if (strlen($_FILES['files']['name'][$j]) > 1) {
				            if (move_uploaded_file($_FILES['files']['tmp_name'][$j],$name)) {

				                chmod($_FILES['files']['name'][$j],0777);
						    
						    	$data = new Spreadsheet_Excel_Reader($_FILES['files']['name'][$j],$name,false);
						    	echo $name;
						    
						//    menghitung jumlah baris file xls
						    	$baris = $data->rowcount($sheet_index=0);

    
//    import data excel mulai baris ke-2 (karena tabel xls ada header pada baris 1)
?>
<table border="1">

	<thead>
		<th>npsn</th>
		<th>nama</th>
		<th>alamat</th>
		<th>jenjang</th>
		<th>status</th>
		<th>akreditasi</th>
		<th>telepon</th>
	</thead>
	<tbody>
	<?php
    for ($i=2; $i<=$baris; $i++)
    {
//       membaca data (kolom ke-1 sd terakhir)
      $npsn           = $data->val($i, 1);
      $nama   = $data->val($i, 2);
      $alamat  = $data->val($i, 3);
      $desa  = $data->val($i, 4);
      $kec  = $data->val($i, 5);
      $kab  = $data->val($i, 6);
      $jenjang  = $data->val($i, 7);
      $status  = $data->val($i, 8);
      $akreditasi  = $data->val($i, 9);
      $telepon  = $data->val($i, 10);
 
//      setelah data dibaca, masukkan ke tabel pegawai sql
      $query = "INSERT into import (npsn,nama,alamat,desa,kec,kab,jenjang,status,akreditasi,telepon)
      			values('$npsn','$nama','$alamat','$desa','$kec','$kab','$jenjang','$status','$akreditasi','$telepon')";
      $hasil = mysql_query($query);
      	echo "<tr>
			<td> ".$npsn."</td>
			<td> ".$nama." </td>
			<td> ".$alamat." </td>
			<td> ".$jenjang." </td>
			<td> ".$status." </td>
			<td> ".$akreditasi." </td>
			<td> ".$telepon." </td>
		</tr>";
    }
    ?>
     </tbody>
</table>
     
<?php
//    hapus file xls yang udah dibaca
    unlink($_FILES['files']['name'][$j]);
    			}
 		}
 	}
}
 
?>
 
