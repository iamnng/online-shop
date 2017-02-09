<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file ="/WEB-INF/view/template/header.jsp" %>

<div class="container-wrapper">
	<div class="container">
		<div class="page-header">
			<h1>Product Details</h1>
			<p class="load">Here is the detailed information about Product</p>
			
		</div>

		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<img src="#" alt="image" style="width: 100%; height: 300px">
				</div>
				<div class="col-md-5">
					<h1>Product Name</h1>
					<p>Product Description</p>
					<p>Product Price</p>
					<p>Product Manufacturer</p>
				</div>
			</div>
		</div>
			
<%@ include file ="/WEB-INF/view/template/footer.jsp" %>