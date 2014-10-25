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
			$table = $_POST['txtTable'];

			//Insert guest
			$sql = "INSERT INTO guest(`name`,`name_ascii`,`group`,`description`) 
					VALUES('$name','$name_ascii',$group,'$description')";
			DataProvider::ExecuteQuery($sql);

			//Lấy id của guest vừa được insert
			$sql = "SELECT * 
					FROM `guest` 
					WHERE name = '".$name."' AND `group` = $group AND description = '$description'";
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			$id_guest = $row['id'];

			//Kiểm tra có bàn này chưa
			$sql = "SELECT * FROM `table` WHERE name = '".$table."'";
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			if(!$row) //Chưa có bàn này thì insert
			{
				$sql = "INSERT INTO `table`(`name`) 
								VALUES('".$table."')";
				DataProvider::ExecuteQuery($sql);
			}

			//Lấy id của bàn được chọn
			$sql = "SELECT * FROM `table` WHERE name = '".$table."'";
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			$id_table = $row['id'];

			//Insert vào guest_table
			$sql = "INSERT INTO guest_table(`id_table`,`id_guest`) 
					VALUES($id_table,$id_guest)";
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

			DataProvider::Redirect("guest.php");
		}
		else if(isset($_POST['btnUpdate']))
		{
			$id = $_POST['hdId'];
			$name = $_POST['txtName'];
			$name_ascii = DataProvider::Utf8ToAscii($name);
			$group = $_POST['rdoGroup'];
			$description = $_POST['txtDescription'];
			$table = $_POST['txtTable'];			

			//Update guest
			$sql = "UPDATE guest
					SET `name`='$name',`name_ascii`='$name_ascii',`group`=$group,`description`='$description'
					WHERE id = ".$id;
			DataProvider::ExecuteQuery($sql);

			//Kiểm tra có bàn này chưa
			$sql = "SELECT * FROM `table` WHERE name = '".$table."'";
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			if(!$row) //Chưa có bàn này thì insert
			{
				$sql = "INSERT INTO `table`(`name`,`total_num_of_guest`,`current_num_of_guest`,`status`) 
								VALUES('".$table."',1,0,0)";
				DataProvider::ExecuteQuery($sql);
				echo $sql;				
			}

			//Lấy id của bàn được chọn
			$sql = "SELECT * FROM `table` WHERE name = '".$table."'";
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			$id_table = $row['id'];

			//Kiểm tra người này có bàn chưa
			$sql = "SELECT * FROM `guest_table` WHERE id_guest = ".$id;
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			if(count($row) > 1) //Đã có bàn
			{
				$id_table_old = $row['id_table'];

				//Xóa người này khỏi guest_table trước
				$sql = "DELETE FROM guest_table WHERE id_guest = ".$id;
				DataProvider::ExecuteQuery($sql);	

				//Đếm tổng số người của table cũ
				$sql = "SELECT COUNT(*) AS count FROM `guest_table` WHERE id_table = ".$id_table_old;
				$result = DataProvider::ExecuteQuery($sql);
				$row = mysql_fetch_array($result);
				$count = $row['count'];

				//Update total_num_of_guest của bàn cũ
				$sql = "UPDATE `table`
						SET `total_num_of_guest`=$count
						WHERE id = ".$id_table_old;
				DataProvider::ExecuteQuery($sql);		
			}

			//Insert vào guest_table
			$sql = "INSERT INTO guest_table(`id_table`,`id_guest`) 
					VALUES($id_table,$id)";
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

			DataProvider::Redirect("guest.php");	
		}
		else if(isset($_POST['btnDelete']))
		{
			$id = $_POST['hdId'];

			//Kiểm tra người này có bàn chưa
			$sql = "SELECT * FROM `guest_table` WHERE id_guest = ".$id;
			$result = DataProvider::ExecuteQuery($sql);
			$row = mysql_fetch_array($result);
			if(count($row) > 1) //Đã có bàn
			{
				$id_table = $row['id_table'];

				//Xóa người này khỏi guest_table trước
				$sql = "DELETE FROM guest_table WHERE id_guest = ".$id;
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
			}

			//Xóa người này khỏi guest
			$sql = "DELETE FROM guest WHERE id = ".$id;
			DataProvider::ExecuteQuery($sql);

			// DataProvider::Redirect("guest.php");	
		}
	?>
	
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="active"><a href="./guest.php"><i class="fa-icon-bar-chart"></i><span class="hidden-tablet"> Khách</span></a></li>	
						<li><a href="./table.php"><i class="fa-icon-hdd"></i><span class="hidden-tablet"> Bàn</span></a></li>
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
						// how many records should be displayed on a page?
				        $records_per_page = 5;

				        // include the pagination class
				        require 'Zebra_Pagination.php';

				        // instantiate the pagination object
				        $pagination = new Zebra_Pagination();

				        // set position of the next/previous page links
				        $pagination->navigation_position(isset($_GET['navigation_position']) && in_array($_GET['navigation_position'], array('left', 'right')) ? $_GET['navigation_position'] : 'outside');

				        include_once("DataProvider.php");

				        $sql = "SELECT SQL_CALC_FOUND_ROWS g.`id`, g.`name`, g.`group`, g.`description`, t.`name` AS 'table_name'
				        		FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id 
				        						LEFT JOIN `table` t ON t.id = gt.id_table
				        		ORDER BY g.id
				        		LIMIT ".($pagination->get_page()-1)*$records_per_page.",".$records_per_page;

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
							  			<td><a href="guest.php?id=<?php echo $row['id']; ?>">Chọn</a></td>
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

			<div class="row-fluid">
				
				<!-- Danh sách -->
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Quản lý</h2>
					</div>
					<div class="box-content">
						<?php  
							if(isset($_GET['id']))
								$selected_id = $_GET['id'];
							else
								$selected_id = 0;
			                
			                $sql = "SELECT g.*, t.name AS 'table_name'
				        			FROM guest g LEFT JOIN guest_table gt ON gt.id_guest = g.id LEFT JOIN `table` t ON t.id = gt.id_table
			                		WHERE g.id = ".$selected_id;
			                        
			                $result = DataProvider::ExecuteQuery($sql);
			                
			                $row = mysql_fetch_array($result);
						?>
						<form class="form-horizontal" name="frmQLTK" method="post" action="guest.php"/>						
						  <fieldset>
							<div class="control-group">
							  <label class="control-label">Mã </label>
							  <div class="controls">
							  	<input class="control-label" type="hidden" name="hdId" value="<?php echo $row['id']; ?>" />
							  	<label class="control-label" style="text-align:left" id="lblId"><?php echo $row['id']; ?></label>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label">Tên </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtName" id="txtName" value="<?php echo $row['name']; ?>"/>					
							  </div>
							</div>									

							<div class="control-group">
								<label class="control-label">Đàn </label>
								<div class="controls">									
									<label class="radio">
										<input type="radio" name="rdoGroup" value="0"
									    	<?php 
									    		if($row['group'] == 0)
									                echo "checked=''";
									        ?>
									    />Gái
									</label>
									<div style="clear:both"></div>
									<label class="radio">
										<input type="radio" name="rdoGroup" value="1"
									    	<?php 
									    		if($row['group'] == 1)
									                echo "checked=''";
									        ?>
									    />Trai
									</label>
									<div style="clear:both"></div>
									<label class="radio">
										<input type="radio" name="rdoGroup" value="2"
									    	<?php 
									    		if($row['group'] == 2)
									                echo "checked=''";
									        ?>
									    />Bạn Chung
									</label>				    
								</div>
							</div>

							<div class="control-group">
							  <label class="control-label">Mô tả </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtDescription" id="txtDescription" value="<?php echo $row['description']; ?>"/>
							  </div>
							</div>	

							<div class="control-group">
							  <label class="control-label">Bàn </label>
							  <div class="controls">
							  	<?php  
							  		$sql1 = "SELECT *
							  				FROM `table`";
							  		        
							  		$result1 = DataProvider::ExecuteQuery($sql1);
							  		$arr_table = array();
							  		while ($row1 = mysql_fetch_array($result1)) 
							  		{
							  			array_push($arr_table, $row1['name']);
							  		}
							  		$str_arr_table = json_encode($arr_table);
							  	?>
							  	<input type="text" class="span6 typeahead" id="typeahead" 
							  			data-provide="typeahead" data-items="4" name="txtTable" value="<?php echo $row['table_name']; ?>"
							  			data-source='<?php echo $str_arr_table; ?>' />
							  </div>
							</div>					

							<div class="form-actions">
							  <button type="submit" class="btn" name="btnInsert">Thêm</button>
							  <button type="submit" class="btn" name="btnUpdate"
								<?php
								if(is_null($row['id']))
					    			echo "disabled=''";
					    		?>
							  >Sửa</button>
							  <button type="submit" class="btn" name="btnDelete"
								<?php
								if(is_null($row['id']))
					    			echo "disabled=''";
					    		?>
							  >Xóa</button>
							  <button type="button" class="btn" onclick="formReset()">Làm lại</button>
							</div>
						  </fieldset>
						</form> 						 
					</div>
				</div><!--/span-->
				<!-- End Danh sách -->	
			
			</div>


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
