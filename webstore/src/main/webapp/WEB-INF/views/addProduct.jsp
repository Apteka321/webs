<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<html>
<head>
<meta http-equiv="Content-Type"
	content="text/html; charset=ISO-8859-
1">
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/boo
tstrap.min.css">
<title>Products</title>
</head>
<body>
	<section>
		<div class="jumbotron">

			<div class="container">
				<h1>Products</h1>
				<p>Add products</p>
			</div>
			<a href="<c:url value="/j_spring_security_logout" />"
				class="btn btndanger
btn-mini pull-right">logout</a>
		</div>
		<div class="pull-right" style="padding-right: 100px">
			<a href="?language=en"> English</a>&nbsp|&nbsp&nbsp<a
				href="?language=nl">Dutch</a>&nbsp&nbsp|&nbsp<a href="?language=pl">Polish</a>
		</div>
	</section>
	<section class="container">

		<form:form modelAttribute="newProduct" class="form-horizontal"
			enctype="multipart/form-data">
			<form:errors path="*" cssClass="alert alert-danger" element="div"/>
			<fieldset>
				<legend>
					<spring:message code="addProduct.form.header.label" />
				</legend>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="productId"><spring:message
							code="addProduct.form.productId.label" /></label>
					<div class="col-lg-10">
						<form:input id="productId" path="productId" type="text"
							class="form:input-large" />
						<form:errors path="productId" cssClass="text-danger" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="name"><spring:message
							code="addProduct.form.name.label" /></label>
					<div class="col-lg-10">
						<form:input id="name" path="name" type="text"
							class="form:input-large" />
							<form:errors path="name" cssClass="text-danger" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitPrice"><spring:message
							code="addProduct.form.unitPrice.label" /></label>
					<div class="col-lg-10">
						<form:input id="unitPrice" path="unitPrice" type="text"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="manufacturer"><spring:message
							code="addProduct.form.manufacturer.label" /></label>
					<div class="col-lg-10">
						<form:input id="manufacturer" path="manufacturer" type="text"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="category"><spring:message
							code="addProduct.form.category.label" /></label>
					<div class="col-lg-10">
						<form:input id="category" path="category" type="text"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitsInStock"><spring:message
							code="addProduct.form.unitsInStock.label" /></label>
					<div class="col-lg-10">
						<form:input id="unitsInStock" path="unitsInStock" type="text"
							class="form:input-large" />
							<form:errors path="unitsInStock" cssClass="text-danger" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2 col-lg-2" for="unitsInOrder">Units
						in order</label>
					<div class="col-lg-10"></div>
				</div>
				<!-- Similarly bind form:input tag for
name,unitPrice,manufacturer,category,unitsInStock and unitsInOrder
fields-->

				<div class="form-group">
					<label class="control-label col-lg-2" for="description"><spring:message
							code="addProduct.form.description.label" /></label>
					<div class="col-lg-10">
						<form:textarea id="description" path="description" rows="2" />
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="discontinued">Discontinued</label>
					<div class="col-lg-10"></div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="condition"><spring:message
							code="addProduct.form.condition.label" /></label>
					<div class="col-lg-10">
						<form:radiobutton path="condition" value="New" />
						New
						<form:radiobutton path="condition" value="Old" />
						Old
						<form:radiobutton path="condition" value="Refurbished" />
						Refurbished
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-lg-2" for="productImage"> <spring:message
							code="addProduct.form.productImage.label" /></label>
					<div class="col-lg-10">
						<form:input id="productImage" path="productImage" type="file"
							class="form:input-large" />
					</div>
				</div>
				<!--  PDF Upload -->
				<div class="form-group">
					<label class="control-label col-lg-2" for="pdfManual"> <spring:message
							code="addProduct.form.pdfManual.label" /></label>
					<div class="col-lg-10">
						<form:input id="pdfManual" path="pdfManual" type="file"
							class="form:input-large" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-lg-offset-2 col-lg-10">
						<input type="submit" id="btnAdd" class="btn btn-primary"
							value="Add" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</section>
</body>
</html>