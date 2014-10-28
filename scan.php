<?php  
	//Generate code
	//http://stackoverflow.com/questions/1612062/unicode-encoding-and-decoding-issues-in-qrcode
	//http://chart.apis.google.com/chart?cht=qr&chs=500x500&choe=UTF-8&chl=%EF%BB%BFTh%C3%A1i+H%C6%B0ng,4

	include_once("DataProvider.php");
	$code = $_POST['code'];

	//Đánh dấu khách đã đến
	$sql = "UPDATE `guest_table` SET status = 1 WHERE id_guest = ".$code;
	echo $sql."<br>";
	DataProvider::ExecuteQuery($sql);

	//Tìm bàn của khách này
	$sql = "SELECT t.* 
			FROM `guest_table` gt LEFT JOIN `table` t ON t.id = gt.id_table 
			WHERE gt.id_guest = ".$code;
			echo $sql."<br>";
	$result = DataProvider::ExecuteQuery($sql);
	$table = mysql_fetch_array($result);

	//Đếm số lượng khách đã đến của bàn đó
	$sql = "SELECT COUNT(*) AS num_of_guest FROM `guest_table` WHERE status = 1 AND id_table = ".$table['id'];
	echo $sql."<br>";
	$result = DataProvider::ExecuteQuery($sql);
	$row = mysql_fetch_array($result);

	$status = 0;
	if($row['num_of_guest'] >= $table['total_num_of_guest'])
		$status = 1;

	//Cập nhật current_num_of_guest của bàn đó
	$sql = "UPDATE `table` SET `current_num_of_guest`=".$row['num_of_guest'].",`status`=$status WHERE id = ".$table['id'];
	echo $sql."<br>";
	DataProvider::ExecuteQuery($sql);

	echo "Xong";
?>