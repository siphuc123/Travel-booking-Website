<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<!doctype html>
<html lang="en">

<head>
<title>Vinpearl | Đặt tour du lịch</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- favicon -->
<link rel="shortcut icon" href="/assets/images/logo.png">
<!-- Bootstrap CSS v5.2.1 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<!-- CSS -->
<link rel="stylesheet" href="/assets/css/shoppingCss/main.css">
<link href="/assets/css/main_style.css" rel="stylesheet">
<!-- Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lipis/flag-icons@6.6.6/css/flag-icons.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body id="page-top">
	<!-- ***** Preloader Start ***** -->
	<div id="preloader">
		<div class="jumper">
			<div></div>
			<div></div>
			<div></div>
		</div>
	</div>
	<!-- ***** Preloader End ***** -->

	<header>
		<div class="collapse bg-midskyblue" id="navbarHeader">
			<div class="container-fluid">
				<div class="row d-flex justify-content-between">
					<div class="col-sm-7 col-md-6 py-4 offset-md-1">
						<h4 class="text-accent">Về chúng tôi !</h4>
						<p class="text-light opacity-75">Vinpearl là thương hiệu dịch vụ du lịch - nghỉ dưỡng -
							giải trí lớn nhất Việt Nam. Vinpearl sở hữu chuỗi thương hiệu khách sạn, resort, spa cùng
							trung tâm hội nghị, ẩm thực và sân golf đẳng cấp 5 sao và các khu vui chơi giải trí theo tiêu
							chuẩn quốc tế tọa lạc tại những danh thắng du lịch nổi tiếng nhất của Việt Nam. Với 18 năm
							không ngừng phát triển, 45 cơ sở thuộc thương hiệu Vinpearl đang có mặt tại 17 tỉnh thành
							trên toàn quốc với công suất phòng trên 18.500 phòng khách sạn và biệt thự, 3 công viên chủ
							đề và 2 khu vui chơi giải trí, 2 công viên bảo tồn và chăm sóc động vật bán hoang dã, 4 sân
							golf, dự kiến tiếp tục mở rộng quy mô trên Việt Nam và trên thế giới trong thời gian tới.</p>
					</div>
					<div class="col-sm-4 py-4">
						<h4 class="text-accent">Liên hệ</h4>
						<ul class="list-unstyled">
							<li class="text-light">
								<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#e9b370"
									class="bi bi-geo" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
										d="M8 1a3 3 0 1 0 0 6 3 3 0 0 0 0-6zM4 4a4 4 0 1 1 4.5 3.969V13.5a.5.5 0 0 1-1 0V7.97A4 4 0 0 1 4 3.999zm2.493 8.574a.5.5 0 0 1-.411.575c-.712.118-1.28.295-1.655.493a1.319 1.319 0 0 0-.37.265.301.301 0 0 0-.057.09V14l.002.008a.147.147 0 0 0 .016.033.617.617 0 0 0 .145.15c.165.13.435.27.813.395.751.25 1.82.414 3.024.414s2.273-.163 3.024-.414c.378-.126.648-.265.813-.395a.619.619 0 0 0 .146-.15.148.148 0 0 0 .015-.033L12 14v-.004a.301.301 0 0 0-.057-.09 1.318 1.318 0 0 0-.37-.264c-.376-.198-.943-.375-1.655-.493a.5.5 0 1 1 .164-.986c.77.127 1.452.328 1.957.594C12.5 13 13 13.4 13 14c0 .426-.26.752-.544.977-.29.228-.68.413-1.116.558-.878.293-2.059.465-3.34.465-1.281 0-2.462-.172-3.34-.465-.436-.145-.826-.33-1.116-.558C3.26 14.752 3 14.426 3 14c0-.599.5-1 .961-1.243.505-.266 1.187-.467 1.957-.594a.5.5 0 0 1 .575.411z" />
                                </svg>
								Đảo Hòn Tre, Phường Vĩnh Nguyên, Thành phố Nha Trang, Tỉnh Khánh Hòa, Việt Nam
							</li>
							<li>
								<a href="#" class="text-white text-decoration-none">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#e9b370"
										class="bi bi-envelope-fill" viewBox="0 0 16 16">
                                        <path
											d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
                                    </svg>
									callcenter@vinpearl.com
								</a>
							</li>
							<li>
								<a href="#" class="text-white text-decoration-none">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#e9b370"
										class="bi bi-telephone-fill" viewBox="0 0 16 16">
                                        <path fill-rule="evenodd"
											d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                                    </svg>
									1900 23 23 89 (Nhánh số 3)
								</a>
							</li>
						</ul>
						<c:choose>
							<c:when test="${empty username}">
								<div class="d-flex" style="justify-content: space-between;">
									<a href="/account/login" class="btn btn-warning btn-hover">
										<span>Đăng nhập</span>
									</a>
								</div>
							</c:when>
							<c:otherwise>
								<div class="d-flex" style="justify-content: space-between;">
									<div>
										<a href="#TrangCaNhan">
											<img src="/photo/${photo}" alt="Avatar" class="avatar mx-2 rounded-circle shadow"
												style="width: 100px; height: 100px;">
										</a>
										<b class="text-accent">${fullname}</b>
									</div>
									<div class="dropdown bg-accent d-flex my-4 me-3 rounded-pill">
										<button type="button" class="btn dropdown-toggle" data-bs-toggle="dropdown"
											id="dropdownMenuicon" data-mdb-toggle="dropdown" aria-expanded="false">
											<span class="fi fi-vn"></span>
											<i class="fas fa-ellipsis-v fa-lg text-dark"></i>
										</button>
										<ul class="dropdown-menu" class="selectpicker" style="position: absolute; left: -135%;"
											aria-labelledby="dropdownMenuButton1">
											<li>
												<a class="dropdown-item" href="#">
													<span class="fi fi-vn"></span>
													Vietnam
												</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">
													<span class="fi fi-us"></span>
													English
												</a>
											</li>
										</ul>
									</div>
								</div>
								<p class="text-light mt-3 button-group">
									<a href="/admin/myaccount/edit/${username}"
										class="text-decoration-none btn btn-outline-info">Xem thông tin</a>
									|
									<a href="/YourCart" class="text-decoration-none btn btn-outline-info">Giỏ hàng</a>
									<c:if test="${isAdmin}">
											|
											<a href="/admin/home" class="btn btn-outline-warning" role="button">
											<span>Quản trị</span>
										</a>
									</c:if>
									|
									<a href="/account/logout" class="text-decoration-none btn btn-outline-danger" role="button">Đăng
										xuất</a>
								</p>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
		<nav class="navbar bg-info bg-opacity-75 shadow-sm">
			<div class="container-fluid">
				<a href="/home" class="navbar-brand" title="Bấm vào để về trang chủ">
					<img src="/assets/images/logo.png" alt="" width="60" height="40" class="d-inline-block auto">
				</a>
				<strong class="text-center fs-4 ms-5">Du lịch là Vui</strong>
				<form class="d-flex">
					<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
						data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
				</form>
			</div>

		</nav>
	</header>

	<main>
		<!-- Tạo_ 1 đống_ slide quảng_ cáo_ ở đây_ chăng_? -->
		<figure class="container-fluid" style="position: relative;">
			<img class="radius-lg" src="/assets/images/bannerShop.webp" alt="View đẹp"
				style="width: 100%; height: 100%">
			<div class="col-lg-7" style="display: grid; align-items: center;">
				<div class="inner-x">
					<p class="mb-2 text-uppercase text-white">Vinpearl Hotels &amp; Resorts</p>
					<div class="text-warning fw-bold">
						<p>Experience a distinctively Vietnamese stay like no other</p>
					</div>
					<div></div>
				</div>
			</div>
		</figure>
		<!-- ================================================== -->
		<div class="alert alert-${color} text-dark fw-bold fade show d-flex justify-content-between"
			role="alert" id="alert" class="alert-close"
			style="position: fixed; right: 1%; top: 10%; width: 22%; display: none; z-index: 999;">
			${msg}
			<button type="button" id="alertClose" class="btn-close" data-bs-dismiss="alert"
				aria-label="Close"></button>
		</div>
		<hr>
		<section class="py-3 text-center container-fluid">
			<div class="row py-lg-5">
				<div class="col-lg-9 col-md-8 mx-auto">
					<h1 class="fw-light">Pearl Club - Đặc quyền nghỉ dưỡng thượng lưu</h1>
					<p class="lead text-muted">Pearl Club là chương trình khách hàng thân thiết của Vinpearl.
						Khách hàng có thể tận hưởng ngay các đặc quyền chưa từng có trên toàn bộ hệ sinh thái khách
						sạn, resort, ẩm thực, golf và vui chơi giải trí bằng cách tích lũy giao dịch để nâng hạng.</p>
					<p>
					<div class="d-flex bd-highlight pt-4">
						<div class="p-2 flex-fill bd-highlight text-lg-start">
							<h3 class="text-warning opacity-75">Rank Pearl</h3>
							<div class="icons">
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_bed_1667999114.svg"
										alt="Ưu đãi 5% trên giá phòng tốt nhất" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi 5% trên giá phòng tốt nhất</span>
								</div>
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_promo_1667999914.png"
										alt="Ưu đãi 2% vé vào cửa VinWonders/ Safari" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi 2% vé vào cửa VinWonders/Safari</span>
								</div>
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_glass_1667999930.svg"
										alt="Ưu đãi tới 35% phí sân cỏ, ẩm thực" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi tới 35% phí sân cỏ, ẩm thực</span>
								</div>
							</div>
						</div>
						<div class="p-2 flex-fill bd-highlight text-lg-start">
							<h3 class="text-warning opacity-75">Rank Good Pearl</h3>
							<div class="icons">
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_bed_1667999977.svg"
										alt="Nhận 01 đêm nghỉ miễn phí" class="icon" width="28" height="28">
									<span class="icon-des">Nhận 01 đêm nghỉ miễn phí</span>
								</div>
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/uudai_1668486492.svg"
										alt="Ưu đãi 5% giá phòng tốt nhất" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi 5% giá phòng tốt nhất</span>
								</div>
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_glass_1667999998.svg"
										alt="Ưu đãi tới 50% phí sân cỏ, ẩm thực" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi tới 50% phí sân cỏ, ẩm thực</span>
								</div>
							</div>
						</div>
						<div class="p-2 flex-fill bd-highlight text-lg-start">
							<h3 class="text-warning opacity-75 ">Rank VIP Pearl</h3>
							<div class="icons">
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_bed_1668000363.svg"
										alt="Nhận 02 đêm nghỉ miễn phí" class="icon" width="28" height="28">
									<span class="icon-des">Nhận 02 đêm nghỉ miễn phí</span>
								</div>
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/uudai_1668486544.svg"
										alt="Ưu đãi 10% trên giá phòng tốt nhất" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi 10% trên giá phòng tốt nhất</span>
								</div>
								<div class="icon-wrapper">
									<img src="https://statics.vinpearl.com/icon_glass_1668000381.svg"
										alt="Ưu đãi tới 50% phí sân cỏ, ẩm thực" class="icon" width="28" height="28">
									<span class="icon-des">Ưu đãi tới 50% phí sân cỏ, ẩm thực</span>
								</div>
							</div>
						</div>
					</div>
					<div
						class="text-bg-warning text-black bg-opacity-50 mb-4 border border-dark rounded-pill border-2 mt-4">
						<caption>Đăng kí miễn phí và hưởng ngay ưu đãi</caption>
					</div>
					<a href="#" class="btn btn-info my-2">Khám phá tất cả quyền lợi</a>
					<div class="modal fade" id="Mailer" aria-hidden="true"
						aria-labelledby="exampleModalToggleLabel" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<form:form action="/shop/mailer/send" method="post" enctype="multipart/form-data"
									modelAttribute="mailinfo">
									<div class="modal-header bg-accent">
										<h1 class="modal-title fs-5" id="exampleModalToggleLabel">Vinpearl | Gữi thư hỗ trợ
											📨📨</h1>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body">
										<div class="mb-3">
											<label for="sender" class="d-flex col-form-label">
												<b>From </b>
												[Gửi từ]:
											</label>
											<form:input path="from" value="phucnstps20362@fpt.edu.vn" type="text"
												class="form-control" id="sender" />
										</div>
										<div class="mb-3">
											<label for="revicer" class="d-flex col-form-label">
												<b>To </b>
												[Đến]:
											</label>
											<form:input path="to" value="phucnstps20362@fpt.edu.vn" type="text" class="form-control"
												id="revicer" />
										</div>
										<div class="mb-3">
											<label for="td" class="d-flex col-form-label">
												<b>Subject </b>
												[Tiêu đề]:
											</label>
											<form:input path="subject" type="text" class="form-control" id="td" />
										</div>
										<div class="mb-3">
											<label for="nd" class="d-flex col-form-label">
												<b>Body </b>
												[Nội dung]:
											</label>
											<form:textarea path="body" rows="3" cols="30" class="form-control" id="nd" />
										</div>
									</div>
									<div class="modal-footer">
										<button class="btn btn-outline-warning" data-bs-target="#Sending" type="submit"
											data-bs-toggle="modal">Send</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
					<div class="modal fade" id="Sending" aria-hidden="true"
						aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-header bg-accent">
									<h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Xin cảm ơn. 🫂</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<h3 class="text-success">Thư của bạn đã được gữi đi, chúng tôi sẽ phản hồi nhanh nhất
										có thể 😎👍</h3>
									<%-- <div>
										<h4>Thư bạn đã gữi:</h4>
										<div>
											<p>From: ${mail.from}</p>
											<p>To: ${mail.to}</p>
											<p>Subject: ${mail.subject}</p>
											<p>Body: ${mail.body}</p>
										</div>
									</div> --%>
								</div>
							</div>
						</div>
					</div>
					<button type="button" class="btn btn-warning my-2 border-secondary border-2 border"
						data-bs-target="#Mailer" data-bs-toggle="modal">Gửi thư hỏi đáp</button>
				</div>
			</div>
		</section>
		<hr id="KhamPhaDiFen">
		<div class="album py-5 bg-light">
			<div class="container">
				<div class="d-flex pb-4">
					<form id="form-1" class="col-11 d-flex" method="post" enctype="multipart/form-data"
						action="/product/search-and-page">
						<input class="form-control me-2 shadow" type="search" placeholder="Tìm kiếm ở đây..."
							aria-label="Search" value="${keywords}" name="keywords">
						<a href="/product/search" title="Tìm kiếm">
							<button class="btn btn-outline-dark w-auto shadow" type="submit">
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#f39f2d"
									class="bi bi-search" viewBox="0 0 17 18">
                                <path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg>
							</button>
						</a>
					</form>
					<a href="/YourCart" title="Giỏ hàng của bạn" class="col-1 flex-end">
						<button class="btn btn-outline-dark w-auto ms-2 shadow" type="submit"
							aria-placeholder="Giỏ hàng">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#f39f2d"
								class="bi bi-cart-fill" viewBox="0 0 17 18">
                                <path
									d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z" />
                            </svg>
						</button>
					</a>
				</div>
				<div class="row row-cols-1 row-cols-sm-1 row-cols-md-2 row-cols-lg-3 g-3">
					<c:forEach var="item" items="${page.content}">
						<div class="col">
							<div class="card shadow-sm h-100">
								<svg class="bd-placeholder-img card-img-top" width="100%" height="215"
									xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail"
									preserveAspectRatio="xMidYMid slice" focusable="false">
                                	<rect width="100%" height="100%" fill="#55595c" />
                                	<text x="50%" y="50%" fill="#eceeef" dy=".3em">Ảnh mô tả</text>
                                	<image href="/assets/images/${item.image}" height="100%"
										width="100%" class="img-fluid" />
                            	</svg>
								<div class="card-body">
									<div class="d-flex justify-content-between mb-4 p-1">
										<div class="me-3">
											<b>
												<a href="#!" class="text-dark">${item.name}</a>
											</b>
										</div>
										<div>
											<div class="d-flex flex-row justify-content-end mt-1 mb-2 text-danger">
												<i class="fas fa-star"></i>
												<i class="fas fa-star"></i>
												<i class="fas fa-star"></i>
												<i class="fas fa-star"></i>
												<i class="fas fa-star"></i>
											</div>
											<p class="small text-muted">Rated 5/5</p>
										</div>
									</div>
									<div class="d-flex justify-content-between align-items-center">
										<div class="btn-group">
											<div class="me-2">
												<a type="button" href="/YourCart/add/${item.id}"
													class="btn btn-sm btn-outline-warning border border-3 border-dark fw-semibold">Đặt
												</a>
											</div>
											<button type="button"
												class="btn btn-sm btn-outline-warning text-black border border-3 border-dark">Chi
												tiết</button>
										</div>
										<small class="text-muted fw-bold">
											<fmt:formatNumber value="${item.price}" pattern="#,### VNĐ"></fmt:formatNumber>
											/ người
										</small>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="d-flex pt-5" style="justify-content: center">
				<nav aria-label="Page">
					<ul class="pagination pagination-circle">
						<li class="page-item mx-3">
							<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
								href="/shop/page?p=0">First</a>
						</li>
						<li class="page-item mx-3">
							<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
								href="/shop/page?p=${page.number-1}">Previous</a>
						</li>
						<li class="page-item mx-3">
							<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
								href="/shop/page?p=${page.number+1}">Next</a>
						</li>
						<li class="page-item mx-3">
							<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
								href="/shop/page?p=${page.totalPages-1}">Last</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</main>

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
				<span>Kết nối với chúng tôi qua các nguồn sau:</span>
			</div>
			<!-- Left -->

			<!-- Right -->
			<div class="socials">
				<div class="vp-social-links">
					<a href="" class="me-4 link-secondary">
						<i></i>
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
		<a href="#page-top" class="back-to-top-link" aria-label="Scroll to Top" id="myBtn">
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#f39f2d"
				class="bi bi-caret-up-fill" viewBox="0 0 16 16">
                <path
					d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
            </svg>
		</a>
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
	<script src="/assets/js/custom.js"></script>

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
	</script>
	<!-- End Script -->
</body>

</html>