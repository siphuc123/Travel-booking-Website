<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<!doctype html>
<html lang="en">

<head>
<title>Vinpearl | Trang Chủ</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS v5.2.1 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<!-- Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lipis/flag-icons@6.6.6/css/flag-icons.min.css" />
<link rel="shortcut icon" href="/assets/images/logo.png" type="image/x-icon">
<!-- CSS -->
<link href="/assets/css/mainCss/Carousel.css" rel="stylesheet">
<link href="/assets/css/main_style.css" rel="stylesheet">
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

	<!-- Header -->
	<header>
		<nav class="navbar navbar-expand-lg bg-info bg-opacity-75" style="padding: 0; margin: 0;">
			<div class="container-fluid">
				<a class="navbar-brand" href="/home" class="align-middle">
					<img src="/assets/images/logo.png" alt="" width="60" height="40" class="d-inline-block auto">
					<b class="text-decoration-none">
						<s:message code="home.title" />
					</b>
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-between" id="navbarSupportedContent">
					<ul class="navbar-nav mb-2 mb-lg-0">
						<li class="nav-item">
							<a class="nav-link active" aria-current="page" href="/home">
								<s:message code="home.home" />
							</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/shop/page">
								<s:message code="home.shop" />
							</a>
						</li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="/admin/home" id="navbarDropdown" role="button"
								data-bs-toggle="dropdown" aria-expanded="false">
								<s:message code="home.manager" />
							</a>
							<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
								<li>
									<a class="dropdown-item" href="/admin/product/page">
										<s:message code="home.ProductManage" />
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="/admin/category/index">
										<s:message code="home.CategoryManage" />
									</a>
								</li>
								<li>
									<hr class="dropdown-divider">
								</li>
								<li>
									<a class="dropdown-item" href="/admin/report/inventory-by-category">Xem các mặt hàng
										tồn kho.</a>
								</li>
							</ul>
						</li>
						<li class="nav-item">
							<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
								<s:message code="home.ask" />
							</a>
						</li>
					</ul>
					<form class="d-flex position-relative">
						<div class="box">
							<div class="container-2">
								<span class="icon">
									<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#FFC107"
										class="bi bi-search" viewBox="0 0 17 19">
                                <path
											d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg>
								</span>
								<input type="search" id="search" placeholder="Tìm kiếm...."
									onclick="location.href = '/admin/product/search' " />
							</div>
						</div>
						<div class="slash text-white mt-1 ps-2 pe-3">/</div>
						<c:choose>
							<c:when test="${empty username}">
								<a href="/account/login" class="ps-2 w-25 text-center btn btn-outline-dark">
									<s:message code="home.loginBtn" />
								</a>
							</c:when>
							<c:otherwise>
								<div class="nav-item dropdown no-arrow">
									<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
										data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<span class="mr-2 d-none d-lg-inline text-gray-600 small">
											<s:message code="home.welcome"></s:message>
											<b>${fullname}</b>
											,
										</span>
										<img alt="Avatar" class="avatar mx-1 rounded-circle" style="width: 40px; height: 40px;"
											src="/photo/${photo}">
									</a>
									<!-- Dropdown - User Information -->
									<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
										aria-labelledby="userDropdown">
										<a class="dropdown-item" href="/admin/myaccount/edit/${username}">
											<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
											Trang cá nhân
										</a>
										<a class="dropdown-item" href="#HeThong">
											<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
											Cài đặt
										</a>
										<c:if test="${isAdmin}">
											<a class="dropdown-item" href="/admin/home">
												<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
												Quản lý
											</a>
										</c:if>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="/account/logout" data-toggle="modal"
											data-target="#logoutModal">
											<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
											Đăng xuất.
										</a>
									</div>
								</div>
							</c:otherwise>
						</c:choose>
						<div class="slash text-white mt-1 ps-2 pe-1">/</div>
						<div class="dropdown">
							<button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown"
								id="dropdownMenuicon" data-mdb-toggle="dropdown" aria-expanded="false">
								<span class="fi fi-vn"></span>
								<i class="fas fa-ellipsis-v fa-lg text-dark"></i>
							</button>
							<ul class="dropdown-menu" class="selectpicker" style="position: absolute; left: -135%;"
								aria-labelledby="dropdownMenuButton1">
								<li>
									<a class="dropdown-item" href="?lang=vi">
										<span class="fi fi-vn"></span>
										Vietnam
									</a>
								</li>
								<li>
									<a class="dropdown-item" href="?lang=en">
										<span class="fi fi-us"></span>
										English
									</a>
								</li>
							</ul>
						</div>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
					class="active" aria-current="true" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
					aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
					aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item active" data-bs-interval="4000">
					<img src="${pageContext.request.contextPath}/assets/images/slide1_TrangAn.jpg"
						class="d-block w-100" alt="..." width="100%" height="600px">
					<div class="carousel-caption d-none d-md-block text-start">
						<h2>Tràng An</h2>
						<p>là một vùng du lịch tổng hợp gồm các di sản văn hóa và thiên nhiên thế giới do UNESCO
							công nhận ở Ninh Bình, Việt Nam Nơi đây sở hữu những hang động đẹp như động Thiên Hà, động
							Thiên Thanh,động Tiên, động Tiên Cá, động Vái Giời, động Thủy Cung, hang Bụt, hang Tam Cốc,
							hang động Tràng An, hang Sinh Dược;...</p>
						<p>
							<a class="btn btn-lg btn-primary" href="/shop/page">Khám phá thêm</a>
						</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="4000">
					<img src="${pageContext.request.contextPath}/assets/images/Slide2_HoiAn.jpg"
						class="d-block w-100" alt="..." width="100%" height="600px">
					<div class="carousel-caption d-none d-md-block">
						<h2>Hội An</h2>
						<p>Hội An là một thành phố trực thuộc tỉnh Quảng Nam, Việt Nam.Phố cổ Hội An từng là một
							thương cảng quốc tế sầm uất, gồm những di sản kiến trúc đã có từ hàng trăm năm trước, được
							UNESCO công nhận là di sản văn hóa thế giới từ năm 1999...</p>
						<p>
							<a class="btn btn-lg btn-primary" href="/shop/page">Tìm hiểu thêm</a>
						</p>
					</div>
				</div>
				<div class="carousel-item" data-bs-interval="4000">
					<img src="${pageContext.request.contextPath}/assets/images/slide3_HaLong.jpg"
						class="d-block w-100" alt="..." width="100%" height="600px">
					<div class="carousel-caption d-none d-md-block text-end">
						<h2>Hạ Long</h2>
						<p>Hạ Long được mệnh danh là thành phố du lịch, trung tâm du lịch lớn của Việt Nam. Năm
							2015 số du khách đến Hạ Long đạt trên 6 triệu lượt người. Vịnh Hạ Long đã được UNESCO công
							nhận là Di sản thiên nhiên thế giới 2 lần, Đồng thời Hạ Long đã được nhận Cúp quốc gia về môi
							trường là Thành phố xanh - sạch - đẹp...</p>
						<p>
							<a class="btn btn-lg btn-primary" href="/shop/page">Xem chi tiết</a>
						</p>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev control" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next control" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
		<!-- ================================================== -->
		<section class="py-5 text-center container">
			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light text-info">Các Tour du lịch đang được đặt nhiều nhất !</h1>
					<p class="lead text-muted">
						Hãy khám phá 3 tour du lịch cực hot bên dưới cái giá cực kì vừa phải, với rất nhiều phúc lợi
						mà Vinpearl mang lại cho bạn. Chỉ cần trả tiền và bạn sẽ được tận hưởng tất cả cùng Vinpearl !
						<br>
						<b>Big Love From VP.</b>
					</p>
				</div>
			</div>
		</section>
		<div class="container marketing pt-5">
			<div class="row">
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140" height="140"
						xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Hà Nội</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <image href="/assets/images/Heading_HN.jpg" height="249" width="199" />
                        <!-- <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text> -->
                    </svg>

					<h2 data-aos="zoom-in" data-aos-anchor-placement="top-bottom" data-aos-easing="linear"
						data-aos-duration="1500" data-aos-offset="500">Combo Tour Hà Nội</h2>
					<p>Hà Nội là thủ đô, thành phố trực thuộc trung ương và là một đô thị loại đặc biệt của
						nước Cộng hòa Xã hội chủ nghĩa Việt Nam.Hà Nội đã sớm trở thành một trung tâm chính trị, kinh
						tế và văn hóa ngay từ những buổi đầu của lịch sử Việt Nam ...</p>
					<p>
						<a class="btn btn-secondary" href="#1">Khám phá combo &raquo;</a>
					</p>
				</div>
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140" height="140"
						xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Hồ Chí Minh City</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <image href="/assets/images/Heading_HCM.jpg" height="200" width="300" />
                        <!-- <text x="50%" y="50%" fill="#000" dy=".3em">HCM City</text> -->
                    </svg>

					<h2>Combo Tour Hồ Chí Minh</h2>
					<p>Thành phố Hồ Chí Minh, còn gọi bằng tên cũ phổ biến là Sài Gòn, là thành phố lớn nhất
						Việt Nam và là một siêu đô thị trong tương lai gần. Đây còn là trung tâm kinh tế, chính trị,
						văn hóa, giải trí và giáo dục tại Việt Nam ...</p>
					<p>
						<a class="btn btn-secondary" href="/shop/page">Khám phá combo &raquo;</a>
					</p>
				</div>
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140" height="140"
						xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Đà Nẵng</title>
                        <rect width="100%" height="100%" fill="#777" />
                        <image href="/assets/images/Heading_DN.jpg" height="185" width="295" />
                        <!-- <text x="50%" y="50%" fill="#777" dy=".3em">140x140</text> -->
                    </svg>

					<h2>Combo Tour Đà Nẵng</h2>
					<p>Đà Nẵng là một thành phố trực thuộc trung ương, là thành phố tổng hợp đa ngành, đa lĩnh
						vực; trung tâm chính trị - kinh tế - xã hội với vai trò là trung tâm công nghiệp, tài chính,
						du lịch, dịch vụ, đổi mới sáng tạo ...</p>
					<p>
						<a class="btn btn-secondary" href="/shop/page">Khám phá combo &raquo;</a>
					</p>
				</div>
			</div>

			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7" id="1">
					<h2 class="featurette-heading">
						Hà Nội.
						<span class="text-muted">(Capital of Vietnam).</span>
					</h2>
					<p class="lead">Những công trình từ thời Pháp thuộc, hàng quán vỉa hè bày bán đặc sản địa
						phương, xe máy luồn lách trên đường đông đúc... là những ấn tượng đầu tiên của du khách về Hà
						Nội. Với nhiều người, Hà Nội có tất cả những thứ thú vị để khám phá nơi đây theo cách riêng
						của mình. Hà Nội được ví như trái tim của Việt Nam, do đó du khách có thể di chuyển thuận lợi
						đến thủ đô bằng máy bay, tàu hỏa, xe khách, ôtô riêng hay xe máy từ các tỉnh thành khác. Ở đây
						cũng có rất nhiều nơi để tham quan và khám phá, đồng thời cũng là nơi có nhiều khu vui chơi
						giải trí, đồ ăn đồ uống phong phú đa dạng...</p>
					<p>
						<a class="btn btn-outline-primary" href="/shop/page">Đặt tour này 🏘️</a>
					</p>
				</div>
				<div class="col-md-5">
					<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
                        <title>Ha Noi Capital</title>
                        <rect width="100%" height="100%" fill="#d2b48c" />
                        <text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
                        <image href="/assets/images/Heading_HN.jpg" height="500" width="500" />
                    </svg>

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2" id="2">
					<h2 class="featurette-heading">
						Thành phố Hồ Chí Minh.
						<span class="text-muted">(Ho Chi Minh City)</span>
					</h2>
					<p class="lead">Các địa điểm du lịch của thành phố tương đối đa dạng. Với hệ thống 11 viện
						bảo tàng, chủ yếu về đề tài lịch sử, Thành phố Hồ Chí Minh đứng đầu Việt Nam về số lượng viện
						bảo tàng. cùng nhiều công trình kiến trúc quan trọng, như Trụ sở Ủy ban Nhân dân Thành phố,
						Nhà hát Lớn, Bưu điện trung tâm, Bến Nhà Rồng,... Dinh Độc Lập và Thư viện Khoa học Tổng hợp
						được xây dựng dưới thời Việt Nam Cộng hòa. Thành phố Hồ Chí Minh còn là một trung tâm mua sắm
						và giải trí. Bên cạnh các phòng trà ca nhạc, quán bar, vũ trường, sân khấu, thành phố có khá
						nhiều khu vui chơi như Công viên Đầm Sen, Suối Tiên, Thảo Cầm Viên. Các khu mua sắm, như Chợ
						Bến Thành, Diamond Plaza,... hệ thống các nhà hàng, quán ăn cũng là một thế mạnh của du lịch
						thành phố...</p>
					<p>
						<a class="btn btn-outline-success" href="/shop/page">Đặt tour này 🐉</a>
					</p>
				</div>
				<div class=" col-md-5 order-md-1">
					<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>HCM City</title>
                                <rect width="100%" height="100%" fill="#d2b48c" />
                                <text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
                                <image href="/assets/images/Heading_HCM.jpg" height="500"
							width="610" />
                            </svg>

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette" id="3" data-aos="fade-left">
				<div class="col-md-7">
					<h2 class="featurette-heading">
						Đà Nẵng.
						<span class="text-muted">(Da Nang City).</span>
					</h2>
					<p class="lead">là một thành phố có nhiều tiềm năng để phát triển du lịch, là trung tâm du
						lịch lớn hàng đầu của Việt Nam được bao bọc bởi núi cao với đèo Hải Vân được mệnh danh là
						"Thiên hạ đệ nhất hùng quan". Phía tây là Khu nghỉ dưỡng Sun World Bà Nà Hills nằm ở độ cao
						trên 1.400m với hệ thống 8 tuyến cáp treo. cùng khu vui chơi giải trí trong nhà Fantasy Park
						lớn nhất Đông Nam Á và khu làng Pháp lớn nhất Việt Nam...</p>
					<p>
						<a class="btn btn-outline-dark" href="/shop/page">Đặt tour này 😎</a>
					</p>
				</div>
				<div class=" col-md-5">
					<svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false">
                                <title>Da Nang City</title>
                                <rect width="100%" height="100%" fill="#d2b48c" />
                                <text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text>
                                <image href="/assets/images/Heading_DN.jpg" height="500" width="650" />
                            </svg>
				</div>
				<div class="alert text-center mt-4 justify-content-center d-flex"
					id="navbarToggleExternalContent">
					<div class="bg-warning p-2 w-50 bg-opacity-25 text-center rounded-pill ">
						<h4 class="text-black">Chúc mừng năm mới 2023 !</h4>
						<span class="text-muted">~ Thực tập sinh Nguyễn Sĩ Trọng Phúc ~</span>
					</div>
				</div>
			</div>
			<hr class="featurette-divider">
			<div class="text-center pb-5 bg-secondary bg-opacity-25 rounded-pill rounded-bottom">
				<a href="/shop/page" style="text-decoration: none;">
					<b class="fs-3 opacity-100 continue">Kiếm thêm các tour du lịch khác tại đây ...</b>
				</a>
			</div>
			<!-- /END THE FEATURETTES -->
		</div>
		<footer class="text-muted bg-gradient py-1">
			<!-- Grid container -->
			<div class="container p-4">
				<!-- Section: Images -->
				<section class="Footer_Images">
					<div class="row row-cols-3 row-cols-lg-3 row-cols-md-3 row-cols-sm-3">
						<div class="col-lg-2 col-md-2 mb-2 mb-md-0 item">
							<div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
								<img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/113.webp" class="w-100" />
								<a href="#!">
									<div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 mb-4 mb-md-0 item">
							<div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
								<img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/111.webp" class="w-100" />
								<a href="#!">
									<div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 mb-4 mb-md-0 item">
							<div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
								<img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/112.webp" class="w-100" />
								<a href="#!">
									<div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 mb-4 mb-md-0 item">
							<div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
								<img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/114.webp" class="w-100" />
								<a href="#!">
									<div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 mb-4 mb-md-0 item">
							<div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
								<img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/115.webp" class="w-100" />
								<a href="#!">
									<div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
								</a>
							</div>
						</div>
						<div class="col-lg-2 col-md-2 mb-4 mb-md-0 item">
							<div class="bg-image hover-overlay ripple shadow-1-strong rounded" data-ripple-color="light">
								<img src="https://mdbcdn.b-cdn.net/img/new/fluid/city/116.webp" class="w-100" />
								<a href="#!">
									<div class="mask" style="background-color: rgba(251, 251, 251, 0.2);"></div>
								</a>
							</div>
						</div>
					</div>
				</section>
				<!-- Section: Images -->
			</div>
			<hr>
			<section
				class="d-flex justify-content-center justify-content-lg-between p-3 border-bottom container">
				<!-- Left -->
				<div class="me-5 d-none d-lg-block text-accent">
					<span class="text-accent">Kết nối với chúng tôi qua các nguồn sau:</span>
				</div>
				<!-- Left -->

				<!-- Right -->
				<div class="socials">
					<div class="vp-social-links">
						<a href="" class="me-4 link-secondary">
							<i class="fab fa-facebook-f"></i>
						</a>
						<a href="https://www.facebook.com/Vinpearl/?referal=Vinpearl" target="_blank"
							class="vp-social-icon fb for-all me-4 text-reset text-decoration-none">
							<svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" fill="#3b5998"
								class="bi bi-facebook" viewBox="0 0 24 24">
                                <path
									d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                            </svg>
						</a>
						<a href="https://www.youtube.com/channel/UC2tvH7ONGc-UTyEeVg-ojfQ" target="_blank"
							class="vp-social-icon yt for-all me-4 text-reset text-decoration-none">
							<svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" fill="#FF0000"
								class="bi bi-youtube" viewBox="0 0 24 24">
                                <path
									d="M8.051 1.999h.089c.822.003 4.987.033 6.11.335a2.01 2.01 0 0 1 1.415 1.42c.101.38.172.883.22 1.402l.01.104.022.26.008.104c.065.914.073 1.77.074 1.957v.075c-.001.194-.01 1.108-.082 2.06l-.008.105-.009.104c-.05.572-.124 1.14-.235 1.558a2.007 2.007 0 0 1-1.415 1.42c-1.16.312-5.569.334-6.18.335h-.142c-.309 0-1.587-.006-2.927-.052l-.17-.006-.087-.004-.171-.007-.171-.007c-1.11-.049-2.167-.128-2.654-.26a2.007 2.007 0 0 1-1.415-1.419c-.111-.417-.185-.986-.235-1.558L.09 9.82l-.008-.104A31.4 31.4 0 0 1 0 7.68v-.123c.002-.215.01-.958.064-1.778l.007-.103.003-.052.008-.104.022-.26.01-.104c.048-.519.119-1.023.22-1.402a2.007 2.007 0 0 1 1.415-1.42c.487-.13 1.544-.21 2.654-.26l.17-.007.172-.006.086-.003.171-.007A99.788 99.788 0 0 1 7.858 2h.193zM6.4 5.209v4.818l4.157-2.408L6.4 5.209z" />
                            </svg>
						</a>
						<a href="https://www.instagram.com/vinpearl.official/?hl=vi" target="_blank"
							class="vp-social-icon for-all me-4 text-reset">
							<svg xmlns="http://www.w3.org/2000/svg" width="42" height="42" fill="#8a3ab9"
								class="bi bi-instagram" viewBox="0 0 24 24">
                                <path
									d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                            </svg>
						</a>
					</div>
				</div>
				<!-- Right -->
			</section>
			<!-- Grid container -->
			<div class=" bg-midskyblue p-4 text-center">
				<!-- Section: Links  -->
				<section class="">
					<div class="container text-center text-md-start mt-5">
						<!-- Grid row -->
						<div class="row mt-3">
							<!-- Grid column -->
							<div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
								<!-- Content -->
								<h6 class="text-uppercase fw-bold mb-4 text-warning opacity-100">
									<img src="/assets/images/logo.png" alt="" width="90" height="60"
										class="d-inline-block auto">
									Chào mừng bạn
								</h6>
								<p class="text-light">Đánh thức mọi giác quan với hệ sinh thái nghỉ dưỡng ven biển đẳng
									cấp của Vinpearl !</p>
							</div>
							<!-- Grid column -->

							<!-- Grid column -->
							<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
								<!-- Links -->
								<h6 class="text-uppercase fw-bold mb-4 text-warning">Về Vinpearl</h6>
								<p>
									<a href="#!" class="text-light text-decoration-none">Về chúng tôi</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Tuyển dụng</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Liên hệ</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Câu hỏi thường gặp</a>
								</p>
							</div>
							<!-- Grid column -->

							<!-- Grid column -->
							<div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
								<!-- Links -->
								<h6 class="text-uppercase fw-bold mb-4 text-warning">Điều khoản & Quy định</h6>
								<p>
									<a href="#!" class="text-light text-decoration-none">Điều khoản chung</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Quy định chung</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Quy định về thanh toán</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Quy định về xác nhận thông tin đặt
										phòng</a>
								</p>
							</div>
							<!-- Grid column -->

							<!-- Grid column -->
							<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
								<!-- Links -->
								<h6 class="text-uppercase fw-bold mb-4 text-warning">
									<a href="#" class="text-reset text-decoration-none"> Tin tức & sự kiện</a>
								</h6>
								<p>
									<a href="#!" class="text-light text-decoration-none">Tin tức công ty</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Cẩm nang du lịch</a>
								</p>
								<p>
									<a href="#!" class="text-light text-decoration-none">Thành tựu</a>
								</p>
							</div>
							<!-- Grid column -->
						</div>
						<!-- Grid row -->
					</div>
					<hr>
					<div class="me-5 d-none d-lg-block text-accent">
						<p class="mb-1">
							Copyright © 2023 Vinpearl.com
							<i class="fs-3">x</i>
							Trọng Phúc. All rights reserved
						</p>
						<p class="mb-0">
							Bạn là người mới?
							<a href="/home">Ghé thăm trang chủ.</a>
							hoặc có thể đọc
							<a href="/guide">hướng dẫn sơ bộ về Vinpearl ở đây</a>
							.
						</p>
					</div>
				</section>
			</div>
		</footer>
		<!-- Back to top button -->
		<div class="back-to-top-wrapper">
			<a href="#" class="back-to-top-link" aria-label="Scroll to Top" id="myBtn">
				<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#f39f2d"
					class="bi bi-caret-up-fill" viewBox="0 0 16 16">
                    <path
						d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
                </svg>
			</a>
		</div>
	</main>
	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Bạn thực sự muốn thoát?</h5>
					<button class="btn btn-close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true"></span>
					</button>
				</div>
				<div class="modal-body">Chọn nút "Đăng xuất" bên dưới nếu bạn chắc chắn đã xong việc !</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Chưa</button>
					<a class="btn btn-warning" href="/account/logout">Đăng xuất</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Bootstrap JavaScript Libraries -->
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous">
		
	</script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous">
		
	</script>
	<!-- BTT -->
	<script>
		// Get the button
		let BTT = document.getElementById("myBtn");

		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				BTT.style.display = "block";
			} else {
				BTT.style.display = "none";
			}
		}
		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}
		/* Flag - Change Language */
		$(function() {
			$('.selectpicker').selectpicker();
		});
	</script>

	<!-- Start Script -->
	<!-- jQuery -->
	<script src="/assets/js/jquery-2.1.0.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<!-- Bootstrap -->
	<script src="/assets/js/popper.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>

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
		$(document).ready(function() {
			$("a[href*=lang]").on("click", function() {
				var param = $(this).attr("href");
				$.ajax({
					url : "/home" + param,
					success : function() {
						location.reload();
					}
				});
				return false;
			})
		})
	</script>
	<!-- End Script -->
</body>

</html>