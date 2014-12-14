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

		if (session_status() == PHP_SESSION_NONE) {
		    session_start();
		}

		if(isset($_POST['btnSearch']))
		{
			$_SESSION['Search'] = $_POST['rdoSearch'];
			if(isset($_POST['txtKeyword']))
				$_SESSION['Keyword'] = $_POST['txtKeyword'];
		}

		if(isset($_GET['id_table']))
		{
			$sql = "UPDATE `guest_table`
					SET `status`=1
					WHERE `id_table` = ".$_GET['id_table']." AND `id_guest`= ".$_GET['id_guest'];
			DataProvider::ExecuteQuery($sql);

			//Đếm số lượng khách đã đến của bàn đó
			$sql = "SELECT COUNT(*) AS num_of_guest FROM `guest_table` WHERE status = 1 AND id_table = ".$_GET['id_table'];
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);

			$status = 0;
			if($row['num_of_guest'] >= $table['total_num_of_guest'])
				$status = 1;

			//Cập nhật current_num_of_guest của bàn đó
			$sql = "UPDATE `table` SET `current_num_of_guest`=".$row['num_of_guest'].",`status`=$status WHERE id = ".$table['id'];
			DataProvider::ExecuteQuery($sql);

			DataProvider::Redirect("checkin.php");
		}
	?>
	
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li><a href="./guest.php"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Khách</span></a></li>	
						<li><a href="./table.php"><i class="fa-icon-hdd"></i><span class="hidden-tablet"> Bàn</span></a></li>
						<li class="active"><a href="./checkin.php"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Quét code</span></a></li>	
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
				
				<!-- Tìm kiếm -->
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Tìm kiếm</h2>
					</div>
					<div class="box-content">
						<form class="form-horizontal" name="frmCheckin" method="post" action="checkin.php"/>						
						  <fieldset>
							<div class="control-group">
							  <label class="control-label">Từ khóa </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtKeyword" id="txtKeyword" />					
							  </div>
							</div>									

							<div class="control-group">
								<label class="control-label">Loại </label>
								<div class="controls">									
									<label class="radio">
										<?php  
											/*
												0: id
												1: name
											*/
											if(isset($_SESSION['Search']))
											{
												$sSearch = $_SESSION['Search'];
											}
											else
											{
												$sSearch = 0;
											}
										?>
										<input type="radio" name="rdoSearch" id="rdoSearch1" value="0"
											<?php 
												if($sSearch == 0)
										            echo "checked=''";
										    ?>
										/>Mã số
									</label>
									<div style="clear:both"></div>
									<label class="radio">
										<input type="radio" name="rdoSearch" id="rdoSearch2" value="1"
											<?php 
												if($sSearch == 1)
										            echo "checked=''";
										    ?>
										/>Tên
									</label>
									<div style="clear:both"></div>				    
								</div>
							</div>				

							<div class="form-actions">
							  <button type="submit" class="btn" name="btnSearch">Tìm</button>
							</div>
						  </fieldset>
						</form> 						 
					</div>
				</div><!--/span-->
				<!-- End Danh sách -->	
			
			</div>
			
			
			<div class="row-fluid">
				
				<!-- Danh sách -->
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Danh sách khách mời</h2>
					</div>
					<div class="box-content">
						<?php	
						// how many records should be displayed on a page?
				        $records_per_page = 5;

				        // include the pagination class
				        require 'Zebra_Pagination.php';

				        // instantiate the pagination object
				        $pagination = new Zebra_Pagination();

				        // set position of the next/previous page links
				        $pagination->navigation_position(isset($_GET['navigation_position']) && in_array($_GET['navigation_position'], array('left', 'right')) ? $_GET['navigation_position'] : 'outside');

				        if(isset($_SESSION['Search']))
				        {
					        if($_SESSION['Search'] == 1) //name
					        {
					        	$sql = "SELECT SQL_CALC_FOUND_ROWS g.`id`, g.`name`, g.`group`, g.`description`, t.`name` AS 'table_name', gt.`id_table`, gt.`status`
					        			FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id 
					        							LEFT JOIN `table` t ON t.id = gt.id_table
		    							WHERE g.`name` LIKE '%".$_SESSION['Keyword']."%'
					        			ORDER BY g.id
					        			LIMIT ".($pagination->get_page()-1)*$records_per_page.",".$records_per_page;
					        }
					        else
					        {
					        	$sql = "SELECT SQL_CALC_FOUND_ROWS g.`id`, g.`name`, g.`group`, g.`description`, t.`name` AS 'table_name', gt.`id_table`, gt.`status`
					        			FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id 
					        							LEFT JOIN `table` t ON t.id = gt.id_table
	        							WHERE g.`id` = ".$_SESSION['Keyword']."
					        			ORDER BY g.id
					        			LIMIT ".($pagination->get_page()-1)*$records_per_page.",".$records_per_page;
					        }
				        }				        
				        else //Ko có
				        {
				        	$sql = "SELECT SQL_CALC_FOUND_ROWS g.`id`, g.`name`, g.`group`, g.`description`, t.`name` AS 'table_name', gt.`id_table`, gt.`status`
				        			FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id 
				        							LEFT JOIN `table` t ON t.id = gt.id_table
        							WHERE id = 1000000
				        			ORDER BY g.id
				        			LIMIT ".($pagination->get_page()-1)*$records_per_page.",".$records_per_page;
				        }				        

				        $result = DataProvider::ExecuteQuery($sql);

				        $sql1 = 'SELECT count(*) AS num_of_row FROM guest';
				        $result1 = DataProvider::ExecuteQuery($sql1);
				        $rows1 = mysql_fetch_assoc($result1);

				        // the number of total records is the number of records in the array
				        $pagination->records($rows1['num_of_row']);
				        // records per page
				        $pagination->records_per_page($records_per_page);

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
							  			<td><a href="checkin.php?id_table=<?php echo $row['id_table']; ?>&id_guest=<?php echo $row['id']; ?>">Chọn</a></td>
							  		</tr> 
						  		<?php
							  	}
							  	?>                               
							  </tbody>
						 </table>  
						  <div class="pagination pagination-centered">
				   		 	<?php
				   	        // render the pagination links
				   	        $pagination->render();
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
		$(document).ready(function(){
			console.log("ready");
			changeSearchType();
		})

		function formReset()
		{			
			document.getElementById("lblId").innerHTML = "";
			document.getElementById("txtName").value = "";
			document.getElementById("txtDescription").value = "";
		}	

		function changeSearchType () {
		    var rdoSearch1 =  document.getElementById("rdoSearch1").checked;
		    var rdoSearch2 =  document.getElementById("rdoSearch2").checked;
		    var rdoSearch3 =  document.getElementById("rdoSearch3").checked;
		    
		    if(rdoSearch1 || rdoSearch3)
		    {
		    	$("#txtKeyword").attr("disabled",true);
		    }
		    else{
		    	$("#txtKeyword").removeAttr("disabled");
		    }
		}
	</script>
</body>
</html>
