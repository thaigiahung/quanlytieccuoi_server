<?php  
	//Generate code
	//http://stackoverflow.com/questions/1612062/unicode-encoding-and-decoding-issues-in-qrcode
	//http://chart.apis.google.com/chart?cht=qr&chs=500x500&choe=UTF-8&chl=%EF%BB%BFTh%C3%A1i+H%C6%B0ng,4

	include_once("DataProvider.php");
	$code = $_POST['code'];
	echo $code."<br>";
	$arr = explode(",", $code);
	$sql = "INSERT INTO `guest_table`(`id_table`, `guest`) VALUES (".$arr[1].",'".$arr[0]."')";
	echo $sql;
	DataProvider::ExecuteQuery($sql);

	$sql = "SELECT COUNT(*) AS num_of_guest FROM `guest_table` WHERE id_table = ".$arr[1];
	$result = DataProvider::ExecuteQuery($sql);
	$row = mysql_fetch_array($result);

	$status = 0;
	if($row['num_of_guest'] >= 10)
		$status = 1;

	$sql = "UPDATE `table` SET `current_num_of_guest`=".$row['num_of_guest'].",`status`=$status WHERE id = ".$arr[1];
	DataProvider::ExecuteQuery($sql);
?>