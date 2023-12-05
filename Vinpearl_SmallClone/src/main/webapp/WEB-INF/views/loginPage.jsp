<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Vinpearl | Đăng nhập</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- favicon -->
<link rel="shortcut icon" href="/assets/images/logo.png" type="image/x-icon">
<!-- Bootstrap CSS v5.2.1 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!-- CSS -->
<link rel="stylesheet" href="/assets/css/loginCss/style.css">
<link rel="stylesheet" href="/assets/css/main_style.css">
</head>

<body>
	<!-- ***** Preloader Start ***** -->
	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<div id="pageContent">
		<!-- Header -->
		<header>
			<nav class="navbar navbar-expand-lg bg-info bg-opacity-75">
				<div class="container-fluid">
					<a class="navbar-brand" href="/home" class="align-middle">
						<img src="/assets/images/logo.png" alt="" width="60" height="40" class="d-inline-block auto">
						<b>Du lịch là Vui</b>
					</a>
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav me-auto mb-2 mb-lg-0">
							<li class="nav-item">
								<a class="nav-link active" aria-current="page" href="/home">Trang chủ</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" href="/shop/page">Đặt tour ngay</a>
							</li>
							<li class="nav-item dropdown">
								<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
									data-bs-toggle="dropdown" aria-expanded="false"> Thông tin thêm </a>
								<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
									<li>
										<a class="dropdown-item" href="#">Các địa điểm nổi tiếng ở Việt Nam</a>
									</li>
									<li>
										<a class="dropdown-item" href="#">Những món ăn nên thử qua</a>
									</li>
									<li>
										<hr class="dropdown-divider">
									</li>
									<li>
										<a class="dropdown-item" href="#">Tìm hiểu về phong tục Việt Nam.</a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true"> Hỏi đáp và trợ
									giúp </a>
							</li>
						</ul>
						<form class="d-flex position-relative">
							<input class="form-control me-2" type="search" placeholder="Tìm kiếm ở đây..."
								aria-label="Search">
							<button class="btn border-0 position-absolute search" type="submit" style="right: 2%;">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
									class="bi bi-search" viewBox="0 0 17 18">
                                    <path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                                </svg>
							</button>
						</form>
					</div>
				</div>
			</nav>
		</header>
		<main>
			<div class="alert alert-${color} text-dark fw-bold fade show d-flex justify-content-between"
				role="alert" id="alert" 
				style="position: absolute; right: 1%; top: 12%; width: 22%; display: none; z-index: 999;">
				${msg}
				<button type="button" id="alertClose" class="btn-close" data-bs-dismiss="alert"
					aria-label="Close"></button>
			</div>
			<div class="d-flex align-items-center h-100 pt-5">
				<div class="container row">
					<div class="col-xxl-4 col-xl-5 col-lg-6 col-md-8 col-sm-12 col-xs-12 ms-auto">
						<div class="bg-white rounded shadow-lg">
							<h1 class="text-center h5 pt-5 pb-3">
								<div class="d-flex justify-content-center pr-4 pt-2 pb-3 container-left">
									<img alt="" class="header-logo" width="35%" height="70px"
										src="https://storage.googleapis.com/vin3sprodauth0.vin3s.vn/vinpearl_login_logo-01.png">
									<img alt="" class="header-logo" width="35%" height="70px"
										src="https://storage.googleapis.com/vin3sprodauth0.vin3s.vn/vinpearl_login_logo-02.png">
								</div>
							</h1>
							<form class="py-5 py-sm-3 py-md-4" action="/account/login" method="post"
								enctype="multipart/form-data">
								<div class="position-relative maxWidth320 d-flex px-2">
									<input type="text" placeholder="Email or Username..." name="username"
										class="border-1 border-opacity-50 w-100 border-warning rounded-2 tk" />
								</div>
								<div class="position-relative maxWidth320 px-2 d-flex pt-2">
									<input type="password" placeholder="Mật khẩu / Password" name="password"
										class="border-1 border-opacity-50 w-100 border-warning rounded-2 mk" />
								</div>
								
								<div class="row py-3">
									<div class="form-check col-6 left">
										<input type="checkbox" class="form-check-input" id="remember" name="remember">
										<label class="form-check-label text-accent text-decoration-none helplogin" for="remember">
											Ghi nhớ tài khoản </label>
									</div>
									<div class="form-check col-6 right">
										<a href="#" class="text-accent text-decoration-none helplogin"> Quên mật khẩu </a>
									</div>
								</div>
								<div id="submitBtn" class="text-center maxWidth320">
									<button type="submit" class="btn w-75 btn-lg shadow-sm rounded-3 submit_Btn"
										id="submit_Btn">Đăng nhập</button>
									<div class="pt-2">
										Chưa có tài khoản?
										<a class="text-decoration-none text-accent" href="/register"> Đăng ký ngay</a>
									</div>
								</div>
							</form>
							<div class="pb-1"></div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
	<!-- Start Script -->
	<!-- jQuery -->
	<script src="/assets/js/jquery-2.1.0.min.js"></script>

	<!-- Plugins -->
	<script src="/assets/js/owl-carousel.js"></script>
	<script src="/assets/js/accordions.js"></script>
	<script src="/assets/js/datepicker.js"></script>
	<script src="/assets/js/scrollreveal.min.js"></script>
	<script src="/assets/js/waypoints.min.js"></script>
	<script src="/assets/js/jquery.counterup.min.js"></script>
	<script src="/assets/js/imgfix.min.js"></script>
	<script src="/assets/js/slick.js"></script>
	<script src="/assets/js/lightbox.js"></script>
	<script src="/assets/js/isotope.js"></script>

	<!-- Global Init -->
	<script src="assets/js/custom.js"></script>

	<script>
		/* Tắt preloader */
		$(function() {
			$(window).on("load", function() {
				$('#preloader').fadeOut('slow', function() {
					$(this).remove();
				});
			});
		});
		// ---------------------------------------------- //
		/* Thông báo */
		$('#alertClose').on('click', function() {
			$("#alert").hide();
		});

		$('#submit_Btn').on('click', function() {
			$("#alert").show();
		});
	</script>

	<!-- Bootstrap JavaScript Libraries -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
	<!-- End Script -->
</body>

</html>