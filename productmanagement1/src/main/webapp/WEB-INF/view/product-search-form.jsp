<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List-Search By Id</title>
<style>

table{
border-collapse:collapse;
border:3px solid black;

}

</style>
</head>
<body bgcolor="yellow">
<center>
<h1>Product Management System</h1>
<center>
<h3>PRODUCT LIST-SEARCH BY ID</h3>

<br>
<table border="1" bgclor="white" >
	    <tr>
		   <td>Product_ID</td>
		   <td>Product Name</td>
		   <td>Made-in</td>
		   <td>Brand</td>
		   <td>Price</td>
	       <td>Action</td>
		</tr>	
		<c:url var="updateLink" value="/product/updateProduct">
				<c:param name="productId" value="${product.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/product/deleteProduct">
				<c:param name="productId" value="${product.id}"></c:param>
			</c:url>
		<tr>
				<td>${product.id}</td>
				<td>${product.productName}</td>
				<td>${product.madeinName}</td>
				<td>${product.brand}</td>
				<td>${product.price}</td>
				<td><a href="${updateLink}">Update</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
	
	</table>
	<div>
<input type="button" value="Add Product" onclick="window.location.href='addProduct';return false;" class="add-button"/>
<br><br><br><br>
</div>
<p>
<a href="http://localhost:8080/productmanagement1/product/list">Back to Product List</a><br>
</p>
</body>
</html>