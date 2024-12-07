<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%
   Student s = (Student) session.getAttribute("student"); // will return the object value
    if(s==null)
    {
      response.sendRedirect("stusessionfail");
      return ; // if if executed it will not go to another part of the code 
    }
   %>
<!DOCTYPE html>
<html>
<head>
    <title>Register for Event</title>
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
        .registration-container {
            background-color: #fff;
            padding: 20px 40px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            font-size: 28px;
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-top: 10px;
            text-align: left;
        }
        input[type="text"], input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            width: 100%;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
   <%@include file="stunavbar.jsp" %>
    <div class="registration-container">
        <h1>Register for <%= request.getParameter("event") %></h1>
        
<form action="/insertregevent" method="post">
   
     <label for="eventName">Event Name:</label>
  <input type="text" value="<%= request.getParameter("event") %>" id="eventName" name="eventName" required>
  
    <label for="name">Name:</label>
    <input type="text" value="<%=s.getName()%>" id="name" name="name" required>
    
    <label for="email">Email:</label>
    <input type="email" value="<%=s.getEmail()%>" id="email" name="email" required>
    
    <label for="contact">Contact Number:</label>
    <input type="text" value="<%=s.getContact()%>" id="contact" name="contact" required>
    
    <button type="submit" class="submit-btn">Submit Registration</button>
</form>
    </div>

</body>
</html>