<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            margin: 0;
            background-color: #f4f4f9;
        }

        .navbar {
            width: 220px;
            background-color: #333;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
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
            margin-left: 240px;
            padding: 20px;
            width: calc(100% - 500px);
            background-color: #f4f4f9;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            width: 300px;
        }

        h2 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-top: 15px;
            color: #555;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-top: 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <div class="content">
        <form action="insertevent" method="post">
            <h2>Add Event Details</h2>

            
            <label for="ename">Event Name:</label>
            <input type="text" id="ename" name="ename" required maxlength="100">

            <label for="elocation">Event Location:</label>
            <input type="text" id="elocation" name="elocation" required maxlength="50">

            <label for="epoints">Event Points:</label>
            <input type="number" id="epoints" name="epoints" required maxlength="4">

            <label for="ecategory">Event Category:</label>
            <input type="text" id="ecategory" name="ecategory" required maxlength="20">

            <label for="eincharge">Event Incharge:</label>
            <input type="text" id="eincharge" name="eincharge" required maxlength="100">

            <input type="submit" value="Add Event">
        </form>
    </div>
</body>
</html>
