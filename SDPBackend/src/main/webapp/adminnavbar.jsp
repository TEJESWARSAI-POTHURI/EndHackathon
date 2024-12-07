<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Navbar</title>
    <style>
        body {
            display: flex;
            font-family: Arial, sans-serif;
            margin: 0;
        }
        .navbar {
            width: 200px;
            background-color: #333;
            height: 100vh;
            display: flex;
            flex-direction: column;
            padding-top: 20px;
            color: white;
        }
        .navbar a {
            padding: 15px;
            text-align: center;
            text-decoration: none;
            color: white;
            display: block;
        }
        .navbar a:hover {
            background-color: #555;
        }
        .content {
            flex-grow: 1;
            padding: 20px;
        }
    </style>
</head>
<body>
    <div class="navbar">
        <h2>Admin Panel</h2>
        <a href="addevent">Add Event</a>
        <a href="registerstudent">Add Student</a>
      
        <a href ="viewallevents">View Events</a>
        <a href="viewallstudents">View All Students </a>
        <a href= "adminaddeventphoto">Add event with pics</a>
        <a href ="adminlogout">Log Out</a>
    </div>
   
</body>
</html>
