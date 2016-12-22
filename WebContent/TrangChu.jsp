<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Trang Chủ</title>
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>

<body>
	<div id="header">
		<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container">
				<!-- Brand and toggle get grouped for better mobile display -->
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">ĐOÀN THANH NIÊN SPKT</a>
				</div>		
				<!-- Collect the nav links, forms, and other content for toggling -->
				<div class="collapse navbar-collapse navbar-ex1-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="#">Trang Chủ</a></li>
						<li><a href="https://www.facebook.com/doantruongdhsuphamkythuat">Giới Thiệu</a></li>
						<li><a href="#">Liên Hệ</a></li>
						<li><a href="#"></a></li>
						<a href="#" class="btn btn-primary navbar-btn" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">ĐĂNG NHẬP</a>
					</ul>
				</div><!-- /.navbar-collapse -->	
			</div>	
		</nav>	
	</div> <!-- header -->

	<div id="content">
		<div class="container">
			<div id="id01" class="modal">
			    <form class="modal-content animate" action="DoanVienLogin.jsp">
					<div class="imgcontainer">
						<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
						<span class="glyphicon glyphicon-user center"></span>
					</div>

			        <div class="container">
			        	<form>
			        		<div class="row">
			        			<div class="col-sm-3">
			        				<label class="radio-inline">
			                            <input type="radio" name="optradio">Đoàn Viên
			                        </label>
			        			</div>
			        			<div class="col-sm-3">
			        				<label class="radio-inline">
			                            <input type="radio" name="optradio">Đoàn Khoa
			                        </label>
			        			</div>
			        			<div class="col-sm-3">
			        				<label class="radio-inline">
										<input type="radio" name="optradio"> Đoàn Trường
									</label>
			        			</div>
			        			<div class="col-sm-3">
			        				<label class="radio-inline">
										<input type="radio" name="optradio" class="text-center"> Admin
									</label>
			        			</div>
			        		</div>		        																				
			        	</form>
						<hr>

			            <label><b>Username</b>
			            </label>
			            <input type="text" placeholder="Enter Username" name="uname" required>

			            <label><b>Password</b>
			            </label>
			            <input type="password" placeholder="Enter Password" name="psw" required>

			            <button type="submit" class="btn btn-primary btn-lg">LOGIN</button>
			            <input type="checkbox" checked="checked" class="text-center"> Remember me

			             <div class="container" style="background-color:#f1f1f1">
				            <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
				            <span class="psw">Forgot <a href="#">password?</a></span>
				        </div>
			        </div>   
			    </form>
			</div>
			
			<div class="slideshow-container">
				<div class="mySlides fade">
					<img src="http://cyu.hcmute.edu.vn/Resources/imagesPortlet/e005651c-a2ba-4e57-971d-12a073c1a0b2/cover-new.jpg" style="width:100%; background-size: cover;">
				</div>

				<div class="mySlides fade">
					<img src="http://cyu.hcmute.edu.vn/Resources/imagesPortlet/e005651c-a2ba-4e57-971d-12a073c1a0b2/porlet_ao_dong_phuc_1.jpg" style="width:100%">
				</div>

				<div class="mySlides fade">
					<img src="http://cyu.hcmute.edu.vn/Resources/imagesPortlet/e005651c-a2ba-4e57-971d-12a073c1a0b2/cover.png" style="width:100%">
				</div>

			</div>
			<br>

			<div style="text-align:center">
			  <span class="dot"></span>
			  <span class="dot"></span>
			  <span class="dot"></span>
			</div>	
			<hr>

			<!-- Giới Thiệu -->
			<div class="panel panel-primary">
				<div class="panel-heading">
					<p class="text-center"><b>GIỚI THIỆU VỀ ĐOÀN THANH NIÊN CỘNG SẢN HỒ CHÍ MINH</b></p>
				</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-md-5">
							<img src="http://pm.hcmute.edu.vn/Resources/imagesPortlet/00ed84cd-d070-444a-b945-61d2b2df4068/533064.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
						</div>
						<div class="col-md-7">
							<div class="w3-container w3-white">
								<h3><b>Lịch Sử Hình Thành</b></h3>
								<p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla...</p><a href="">Xem Thêm</a>
							</div>
							<div class="w3-container w3-white">
								<h3><b>Điều Lệ Đoàn</b></h3>
								<p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla...</p><a href="">Xem Thêm</a>
							</div>				
						</div>
					</div>
				</div>
			</div>
			
			<hr>

			<div class="panel panel-primary">
				<div class="panel-heading">
					<p class="text-center"><b>CÁC HOẠT ĐỘNG NỖI BẬT</b></p>
				</div>
				<div class="panel-body">
					<!-- Photo Grid 1 -->
					<div class="w3-row-padding">
					    <div class="w3-third w3-container w3-margin-bottom">
					        <img src="http://chuthapdoquangtri.org.vn/uploads/albums/dv.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
					        <div class="w3-container w3-white">
					        	<hr>
					            <p><b>HOẠT ĐỘNG HIẾN MÁU NHÂN ĐẠO</b>
					            </p>
					            <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
					            <a href="" class="btn btn-primary">Xem Thêm</a>
					        </div>
					    </div>
					    <div class="w3-third w3-container w3-margin-bottom">
					        <img src="http://tinhdoanqnam.vn/news/uploads/news/25_2/thang-binh_1.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
					        <div class="w3-container w3-white">
					        	<hr>
					            <p><b>NGÀY HỘI CÁN BỘ ĐOÀN GIỎI</b>
					            </p>
					            <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
					            <a href="" class="btn btn-primary">Xem Thêm</a>
					        </div>
					    </div>
					    <div class="w3-third w3-container">
					        <img src="http://hueuni.edu.vn/portal/data/anh/1(2).gif" alt="Norway" style="width:100%" class="w3-hover-opacity">
					        <div class="w3-container w3-white">
					        	<hr>
					            <p><b>NHẢY DÂN VŨ</b>
					            </p>
					            <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
					            <a href="" class="btn btn-primary">Xem Thêm</a>
					        </div>
					    </div>
					</div>
					<hr>
					
					<!-- Photo Grid 2 -->
					<div class="w3-row-padding">
					    <div class="w3-third w3-container w3-margin-bottom">
					        <img src="http://www.uef.edu.vn/newsimg/hoat-dong/ngay%20hoi%20doan%20vien.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
					        <div class="w3-container w3-white">
					        	<hr>
					            <p><b>KỶ NIỆM 84 NĂM THÀNH LẬP ĐOÀN THANH NIÊN</b>
					            </p>
					            <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
					            <a href="" class="btn btn-primary">Xem Thêm</a>
					        </div>
					    </div>
					    <div class="w3-third w3-container w3-margin-bottom">
					        <img src="http://www2.cic.edu.vn/data/images/doan-thanh-nien/daihoi19/Anh%2013.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
					        <div class="w3-container w3-white">
					        	<hr>
					            <p><b>QUYÊN GÓP CHO ĐỒNG BÀO MIỀN TRUNG</b>
					            </p>
					            <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
					            <a href="" class="btn btn-primary">Xem Thêm</a>
					        </div>
					    </div>
					    <div class="w3-third w3-container">
					        <img src="http://doanthanhnien.vn/Uploads/IMG_6060.jpg" alt="Norway" style="width:100%" class="w3-hover-opacity">
					        <div class="w3-container w3-white">
					        	<hr>
					            <p><b>THAM GIA HOẠT ĐỘNG TRỒNG CÂY</b>
					            </p>
					            <p>Praesent tincidunt sed tellus ut rutrum. Sed vitae justo condimentum, porta lectus vitae, ultricies congue gravida diam non fringilla.</p>
					            <a href="" class="btn btn-primary">Xem Thêm</a>
					        </div>
					    </div>
					</div>
					<div class="w3-center w3-padding-32">
					    <ul class="w3-pagination">
					      	<li><a class="w3-black" href="#">1</a></li>
					      	<li><a class="w3-hover-black" href="#">2</a></li>
					      	<li><a class="w3-hover-black" href="#">3</a></li>
					      	<li><a class="w3-hover-black" href="#">4</a></li>
					      	<li><a class="w3-hover-black" href="#">»</a></li>
					    </ul>
					</div>
				</div>
			</div>	
		</div>		
	</div>  <!-- content -->

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
	</div>  <!-- footer -->
</body>

	<script>
		// Get the modal
		var modal = document.getElementById('id01');
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
			    modal.style.display = "none";
			}
		}
	</script>		    

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";
		    }
		    slideIndex++;
		    if (slideIndex> slides.length) {slideIndex = 1}
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
		</script>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</html>