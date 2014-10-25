<?php 
	$image_1 = imagecreatefrompng('img/chart.png');
	// $image_2 = imagecreatefrompng('img/img2.png');
	$image_2 = imagecreatefromgif('img/img4.gif');
	imagealphablending($image_2, true);
	imagesavealpha($image_2, true);
	imagecopy($image_1, $image_2, 180, 180, 0, 0, 150, 150);

	imagepng($image_1,'img/img.png');
?>