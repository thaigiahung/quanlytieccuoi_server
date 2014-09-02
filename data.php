<?php  
	include_once("DataProvider.php");

	$data = array();
	$arr = array();

	$sql = "SELECT * FROM quan_ly_tiec_cuoi.`table`";
	$result = DataProvider::ExecuteQuery($sql);
	
	while ($row = mysql_fetch_array($result)) {
		$item = array();
		$item['id'] = $row['id'];
		$item['current_num_of_guest'] = $row['current_num_of_guest'];
		$item['status'] = $row['status'];

		array_push($data, $item);
	}
	// $data['count'] = count($arr);
	// $data['data'] = $arr;

	echo json_encode($data);
?>