<?php
	class DataProvider
	{
		public static function ExecuteQuery($sql)
		{
			$connection = mysql_connect("sql312.byethost14.com","b14_15264799","17092404");
			
			mysql_select_db("b14_15264799_qltc",$connection);
			
			mysql_query("set names 'utf8'");
			
			$result = mysql_query($sql,$connection);
			
			mysql_close($connection);
			
			return $result;
		}
	}
?>