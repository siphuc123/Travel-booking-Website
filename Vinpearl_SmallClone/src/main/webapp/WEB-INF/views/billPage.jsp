<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Vinpearl | Hóa đơn của bạn</title>
    <!-- Bootstrap CSS v5.2.1 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <link rel="shortcut icon" href="/assets/images/logo.png" type="image/x-icon">
    <!-- CSS -->
    <link rel="stylesheet" href="/assets/css/billCss/bill.css">
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

	<!-- Header -->
	<header>
		<nav class="navbar navbar-expand-lg bg-info bg-opacity-75">
			<div class="container-fluid">
				<a class="navbar-brand" href="/home" class="align-middle">
					<img src="/assets/images/logo.png" alt="" width="60" height="40" class="d-inline-block auto">
				</a>
				<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
					data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
					aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav me-auto mb-2 mb-lg-0 w-75">
						<li class="nav-item ps-3">
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
							<a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">
								Hỏi đáp và trợ giúp </a>
						</li>
					</ul>
					<form class="d-flex position-relative">
						<input class="form-control me-2" type="search" placeholder="Tìm kiếm ở đây..."
							aria-label="Search">
						<button class="btn border-0 position-absolute search" type="submit" style="right: 35%;">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor"
								class="bi bi-search" viewBox="0 0 17 18">
              <path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
            </svg>
						</button>
						<a href="/login" class="ps-2 w-50 text-center btn btn-outline-dark">
							Đăng nhập </a>
					</form>
				</div>
			</div>
		</nav>
	</header>
	<div class="bg-black bg-opacity-10 body">
		<main class="container">
			<div class="py-4 text-center w-100">
				<div class="bg-white shadow pt-5 pb-4 rounded-5">
					<h1 class="text-center">
						<div class="d-flex justify-content-center pr-4 pt-2 pb-3 container-left">
							<img alt="" class="header-logo" width="15%" height="10%"
								src="https://storage.googleapis.com/vin3sprodauth0.vin3s.vn/vinpearl_login_logo-01.png">
							<img alt="" class="header-logo" width="15%" height="10%"
								src="https://storage.googleapis.com/vin3sprodauth0.vin3s.vn/vinpearl_login_logo-02.png">
						</div>
					</h1>
					<h2>Vinpearl Club</h2>
					<p class="lead">
						<strong>
							<a href="/login" class="text-accent">Đăng nhập </a>/
							<a href="/register" class="text-accent"> Đăng ký</a>
							để hưởng thêm ưu đãi dành riêng cho thành viên của chúng tôi
						</strong>
					</p>
					<p class="text-muted">Tích lũy giao dịch & nhận đêm nghỉ miễn phí</p>
				</div>
			</div>
			<div class="row g-5">
				<div class="col-md-6 col-lg-5 order-md-last">
					<div class="bg-accent shadow px-4 py-4 shadow-lg">
						<div class="card">
							<div class="card-body mx-4">
								<div class="container">
									<div class="my-3 text-center">
										<img src="/assets/images/logo.png" alt="" width="30%" height="25%">
									</div>
									<p class="my-5 mx-3 text-center text-accent fw-semibold" style="font-size: 20px;">
										Cảm ơn khách hàng 😎⭐
										<br>
										Mong bạn có một chuyến đi vui vẻ
									</p>
									<div class="row">
										<ul class="list-unstyled">
											<li class="text-black">
												Họ tên:
												<b> {{firstName}} {{lastName}}</b>
											</li>
											<li class="text-muted mt-1">
												<span class="text-black">Email:</span>
												<strong class="text-black">{{email}}</strong>
											</li>
											<li class="text-black mt-1">
												Số điện thoại:
												<b>{{tel}}</b>
											</li>
											<li class="text-black mt-1">
												Ngày xuất đơn:
												<b> {{datetime}} </b>
											</li>
										</ul>
										<hr>
										<div class="col-xl-8">
											<p class="fw-semibold">Tour khám phá Đà Nẵng 2 Ngày</p>
										</div>
										<div class="col-xl-4">
											<p class="float-end">4.000.000 đ</p>
										</div>
										<hr>
									</div>
									<div class="row">
										<div class="col-xl-8">
											<p class="fw-semibold">Tour khám phá Hội An 3 Ngày</p>
										</div>
										<div class="col-xl-4">
											<p class="float-end">4.520.000 đ</p>
										</div>
										<hr>
									</div>
									<div class="row">
										<div class="col-xl-7">
											<p>Mã ưu đãi</p>
										</div>
										<div class="col-xl-5">
											<p class="float-end">{{coupon}}</p>
										</div>
										<hr style="border: 2px solid black;">
									</div>
									<div class="row text-black">

										<div class="col-xl-12">
											<p class="float-end fw-bold">Tổng: 8.520.000 đ</p>
										</div>
										<hr style="border: 2px solid black;">
									</div>
									<div class="text-end my-3">
										<img
											src="https://www.onlygfx.com/wp-content/uploads/2017/11/quality-control-certified-stamp-4.png"
											alt="stamp" width="30%" height="30%">

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="card text-center mx-5 mt-3 shadow-lg pt-3">
						<p>
							Hãy đọc kĩ thông tin, nếu mọi thứ đã ổn hãy chọn nút
							<strong>"Tiếp tục thanh toán"</strong>
							.
						</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-7">
					<div class="bg-black border border-2 border-dark shadow-lg rounded">
						<div class="card">
							<div class="card-body">
								<h4 class="mb-3 text-center">
									<svg width="32px" height="32px" viewBox="0 0 1060 1290" class="icon" version="1.1"
										xmlns="http://www.w3.org/2000/svg" fill="#000000">
                  <g id="SVGRepo_bgCarrier" stroke-width="0"></g>
                  <g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g>
                  <g id="SVGRepo_iconCarrier">
                    <path
											d="M1037.309504 1024H16.636881c-9.150284 0-16.636881-7.486596-16.636881-16.636881V473.319253c0-9.150284 7.486596-16.636881 16.636881-16.636881h1020.672623c9.150284 0 16.636881 7.486596 16.636881 16.636881v534.87571c0 8.31844-7.486596 15.805037-16.636881 15.805037zM33.273761 990.726239h987.398863V489.956133H33.273761v500.770106z"
											fill="#131313"></path>
                    <path
											d="M927.506093 590.609261H109.803412c-9.150284 0-16.636881-7.486596-16.636881-16.636881s7.486596-16.636881 16.636881-16.63688h817.702681c9.150284 0 16.636881 7.486596 16.63688 16.63688s-7.486596 16.636881-16.63688 16.636881zM584.786353 693.75792H116.458164c-9.150284 0-16.636881-7.486596-16.63688-16.63688s7.486596-16.636881 16.63688-16.636881h468.328189c9.150284 0 16.636881 7.486596 16.63688 16.636881s-7.486596 16.636881-16.63688 16.63688zM927.506093 693.75792H690.430544c-9.150284 0-16.636881-7.486596-16.63688-16.63688s7.486596-16.636881 16.63688-16.636881h237.075549c9.150284 0 16.636881 7.486596 16.63688 16.636881s-7.486596 16.636881-16.63688 16.63688zM289.481722 927.506093H116.458164c-9.150284 0-16.636881-7.486596-16.63688-16.636881s7.486596-16.636881 16.63688-16.636881h173.023558c9.150284 0 16.636881 7.486596 16.636881 16.636881s-7.486596 16.636881-16.636881 16.636881zM725.367994 967.434606c-4.15922 0-8.31844-1.663688-11.645817-4.991064l-110.635256-110.635256c-6.654752-6.654752-6.654752-16.636881 0-23.291633 6.654752-6.654752 16.636881-6.654752 23.291633 0l110.635256 110.635256c6.654752 6.654752 6.654752 16.636881 0 23.291633-2.495532 3.327376-7.486596 4.991064-11.645816 4.991064z"
											fill="#131313"></path>
                    <path
											d="M613.06905 969.930138c-4.15922 0-8.31844-1.663688-11.645817-4.991064-6.654752-6.654752-6.654752-16.636881 0-23.291633l115.62632-115.62632c6.654752-6.654752 16.636881-6.654752 23.291633 0 6.654752 6.654752 6.654752 16.636881 0 23.291633L624.714866 964.939074c-3.327376 3.327376-7.486596 4.991064-11.645816 4.991064z"
											fill="#131313"></path>
                    <path
											d="M422.576767 580.627132L981.575955 21.627945c9.150284-7.486596 23.291633-6.654752 30.778229 2.495532l27.450853 27.450853c9.150284 7.486596 9.982128 21.627945 2.495532 30.778229L483.301381 641.351747l-85.679935 24.95532 24.955321-85.679935z"
											fill="#7BAEEF"></path>
                    <path
											d="M397.621446 682.943948c-4.15922 0-8.31844-1.663688-11.645816-4.991064-4.15922-4.15922-5.822908-10.813972-4.159221-16.636881l24.955321-85.679935c0.831844-2.495532 2.495532-4.991064 4.15922-6.654752l558.999188-558.999188 0.831844-0.831844c15.805037-13.309504 39.928513-11.645816 53.238018 4.15922l26.619009 26.619009c14.973193 13.309504 17.468725 37.432981 4.15922 53.238018 0 0.831844-0.831844 0.831844-0.831844 0.831844L495.779041 652.997563c-1.663688 1.663688-4.15922 3.327376-7.486596 4.15922l-85.679935 24.955321c-1.663688 0.831844-3.327376 0.831844-4.991064 0.831844z m39.928513-93.166531l-15.805036 52.406174 52.406174-14.973193 555.671811-555.671811c1.663688-2.495532 0.831844-4.991064-0.831844-7.486597l-0.831844-0.831844-27.450853-27.450853-0.831844-0.831844c-1.663688-2.495532-4.991064-2.495532-7.486596-0.831844L437.549959 589.777417z"
											fill="#131313"></path>
                    <path
											d="M855.135662 382.648253c-4.15922 0-8.31844-1.663688-11.645816-4.991064-6.654752-6.654752-6.654752-16.636881 0-23.291633l149.731925-149.731925L895.896019 108.139724c-6.654752-6.654752-6.654752-16.636881 0-23.291633 6.654752-6.654752 16.636881-6.654752 23.291633 0l108.971568 108.971568c3.327376 3.327376 4.991064 7.486596 4.991064 11.645816 0 4.15922-1.663688 8.31844-4.991064 11.645817l-161.377742 161.377741c-3.327376 2.495532-7.486596 4.15922-11.645816 4.15922z"
											fill="#131313"></path>
                  </g>
                </svg>
									Thông tin cá nhân
								</h4>
								<form class="needs-validation" novalidate>
									<div class="row g-3">
										<div class="col-sm-6">
											<label for="firstName" class="form-label">Họ</label>
											<input type="text" class="form-control" id="firstName" placeholder="" value="" required
												>
											<div class="invalid-feedback">Mời bạn nhập họ của mình.</div>
										</div>

										<div class="col-sm-6">
											<label for="lastName" class="form-label">Tên đệm và tên</label>
											<input type="text" class="form-control" id="lastName" placeholder="" value="" required
												>
											<div class="invalid-feedback">Mời bạn nhập họ của Tên đệm và tên.</div>
										</div>
										<div class="col-sm-6">
											<label for="email" class="form-label">Email nhận thông tin đơn hàng</label>
											<input type="email" class="form-control" id="email" placeholder="you@example.com"
												required>
											<div class="invalid-feedback">Mời bạn nhập email để nhận được hóa đơn !.</div>
										</div>

										<div class="col-sm-6">
											<label for="tel" class="form-label">Điện thoại</label>
											<input type="tel" class="form-control" id="tel"
												placeholder="Nhập số điện thoại của bạn" required>
											<div class="invalid-feedback">Mời nhập số điện thoại để tiện cho việc liên lạc.</div>
										</div>

										<div class="col-12">
											<label for="address" class="form-label">
												Địa chỉ đưa rước
												<span class="text-muted fst-italic">(Dựa theo đơn hàng có những nơi đưa đón bên
													dưới)</span>
											</label>
											<select class="form-select" aria-label="Default select example">
												<option selected>Chọn nơi tuyến xe đi qua</option>
												<option value="1">Hà Nội</option>
												<option value="2">Thành Phố Hồ Chí Minh</option>
												<option value="3">Khác</option>
											</select>
										</div>

										<div class="col-12">
											<label for="address2" class="form-label-sub">
												Ghi chú
												<span class="text-muted">(Optional)</span>
											</label>
											<textarea class="form-control" id="address2"
												placeholder="Nếu có bất cứ gì muốn lưu ý chúng tôi hãy ghi ở đây !!!"></textarea>
										</div>
									</div>

									<hr class="my-4">

									<h4 class="mb-3">Phương thức thanh toán</h4>

									<div class="my-3">
										<div class="pb-3">
											<div class="d-flex flex-row pb-3">
												<div class="d-flex align-items-center pe-2">
													<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel1"
														value="" aria-label="..." checked />
												</div>
												<div class="rounded border d-flex w-100 p-3 align-items-center">
													<p class="mb-0">Thẻ tín dụng/ghi nợ quốc tế (Visa/Master/JCB)</p>
													<div class="ms-auto pe-2">
														<img src="https://booking.vinpearl.com/static/media/payment_visa.40b23430.svg"
															alt="visa" width="32px" height="32px">
													</div>
													<div class="pe-2">
														<img src="https://booking.vinpearl.com/static/media/payment_jcb.a6c16b80.svg"
															alt="jcb" width="24px" height="24px">
													</div>
													<div>
														<img src="https://booking.vinpearl.com/static/media/payment_mc.2cc61a9a.svg" alt="mc"
															width="24px" height="24px">
													</div>
												</div>
											</div>

											<div class="d-flex flex-row pb-3">
												<div class="d-flex align-items-center pe-2">
													<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel2"
														value="" aria-label="..." />
												</div>
												<div class="rounded border d-flex w-100 p-3 align-items-center">
													<p class="mb-0">Thẻ/tài khoản ngân hàng (ATM nội địa/quốc tế)</p>
													<div class="ms-auto">
														<img src="https://booking.vinpearl.com/static/media/payment_atm.b2d46f6a.svg"
															alt="atm" width="28px" height="28px">
													</div>
												</div>
											</div>
											<div class="d-flex flex-row pb-3">
												<div class="d-flex align-items-center pe-2">
													<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel3"
														value="" aria-label="..." />
												</div>
												<div class="rounded border d-flex w-100 p-3 align-items-center">
													<p class="mb-0">Thanh toán bằng mã QR</p>
													<div class="ms-auto">
														<img src="https://www.svgrepo.com/show/371478/qrcode.svg" alt="qrcode" width="24px"
															height="24px">
													</div>
												</div>
											</div>
											<div class="d-flex flex-row ">
												<div class="d-flex align-items-center pe-2">
													<input class="form-check-input" type="radio" name="radioNoLabel" id="radioNoLabel4"
														value="" aria-label="..." disabled />
												</div>
												<div class="rounded border d-flex w-100 p-3 align-items-center bg-light bg-opacity-15">
													<p class="mb-0">Thanh toán trả góp</p>
													<div class="ms-auto"></div>
												</div>
											</div>

										</div>
									</div>
									<hr class="my-4">
									<div id="submitBtn" class="text-center">
										<button class="w-100 btn btn-primary btn-lg" type="submit">Tiếp tục thanh toán</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
		<footer class="text-muted bg-gradient py-1 mt-5">
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
				class="d-flex justify-content-center justify-content-lg-between p-3 border-bottom container px-5">
				<!-- Left -->
				<div class="me-5 d-none d-lg-block text-accent">
					<span>Kết nối với chúng tôi qua các nguồn sau:</span>
				</div>
				<!-- Left -->

				<!-- Right -->
				<div class="socials">
					<div class="vp-social-links">
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
							<div class="col-md-4 col-lg-5 col-xl-4 mx-auto mb-4 ps-5">
								<!-- Content -->
								<h6 class="text-uppercase fw-bold mb-4 text-warning opacity-100">
									<img src="/assets/images/logo.png" alt="" width="90" height="60" class="d-inline-block auto">
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
						<p class="mb-1">Copyright © 2023 Vinpearl.com. All rights reserved</p>
						<p class="mb-0">
							Bạn là người mới?
							<a href="/home">Ghé thăm trang chủ.</a>
							hoặc có thể đọc
							<a href="#Chualamkip">hướng dẫn sơ bộ về Vinpearl ở đây</a>
							.
						</p>
					</div>
				</section>
			</div>
		</footer>
	</div>
	<!-- Back to top button -->
	<div class="back-to-top-wrapper p" id="backToTop" (click)="scrollToTop()" role="button">
		<a class="back-to-top-link" aria-label="Scroll to Top" id="myBtn">
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#f39f2d"
				class="bi bi-caret-up-fill" viewBox="0 0 16 16">
      <path
					d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
    </svg>
		</a>
	</div>

	<script>
		var date = new Date().getDate(); // ngày
		var month = new Date().getMonth(); // tháng
		var year = new Date().getFullYear(); // năm

		angular.module("myapp", []).controller("myctrl", function($scope) {
			$scope.coupon = "Không có";
			$scope.datetime = date + "/" + month + "/" + year;
		});

		// validation
		(function() {
			"use strict";

			// Fetch all the forms we want to apply custom Bootstrap validation styles to
			var forms = document.querySelectorAll(".needs-validation");

			// Loop over them and prevent submission
			Array.prototype.slice.call(forms).forEach(function(form) {
				form.addEventListener("submit", function(event) {
					if (!form.checkValidity()) {
						event.preventDefault();
						event.stopPropagation();
					}

					form.classList.add("was-validated");
				}, false);
			});
		})();
	</script>
	
		<!-- Start Script -->
	<!-- jQuery -->
	<script src="/assets/js/jquery-2.1.0.min.js"></script>

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
		$(function() {
			var selectedClass = "";
			$("p").click(function() {
				selectedClass = $(this).attr("data-rel");
				$("#portfolio").fadeTo(50, 0.1);
				$("#portfolio div").not("." + selectedClass).fadeOut();
				setTimeout(function() {
					$("." + selectedClass).fadeIn();
					$("#portfolio").fadeTo(50, 1);
				}, 500);

			});
		});
	</script>
	<!-- End Script -->
	
	<!-- Bootstrap JavaScript Libraries -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
        integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous">
        </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
        integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous">
        </script>
</body>
</html>