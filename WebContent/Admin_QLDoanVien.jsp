<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="Entities.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Quản Lý Đoàn Viên</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3-theme-blue-grey.css">
	<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
</head>

<body class="w3-theme-l5">
	<div id="header">
		<div class="w3-top">
		    <ul class="w3-navbar w3-theme-d2 w3-left-align w3-large">
		        <li class="w3-hide-medium w3-hide-large w3-opennav w3-right">
		            <a class="w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
		        </li>
		        <li>
		        	<a href="#" class="w3-padding-large w3-theme-d4"><i class="fa fa-home w3-margin-right"></i>TRANG CHỦ</a>
		        </li>
		        <li class="w3-hide-small">
		        	<a href="#" class="w3-padding-large w3-hover-white" title="Các Hoạt Động"><i class="fa fa-globe"></i></a>
		        </li>
		        <li class="w3-hide-small">
		        	<a href="#" class="w3-padding-large w3-hover-white" title="Thông Tin Cá Nhân"><i class="fa fa-user"></i></a>
		        </li>
		        <li class="w3-hide-small w3-dropdown-hover">
		        	<a href="#" class="w3-padding-large w3-hover-white" title="Quản Lý"><i class="fa fa-cog"></i></a>
		        	<div class="w3-dropdown-content w3-white w3-card-4">
		                <a href="#">Quản Lý Đoàn Viên</a>
		                <a href="#">Quản Lý Tài Khoản</a>
		                <a href="#">Quản Lý Hoạt Động</a>
		            </div>
		        </li>
		        <li class="w3-hide-small">
		            <a href="#" class="w3-padding-large w3-hover-white" title="Thông Báo"><i class="fa fa-bell"></i></a>
		        </li>
		        <li class="w3-hide-small">
		        	<a href="#" class="w3-padding-large w3-hover-white" title="Gữi Tin Nhắn"><i class="fa fa-pencil" onclick="document.getElementById('id01').style.display='block'"></i></a>
		        </li>
		        <li class="w3-hide-small w3-right w3-dropdown-hover">
		            <a href="#" class="w3-padding-large w3-hover-white" title="My Account"><img src="http://www.w3schools.com/w3images/avatar3.png" class="w3-circle" style="height:25px;width:25px" alt="Avatar"></a>
		            <div class="w3-dropdown-content w3-white w3-card-4">
		                <a href="TrangChu.jsp">Logout</a>
		            </div>
		        </li>
		    </ul>
		</div>

		<!-- Navbar on small screens -->
		<div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:51px">
		  <ul class="w3-navbar w3-left-align w3-large w3-theme">
		    <li><a class="w3-padding-large" href="#">Các Hoạt Động</a></li>
		    <li><a class="w3-padding-large" href="#">Thông Tin Cá Nhân</a></li>
		    <li><a class="w3-padding-large" href="#">Tin Nhắn</a></li>
		    <li><a class="w3-padding-large" href="#">Thông Báo</a></li>
		  </ul>
		</div>
	</div> <!-- header -->

	<div id="content">
		<!-- Page Container -->
		<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
		    <!-- The Grid -->
			        	<div id="id01" class="w3-modal" style="z-index:4">
						    <div class="w3-modal-content w3-animate-zoom">
						        <div class="w3-container w3-padding w3-blue">
						            <span onclick="document.getElementById('id01').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
						            <h2>Send Mail</h2>
						        </div>
						        <div class="w3-panel">
						            <label>To</label>
						            <input class="w3-input w3-border w3-hover-shadow w3-margin-bottom" type="text">
						            <label>From</label>
						            <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" type="text">
						            <label>Subject</label>
						            <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" type="text">
						            <input class="w3-input w3-border w3-hover-shadow  w3-margin-bottom" style="height:150px" placeholder="What's on your mind?">
						            <div class="w3-section">
						                <a class="w3-btn w3-red" onclick="document.getElementById('id01').style.display='none'">Cancel  <i class="fa fa-remove"></i></a>
						                <a class="w3-btn w3-right w3-light-grey" onclick="document.getElementById('id01').style.display='none'">Send  <i class="fa fa-paper-plane"></i></a>
						            </div>
						        </div>
						    </div>
						</div>		        		
		        		<div class="panel panel-primary">
		        			<div class="panel-heading">
		        				<p class="text-center"><b>DANH SÁCH TÀI KHOẢN</b></p>
		        			</div>
		        			<div class="panel-body">
		        				<table id="t01">
									<tr>
										<th class="text-center">Họ Tên</th>
										<th class="text-center">Ngày Sinh</th>
										<th class="text-center">Giới Tính</th>
										<th class="text-center">CMND</th>
										<th class="text-center">Địa Chỉ</th>
										<th class="text-center">MSSV</th>
										<th class="text-center">Lớp</th>
										<th class="text-center">Khoa</th>
										<th class="text-center">SĐT</th>
										<th class="text-center">Email</th>
										<th class="text-center">Ngày Vào Đoàn</th>
										<th class="text-center">Xóa</th>
										<th class="text-center">Sửa</th>
									</tr>
									<c:forEach items="${lstDV}" var="dv">
								    <tr>
								        <td>${dv.getHoTen()}</td>
								        <td>${dv.getNgaySinh()}</td>
								        <td>${dv.isGioiTinh() == true ? "Nam" : "Nữ"}</td>
								        <td>${dv.getCMND()}</td>
								        <td>${dv.getDiaChi()}</td>
								        <td>${dv.getMSSV()}</td>
								        <td>${dv.getLop()}</td>
								        <td>${dv.getKhoa()}</td>
								        <td>${dv.getSDT()}</td>
								        <td>${dv.getMail()}</td>
								        <td>${dv.getNgayVaoDoan()}</td>
								        <td><a href="DelDVServlet?MaDV=${dv.getMaDV()}"><button type="button" class="btn btn-danger">XÓA</button></a></td>
										<td><a href=""><button type="button" class="btn btn-success">SỬA</button></a></td>
								    </tr>
								</c:forEach>
								</table>						    		
		        			</div>		        			
		        		</div>
		        		<div class="panel panel-primary">
		        			<div class="panel-heading">
			            		<p class="text-center"><b>QUẢN LÝ ĐOÀN VIÊN</b></p>
			            	</div>
			            	<div class="panel-body">
								<form class="form-horizontal"  action="AddDVServlet" method="get">
									<div class="w3-col m5">
										<div class="form-inline">
										    <label><b>Họ Tên</b></label>
								            <input type="text" placeholder="Nhập Tên" name="HoTen" required>
									  	</div>								  	
								  		<div class="form-inline">
											<label><b>Ngày Sinh</b></label><br> 
											<input type="datetime-local" name="NgaySinh" required>										
										</div>			 
									  	<div class="form-inline">
										    <label><b>CMND</b></label>
								            <input type="text" placeholder="Nhập CMND" name="CMND" required>
									  	</div>
									  	<div class="form-inline">
										    <label><b>Địa Chỉ</b></label>
								            <input type="text" placeholder="Nhập Địa Chỉ" name="DiaChi" required>
									  	</div>
									  	<div class="form-inline">
											<label><b>SĐT</b></label><br> 
											<input type="text" placeholder="Nhập SĐT" name="SDT" required>										
										</div>		
									</div>
									<div class="w3-col m1">
										<p></p>
									</div>								
									<div class="w3-col m6">
										<div class="form-inline">
										    <label><b>MSSV</b></label>
								            <input type="text" placeholder="Nhập MSSSV" name="MSSV" required>
									  	</div>
										<div class="form-inline">
										    <label><b>Lớp</b></label>
								            <input type="text" placeholder="Nhập Lớp" name="Lop" required>
									  	</div>
									  	<div class="form-inline">
										    <label><b>Khoa</b></label>
								            <input type="text" placeholder="Nhập Khoa" name="Khoa" required>
									  	</div>
									  	<div class="form-inline">
											<label><b>Mail</b></label><br> 
											<input type="text" placeholder="Nhập Mail" name="Mail" required>										
										</div>
									  	<div class="w3-col m5">
									  		<div class="form-inline">
											    <label><b>Giới Tính</b></label>
											    <br>
												    <label class="radio-inline">
												    	<input type="radio" name="GioiTinh" value = "1">Nam
												    </label>
												    <label class="radio-inline">
												    	<input type="radio" name="GioiTinh" value = "0">Nữ
												    </label>
										  	</div>
									  	</div>
									  	<div class="w3-col m7">
									  		<div class="form-inline">
												<label><b>Ngày Vào Đoàn</b></label> 
												<input type="datetime-local" name="NgayVaoDoan">
											</div>
									  	</div>					  						
									</div>
																			  	
								  	<br>
								  	<div class="button-contain">
								  		<input type="submit" class="btn btn-primary" value="Thêm Tài Khoản" >
								  	</div>						  		  	
								</form>
			            	</div>
		        		</div>	       			  
		        <!-- End Grid -->
		    
		    <!-- End Page Container -->
		</div>
		<br>   
	</div> <!-- content -->

	<div id="footer">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<ul class="list-inline">
						<li><a href="">Trang Chủ</a></li>
						<li><a href="">Giới Thiệu</a></li>
						<li><a href="">Liên Hệ</a></li>
					</ul>
					<p class="text-muted">Đoàn Thanh Niên - Hội Sinh Viên</p>
					<p class="text-muted"><strong>Trường Đại Học Sư Phạm Kỷ Thuật TPHCM</strong></p>
					<p class="text-muted">Số 1, Võ Văn Ngân, phường Linh Chiếu, quận Thủ Đức</p>
					<p class="text-muted">Email:</p>
					<p class="text-muted">Doantruong@hcmute.edu.vn (Đoàn Thanh Niên)</p>
					<p class="text-muted">Dhspkt@hoisinhvien.vn (Hội Sinh Viên)</p>
				</div>
			</div>
		</div>
	</div> <!-- footer -->
</body>

	
	<script type="text/javascript">
    function CheckForm() {
      	alert("Đăng Ký Thành Công");
        return true;
    }
	</script>

	<script>
	function DisableBtn(elem){
		document.getElementById(elem).disabled = true;
	  	return CheckForm();
	}
	</script>

	<script>
	// Accordion
	function myFunction(id) {
	    var x = document.getElementById(id);
	    if (x.className.indexOf("w3-show") == -1) {
	        x.className += " w3-show";
	        x.previousElementSibling.className += " w3-theme-d1";
	    } else {
	        x.className = x.className.replace("w3-show", "");
	        x.previousElementSibling.className =
	        x.previousElementSibling.className.replace(" w3-theme-d1", "");
	    }
	}

	// Used to toggle the menu on smaller screens when clicking on the menu button
	function openNav() {
	    var x = document.getElementById("navDemo");
	    if (x.className.indexOf("w3-show") == -1) {
	        x.className += " w3-show";
	    } else {
	        x.className = x.className.replace(" w3-show", "");
	    }
	}
	</script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</html>

