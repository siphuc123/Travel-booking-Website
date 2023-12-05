<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>LAB 6 Search & Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<style>
ul>li {
	list-style-type: none
}
</style>
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
		<h3 class="p-2 text-warning ms-5">LAB 6: SEARCH & PAGE</h3>
		<a class="d-flex justify-content-center py-1 text-decoration-none" style="width: 15%"
			href="/product/search">
			<button class="btn btn-warning rounded-pill border border-2 me-2 w-50">Trở về</button>
		</a>
	</div>

	<div class="container bg-white rounded-2 p-2">
		<form action="/product/search-and-page" method="post" class="row p-3 d-flex"
			style="justify-content: space-between;">
			<input name="keywords" value="${keywords}" placeholder="Gõ thứ muốn tìm..."
				class="col-9 rounded-2">
			<button class="col-2 btn btn-success">Tìm kiếm</button>
		</form>

		<div class="row p-2">
			<div class="col-8 me-1">
				<table border="1" style="width: 100%" class="table table-hover table-bordered table-warning">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Price</th>
						<th>Date</th>
					</tr>

					<c:forEach var="item" items="${page.content}">
						<tr>
							<td>${item.id}</td>
							<td>${item.name}</td>
							<td>${item.price}</td>
							<td>${item.createDate}</td>
						</tr>
					</c:forEach>
				</table>
			</div>

			<ul class="p-3 col-3 border border-warning border-3 bg-white rounded-3" style="margin: auto;">
				<h2 class="text-warning text-center">Bảng trạng thái</h2>
				<li class="text-center">- Số thực thể hiện tại: ${page.numberOfElements}</li>
				<li class="text-center">- Trang số: ${page.number}</li>
				<li class="text-center">- Kích thước trang: ${page.size}</li>
				<li class="text-center">- Tổng số thực thể: ${page.totalElements}</li>
				<li class="text-center">- Tổng số trang: ${page.totalPages}</li>
			</ul>
		</div>


		<div class="d-flex p-2 bg-warning rounded-pill my-2" style="justify-content: space-around;">
			<a href="/product/search-and-page?p=0" class="btn btn-info">First</a>
			<a href="/product/search-and-page?p=${page.number-1}" class="btn btn-info">Previous</a>
			<a href="/product/search-and-page?p=${page.number+1}" class="btn btn-info">Next</a>
			<a href="/product/search-and-page?p=${page.totalPages-1}" class="btn btn-info">Last</a>
		</div>

	</div>


</body>
</html>