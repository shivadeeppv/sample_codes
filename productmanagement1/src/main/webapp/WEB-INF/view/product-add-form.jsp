<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Product</title>
<style>
.error
{
color:red;
}
</style>
</head>
<body bgcolor="tomato">
<center>
<h1>PRODUCT MANAGEMENT SYSTEM</h1>
</center>
<h3>ADD PRODUCT</h3>
<form:form action="saveProduct" modelAttribute="product" method="POST" >
		<table>
			<tbody>
			    
				<tr>
					<td><label>Product Name:</label></td>
					<td><form:input path="productName" /></td>
					<form:errors path="productName" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Made-in:</label></td>
					<td><form:input path="madeinName" /></td>
					<form:errors path="madeinName" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Brand:</label></td>
					<td><form:input path="brand" /></td>
					<form:errors path="brand" cssClass="error"/>
				</tr>
				<tr>
					<td><label>Price:</label></td>
					<td><form:input path="price" /></td>
					<form:errors path="price" cssClass="error"/>
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