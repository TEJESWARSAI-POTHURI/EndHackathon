<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            margin: 0;
            background-color: #f9f9f9;
        }
        .confirmation-container {
            background-color: #fff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 400px;
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }
        p {
            font-size: 18px;
            color: #333;
        }
         .button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
            font-weight: bold;
        }
        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
 <%@include file="stunavbar.jsp" %>
    <div class="confirmation-container">
        <h1>Registration Successful!</h1>
        <p>Thank you, <%= request.getParameter("name") %>, for registering !.</p>
 <a href="/events" class="button">Back to Events</a>
    </div>

</body>
</html>
