<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8" />
	<title>Hưng &#9825; Thi</title>
	<meta name="description" content="ACME Dashboard Bootstrap Admin Template." />
	<meta name="author" content="Łukasz Holeczek" />
	<meta name="keyword" content="ACME, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina" />
	<!-- end: Meta -->
	
	<!-- start: Mobile Specific -->
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<!-- end: Mobile Specific -->
	
	<!-- start: CSS -->
	<link id="bootstrap-style" href="./css/bootstrap.css" rel="stylesheet" />
	<link href="./css/bootstrap-responsive.css" rel="stylesheet" />
	<link id="base-style" href="./css/style.css" rel="stylesheet" />
	<link id="base-style-responsive" href="./css/style-responsive.css" rel="stylesheet" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800&subset=latin,cyrillic-ext,latin-ext' rel='stylesheet' type='text/css' />
	
	<!-- end: CSS -->
	

	<!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
	<!--[if lt IE 9]>
	  	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<link id="ie-style" href="./css/ie.css" rel="stylesheet" />
	<![endif]-->
	
	<!--[if IE 9]>
		<link id="ie9style" href="./css/ie9.css" rel="stylesheet" />
	<![endif]-->
		
	<!-- start: Favicon -->
	<link rel="shortcut icon" href="./img/favicon.ico" />
	<!-- end: Favicon -->
		
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>

<body>
	<?php  
		include_once("DataProvider.php");

		if(!isset($_GET['id']))
		{
			DataProvider::Redirect("table.php");
		}

		if(isset($_GET['guest']))
		{
			$id_table = $_GET['id'];
			$id_guest = $_GET['guest'];

			//Xóa người này khỏi guest_table
			$sql = "DELETE FROM `guest_table` WHERE id_table = $id_table AND id_guest = $id_guest";
			DataProvider::ExecuteQuery($sql);

			//Đếm tổng số người của table này
			$sql = "SELECT COUNT(*) AS count FROM `guest_table` WHERE id_table = ".$id_table;
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			$count = $row['count'];

			//Update total_num_of_guest
			$sql = "UPDATE `table`
					SET `total_num_of_guest`=$count
					WHERE id = ".$id_table;
			DataProvider::ExecuteQuery($sql);

			DataProvider::Redirect("guest-table.php?id=".$id_table);	
		}
	?>
	
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="./guest.php"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Khách</span></a></li>	
						<li><a class="active" href="./table.php"><i class="fa-icon-hdd"></i><span class="hidden-tablet"> Bàn</span></a></li>
						<li><a href="./checkin.php"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Quét code</span></a></li>	
					</ul>
				</div>
			</div>
			<!-- end: Main Menu -->
			
			<noscript>
				<div class="alert alert-block span11">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>




			
			<!-- start: Content -->
			<div id="content" class="span11">
				
			<div class="row-fluid">
				
				<!-- Danh sách -->
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Danh sách khách mời</h2>
					</div>
					<div class="box-content">
						<?php	 
						$id_table = $_GET['id'];
						$sql = "SELECT g.`id`, g.`name`, g.`group`, g.`description`, t.`name` AS 'table_name', gt.`status`
								FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id 
												LEFT JOIN `table` t ON t.id = gt.id_table
								WHERE t.id = ".$id_table."
								ORDER BY g.id";
				        $result = DataProvider::ExecuteQuery($sql);
				        ?>
						<table class="table">
							  <thead>
								  <tr>
									  <th>Mã</th>
									  <th>Tên</th>
									  <th>Đàn</th>
									  <th>Bàn</th>
									  <th>Mô tả</th> 
									  <th>Trạng thái</th>                                
								  </tr>
							  </thead>   
							  <tbody>
							  	<?php			                   

							  	while($row = mysql_fetch_array($result))
							  	{
						  		?>
							  		<tr>
							  			<td><?php echo $row['id']; ?></td>
							  			<td><?php echo $row['name']; ?></td> 
							  			<td>
							  				<?php 
							  					switch ($row['group']) {
							  						case 0:
							  							echo 'Gái';
							  							break;
							  						case 1:
							  							echo 'Trai';
							  							break;
						  							case 2:
							  							echo 'Bạn chung';
							  							break;
							  					}
						  					?>
							  			</td>
							  			<td><?php echo $row['table_name']; ?></td>
							  			<td><?php echo $row['description']; ?></td>	
							  			<td>
							  				<?php 
							  					if($row['status'] == 1)
							  						echo "Đã tới";
							  					else
							  						echo "Chưa tới";
							  				?>
							  			</td>							  			
							  			<td><a href="guest-table.php?id=<?php echo $id_table; ?>&guest=<?php echo $row['id']; ?>">Xóa</a></td>
							  		</tr> 
						  		<?php
							  	}
							  	?>                               
							  </tbody>
						 </table>  				 
					</div>
				</div><!--/span-->
				<!-- End Danh sách -->	
			
			</div>	       
			<!-- end: Content -->


		</div><!--/#content.span10-->
	</div><!--/fluid-row-->


				       


				
				
		<div class="modal hide fade" id="myModal">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">×</button>
				<h3>Settings</h3>
			</div>
			<div class="modal-body">
				<p>Here settings can be configured...</p>
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">Close</a>
				<a href="#" class="btn btn-primary">Save changes</a>
			</div>
		</div>
		
		<div class="clearfix"></div>
		
		<footer>
			<p>
				<span style="text-align:left;float:left">&copy; <a href="./index.html" target="_blank">creativeLabs</a> 2013</span>
				<span class="hidden-phone" style="text-align:right;float:right">Powered by: <a href="#">Acme Dashboard</a></span>
			</p>

		</footer>
				
	</div><!--/.fluid-container-->

	<!-- start: JavaScript-->

	<script src="./js/jquery-1.7.2.min.js"></script>
	<script src="./js/jquery-ui-1.8.21.custom.min.js"></script>	
	<script src="./js/modernizr.js"></script>
	<script src="./js/bootstrap.js"></script>
	<script src="./js/jquery.cookie.js"></script>
	<script src='./js/fullcalendar.min.js'></script>
	<script src='./js/jquery.dataTables.min.js'></script>
	<script src="./js/excanvas.js"></script>
	<script src="./js/jquery.flot.js"></script>
	<script src="./js/jquery.flot.pie.js"></script>
	<script src="./js/jquery.flot.stack.js"></script>
	<script src="./js/jquery.flot.resize.min.js"></script>	
	<script src="./js/jquery.chosen.min.js"></script>
	<script src="./js/jquery.uniform.min.js"></script>	
	<script src="./js/jquery.cleditor.min.js"></script>
	<script src="./js/jquery.noty.js"></script>
	<script src="./js/jquery.elfinder.min.js"></script>
	<script src="./js/jquery.raty.min.js"></script>
	<script src="./js/jquery.iphone.toggle.js"></script>
	<script src="./js/jquery.uploadify-3.1.min.js"></script>
	<script src="./js/jquery.gritter.min.js"></script>
	<script src="./js/jquery.imagesloaded.js"></script>
	<script src="./js/jquery.masonry.min.js"></script>
	<script src="./js/jquery.knob.modified.js"></script>
	<script src="./js/jquery.sparkline.min.js"></script>
	<script src="./js/counter.js"></script>
	<script src="./js/retina.js"></script>
	<script src="./js/custom.js"></script>
	<!-- end: JavaScript-->
</body>
</html>
