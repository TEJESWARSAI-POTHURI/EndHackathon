<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Faculty Home</title>
<style>
body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.navbar {
  background-color: #333;
  color: #fff;
  padding: 10px;
}

.navbar a {
  color: #fff;
  text-decoration: none;
  padding: 10px;
}

.navbar a:hover {
  background-color: #555;
}

.content {
  padding: 20px;
}

.link-button {
  display: inline-block;
  background-color: #4CAF50;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  font-size: 16px;
  margin: 10px 0;
  cursor: pointer;
}

.link-button:hover {
  background-color: #45a049;
}
</style>
</head>
<body>
<%@include file="facultynavbar.jsp" %>
<center>

I am in Faculty Home
<center>

</body>
</html>