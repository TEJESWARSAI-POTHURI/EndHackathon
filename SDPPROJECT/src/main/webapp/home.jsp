<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<style>
@charset "UTF-8";

body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-image: url('https://cdn.pixabay.com/photo/2016/11/23/15/08/wooden-floor-1853417_1280.jpg'); /* Replace with your image URL */
    background-size: cover; /* Ensure the image covers the entire background */
    background-repeat: no-repeat;
    background-attachment: fixed; /* Fix the background on scroll */
    color: #fff; /* White text for better contrast */
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.7); /* Subtle text shadow for readability */
}

h1 {
    text-align: center;
    font-size: 2.5em;
    margin-top: 20px;
    color: #fa709a;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

p {
    font-family: "Times New Roman";
    font-size: 20px;
    margin: 20px;
    color: #fff;
}

.navbar {
    display: flex;
    align-items: center;
    background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent background */
    padding: 5px;
}

.navbar-icon {
    width: 30px;
    height: 30px;
    margin-right: 10px;
}

.navbar a {
    color: white;
    text-decoration: none;
    padding: 14px 20px;
}

.navbar a:hover {
    background-color: #575757;
}

.content {
    max-width: 800px;
    margin: 50px auto;
    padding: 20px;
    background: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5);
    color: #fff;
}

ol {
    list-style-type: decimal;
    padding-left: 20px;
}

li {
    margin: 10px 0;
    color: #ddd;
}

.main-heading {
    font-size: 1.8em;
    margin: 20px 0;
    padding: 10px;
    border-bottom: 2px solid #4A90E2;
}

.btn {
    background-color: #007bff;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
}

.btn:hover {
    background-color: #0056b3;
}
</style>
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<div class="content">
    <h1 class="main-heading">Student Activity Management</h1>
    <p>Register for events you wish and upskill yourself</p>
  
</div>
</body>
</html>
