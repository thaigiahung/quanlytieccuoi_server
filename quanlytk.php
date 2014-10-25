<!DOCTYPE html>
<html lang="en">
<head>
	
	<!-- start: Meta -->
	<meta charset="utf-8" />
	<title>Project Mangement</title>
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

<script>
	function formReset()
	{			
		document.getElementById("lblMa").innerHTML = "";
		document.getElementById("txtTenDN").value = "";
		document.getElementById("txtMatKhau").value = "";
		document.getElementById("txtEmail").value = "";
		document.getElementById("txtHoTen").value = "";
		document.getElementById("txtDiaChi").value = "";
		document.getElementById("lblNgayTao").innerHTML = "";
	}	
</script>
</head>

<body>
	<?php
	if (session_status() == PHP_SESSION_NONE) {
	    session_start();
	}
	include_once("DataProvider.php");

	if(!isset($_SESSION['sAdmin']))
	{
		DataProvider::Redirect("dangnhap.php");
	}
	
	if(!isset($_GET['page']))
		$page = 1;
	else
		$page = $_GET['page'];

	if(isset($_POST['btnThem']))
	{
		$ten_dang_nhap = $_POST['txtTenDN'];
		$mk = $_POST['txtMatKhau'];
		$email = $_POST['txtEmail'];
		$ho_ten = $_POST['txtHoTen'];
		$loai_tk = $_POST['rdoLoaiTK'];
		$trang_thai = $_POST['rdoTrangThai'];
		$dia_chi = $_POST['txtDiaChi'];

		$salt = md5(date('Y-m-d H:i:s').$ten_dang_nhap."pm".$mk."group-c".rand(1,100000000));
		$mk = md5($mk.$salt);
		
		$sql = "INSERT INTO account(name,account_type,status,username,password,salt,address,email) 
				VALUES('".$ho_ten."',".$loai_tk.",".$trang_thai.",'".$ten_dang_nhap."',
						'".$mk."','".$salt."','".$dia_chi."','".$email."')";

		DataProvider::ExecuteQuery($sql);
		DataProvider::Redirect("quanlytk.php?page=".$page);	
	}
	else if(isset($_POST['btnSua']))
	{
		$ma_tk = $_POST['hdMaTK'];
		$ten_dang_nhap = $_POST['txtTenDN'];
		$mk = $_POST['txtMatKhau'];
		$email = $_POST['txtEmail'];
		$ho_ten = $_POST['txtHoTen'];
		$loai_tk = $_POST['rdoLoaiTK'];
		$trang_thai = $_POST['rdoTrangThai'];
		$dia_chi = $_POST['txtDiaChi'];
		$salt = $_POST['hdSalt'];
		
		$mk = md5($mk.$salt);
		
		$sql = "UPDATE account
				SET name='".$ho_ten."',account_type='".$loai_tk."',status='".$trang_thai."',
					username='".$ten_dang_nhap."',password='".$mk."',salt='".$salt."',
					address='".$dia_chi."',email='".$email."'
				WHERE id = ".$ma_tk;

		DataProvider::ExecuteQuery($sql);
		DataProvider::Redirect("quanlytk.php?page=".$page);	
	}
	else if(isset($_POST['btnXoa']))
	{
		$ma_tk = $_POST['hdMaTK'];
		$sql = "DELETE FROM account WHERE id = ".$ma_tk;
		DataProvider::ExecuteQuery($sql);
		DataProvider::Redirect("quanlytk.php?page=".$page);	
	}
	?>

		<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</a>
				<a class="brand" href="./index.html"><span>Acme, Inc</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">		
						<li>
							<a href="#"><i class="halflings-icon white user"></i> 
								Chào <?php echo $_SESSION['sAdmin']['name']; ?>
							</a>
						</li>
						<li><a href="dangxuat.php"><i class="halflings-icon white off"></i> Đăng xuất</a></li>
						
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
	
		<div class="container-fluid">
		<div class="row-fluid">
				
			<!-- start: Main Menu -->
			<div id="sidebar-left" class="span1">
				<div class="nav-collapse sidebar-nav">
					<ul class="nav nav-tabs nav-stacked main-menu">
						<li class="active"><a href="./quanlytk.php"><i class="fa-icon-edit"></i><span class="hidden-tablet"> Tài khoản</span></a></li>
						<li><a href="./quanlyloaitk.php"><i class="fa-icon-edit"></i><span class="hidden-tablet"> Loại tài khoản</span></a></li>							
						<li><a href="./duyettruyen.php"><i class="fa-icon-edit"></i><span class="hidden-tablet"> Duyệt truyện</span></a></li>
						<li><a href="./quanlytheloai.php"><i class="fa-icon-edit"></i><span class="hidden-tablet"> Thể loại</span></a></li>
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
			
			
			<div class="row-fluid sortable">

				<!-- Danh sách -->
				<div class="box span12">
					<div class="box-header">
						<h2><i class="halflings-icon align-justify"></i><span class="break"></span>Danh sách tài khoản</h2>
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

				        include_once("../DataProvider.php");

				        $sql = "SELECT SQL_CALC_FOUND_ROWS a.id AS account_id, a.name AS user_full_name, a.status AS account_status,
				        				a.username,a.address,a.email,a.create_time,at.id AS account_type_id,
				        				at.name AS account_type_name
				        		FROM account a JOIN account_type at ON at.id = a.account_type
				        		ORDER BY a.id
				        		LIMIT ".($pagination->get_page()-1)*$records_per_page.",".$records_per_page;

				        $result = DataProvider::ExecuteQuery($sql);

				        $sql1 = 'SELECT count(*) AS num_of_row FROM account';
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
									  <th>Tên đăng nhập</th>
									  <th>Email</th>
									  <th>Họ tên</th>    
									  <th>Loại</th>
									  <th>Ngày tạo</th>  
									  <th>&nbsp;</th>                                  
								  </tr>
							  </thead>   
							  <tbody>
							  	<?php			                   

							  	while($row = mysql_fetch_array($result))
							  	{
						  		?>
							  		<tr>
							  			<td><?php echo $row['account_id']; ?></td>
							  			<td><?php echo $row['username']; ?></td> 
							  			<td><?php echo $row['email']; ?></td>
							  			<td><?php echo $row['user_full_name']; ?></td>
							  			<td><?php echo $row['account_type_name']; ?></td> 
							  			<td><?php echo $row['create_time']; ?></td>    
							  			<td><a href="quanlytk.php?id=<?php echo $row['account_id']; ?>&page=<?php echo $page ?>">Chọn</a></td>
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

			<div class="row-fluid sortable">
				<!-- Quản lý -->
				<div class="box span12">
					<div class="box-header" data-original-title="">
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Quản lý tài khoản</h2>
					</div>
					<div class="box-content">
			            <?php		
			                include_once("../DataProvider.php");
							
							if(isset($_GET['id']))
								$selected_id = $_GET['id'];
							else
								$selected_id = 0;
			                
			                $sql = "SELECT a.id AS account_id, a.name AS user_full_name, a.status AS account_status,
			                				a.username,a.password,a.salt,a.address,a.email,a.num_of_fail_login,
			                				a.banned_date,a.create_time,at.id AS account_type_id,
			                				a.name AS account_type_name
			                		FROM account a JOIN account_type at ON at.id = a.account_type
			                		WHERE a.id = '".$selected_id."'";
			                        
			                $result = DataProvider::ExecuteQuery($sql);
			                
			                $row = mysql_fetch_array($result);	
			            ?>
						<form class="form-horizontal" name="frmQLTK" method="post" action="quanlytk.php?page=<?php echo $page ?>"/>						
						  <fieldset>
							<div class="control-group">
							  <label class="control-label">Mã </label>
							  <div class="controls">
							  	<input class="control-label" type="hidden" name="hdMaTK" value="<?php echo $row['account_id']; ?>" />
							  	<label class="control-label" style="text-align:left" id="lblMa"><?php echo $row['account_id']; ?></label>
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label">Tên đăng nhập </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtTenDN" id="txtTenDN" value="<?php echo $row['username']; ?>"/>							  															
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label">Mật khẩu </label>
							  <div class="controls">
							  	<input type="password" class="span6" name="txtMatKhau" id="txtMatKhau"/>
							  	<input class="control-label" type="hidden" name="hdSalt" value="<?php echo $row['salt']; ?>" />														
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label">Email </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtEmail" id="txtEmail" value="<?php echo $row['email']; ?>"/>							  															
							  </div>
							</div>

							<div class="control-group">
							  <label class="control-label">Họ tên </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtHoTen" id="txtHoTen" value="<?php echo $row['user_full_name']; ?>"/>							  															
							  </div>
							</div>

							<div class="control-group">
								<label class="control-label">Loại tài khoản </label>
								<div class="controls">
									<?php 
						                include_once("../DataProvider.php");
										
						                $sql1 = "SELECT *
					                			FROM account_type
					                			WHERE status = 1";
						                        
						                $result1 = DataProvider::ExecuteQuery($sql1);
						                
				                	  	while($row1 = mysql_fetch_array($result1))
				                	  	{
				                  		?>
				                	  		<label class="radio">
				                	  			<input type="radio" name="rdoLoaiTK" value="<?php echo $row1['id']; ?>"
				                	  		    	<?php 
				                	  		    		if($row['account_type_id'] == $row1['id'])
				                	  		                echo "checked=''";
				                	  		        ?>
				                	  		    /><?php echo $row1['name']; ?>
				                	  		</label>
				                	  		<div style="clear:both"></div>
				                  		<?php
				                	  	}
									?>								    
								</div>
							</div>

							<div class="control-group">
								<label class="control-label">Trạng thái </label>
								<div class="controls">									
									<label class="radio">
										<input type="radio" name="rdoTrangThai" value="0"
									    	<?php 
									    		if($row['account_status'] == 0)
									                echo "checked=''";
									        ?>
									    />Chưa kích hoạt
									</label>
									<div style="clear:both"></div>
									<label class="radio">
										<input type="radio" name="rdoTrangThai" value="1"
									    	<?php 
									    		if($row['account_status'] == 1)
									                echo "checked=''";
									        ?>
									    />Đã kích hoạt
									</label>
									<div style="clear:both"></div>
									<label class="radio">
										<input type="radio" name="rdoTrangThai" value="2"
									    	<?php 
									    		if($row['account_status'] == 2)
									                echo "checked=''";
									        ?>
									    />Khóa
									</label>				    
								</div>
							</div>

							<div class="control-group">
							  <label class="control-label">Địa chỉ </label>
							  <div class="controls">
							  	<input type="text" class="span6" name="txtDiaChi" id="txtDiaChi" value="<?php echo $row['address']; ?>"/>							  															
							  </div>
							</div>							

							<div class="control-group">
							  <label class="control-label">Ngày tạo </label>							  
							  <div class="controls">
							  	<label class="control-label" style="text-align:left" id="lblNgayTao"><?php echo $row['create_time']; ?></label>							  															
							  </div>
							</div>
															

							<div class="form-actions">
							  <button type="submit" class="btn" name="btnThem">Thêm</button>
							  <button type="submit" class="btn" name="btnSua"
								<?php
								if(is_null($row['account_id']))
					    			echo "disabled=''";
					    		?>
							  >Sửa</button>
							  <button type="submit" class="btn" name="btnXoa"
								<?php
								if(is_null($row['account_id']))
					    			echo "disabled=''";
					    		?>
							  >Xóa</button>
							  <button type="button" class="btn" onclick="formReset()">Làm lại</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->		
				<!-- End Quản lý -->	
			
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
