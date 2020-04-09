<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Management System</title>
<style>
body  {
  background-image: url("");
  background-color: #cccccc;
}

#myDIV {
  position:absolute;
   left: 0;
  top: 20%;
  width: 100%;
  text-align: center;
  font-size: 18px;
  animation: mymove 5s infinite;
}

@keyframes mymove {
  from {background-color: red;}
  to {background-color: blue;}
}
</style>
</head>
<body>
<form action="success" modelAttribute="admin">
<div id="myDIV">
<center>
<h1>Product Management system</h1>
<br>
User ID    :<input type="text" name="username"/>
<br>
<br>
Password:<input type="password" name="password"/>
<br>
<p align="center" font size="20"><input type="submit" name="submit" value="Login"/></p>
</center>

</div>
</form>
</center>
</body>
</html>