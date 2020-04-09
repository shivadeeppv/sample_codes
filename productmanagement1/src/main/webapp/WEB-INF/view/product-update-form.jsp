<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update product list</title>
</head>
<body bgcolor="blue">
<h1>PRODUCT MANAGEMENT SYSTEM</h1>

<h3>ADD PRODUCT</h3>
<form:form action="saveProduct" modelAttribute="product" method="POST" >
		<table>
			<tbody>
			<tr>
					<td><label>Product_ID:</label></td>
					<td><form:input path="id" /></td>
				</tr>
				<tr>
					<td><label>Product Name:</label></td>
					<td><form:input path="productName" /></td>
				</tr>
				<tr>
					<td><label>Made-in:</label></td>
					<td><form:input path="madeinName" /></td>
				</tr>
				<tr>
					<td><label>Brand:</label></td>
					<td><form:input path="brand" /></td>
				</tr>
				<tr>
					<td><label>Price:</label></td>
					<td><form:input path="price" /></td>
				</tr>
				
				<tr>
					<td><input type="submit" value="Save" class="save"></td>
				</tr>
			</tbody>
		</table>
	</form:form>
	<p>
		<a href="http://localhost:8080/productmanagement1/product/list">Back to Product
			List</a>
	</p>
</body>
</html>