<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<table border="1" style="width: 100%" class="table table-bordered table-secondary table-hover">
	<tr>
		<th class="text-center">ID</th>
		<th class="text-center">Name</th>
		<th class="text-center">#Action</th>
	</tr>

	<!-- 2. xuất ra danh sách danh mục -->
	<c:forEach var="item" items="${items}">
		<tr>
			<td class="text-center">${item.id}</td>
			<td>${item.name}</td>
			<td class="text-center">
				<a href="/category/edit/${item.id}" class="text-decoration-none">
					<span class="badge bg-info rounded-pill d-inline d-flex justify-content-center">
						Edit
					</span>
				</a>
			</td>
		</tr>
	</c:forEach>
</table>
