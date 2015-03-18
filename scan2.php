<?php  
	//Generate code
	//http://stackoverflow.com/questions/1612062/unicode-encoding-and-decoding-issues-in-qrcode
	//http://chart.apis.google.com/chart?cht=qr&chs=500x500&choe=UTF-8&chl=%EF%BB%BFTh%C3%A1i+H%C6%B0ng,4

	include_once("DataProvider.php");
	$code = $_POST['code'];
	$money = $_POST['money'];

	//Đánh dấu khách đã đến
	$sql = "UPDATE `guest` SET money = ".$money." WHERE id = ".$code;
	DataProvider::ExecuteQuery($sql);

	echo "Xong";
?>