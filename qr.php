<?php 
	for($i = 1; $i <= 500; $i++)
	{
		$data="size=40&data=http%3A%2F%2Fgiahung.net%2F%23$i&dataType=url&color=156B07&icon=www-2&imageType=custom&imageUrl=http%3A%2F%2Fwww.qrcode-monkey.com%2Fuploads%2F75d1a029f9c5699079726ef6b33117e1.png&effect=0";
		$url="http://www.qrcode-monkey.com/qr-code-generator.php";

		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_POST, 1);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type: application/x-www-form-urlencoded','Host:www.qrcode-monkey.com','Origin:http://www.qrcode-monkey.com','User-Agent:Mozilla/5.0 (Windows NT 6.3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/38.0.2125.104 Safari/537.36','X-Requested-With:XMLHttpRequest'));
		curl_setopt($ch, CURLOPT_POSTFIELDS, $data);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true); 
		$result = curl_exec($ch);

		$start = strpos($result, 'temp');
		$end = strpos($result, '.png')+4;
		echo $start."\n".$end."\n";
		$img = substr($result, $start, $end-$start);
		$img = str_replace('\\', '', $img);
		echo "Downloading ".$i."\n";
		
		//Download
		$ch = curl_init ('http://www.qrcode-monkey.com/'.$img);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
		curl_setopt($ch, CURLOPT_BINARYTRANSFER,1);
		$data = curl_exec($ch);
		curl_close ($ch);

		$fp = fopen('img/qr/'.$i.'.png','x');
		fwrite($fp, $data);
		fclose($fp);
	}
?>