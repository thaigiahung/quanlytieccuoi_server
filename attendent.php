<?php  
	//Generate code
	//http://stackoverflow.com/questions/1612062/unicode-encoding-and-decoding-issues-in-qrcode
	//http://chart.apis.google.com/chart?cht=qr&chs=500x500&choe=UTF-8&chl=%EF%BB%BFTh%C3%A1i+H%C6%B0ng,4

	include_once("DataProvider.php");

	$sql = "SELECT g.`id`, g.`name`, g.`group`, g.`description`, t.`name` AS 'table_name'
    			FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id 
    							LEFT JOIN `table` t ON t.id = gt.id_table
				WHERE t.`name` IS NULL
    			ORDER BY g.id";
	$result = DataProvider::ExecuteQuery($sql);

	$data = array();
	while($row = mysql_fetch_array($result))
  	{
  		array_push($data, $row);
	}

	header('Content-Type: application/json');
	header('Access-Control-Allow-Origin:*');
	echo json_encode($data);
?>