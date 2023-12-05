<%@ page pageEncoding="utf-8"%>

<!-- 1. thư viện thẻ -->
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<form:form action="/category/index" modelAttribute="item">
	<div class="d-flex" style="justify-content: space-evenly;">
		<div class="d-flex" style="align-items: center;">
			<label for="ID" class="me-3">ID:</label>
			<form:input id="ID" path="id" placeholder="Số thứ tự của thể loại?" />
		</div>
		<div class="d-flex" style="align-items: center;">
			<label for="NAME" class="me-3">Tên Thể loại:</label>
			<form:input id="NAME" path="name" placeholder="Tên của thể loại?" />
		</div>
	</div>
	<hr>
	<div class="d-flex bg-secondary p-3 rounded-3" style="justify-content: space-evenly;">
		<button class="btn btn-success rounded-pill border border-3" formaction="/category/create">Create</button>
		<button class="btn btn-warning rounded-pill border border-3" formaction="/category/update">Update</button>
		<a class="btn btn-danger rounded-pill border border-3" href="/category/delete/${item.id}">Delete</a>
		<a class="btn btn-dark text-white rounded-pill border border-3" href="/category/index">Reset</a>
	</div>
</form:form>

