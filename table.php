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

		if(isset($_POST['btnInsert']))
		{
			$name = $_POST['txtName'];
			$name_ascii = DataProvider::Utf8ToAscii($name);
			$group = $_POST['rdoGroup'];
			$description = $_POST['txtDescription'];

			$sql = "INSERT INTO guest(`name`,`name_ascii`,`group`,`description`) 
					VALUES('$name','$name_ascii',$group,'$description')";

			DataProvider::ExecuteQuery($sql);
			DataProvider::Redirect("guest.php");
		}
		else if(isset($_POST['btnUpdate']))
		{
			$id = $_POST['hdId'];
			$name = $_POST['txtName'];
			$name_ascii = DataProvider::Utf8ToAscii($name);
			$group = $_POST['rdoGroup'];
			$description = $_POST['txtDescription'];

			$sql = "UPDATE guest
					SET `name`='$name',`name_ascii`='$name_ascii',`group`=$group,`description`='$description'
					WHERE id = ".$id;
			DataProvider::ExecuteQuery($sql);
			DataProvider::Redirect("guest.php");	
		}
		else if(isset($_POST['btnDelete']))
		{
			$id = $_POST['hdId'];
			$sql = "DELETE FROM guest WHERE id = ".$id;
			DataProvider::ExecuteQuery($sql);
			DataProvider::Redirect("guest.php");	
		}
	?>
	
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="./guest.php"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Khách</span></a></li>	
						<li class="active"><a href="./table.php"><i class="fa-icon-hdd"></i><span class="hidden-tablet"> Bàn</span></a></li>
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
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Danh sách bàn tiệc</h2>
					</div>
					<div class="box-content">
						<div class="table-content">
							<?php	
						        include_once("DataProvider.php");

						        $sql = "SELECT *
						        		FROM `table`
						        		ORDER BY id";

						        $result = DataProvider::ExecuteQuery($sql);
						        while($row = mysql_fetch_array($result))
							  	{
							  		if ($row['status'] == 0)
							  			$class_name = "table-item-normal";							  		
							  		else
							  			$class_name = "table-item-full";
							  		echo '<a href="guest-table.php?id='.$row['id'].'">
								  				<div class="'.$class_name.'">		
								  					<div class="table-item-header">'.$row['name'].'</div>
								  					<div class="table-item-content">
														Tống số: '.$row['total_num_of_guest'].'<br />
														Hiện tại: '.$row['current_num_of_guest'].'
								  					</div>																			  										  					
								  				</div>
							  				</a>
						  				';
							  	}
					        ?>
						</div>												 
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
	<script>
		function formReset()
		{			
			document.getElementById("lblId").innerHTML = "";
			document.getElementById("txtName").value = "";
			document.getElementById("txtDescription").value = "";
		}	
	</script>
</body>
</html>
