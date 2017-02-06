<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Products</title>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Product Name</th>
				<th>Product Price</th>
				<th>Product Manufacturer</th>
			</tr>
		</thead>
		<c:forEach items="${productList}" var="product">  
			<tr>
				<td>${product.productName}</td>
				<td>${product.productPrice}</td>
				<td>${product.productManufacturer}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>