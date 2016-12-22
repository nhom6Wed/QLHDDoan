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
    <title>Đoàn Viên</title>
    <link rel="stylesheet" href="style.css">
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
                 <li class="w3-hide-small  w3-dropdown-hover">
                    <a href="#" class="w3-padding-large w3-hover-white" title="Tin Nhắn"><i class="fa fa-envelope"></i><span class="w3-badge w3-right w3-small w3-red">4</span></a>
                     <div class="w3-dropdown-content w3-white w3-card-4">
                        <a href="#" onclick="document.getElementById('id02').style.display='block'" >Tin Nhắn Từ : Vũ Minh Quân <br><h6>từ 2 ngày trước</h6></a>
                        <a href="#">Tin Nhắn Từ : Vũ Minh Quân<br><h6>từ 3 ngày trước</h6></a>
                        <a href="#">Tin Nhắn Từ : Vũ Minh Quân<br><h6>từ 1 tháng trước</h6></a>
                        <a href="#">Tin Nhắn Từ : Vũ Minh Quân<br><h6>từ 2 tháng trước</h6></a>
                    </div>
                </li>
                <li class="w3-hide-small w3-dropdown-hover">
                    <a href="DoanVien_ThongBao.html" class="w3-padding-large w3-hover-white" title="Thông Báo"><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-red">10</span></a>
                    
                </li>
                <li class="w3-hide-small w3-right w3-dropdown-hover">
                    <a href="#" class="w3-padding-large w3-hover-white" title="My Account"><img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xta1/v/t1.0-1/p160x160/13659180_872484462856413_3927572357328685990_n.jpg?oh=941ab7ef55409b99123394ab298e0d26&oe=58982A51&__gda__=1486107007_a774337df48b1a82bf64bfa437b0a9dc" class="w3-circle" style="height:25px;width:25px" alt="Avatar">
                    </a>
                    <div class="w3-dropdown-content w3-white w3-card-4">
		                <a href="TrangChu.jsp">Logout</a>
		            </div>
                </li>
            </ul>
        </div>

        <!-- Navbar on small screens -->
        <div id="navDemo" class="w3-hide w3-hide-large w3-hide-medium w3-top" style="margin-top:51px">
            <ul class="w3-navbar w3-left-align w3-large w3-theme">
                <li><a class="w3-padding-large" href="#">Các Hoạt Động</a>
                </li>
                <li><a class="w3-padding-large" href="#">Thông Tin Cá Nhân</a>
                </li>
                <li><a class="w3-padding-large" href="#">Tin Nhắn</a>
                </li>
                <li><a class="w3-padding-large" href="">Thông Báo</a>
                </li>
            </ul>
        </div>
    </div>
    <!-- header -->

    <div id="content">
        <!-- Page Container -->
        <div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">
            <!-- The Grid -->
            <div class="w3-row">
                <!-- Left Column -->
                <div class="w3-col m3">
                    <!-- Profile -->
                    <div class="w3-card-2 w3-round w3-white">
                        <div class="w3-container">
                        <c:forEach items="${lstDV}" var="cd">
                            <h4 class="w3-center">${cd.getHoTen()}</h4>
                            <p class="w3-center"><img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xta1/v/t1.0-1/p160x160/13659180_872484462856413_3927572357328685990_n.jpg?oh=941ab7ef55409b99123394ab298e0d26&oe=58982A51&__gda__=1486107007_a774337df48b1a82bf64bfa437b0a9dc" class="w3-circle" style="height:106px;width:106px" alt="Avatar">
                            </p>
                            
                            
                            	<hr>
		                            <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i>Đoàn viên</p>
		                            <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i>${cd.getDiaChi()}</p>
		                            <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i>${cd.getNgaySinh()}</p>
		                            <p><i class="fa fa-phone fa-fw w3-margin-right w3-text-theme"></i>${cd.getSDT()}</p>
		                            <p><i class="fa fa-envelope fa-fw w3-margin-right w3-text-theme"></i>${cd.getMail()}</p>
                            	<hr>
							</c:forEach>
                            <p class="text-center"><a href="">Chi Tiết</a>
                            </p>
                        </div>
                    </div>
                    <br>
                    <hr>
                    <!-- List action and Mark -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <p class="text-center"><b>CÁC HOẠT ĐỘNG ĐÃ ĐĂNG KÝ</b>
                            </p>
                        </div>
                        <div class="panel-body">
                            <div class="w3-col m8">
                                <p class="text-center"><b>Hoạt động</b>
                                </p>
                                <p class="text-center"><a href="" class="ListAction">Ngày hội cán bộ đoàn giỏi</a>
                                </p>
                                <p class="text-center"><a href="" class="ListAction">Hiến máu nhân đạo</a>
                                </p>
                                <p class="text-center"><a href="" class="ListAction">Nhảy dân vũ</a>
                                </p>
                            </div>
                            <div class="w3-col m2">
                                <p class="text-center"><b>ĐRL</b>
                                </p>
                                <p class="text-center">5</p>
                                <p class="text-center">5</p>
                                <p class="text-center">5</p>
                            </div>
                            <div class="w3-col m2">
                                <p class="text-center"><b>ĐCTXH</b>
                                </p>
                                <p class="text-center">5</p>
                                <p class="text-center">5</p>
                                <p class="text-center">5</p>
                            </div>                        
                            <div class="w3-col m8">
                                <p class="text-center"><b>Tổng Điểm</b></p>                            
                            </div>
                            <div class="w3-col m2">
                                <p class="text-center"><b>15</b></p>
                            </div>
                            <div class="w3-col m2">
                                <p class="text-center"><b>15</b></p>
                            </div>
                        </div>
                    </div>
                    <br>
                </div>

                <!-- Middle Column -->
                <div class="w3-col m9">
                    <div class="w3-content">
                        <div id="id02" class="w3-modal" style="z-index:4">
                            <div class="w3-modal-content w3-animate-zoom">
                                <div class="w3-container w3-padding w3-blue">
                                    <span onclick="document.getElementById('id02').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
                                    <h2>Vũ Minh Quân </h2>
                                </div>
                                <div class="w3-row w3-margin w3-card-2 w3-white">
                                    <div class=" w3-container">
                                        <h7><b>20-11-2016 7:00 </b></h7>
                                        <h7><br><b>Đơn vị tổ chức : Đoàn trường</b></h7>
                                        <p>
                                            Thông Báo : Nghỉ buổi họp đoàn 
                                        </p>
                                    </div>
                                </div>                       
                            </div>
                        </div>
                        <div id="id01" class="w3-modal" style="z-index:4">
                            <div class="w3-modal-content w3-animate-zoom">
                                <div class="w3-container w3-padding w3-blue">
                                    <span onclick="document.getElementById('id01').style.display='none'" class="w3-right w3-xxlarge w3-closebtn"><i class="fa fa-remove"></i></span>
                                    <h2>Chi Tiết Hoạt Động</h2>
                                </div>
                                <div class="w3-row w3-margin w3-card-2 w3-white">
                                    <div class="w3-third">
                                        <img src="http://tinhdoanqnam.vn/news/uploads/news/25_2/thang-binh_1.jpg" style="width:100%;min-height:200px">
                                        <h4>Điểm Rèn Luyên : 5 điểm </h4> 
                                        <h4>Điểm Công tác Xã Hội : 5 điểm </h4> 

                                    </div>
                                    <div class="w3-twothird w3-container">
                                        <h2>NGÀY HỘI CÁN BỘ ĐOÀN GIỎI</h2>
                                        <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b></h7>
                                        <h7><br><b>Đơn vị tổ chức : Đoàn trường</b></h7>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur
                                             adipiscing elit, sed do eiusmod tempor 
                                             incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, adipiscing elit, nisi ut aliquip dolor sit amet, adipiscing elit, nisi ut aliquip dolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquipdolor sit amet, adipiscing elit, nisi ut aliquip
                                        </p>
                                    </div>
                                    <div class="w3-section">
                                         <button type="button" class="w3-btn w3-blue w3-margin-bottom" id="btn-click2" onclick="DisableBtn(this.id)">Đăng Ký</button>
                                    </div>
                                </div>                               
                            </div>
                        </div>
                        <div class="w3-row w3-margin w3-card-2 w3-white">
                            <div class="w3-third">
                                <img src="http://tinhdoanqnam.vn/news/uploads/news/25_2/thang-binh_1.jpg" style="width:100%;min-height:200px">
                            </div>
                            <div class="w3-twothird w3-container">
                                <h2>NGÀY HỘI CÁN BỘ ĐOÀN GIỎI</h2>
                                <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b>
                                </h7>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, adipiscing elit, nisi ut aliquip... <a href="">Xem thêm</a>
                                </p>
                                <button type="button" class="w3-btn w3-green w3-margin-bottom" id="btn-click1" onclick="document.getElementById('id01').style.display='block'">CHI TIẾT</button>
                            </div>
                        </div>

                        <div class="w3-row w3-margin w3-card-2 w3-white">
                            <div class="w3-third">
                                <img src="http://chuthapdoquangtri.org.vn/uploads/albums/dv.jpg" style="width:100%;min-height:200px">
                            </div>
                            <div class="w3-twothird w3-container">
                                <h2>HOẠT ĐỘNG HIẾN MÁU NHÂN ĐẠO</h2>
                                <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b>
                                </h7>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip... <a href="">Xem thêm</a>
                                </p>
                                <button type="button" class="w3-btn w3-green w3-margin-bottom" id="btn-click2" onclick="DisableBtn(this.id)">CHI TIẾT</button>
                            </div>
                        </div>

                        <div class="w3-row w3-margin w3-card-2 w3-white">
                            <div class="w3-third">
                                <img src="http://doanthanhnien.vn/Uploads/IMG_6060.jpg" style="width:100%;min-height:200px">
                            </div>
                            <div class="w3-twothird w3-container">
                                <h2>THAM GIA HOẠT ĐỘNG TRỒNG CÂY</h2>
                                <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b>
                                </h7>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip... <a href="">Xem thêm</a>
                                </p>
                                <button type="button" class="w3-btn w3-green w3-margin-bottom" id="btn-click3" onclick="DisableBtn(this.id)">CHI TIẾT</button>
                            </div>
                        </div>

                        <div class="w3-row w3-margin w3-card-2 w3-white">
                            <div class="w3-third">
                                <img src="http://hueuni.edu.vn/portal/data/anh/1(2).gif" style="width:100%;min-height:200px">
                            </div>
                            <div class="w3-twothird w3-container">
                                <h2>NHẢY DÂN VŨ</h2>
                                <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b>
                                </h7>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip... <a href="">Xem thêm</a>
                                </p>
                                <button type="button" class="w3-btn w3-green w3-margin-bottom" id="btn-click4" onclick="DisableBtn(this.id)">CHI TIẾT</button>
                            </div>
                        </div>

                        <div class="w3-row w3-margin w3-card-2 w3-white">
                            <div class="w3-third">
                                <img src="http://www.uef.edu.vn/newsimg/hoat-dong/ngay%20hoi%20doan%20vien.jpg" style="width:100%;min-height:200px">
                            </div>
                            <div class="w3-twothird w3-container">
                                <h2>KỶ NIỆM 84 NĂM THÀNH LẬP ĐOÀN THANH NIÊN</h2>
                                <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b>
                                </h7>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation... <a href="">Xem thêm</a>
                                </p>
                                <button type="button" class="w3-btn w3-green w3-margin-bottom" id="btn-click5" onclick="DisableBtn(this.id)">CHI TIẾT</button>
                            </div>
                        </div>

                        <div class="w3-row w3-margin w3-card-2 w3-white">
                            <div class="w3-third">

                                <img src="http://www2.cic.edu.vn/data/images/doan-thanh-nien/daihoi19/Anh%2013.jpg" style="width:100%;min-height:200px">
                            </div>
                            <div class="w3-twothird w3-container">
                                <h2>QUYÊN GÓP CHO ĐỒNG BÀO MIỀN TRUNG</h2>
                                <h7><b>20-11-2016 7:00 tại khu TT Việt-Đức</b>
                                </h7>
                                <p>
                                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation... <a href="">Xem thêm</a>
                                </p>
                                <button type="button" class="w3-btn w3-green w3-margin-bottom" id="btn-click6" onclick="DisableBtn(this.id)">CHI TIẾT</button>
                            </div>
                        </div>

                        <div class="w3-center w3-padding-32">
                            <ul class="w3-pagination">
                                <li><a class="w3-black" href="#">1</a>
                                </li>
                                <li><a class="w3-hover-black" href="#">2</a>
                                </li>
                                <li><a class="w3-hover-black" href="#">3</a>
                                </li>
                                <li><a class="w3-hover-black" href="#">4</a>
                                </li>
                                <li><a class="w3-hover-black" href="#">»</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- End Middle Column -->
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
                    <p class="text-muted"><strong>Trường Đại Học Sư Phạm Kỷ Thuật TPHCM</strong>
                    </p>
                    <p class="text-muted">Số 1, Võ Văn Ngân, phường Linh Chiếu, quận Thủ Đức</p>
                    <p class="text-muted">Email:</p>
                    <p class="text-muted">Doantruong@hcmute.edu.vn (Đoàn Thanh Niên)</p>
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