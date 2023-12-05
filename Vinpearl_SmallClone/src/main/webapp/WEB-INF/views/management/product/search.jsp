<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<title>Vinpearl | Administration</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="/assets/css/sb-admin-2.min.css" rel="stylesheet">
</head>
<body class="bg-secondary">

	<header class="p-2 mb-2 border-bottom bg-white">
			<div class="container-fuild">
				<div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
					<a href="/account/login"
						class="d-flex align-items-center mb-2 mb-lg-0 text-dark text-decoration-none">
						<img width="50" height="50" class="d-inline-block auto" alt="home"
							src="https://webdulichdanang.com/wp-content/uploads/2016/08/logo300.png" />
					</a>

					<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
						<li>
							<a href="#" class="nav-link px-2 link-secondary">Trang chủ</a>
						</li>
						<li>
							<a href="#" class="nav-link px-2 link-dark">Sản phẩm</a>
						</li>
						<li>
							<a href="#" class="nav-link px-2 link-dark">Giới thiệu</a>
						</li>
						<li>
							<a href="#" class="nav-link px-2 link-dark">Liên hệ</a>
						</li>
					</ul>

					<a class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search" href="/product/search">
						<input type="search" class="form-control" placeholder="Tìm kiếm..." aria-label="Search">
					</a>

					<div class="dropdown text-end">
						<a href="#" class="d-block link-dark text-decoration-none dropdown-toggle"
							data-bs-toggle="dropdown" aria-expanded="false">
							<img src="https://github.com/mdo.png" alt="mdo" width="32" height="32" class="rounded-circle">
						</a>
						<ul class="dropdown-menu text-small">
							<li>
								<a class="dropdown-item" href="#">Xem thông tin...</a>
							</li>
							<li>
								<a class="dropdown-item" href="#">Cài đặt</a>
							</li>
							<li>
								<a class="dropdown-item" href="#">Tạo bài mới</a>
							</li>
							<li>
								<hr class="dropdown-divider">
							</li>
							<li>
								<a class="dropdown-item" href="#">Đăng xuất</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</header>

	<div class="d-flex mx-5" style="justify-content: space-between;">
		<h3 class="p-2 text-warning ms-5">
			LAB 6: SEARCHING With
			<b>MAX & MIN</b>
		</h3>
		<a class="d-flex justify-content-center py-1 text-decoration-none" style="width: 15%"
			href="/product/page">
			<button class="btn btn-warning rounded-pill border border-2 me-2 w-50">Trở về</button>
		</a>
	</div>

	<div class="container bg-white rounded-3 p-2">
		<form action="/product/search" method="post" class="p-2 d-flex">
			<div class="col-8 row" style="justify-content: center;">
				<input name="min" value="${param.min}" placeholder="Min Price?" class="p-2 me-3 col-5">
				<input name="max" value="${param.max}" placeholder="Max Price?" class="p-2 me-3 col-5">
			</div>
			<div>
				<button class="btn btn-success me-3">Search</button>
				<a class="btn btn-info text-decoration" href="/product/search-and-page">Advanced Search</a>
			</div>
		</form>

		<table border="1" style="width: 100%" class="table table-hover table-primary table-bordered mt-2 p-2">
			<tr>
				<th class="text-center">
					<a href="/product/sort?field=id">ID</a>
				</th>
				<th class="text-center">
					<a href="/product/sort?field=name">Name</a>
				</th>
				<th class="text-center">
					<a href="/product/sort?field=price">Price</a>
				</th>
				<th class="text-center">
					<a href="/product/sort?field=createDate">Date</a>
				</th>
			</tr>

			<c:forEach var="item" items="${items}">
				<tr>
					<td class="text-center">${item.id}</td>
					<td>${item.name}</td>
					<td class="text-center">${item.price}</td>
					<td class="text-center">${item.createDate}</td>
				</tr>
			</c:forEach>

		</table>
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
</body>
</html>