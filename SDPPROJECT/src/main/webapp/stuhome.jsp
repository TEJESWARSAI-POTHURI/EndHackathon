<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
  Student s =(Student) session.getAttribute("student");
    
    if(s==null){
      response.sendRedirect("stusessionfail");
      return ;
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* Global Styles */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #f0f8ff, #e0e7ff);
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    /* Navbar */
    nav {
        width: 100%;
        padding: 1rem 2rem;
        background: #3b82f6;
        color: #ffffff;
        font-size: 1.1rem;
        text-align: center;
        box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    }

    nav a {
        color: #ffffff;
        text-decoration: none;
        margin: 0 1rem;
        font-weight: bold;
        transition: color 0.3s ease;
    }

    nav a:hover {
        color: #ffcc00;
    }

    /* Welcome Section */
    .welcome-message {
        margin-top: 2rem;
        padding: 1.5rem 2rem;
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 600px;
        animation: fadeIn 1s ease-in-out;
    }

    .welcome-message h1 {
        font-size: 2rem;
        color: #3b82f6;
        margin: 0;
    }

    .welcome-message p {
        font-size: 1.1rem;
        color: #555;
        margin-top: 0.5rem;
    }

    /* Animation */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>
    <%@include file="stunavbar.jsp" %>

  
    <div class="welcome-message">
        <h1>Welcome, <%=s.getName()%>!</h1>
        <p>We’re excited to have you back. Dive into new events, gain skills, and make the most of your time here!</p>
    </div>
</body>
</html>
