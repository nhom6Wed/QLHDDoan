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
    <title>Quản Lý Chi Đoàn</title>
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
                <li class="w3-hide-medium w3-hide-large w3-opennav w3-right"><a class="w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i
						class="fa fa-bars"></i></a>
                </li>
                <li><a href="#" class="w3-padding-large w3-theme-d4"><i
						class="fa fa-home w3-margin-right"></i>TRANG CHỦ</a>
                </li>
                <li class="w3-hide-small"><a href="danhsachhoatdongchuaduyet" class="w3-padding-large w3-hover-white" title="Duyệt Hoạt Động"><i
						class="fa fa-globe"></i></a>
                </li>
                <li class="w3-hide-small w3-dropdown-hover"><a href="#" class="w3-padding-large w3-hover-white" title="Quản Lý"><i
						class="fa fa-cog"></i></a>
                    <div class="w3-dropdown-content w3-white w3-card-4">
                        <a href="danhsachhoatdong">Quản Lý Hoạt Động</a> 
                        <a href="danhsachchidoan">Quản Lý Chi Đoàn</a>
                    </div>
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
        <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top: 51px">
            <ul class="w3-navbar w3-left-align w3-large w3-theme">
                <li><a class="w3-padding-large" href="#">Các Hoạt Động</a>
                </li>
                <li><a class="w3-padding-large" href="#">Thông Tin Cá Nhân</a>
                </li>
                <li><a class="w3-padding-large" href="#">Tin Nhắn</a>
                </li>
                <li><a class="w3-padding-large" href="#">Thông Báo</a>
                </li>
            </ul>
        </div>
    </div>
    <!-- header -->

    <div id="content">
        <!-- Page Container -->
        <div class="w3-container w3-content" style="max-width: 1400px; margin-top: 80px">
            <!-- The Grid -->
            
            <div class="w3-row">
                <!-- Left Column -->
                <div class="w3-col m4">
                    <div class="w3-container">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <p class="text-center">
                                    <b>QUẢN LÝ CHI ĐOÀN</b>
                                </p>
                            </div>
                            <div class="panel-body">
                                <form class="form-horizontal" action="addchidoan" method="get">
                                    <div class="form-inline">
                                        <label><b>Tên Chi Đoàn</b>
                                        </label>
                                        <input type="text" placeholder="Enter Tên Chi Đoàn" name="TenCD" required>
                                    </div>
                                    <div class="form-inline">
                                        <label><b>Tên Cán Bộ Đoàn</b>
                                        </label>
                                        <input type="text" placeholder="Enter Tên Cán Bộ Đoàn" name="TenCanBoCD" required>
                                    </div>
                                    <div class="form-inline">
                                        <label><b>Email</b>
                                        </label>
                                        <input type="text" placeholder="Enter Email" name="Mail" required>
                                    </div>
                                    <div class="form-inline">
                                        <label><b>SĐT</b>
                                        </label>
                                        <input type="text" placeholder="Enter Name" name="SDT" required>
                                    </div>
                                    <br>
                                    <div class="button-contain">
                                        <input type="submit" class="btn btn-primary" value="Thêm Chi Đoàn">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Middle Column -->
                <div class="w3-col m8">
                    <div class="w3-container">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <p class="text-center">
                                    <b>DANH SÁCH CHI ĐOÀN</b>
                                </p>
                            </div>
                            <div class="panel-body">
                                <table id="t01">
                                    <tr>
                                        <th class="text-center">Tên Chi Đoàn</th>
                                        <th class="text-center">Tên Cán Bộ Đoàn</th>
                                        <th class="text-center">Email</th>
                                        <th class="text-center">SĐT</th>
                                        <th class="text-center">Xóa</th>
                                        <th class="text-center">Sửa</th>
                                    </tr>

                                    <c:forEach items="${lstCD }" var="cd">                                 
                                        <tr>
                                            <td>${cd.getTenCD()}</td>
                                            <td>${cd.getTenCanBoCD()}</td>
                                            <td>${cd.getMail()}</td>
                                            <td>${cd.SDT}</td>
                                            <th>
                                                <a href="DelCDServlet?MaCBCD=${cd.getMaCBCD()}">
                                                    <button type="button" class="btn btn-danger">XÓA</button>
                                                </a>
                                            </th>
                                            <th>
                                            	<button type="button" class="btn btn-success" onclick="document.getElementById('id02').style.display='block'">SỬA</button>                             
                                            </th>
                                        </tr>
                                        <div id="id02" class="w3-modal" style="z-index:4">
							                <div class="w3-modal-content w3-animate-zoom">
							                    <div class="w3-container w3-padding w3-blue">
							                        <span onclick="document.getElementById('id02').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
							                        <h2>SỬA CHI ĐOÀN</h2>
							                    </div>
							                    <div class="w3-row w3-margin w3-card-2 w3-white">
							                        <div class=" w3-container">
							                            <form class="form-horizontal" action="UpdateCDServlet" method="post">
							                                <div class="form-inline">
							                                    <label><b>Tên Chi Đoàn</b>
							                                    </label>
							                                    <input type="text" placeholder="Enter Tên Chi Đoàn" name="TenCD" required>
							                                </div>
							                                <div class="form-inline">
							                                    <label><b>Tên Cán Bộ Đoàn</b>
							                                    </label>
							                                    <input type="text" placeholder="Enter Tên Cán Bộ Đoàn" name="TenCanBoCD" required>
							                                </div>
							                                <div class="form-inline">
							                                    <label><b>Email</b>
							                                    </label>
							                                    <input type="text" placeholder="Enter Email" name="Mail" required>
							                                </div>
							                                <div class="form-inline">
							                                    <label><b>SĐT</b>
							                                    </label>
							                                    <input type="text" placeholder="Enter Name" name="SDT" required>
							                                </div>
							                                <br>
							                                <div class="button-contain">
							                                    <a href = "UpdateCDServlet?MaCBCD=${cd.getMaCBCD()}"><input type="submit" class="btn btn-success" value="CẬP NHẬT"></a> 
							                                </div>
							                            </form>
							                        </div>
							                    </div>
							                </div>
							            </div>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Grid -->
            </div>
            <!-- End Page Container -->
        </div>
        <br>
    </div>
    <!-- content -->

    <div id="footer">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                    <ul class="list-inline">
                        <li><a href="">Trang Chủ</a>
                        </li>
                        <li><a href="">Giới Thiệu</a>
                        </li>
                        <li><a href="">Liên Hệ</a>
                        </li>
                    </ul>
                    <p class="text-muted">Đoàn Thanh Niên - Hội Sinh Viên</p>
                    <p class="text-muted">
                        <strong>Trường Đại Học Sư Phạm Kỷ Thuật TPHCM</strong>
                    </p>
                    <p class="text-muted">Số 1, Võ Văn Ngân, phường Linh Chiếu, quận Thủ Đức</p>
                    <p class="text-muted">Email:</p>
                    <p class="text-muted">Doantruong@hcmute.edu.vn (Đoàn Thanh Niên)
                    </p>
                    <p class="text-muted">Dhspkt@hoisinhvien.vn (Hội Sinh Viên)</p>
                </div>
            </div>
        </div>
    </div>
    <!-- footer -->
</body>


<script type="text/javascript">
    function CheckForm() {
        alert("Đăng Ký Thành Công");
        return true;
    }
</script>

<script>
    function DisableBtn(elem) {
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
            x.previousElementSibling.className = x.previousElementSibling.className
                .replace(" w3-theme-d1", "");
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