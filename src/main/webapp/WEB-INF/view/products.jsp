<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file ="/WEB-INF/view/template/header.jsp" %>

<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>All Products</h1>
				<p class="load">Check out all awesome products now!</p>
			</div>

			<table class="table table-striped table-hover">
				<thead>
					<tr class="bg-success">
						<th>Product Name</th>
						<th>Product Price</th>
						<th>Product Manufacturer</th>
						<th></th>
					</tr>
				</thead>
				<c:forEach items="${productList}" var="product">  
					<tr>
						<td>${product.productName}</td>
						<td>${product.productPrice}</td>
						<td>${product.productManufacturer}</td>
						<td><a href="<spring:url value="/products/productDetails/${product.productId}"/>"><span class="glyphicon glyphicon-info-sign"></span></a></td>
					</tr>
				</c:forEach>
			</table>
			
<%@ include file ="/WEB-INF/view/template/footer.jsp" %>