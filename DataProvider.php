<?php
	class DataProvider
	{
		public static function ExecuteQuery($sql)
		{
			/*$connection = mysql_connect("sql312.byethost14.com","b14_15264799","17092404");
			
			mysql_select_db("b14_15264799_qltc",$connection);*/

			$connection = mysql_connect("localhost","root","");
			
			mysql_select_db("quan_ly_tiec_cuoi",$connection);
			
			mysql_query("set names 'utf8'");
			
			$result = mysql_query($sql,$connection);
			
			mysql_close($connection);
			
			return $result;
		}

		public static function Redirect($url)
		{
			echo "<script type='text/javascript'>";
			echo "location='".$url."';";
			echo "</script>";	
		}

		public static function Utf8ToAscii($str){
		    if(!$str)
		        return $str;
		    $str = mb_strtolower(trim($str), 'utf-8');
		    $unicode = array(
		        'a'=>'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ',
		        'd'=>'đ',
		        'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
		        'i'=>'í|ì|ỉ|ĩ|ị',
		        'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
		        'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
		        'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
		    );
		    foreach($unicode as $nonUnicode=>$uni){
		        $str = preg_replace("/($uni)/i", $nonUnicode, $str);
		    }
		    return $str;
		}
	}
?>