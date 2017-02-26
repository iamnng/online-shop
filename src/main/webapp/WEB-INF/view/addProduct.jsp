<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file ="/WEB-INF/view/template/header.jsp" %>

<div class="container-wrapper">
		<div class="container">
			<div class="page-header">
				<h1>Add Products</h1>
				<p class="load">You can add/remove items to Product Inventory</p>
			</div>
			
			<form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product">
				<div class="form-group">
					<label for="name">Name</label>
					<form:input path="productName" id="name" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="category">Category</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Instrument"/> Instrument</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Record"/> Record</label>
					<label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="Accessory"/> Accessory</label>
				</div>
				
				<div class="form-group">
					<label for="description">Description</label>
					<form:textarea path="productDescription" id="description" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="price">Price</label>
					<form:input path="productPrice" id="price" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="category">Condition</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="New"/> New</label>
					<label class="checkbox-inline"><form:radiobutton path="productCondition" id="condition" value="Used"/> Used</label>
				</div>
				
				<div class="form-group">
					<label for="status">Status</label>
					<label class="checkbox-inline"><form:radiobutton path="productState" id="state" value="Active"/> Active</label>
					<label class="checkbox-inline"><form:radiobutton path="productState" id="state" value="Disabled"/> Disabled</label>
				</div>
				
				<div class="form-group">
					<label for="unitInStock">Units in Stock</label>
					<form:input path="unitInStock" id="unit" class="form-control"/>
				</div>
				
				<div class="form-group">
					<label for="manufacturer">Manufacturer</label>
					<form:input path="productManufacturer" id="manufacturer" class="form-control"/>
				</div>
				
				<br>
				
				<input type="submit" value="Add Product to Catalog" class="btn btn-primary">
				<a href="<spring:url value="/admin/productInventory"/>" class="btn btn-warning">Cancel</a>
				
				<br>
			</form:form>


			
<%@ include file ="/WEB-INF/view/template/footer.jsp" %>