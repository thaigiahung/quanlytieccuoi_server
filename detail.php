<?php  
	include_once("DataProvider.php");

	$data = array();

	$id = $_POST['id'];

	$sql = "SELECT guest FROM quan_ly_tiec_cuoi.`guest_table` WHERE id_table = ".$id;
	$result = DataProvider::ExecuteQuery($sql);
	if(count($result) > 0){
		while ($row = mysql_fetch_array($result)) {
			array_push($data, $row['guest']);
		}
	}

	echo json_encode($data);
?>