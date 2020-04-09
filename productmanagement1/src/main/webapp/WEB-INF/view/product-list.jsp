<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false" %>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product List</title>
<style>

.search{
position:absolute;
top:8px;
right:16px;
}

</style>
</head>
<body style="background-color: #FF8D74;">
<h1 style="font-size:50px;"><center><mark>Product Management System</center></h1>

<h3>PRODUCT LIST</h3>
<div>
<input type="button" value="Add Product" onclick="window.location.href='addProduct';return false;" class="add-button"/>
</div>
<div class="search">
<form action="searchProduct">
<label>Search By Id:</label>
<input type="number" name="productId">
<input type="submit" value="Search" >
</form>
</div>
<br>
<table border="2">

	    <tr>
		   <td>Product_ID</td>
		   <td>Product Name</td>
		   <td>Made-in</td>
		   <td>Brand</td>
	       <td>Price</td>
	       <td>Action</td>
		</tr>
		<c:forEach var="tempProducts" items="${products}">
		<c:url var="updateLink" value="/product/updateProduct">
				<c:param name="productId" value="${tempProducts.id}"></c:param>
		</c:url>
		<c:url var="deleteLink" value="/product/deleteProduct">
				<c:param name="productId" value="${tempProducts.id}"></c:param>
			</c:url>
			<tr>
				<td>${tempProducts.id}</td>
				<td>${tempProducts.productName}</td>
				<td>${tempProducts.madeinName}</td>
				<td>${tempProducts.brand}</td>
				<td>${tempProducts.price}</td>
				<td><a href="${updateLink}">Update</a>|
				<a href="${deleteLink}" onclick="if(!(confirm('Are you sure to delete'))) return false">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>