<?php
	class DataProvider
	{
		public static function ExecuteQuery($sql)
		{
			$connection = mysql_connect("localhost","root","");
			
			mysql_select_db("quan_ly_tiec_cuoi",$connection);
			
			mysql_query("set names 'utf8'");
			
			$result = mysql_query($sql,$connection);
			
			mysql_close($connection);
			
			return $result;
		}
	}
?>