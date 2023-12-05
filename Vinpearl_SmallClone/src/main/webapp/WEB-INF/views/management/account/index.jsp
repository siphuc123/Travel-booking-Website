<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Vinpearl | Administration</title>
<!-- Icon -->
<link rel="shortcut icon" href="/assets/images/logo.png" type="image/x-icon">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">

	<div id="wrapper">
		<!-- Sidebar -->
		<ul class="navbar-nav bg-gradient-info sidebar sidebar-dark accordion" id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a class="sidebar-brand d-flex align-items-center justify-content-center" href="/admin/home">
				<div class="sidebar-brand-icon ">
					<img src="/assets/images/logo.png" alt="" width="60" height="40" class="d-inline-block auto">
				</div>
				<div class="sidebar-brand-text mx-3">
					Quản lý
					<sup>admin</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/home">
					<i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Home</span>
				</a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Quản lý chính</div>

			<!-- Nav Item - Product Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/product/page">
					<i class="fas fa-regular fa-fw fa-location-dot"></i>
					<span>Các tour du lịch</span>
				</a>
			</li>

			<!-- Nav Item - Category Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/category/index">
					<i class="fas fa-sharp fa-regular fa-plane fa-rotate-90"></i>
					<span>Thể loại tour</span>
				</a>
			</li>

			<!-- Nav Item - Account Collapse Menu -->
			<li class="nav-item active">
				<a class="nav-link" href="/admin/account/index">
					<i class="fas fa-solid fa-person"></i>
					<span>Tài khoản</span>
				</a>
			</li>

			<!-- Nav Item - Order Collapse Menu -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/report/submit-order">
					<i class="fas fa-solid fa-exclamation"></i>
					<span>Đơn hàng cần xử</span>
				</a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Thống kê</div>

			<!-- Nav Item - Report 1 -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/report/inventory-by-category">
					<i class="fas fa-solid fa-shop"></i>
					<span>Sản phẩm tồn kho</span>
				</a>
			</li>

			<!-- Nav Item - Report 2 -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/report/inventory-by-order">
					<i class="fas fa-soild fa-truck-fast"></i>
					<span>Lượt mua sản phẩm</span>
				</a>
			</li>

			<!-- Nav Item - Report 3 -->
			<li class="nav-item">
				<a class="nav-link" href="/admin/report/inventory-by-order-month">
					<i class="fas fa-regular fa-clipboard"></i>
					<span>Đơn hàng theo tháng</span>
				</a>
			</li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<a href="/home" class="nav-item d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
				<i class="fas fa-home fa-sm text-white-50"></i>
				Trở về.
			</a>
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">
			<div id=content>
				<!-- Topbar -->
				<nav class="navbar navbar-expand navbar-light bg-white topbar mb-2 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light text-warning border-1 fw-bold small"
								placeholder="Tìm kiếm gì đó..." aria-label="Search" aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-warning" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none">
							<a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fas fa-search fa-fw"></i>
							</a>
							<!-- Dropdown - Messages -->
							<div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text" class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div>
						</li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1">
							<a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
								data-bs-toggle='dropdown' aria-haspopup="true" aria-expanded="false">
								<i class="fas fa-bell fa-fw"></i>
								<!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
							</a>
							<!-- Dropdown - Alerts -->
							<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown" style="left: -350%">
								<h6 class="dropdown-header">Thông báo</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">07 Tháng 6, 2023</div>
										<span class="font-weight-bold">Kiểm tra lại thể loại tour mang mã ID: 002 !</span>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">08 Tháng 6, 2023</div>
										Kiểm tra lại các mặt tiền tệ của sản phẩm.
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">09 Tháng 6, 2023</div>
										Hoàn thành trang quản lý, admin.
									</div>
								</a>
								<a class="dropdown-item text-center small text-gray-500" href="#">Hiển thị tất cả các.</a>
							</div>
						</li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1">
							<a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages -->
								<span class="badge badge-danger badge-counter">4</span>
							</a>
							<!-- Dropdown - Messages -->
							<div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown" style="left: -450%">
								<h6 class="dropdown-header">Tin nhắn</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="/assets/images/undraw_profile_1.svg" alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Chào Phúc ! Tui thắc mắc là ông sửa chỗ đã được nêu chưa
											á?</div>
										<div class="small text-gray-500">Lê Tân Phương · 58m</div>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="/assets/images/undraw_profile_2.svg" alt="...">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">Ê ông, cái hình ảnh ở trang mua sắm hình như có gì đó nó
											không đúng lắm?</div>
										<div class="small text-gray-500">Quang Huy · 1d</div>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="/assets/images/undraw_profile_3.svg" alt="...">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Cái báo cáo tuần trước của fen ok quá chời luông á fen!</div>
										<div class="small text-gray-500">Võ Nghiệp · 2d</div>
									</div>
								</a>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="...">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Gâu gâu gâu ...</div>
										<div class="small text-gray-500">Hiệp the Dog · 2w</div>
									</div>
								</a>
								<a class="dropdown-item text-center small text-gray-500" href="#">Hiện thêm tin</a>
							</div>
						</li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow">
							<a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="mr-2 d-none d-lg-inline text-gray-600 small">${fullname}</span>
								<c:choose>
									<c:when test="${empty photo}">
										<img src="/assets/images/undraw_profile.svg" alt="user" class="rounded-circle" width="31">
									</c:when>
									<c:otherwise>
										<img class="img-profile rounded-circle" src="/photo/${photo}">
									</c:otherwise>
								</c:choose>
							</a>
							<!-- Dropdown - User Information -->
							<div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown" style="left: -140%;">
								<a class="dropdown-item" href="#TrangCaNhan">
									<i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
									Profile
								</a>
								<a class="dropdown-item" href="#HeThong">
									<i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a>
								<a class="dropdown-item" href="#HoatDong">
									<i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="/account/logout" data-toggle="modal"
									data-target="#logoutModal">
									<i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div>
						</li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">
					<div class="alert alert-${color} text-dark fw-bold fade show d-flex justify-content-between"
						role="alert" id="alert" class="alert-close"
						style="position: absolute; right: 22%; top: 12%; width: 32%; display: none; z-index: 999;">
						${msg}
						<button type="button" id="alertClose" class="btn-close" data-bs-dismiss="alert"
							aria-label="Close"></button>
					</div>
					<div class="container-fluid">

						<div class="row ">
							<div class="col-md-12 px-1 pt-2">
								<div class="d-flex px-5 pb-2" style="justify-content: space-between;">
									<h4 class="p-3 btn-dark fw-bold rounded-pill text-success">Quản lý tài khoản</h4>
									<div class="fs-1 btn btn-dark shadow-3" style="display: flex; align-items: center;">🚹</div>
								</div>

								<section id="tabs" class="project-tab">
									<div class="container">
										<div class="row">
											<div class="col-md-12">
												<nav>
													<ul class="nav nav-tabs nav-fill" id="nav-tab" role="tablist" id="myTab">
														<li class="tabs_product nav-item" id="nav-home-tab" role="tab"
															aria-controls="nav-home" aria-selected="true">
															<a href="#nav-edit" class="nav-link active" data-bs-toggle="tab"> Edit Account </a>
														</li>
														<li class="tabs_product nav-item" id="nav-profile-tab" role="tab"
															aria-controls="nav-profile" aria-selected="false">
															<a href="#nav-list" class="nav-link" data-bs-toggle="tab"> List Account </a>
														</li>
													</ul>
												</nav>
												<div class="tab-content" id="nav-tabContent">
													<div class="tab-pane fade show active" id="nav-edit" role="tabpanel"
														aria-labelledby="nav-edit-tab">
														<form:form action="/admin/account/index" modelAttribute="item">
															<div class="p-3 border border-4 border-success rounded">
																<div class="col-12">
																	<label for="USER" class="me-3 form-label">Username:</label>
																	<form:input id="USER" path="username" placeholder="Tên tài khoản"
																		class="form-control" required="required" />
																</div>
																<div class="col-12 mt-2">
																	<label for="NAME" class="me-3 form-label">Tên đầy đủ:</label>
																	<form:input id="NAME" path="fullname" placeholder="Tên người dùng?"
																		required="required" class="form-control" />
																</div>
																<div class="col-12 mt-2">
																	<label for="PASS" class="me-3 form-label">Mật khẩu:</label>
																	<form:input id="PASS" path="password" placeholder="Mật khẩu?" required="required"
																		class="form-control" />
																</div>
																<div class="col-12 mt-2">
																	<label for="EMAIL" class="me-3 form-label">Email:</label>
																	<form:input id="EMAIL" path="email" placeholder="Nhập Email người dùng"
																		required="required" class="form-control" />
																</div>
																<div class="col-12 mt-2 row">
																	<div class="data col-6">
																		<h4>Role:</h4>
																		<div style="color: black;">
																			<form:radiobutton path="admin" name="admin" id="ROLE_ADMIN" value="true"/>
																			<label for="ROLE_ADMIN">Admin</label>
																			<form:radiobutton path="admin" name="admin" id="ROLE_USER" class="ms-3" value="false"/>
																			<label for="ROLE_USER">User</label>
																		</div>
																	</div>
																	<div class="data col-6 border-left border-3">
																		<h4>Kích hoạt:</h4>
																		<div style="color: black;">
																			<form:radiobutton path="activated" name="activated" id="ACTIVE" value="1"/>
																			<label for="ACTIVE">Yes</label>
																			<form:radiobutton path="activated" name="activated" id="UNACTIVE" class="ms-3" value="0"/>
																			<label for="UNACTIVE">No</label>
																		</div>
																	</div>
																	<div class="col-12 mt-2">
																	<label for="PHOTO" class="me-3 form-label">Ảnh đại diện:</label>
																	<form:input id="PHOTO" path="photo" placeholder="Chọn ảnh đại diện cho người dùng"
																		required="required" class="form-control" type="file"/>
																</div>
																</div>
															</div>
															
															<div class="d-flex bg-secondary p-3 rounded-3 mt-1"
																style="justify-content: space-evenly;">
																<button class="btn btn-success rounded-pill border border-3"
																	formaction="/admin/account/create">Create</button>
																<button class="btn btn-warning rounded-pill border border-3"
																	formaction="/admin/account/update">Update</button>
																<a class="btn btn-danger rounded-pill border border-3"
																	href="/admin/account/delete/${item.username}">Delete</a>
																<a class="btn btn-dark text-white rounded-pill border border-3"
																	href="/admin/account/index">Reset</a>
															</div>
														</form:form>
													</div>
													<div class="tab-pane fade p-3 border border-4 border-info" id="nav-list"
														role="tabpanel" aria-labelledby="nav-list-tab">

														<div class="d-flex mb-3" style="justify-content: space-between;">
															<h6 class="mb-0 p-3">
																<span class="text-muted">Sắp xếp:</span>
																<a href="#" class="text-body text-decoration-none">
																	<b>${field}</b>
																	<i class="fas fa-angle-down mt-1"></i>
																</a>
															</h6>
															<form action="/admin/account/search" method="post" class="p-2 d-flex">
																<div class="col-8 row" style="justify-content: center;">
																	<input name="min" value="${param.min}" placeholder="Min Price?"
																		class="p-2 me-3 col-5">
																	<input name="max" value="${param.max}" placeholder="Max Price?"
																		class="p-2 me-3 col-5">
																</div>
																<div>
																	<button class="btn btn-success me-3">Search</button>
																	<a class="btn btn-info text-decoration" href="/admin/account/Asearch">Advanced
																		Search</a>
																</div>
															</form>
														</div>

														<div class="row">

															<div class="col-md-12">
																<table border="1" style="width: 100%; font-size: 15px"
																	class="table table-bordered table-success text-dark table-hover fw-bold">
																	<thead>
																		<tr>
																			<th class="text-center">
																				<a href="/admin/account/page/sort?field=username"
																					class="d-flex justify-content-center">Username</a>
																			</th>
																			<th class="text-center">
																				<a href="/admin/account/page/sort?field=fullname"
																					class="d-flex justify-content-center">Fullname</a>
																			</th>
																			<th class="text-center">
																				<a href="/admin/account/page/sort?field=password"
																					class="d-flex justify-content-center">Password</a>
																			</th>
																			<th class="text-center">
																				<a href="/admin/account/page/sort?field=email"
																					class="d-flex justify-content-center">Email</a>
																			</th>
																			<th class="text-center">
																				<a href="/admin/account/page/sort?field=role"
																					class="d-flex justify-content-center">Role</a>
																			</th>
																			<th class="text-center">
																				<a href="/admin/account/page/sort?field=activated"
																					class="d-flex justify-content-center">is On?</a>
																			</th>
																			<th class="text-center">
																				<a href="#" class="d-flex justify-content-center">Action</a>
																			</th>
																		</tr>
																	</thead>
																	<tbody>
																		<c:forEach var="item" items="${page.content}">
																			<tr>
																				<td class="text-center">${item.username}</td>
																				<td>${item.fullname}</td>
																				<td>${item.password}</td>
																				<td>${item.email}</td>
																				<td>${item.admin? 'Admin':'User'}</td>
																				<td>${item.activated? 'On':'Off'}</td>	
																				<td class="text-center">
																					<a href="/admin/account/edit/${item.username}" class="text-decoration-none">
																						<span
																							class="badge bg-info p-2 rounded-pill d-inline d-flex justify-content-center">
																							Edit </span>
																					</a>
																					<a href="/admin/account/delete/${item.username}" class="text-decoration-none">
																						<span
																							class="badge bg-danger p-1 mt-2 rounded-pill d-inline d-flex justify-content-center">
																							<i class="fas fa-solid fa-trash-can"></i>
																							 </span>
																					</a>
																				</td>
																			</tr>
																		</c:forEach>
																	</tbody>
																</table>
																<div class="d-flex pt-3" style="justify-content: center">
																	<nav aria-label="Page">
																		<ul class="pagination pagination-circle">
																			<li class="page-item mx-2">
																				<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
																					href="/admin/account/index?p=0">First</a>
																			</li>
																			<li class="page-item mx-2">
																				<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
																					href="/admin/account/index?p=${page.number-1}">Previous</a>
																			</li>
																			<li class="page-item mx-2">
																				<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
																					href="/admin/account/index?p=${page.number+1}">Next</a>
																			</li>
																			<li class="page-item mx-2">
																				<a class="page-link btn btn-warning border border-2 rounded-3 border-dark"
																					href="/admin/account/index?p=${page.totalPages-1}">Last</a>
																			</li>
																		</ul>
																	</nav>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</section>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Footer -->
			<footer class="sticky-footer bg-white">
				<div class="container my-auto">
					<div class="copyright text-center my-auto">
						<span>
							Copyright &copy; 2023
							<b>Vinpearl.com</b>
							<i class="fs-3">x</i>
							<b>Trọng Phúc</b>
							. All rights reserved
						</span>
					</div>
				</div>
			</footer>

		</div>

	</div>

	<!-- Back to top button -->
	<a class="scroll-to-top rounded" href="#page-top">
		<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="#eee"
			class="bi bi-caret-up-fill" viewBox="0 0 16 16">
                <path
				d="m7.247 4.86-4.796 5.481c-.566.647-.106 1.659.753 1.659h9.592a1 1 0 0 0 .753-1.659l-4.796-5.48a1 1 0 0 0-1.506 0z" />
            </svg>
	</a>

	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Bạn thực sự muốn thoát?</h5>
					<button class="close" type="button" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Chọn nút "Đăng xuất" bên dưới nếu bạn chắc chắn đã xong việc !</div>
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


	<!-- jQuery -->
	<script src="/assets/js/jquery-2.1.0.min.js"></script>

	<!-- Global Init -->
	<script src="/assets/js/custom.js"></script>

	<!-- Plugin -->
	<script src="/assets/js/sb-admin-2.min.js"></script>

	<!-- Script -->
	<script type="text/javascript">
		$(document).ready(function() {
			$('a[data-bs-toggle="tab"]').on('show.bs.tab', function(e) {
				localStorage.setItem('activeTab', $(e.target).attr('href'));
			});
			var activeTab = localStorage.getItem('activeTab');
			if (activeTab) {
				$('#myTab a[href="' + activeTab + '"]').tab('show');
			}
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

</body>

</html>