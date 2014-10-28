<?php  
	include_once("DataProvider.php");

	$data = array();

	$id = $_POST['code'];

	$sql = "SELECT g.name as guest 
			FROM `guest_table` gt JOIN `guest` g ON g.id = gt.id_guest
			WHERE id_table = ".$id;
	$result = DataProvider::ExecuteQuery($sql);
	if(count($result) > 0){
		while ($row = mysql_fetch_array($result)) {
			array_push($data, $row['guest']);
		}
	}

	echo json_encode($data);
?>