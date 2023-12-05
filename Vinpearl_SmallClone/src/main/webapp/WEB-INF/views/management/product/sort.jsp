<%@ page pageEncoding="utf-8"%>

<!-- 1. thư viện bộ thẻ ..jstl -->
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Lab 5 Bài 5.3 Sorting</title>
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
</head>
<body>
	<div class="d-flex mx-5" style="justify-content: space-between;">
		<h3 class="p-2 text-info ms-5">SORTING BY <b>${field}</b></h3>
		<a class="d-flex justify-content-center py-1" style="width: 15%" href="/product/page">
			<button class="btn btn-info rounded-pill border border-2 me-1 w-50">
				Trở về
			</button>
		</a>
	</div>
	
	<table border="1" style="width: 100%"
		class="table table-bordered border-warning table-hover table-info align-middle mb-0 container">
		<thead>
			<tr>
				<th>
					<a href="/product/sort?field=id" class="d-flex justify-content-center">Id</a>
				</th>
				<th>
					<a href="/product/sort?field=name" class="d-flex justify-content-center">Name</a>
				</th>
				<th>
					<a href="/product/sort?field=price" class="d-flex justify-content-center">Price</a>
				</th>
				<th>
					<a href="/product/sort?field=createDate" class="d-flex justify-content-center">Date</a>
				</th>
			</tr>
		</thead>
		<!-- 	2. dùng vòng lặp xuất sản phẩm ra -->
		<tbody>
			<c:forEach var="item" items="${items}">
				<tr>
					<td class="fw-bold text-center">${item.id}</td>
					<td>${item.name}</td>
					<td class="w-25">
						<p class="fw-normal d-flex justify-content-center">${item.price}</p>
					</td>
					<td>
						<span class="badge bg-warning rounded-pill d-inline d-flex justify-content-center">${item.createDate}</span>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
