<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">

<head>
<title>Vinpearl | Giỏ hàng</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Bootstrap CSS v5.2.1 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="shortcut icon" href="/assets/images/logo.png" type="image/x-icon">
<!-- CSS -->
<link rel="stylesheet" href="/assets/css/cartCss/style.css">
<link href="/assets/css/main_style.css" rel="stylesheet">
<!-- Icon -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lipis/flag-icons@6.6.6/css/flag-icons.min.css" />
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
					<form class="d-flex">
						<input class="form-control me-2" type="search" placeholder="Tìm kiếm ở đây..."
							aria-label="Search">
						<button class="btn btn-outline-dark w-50" type="submit"
							onclick="location.href = '/product/search' ">Tìm kiếm</button>
						<div class="slash text-white mt-1 ps-2 pe-1">/</div>
						<c:choose>
							<c:when test="${empty username}">
								<a href="/account/login" class="w-50 text-center btn btn-outline-dark">
									<span>Đăng nhập</span>
								</a>
							</c:when>
							<c:otherwise>
								<div class="nav-item dropdown no-arrow">
									<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
										data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										<img alt="Avatar" class="avatar mx-2 rounded-circle shadow-2"
											style="width: 40px; height: 40px;" src="/photo/${photo}">
									</a>
									<!-- Dropdown - User Information -->
									<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
										aria-labelledby="userDropdown" style="left: -140%;">
										<a class="dropdown-item" href="#TrangCaNhan">
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
					</form>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<section class="h-100 gradient-custom">
			<div class="container py-5">
				<div class="row d-flex justify-content-center my-4">
					<div class="col-md-9 col-9 col-xl-7 col-xxl-8">
						<div class="card mb-4 border border-2 border-dark">
							<div class="card-header py-3 bg-accent d-flex justify-content-between">
								<h5 class="mb-0 ">
									Tour đã chọn -
									<b class="text-black">${SL}</b>
								</h5>

								<div class="modal fade" id="AirplaneBook" aria-hidden="true"
									aria-labelledby="exampleModalToggleLabel" tabindex="-1">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header bg-accent">
												<h1 class="modal-title fs-5" id="exampleModalToggleLabel">Tìm kiếm Tour & Trải
													nghiệm</h1>
												<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<form>
													<div class="mb-3">
														<label for="khoihanh" class="col-form-label">Điểm khởi hành:</label>
														<input type="text" class="form-control" id="khoihanh">
													</div>
													<div class="mb-3">
														<label for="den" class="col-form-label">Điểm đến:</label>
														<input type="text" class="form-control" id="den">
													</div>
													<div class="mb-3">
														<label for="date-check" class="col-form-label">Ngày nhận - trả phòng:</label>
														<div class="d-flex">
															<input type="date" class="form-control" id="date-check">
															<strong class="text-accent pt-2 w-25 text-center"> — </strong>
															<input type="date" class="form-control" id="date-check">
														</div>
													</div>
													<div class="mb-3">
														<label for="Quantity" class="col-form-label">Số phòng - Số người:</label>
														<div class="d-flex">
															<input type="number" class="form-control" id="Quantity">
															<strong class="text-accent pt-2 w-25 text-center"> — </strong>
															<input type="number" class="form-control" id="Quantity">
														</div>
													</div>
													<div class="mb-3">
														<label for="message-text" class="col-form-label">Mã ưu đãi:</label>
														<input type="text" class="form-control" id="message-text"></input>
													</div>
												</form>
											</div>
											<div class="modal-footer">
												<button class="btn btn-primary" data-bs-target="#Searching" data-bs-toggle="modal">Tìm
													kiếm chuyến bay</button>
											</div>
										</div>
									</div>
								</div>
								<div class="modal fade" id="Searching" aria-hidden="true"
									aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
									<div class="modal-dialog modal-dialog-centered">
										<div class="modal-content">
											<div class="modal-header bg-accent">
												<h1 class="modal-title fs-5" id="exampleModalToggleLabel2">Thông tin tìm kiếm</h1>
												<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
											</div>
											<div class="modal-body">
												<i class="text-muted">Xin lỗi hiện tại không tìm thấy chuyến bay nào phù hợp </i>
												😅
											</div>
											<div class="modal-footer">
												<button class="btn btn-primary" data-bs-target="#AirplaneBook" data-bs-toggle="modal">Tìm
													kiếm mới</button>
											</div>
										</div>
									</div>
								</div>
								<button class="btn btn-dark border-secondary border-2 border" data-bs-target="#AirplaneBook"
									data-bs-toggle="modal">Đặt chuyến bay riêng</button>

							</div>

							<div class="card-body">
								<c:forEach var="item" items="${cart.items}">
									<form action="/YourCart/update/${item.id}" method="post">
										<input type="hidden" name="id" value="${item.id}">
										<!-- Single item -->
										<div class="row">
											<div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
												<!-- Image -->
												<div class="bg-image hover-overlay hover-zoom ripple rounded"
													data-mdb-ripple-color="light">
													<img src="/assets/images/${item.image}" class="w-100" alt="Combo tour đi Đà Nẵng" />
													<a href="#!">
														<div class="mask" style="background-color: rgba(251, 251, 251, 0.2)"></div>
													</a>
												</div>
												<!-- End Image -->
											</div>

											<div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
												<!-- Data -->
												<p>
													<span class="text-muted"> < ID: ${item.id} > </span>
													<strong>${item.name}</strong>
												</p>
												<hr class="bg-accent" style="height: 7px; border: none;">

												<p>
													<b class="text-muted">Thời gian từ: </b>
													${item.createDate}
												</p>
												<p>
													<b class="text-muted">Giá: </b>
													<fmt:formatNumber value="${item.price}" pattern="#,### VNĐ"></fmt:formatNumber>
													/ người
												</p>
												<div class="btn btn-danger btn-sm me-1 mb-2" data-mdb-toggle="tooltip"
													title="Hủy chuyến">
													<a href="/YourCart/remove/${item.id}" style="color: #eee">
														<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
															class="bi bi-trash-fill" viewBox="0 0 16 16">
                                                <path
																d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z" />
                                            </svg>
													</a>
												</div>
												<!-- End Data -->
											</div>

											<div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
												<h6 class="fw-light">Tổng số người:</h6>
												<!-- Quantity -->
												<div class="d-flex mb-4" style="max-width: 300px;">
													<button class="btn btn-info px-3 me-2"
														onclick="this.parentNode.querySelector('input[type=number]').stepDown()">
														<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
															class="bi bi-dash" viewBox="0 0 16 16">
                                                    <path
																d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z" />
                                                </svg>
													</button>
													<div class="form-outline text-center">
														<input id="form1" min="0" name="qty" value="${item.qty}" type="number"
															class="form-control form-control-md" onblur="this.form.submit()" />
													</div>
													<button class="btn btn-info px-3 ms-2"
														onclick="this.parentNode.querySelector('input[type=number]').stepUp()">
														<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
															class="bi bi-plus" viewBox="0 0 16 16">
                                                    <path
																d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z" />
                                                </svg>
													</button>
												</div>
												<!-- END Quantity -->

												<!-- Price -->
												<p class="text-start text-md-center mt-3">
													<strong> Tổng tiền: </strong>
													<fmt:formatNumber value="${item.price * item.qty}" pattern="#,### VNĐ"></fmt:formatNumber>
												</p>
												<!-- END Price -->
											</div>
										</div>
										<!-- End Single item -->

										<hr class="my-4" />
									</form>
								</c:forEach>
								<div class="card bg-accent by-3">
									<div class="card-body d-flex" style="justify-content: space-between;">
										<div>
											<a class="btn btn-outline-dark border-success border-2 border">Update lại</a>
											<a class="btn btn-outline-dark border-primary border-2 border" href="/shop/page">Thêm
												Tour khác</a>
										</div>
										<a class="btn btn-danger border-secondary border-2 border" href="/YourCart/clear">Clear
											Giỏ</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card mb-4">
							<div class="card-body">
								<div class="col-12">
									<div class="ant-divider ant-divider-horizontal" role="separator"></div>
									<div class="d-flex justify-content-between">
										<div class="d-flex flex-lg-fill py-2">
											<i aria-label="icon: info-circle" class="px-2 text-accent">
												<svg viewBox="64 64 896 896" focusable="false" class="" data-icon="info-circle"
													width="1em" height="1em" fill="currentColor" aria-hidden="true">
                                                    <path
														d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64zm0 820c-205.4 0-372-166.6-372-372s166.6-372 372-372 372 166.6 372 372-166.6 372-372 372z">
                                                    </path>
                                                    <path
														d="M464 336a48 48 0 1 0 96 0 48 48 0 1 0-96 0zm72 112h-48c-4.4 0-8 3.6-8 8v272c0 4.4 3.6 8 8 8h48c4.4 0 8-3.6 8-8V456c0-4.4-3.6-8-8-8z">
                                                    </path>
                                                </svg>
											</i>
											Bạn không có mã khuyến mại
										</div>
										<!-- Modal -->
										<div class="modal fade" id="staticBackdrop" data-bs-keyboard="false" tabindex="-1"
											aria-labelledby="staticBackdropLabel" aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header bg-accent">
														<h1 class="modal-title fs-5" id="staticBackdropLabel">Chọn mã hoặc nhập mã ưu đãi
														</h1>
														<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
													</div>
													<div class="modal-body">
														<span class="w-100 ant-input-affix-wrapper">
															<input placeholder="Nhập mã ưu đãi" class="ant-input w-100 p-2" type="text" value="">
															<a class="position-absolute text-center" style="right: 1em; top: 0.6em;">
																<i aria-label="icon: search" tabindex="-1"
																	class="anticon anticon-search ant-input-search-icon">
																	<svg viewBox="64 64 896 896" focusable="false" class="" data-icon="search"
																		width="1.5em" height="1.5em" fill="currentColor" aria-hidden="true">
                                                                        <path
																			d="M909.6 854.5L649.9 594.8C690.2 542.7 712 479 712 412c0-80.2-31.3-155.4-87.9-212.1-56.6-56.7-132-87.9-212.1-87.9s-155.5 31.3-212.1 87.9C143.2 256.5 112 331.8 112 412c0 80.1 31.3 155.5 87.9 212.1C256.5 680.8 331.8 712 412 712c67 0 130.6-21.8 182.7-62l259.7 259.6a8.2 8.2 0 0 0 11.6 0l43.6-43.5a8.2 8.2 0 0 0 0-11.6zM570.4 570.4C528 612.7 471.8 636 412 636s-116-23.3-158.4-65.6C211.3 528 188 471.8 188 412s23.3-116.1 65.6-158.4C296 211.3 352.2 188 412 188s116.1 23.2 158.4 65.6S636 352.2 636 412s-23.3 116.1-65.6 158.4z">
                                                                        </path>
                                                                    </svg>
																</i>
															</a>
														</span>
														<div class="pt-3 text-center">
															<svg height="200px" width="200px" version="1.1" id="Layer_1"
																xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
																viewBox="0 0 504.123 504.123" xml:space="preserve" fill="#000000">
                                                                <g id="SVGRepo_bgCarrier"
																	stroke-width="0"></g>
                                                                <g id="SVGRepo_tracerCarrier"
																	stroke-linecap="round" stroke-linejoin="round"></g>
                                                                <g id="SVGRepo_iconCarrier">
                                                                    <g>
                                                                        <path style="fill:#6B8C85;"
																	d="M228.218,361.913c0,19.503-15.817,124.668-35.336,124.668c-19.495,0-35.304-105.173-35.304-124.668 c0-19.495,15.817-35.32,35.304-35.32C212.401,326.593,228.218,342.418,228.218,361.913z">
                                                                        </path>
                                                                        <path style="fill:#6B8C85;"
																	d="M346.569,361.913c0,19.503-15.817,124.668-35.336,124.668c-19.495,0-35.304-105.173-35.304-124.668 c0-19.495,15.817-35.32,35.304-35.32C330.752,326.593,346.569,342.418,346.569,361.913z">
                                                                        </path>
                                                                    </g>
                                                                    <path
																	d="M351.705,315.242c0,126.33-44.599,84.259-99.643,84.259c-55.028,0-99.643,42.071-99.643-84.259 c0-72.231,44.631-130.781,99.643-130.781C307.09,184.47,351.705,243.019,351.705,315.242z">
                                                                    </path>
                                                                    <path style="fill:#C90D59;"
																	d="M232.629,487.219c0,14.935-17.802,16.904-39.739,16.904s-39.739-1.961-39.739-16.904 c0-14.943,17.802-35.509,39.739-35.509S232.629,472.277,232.629,487.219z">
                                                                    </path>
                                                                    <path style="fill:#AA0B53;"
																	d="M232.629,487.219c0,14.935-17.802,16.904-39.739,16.904s-39.739-1.961-39.739-16.904">
                                                                    </path>
                                                                    <path style="fill:#C90D59;"
																	d="M350.988,487.219c0,14.935-17.802,16.904-39.739,16.904s-39.739-1.961-39.739-16.904 c0-14.943,17.802-35.509,39.739-35.509S350.988,472.277,350.988,487.219z">
                                                                    </path>
                                                                    <path style="fill:#AA0B53;"
																	d="M350.988,487.219c0,14.935-17.802,16.904-39.739,16.904s-39.739-1.961-39.739-16.904">
                                                                    </path>
                                                                    <path
																	d="M381.015,124.258c0,63.008-57.738,94.681-128.937,94.681c-71.215,0-128.969-31.673-128.969-94.681 C123.108,61.235,180.862,0,252.077,0C323.277,0,381.015,61.235,381.015,124.258z">
                                                                    </path>
                                                                    <path style="fill:#F9BD82;"
																	d="M381.015,124.258c0,63.008-57.738,94.681-128.937,94.681c-71.215,0-128.969-31.673-128.969-94.681 c0-63.023,57.754-59.928,128.969-59.928C323.277,64.331,381.015,61.235,381.015,124.258z">
                                                                    </path>
                                                                    <path style="fill:#EDA366;"
																	d="M381.015,124.258c0,63.008-57.738,94.681-128.937,94.681c-71.215,0-128.969-31.673-128.969-94.681">
                                                                    </path>
                                                                    <circle style="fill:#113E49;"
																	cx="190.748" cy="138.004" r="11.532"></circle>
                                                                    <path
																	d="M202.279,137.98c0,6.388-5.167,11.54-11.54,11.54s-11.524-5.152-11.524-11.54">
                                                                    </path>
                                                                    <path style="fill:#FFD3C5;"
																	d="M213.496,162.028c-0.614,0-1.245-0.221-1.725-0.717c-5.632-5.624-13.107-8.72-21.047-8.72h-0.016 c-7.94,0-15.399,3.104-21,8.712c-0.953,0.953-2.489,0.977-3.434,0.008c-0.953-0.922-0.985-2.458-0.032-3.419 c6.538-6.546,15.218-10.161,24.458-10.161h0.016c9.263,0,17.952,3.592,24.505,10.145c0.937,0.937,0.937,2.505,0,3.434 C214.756,161.808,214.142,162.028,213.496,162.028z">
                                                                    </path>
                                                                    <circle style="fill:#113E49;"
																	cx="313.423" cy="138.004" r="11.532"></circle>
                                                                    <path
																	d="M301.859,137.98c0,6.388,5.152,11.54,11.54,11.54c6.372,0,11.524-5.152,11.524-11.54">
                                                                    </path>
                                                                    <path style="fill:#FFD3C5;"
																	d="M290.643,162.028c0.599,0,1.229-0.221,1.709-0.717c5.632-5.624,13.107-8.72,21.047-8.72h0.016 c7.94,0,15.415,3.104,21.016,8.712c0.937,0.953,2.473,0.977,3.434,0.008c0.953-0.922,0.969-2.458,0.016-3.419 c-6.506-6.546-15.218-10.161-24.458-10.161h-0.016c-9.247,0-17.936,3.592-24.505,10.145c-0.922,0.937-0.922,2.505,0,3.434 C289.382,161.808,289.997,162.028,290.643,162.028z">
                                                                    </path>
                                                                    <path style="fill:#AA1111;"
																	d="M223.634,194.639c0-3.631,12.737-15.935,28.428-15.935s28.428,12.304,28.428,15.935 c0,3.647-12.737,1.481-28.428,1.481S223.634,198.286,223.634,194.639z">
                                                                    </path>
                                                                    <path style="fill:#EDA366;"
																	d="M345.309,291.643c4.742-14.344-9.862-32.02-32.603-39.534 c-22.709-7.491-138.398-32.713-143.155-18.408c-4.71,14.336,103.353,62.818,126.078,70.309 C318.338,311.517,340.582,305.971,345.309,291.643z">
                                                                    </path>
                                                                    <path style="fill:#F9BD82;"
																	d="M158.815,291.643c-4.742-14.344,9.862-32.02,32.603-39.534 c22.709-7.491,138.398-32.713,143.155-18.408c4.71,14.336-103.353,62.818-126.078,70.309 C185.785,311.517,163.541,305.971,158.815,291.643z">
                                                                    </path>
                                                                    <path style="fill:#7A4E0E;"
																	d="M296.369,240.569c-0.859-3.285-1.449-6.412-1.906-9.452c-2.213,0.268-4.466,0.551-6.774,0.859 c0.362,4.506,1.15,9.492,2.528,14.746c1.709,6.498,3.97,12.304,6.412,16.927c2.513-1.371,4.955-2.725,7.31-4.072 C301.048,254.7,298.338,248.084,296.369,240.569z">
                                                                    </path>
                                                                    <circle style="fill:#38494C;"
																	cx="291.32" cy="240.561" r="13.627"></circle>
                                                                    <circle style="fill:#A3E1EF;"
																	cx="290.265" cy="239.025" r="7.633"></circle>
                                                                    <path
																	d="M243.854,133.608c0,12.123-9.83,21.953-21.937,21.953h-30.208c-12.13,0-21.953-9.83-21.953-21.953V121.73 c0-12.13,9.823-21.961,21.953-21.961h30.208c12.107,0,21.937,9.83,21.937,21.961V133.608z">
                                                                    </path>
                                                                    <path
																	d="M196.293,108.914c0,5.065-4.096,9.153-9.145,9.153h-51.216c-5.065,0-9.153-4.096-9.153-9.153l0,0 c0-5.065,4.096-9.145,9.153-9.145h51.216C192.197,99.769,196.293,103.857,196.293,108.914L196.293,108.914z">
                                                                    </path>
                                                                    <path
																	d="M260.269,133.608c0,12.123,9.807,21.953,21.937,21.953h30.184c12.138,0,21.953-9.83,21.953-21.953V121.73 c0-12.13-9.815-21.961-21.953-21.961h-30.184c-12.13,0-21.937,9.83-21.937,21.961V133.608z">
                                                                    </path>
                                                                    <path
																	d="M307.822,108.914c0,5.065,4.096,9.153,9.153,9.153h51.216c5.041,0,9.145-4.096,9.145-9.153l0,0 c0-5.065-4.104-9.145-9.145-9.145h-51.216C311.918,99.769,307.822,103.857,307.822,108.914L307.822,108.914z">
                                                                    </path>
                                                                    <path
																	d="M218.214,108.914c0,5.065,4.104,9.153,9.153,9.153h51.224c5.049,0,9.153-4.096,9.153-9.153l0,0 c0-5.065-4.104-9.145-9.153-9.145h-51.224C222.318,99.769,218.214,103.857,218.214,108.914L218.214,108.914z">
                                                                    </path>
                                                                </g>
                                                            </svg>
														</div>
														<p class="text-danger text-opacity-75 text-center">
															<span>
																Hiện tại chưa có mã ưu đãi nào.
																<br>
																Vui lòng nhập mã ưu đãi hiện có hoặc du lịch vài lần nữa
																<br>
																để được Vinpearl tặng thêm các mã ưu đãi.
															</span>
														</p>
													</div>
												</div>
											</div>
										</div>
										<button class="btn btn-warning" type="button" data-bs-toggle="modal"
											data-bs-target="#staticBackdrop">Kiểm tra</button>
									</div>
									<div class="ant-divider ant-divider-horizontal" role="separator"></div>
								</div>
							</div>
						</div>
						<div class="card mb-4 mb-lg-0">
							<div class="card-body">
								<p>
									<strong>Các phương thực thanh toán</strong>
								</p>
								<a href="#Visa" class="text-decoration-none">
									<img class="me-2" width="45px"
										src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
										alt="Visa" />
								</a>
								<a href="#AmericanExpress" class="text-decoration-none">
									<img class="me-2" width="45px"
										src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
										alt="American Express" />
								</a>
								<a href="#Mastercard" class="text-decoration-none">
									<img class="me-2" width="45px"
										src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
										alt="Mastercard" />
								</a>
								<a href="#Paypal" class="text-decoration-none">
									<img class="me-2" width="45px"
										src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce/includes/gateways/paypal/assets/images/paypal.png"
										alt="PayPal acceptance mark" />
								</a>
								<b class="text-accent fw-semibold">
									và rất nhiều
									<a href="https://bankervn.com/danh-sach-ngan-hang/">ngân hàng khác</a>
									hiện có tại Việt Nam
								</b>
							</div>
						</div>
					</div>
					<div class="col-md-8 col-8 col-xl-5 col-xxl-4 pt-2">
						<div class="card mb-4">
							<div class="card-header py-3 bg-accent">
								<h5 class="mb-0">Thông tin thanh toán</h5>
							</div>
							<div class="card-body">
								<ul class="list-group list-group-flush">
									<li
										class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-1">
										Tổng chuyến:
										<span> ${SL} </span>
									</li>
									<li class="list-group-item d-flex justify-content-between align-items-center px-0 pb-1">
										Tổng tiền
										<!-- Cách 1 : Dùng hàm service đã viết -->
										<span>${Tong} vnđ</span>
									</li>
									<li
										class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pt-3">
										<p class="d-flex col-12">
											<b class="text-muted w-50 d-flex" style="align-items: center;">Khởi hành từ: </b>
											<input type="text" class="form-control border border-2 border-warning" name="address"
												placeholder="Nhập địa chỉ..." id="address" />
										</p>
									</li>
									<li
										class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3 mt-1">
										<div>
											<strong>Tổng cộng</strong>
											<span>
												<p class="mb-2 text-muted fst-italic">*Giá đã bao gồm thuế và phí</p>
											</span>
										</div>
										<span class="mb-4 text-accent fw-bolder fs-5">
											<!-- Cách 2: Ghi thẳng lệnh tìm và sum  -->
											<strong>
												<fmt:formatNumber
													value="${cart.items.stream().map(item -> (item.price * item.qty)).sum()}"
													pattern="#,### VNĐ"></fmt:formatNumber>
											</strong>
										</span>
									</li>
								</ul>
								<div id="submitBtn" class="text-center">
									<a href="/YourCart/checkout">
										<button type="button" class="btn btn-primary btn-lg btn-block">Thanh toán</button>
									</a>

								</div>
								<!-- Xíu_coi -->
								<a href="/account/login">
									<div class="ins-dynamic-banner-wrapper-c306">
										<img class="ins-image"
											src="https://image.useinsider.com/vinpearlvn/defaultImageLibrary/D_Non%20log%20in_Non%20Pearl-1661309904.png">
										<div class="ins-price">8.000.000 đ</div>
									</div>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
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
	<div class="back-to-top-wrapper" id="backToTop">
		<a href="#" class="back-to-top-link" aria-label="Scroll to Top" id="myBtn">
			<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#f39f2d"
				class="bi bi-caret-up-fill" viewBox="0 0 16 16">
                <path
					d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
            </svg>
		</a>
	</div>
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
				<div class="modal-body">Bạn thật sự muốn thoát ư 🥲 !</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Chưa</button>
					<a class="btn btn-warning" href="/account/login">Đăng xuất</a>
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

	<script>
		window.onscroll = function() {
			if (pageYOffset >= 150) {
				document.getElementById('backToTop').style.visibility = "visible"
			} else {
				document.getElementById('backToTop').style.visibility = "hidden";
			}
		};
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
	<!-- End Script -->
</body>

</html>