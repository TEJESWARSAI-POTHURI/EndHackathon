<%@page import="com.klef.jfsd.springboot.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<title>Student Home</title>
<style>
    /* Global Styles */
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #f0f8ff, #e0e7ff);
        color: #333;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
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

    /* Card Style */
    .student-card {
        background: #ffffff;
        border-radius: 10px;
        box-shadow: 0px 4px 12px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        max-width: 500px;
        width: 100%;
        margin-top: 2rem;
        text-align: left;
        animation: fadeIn 1s ease-in-out;
    }

    .student-card h2 {
        font-size: 1.8rem;
        color: #3b82f6;
        margin: 0 0 1rem;
    }

    .student-info {
        font-size: 1.1rem;
        color: #555;
        margin-bottom: 1rem;
        display: flex;
        justify-content: space-between;
    }

    .student-info strong {
        color: #333;
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

    <div class="student-card">
        <h2>Welcome, <%=s.getName()%>!</h2>
        <div class="student-info">
            <strong>ID:</strong>
            <span><%=s.getId()%></span>
        </div>
        <div class="student-info">
            <strong>Name:</strong>
            <span><%=s.getName()%></span>
        </div>
        <div class="student-info">
            <strong>Gender:</strong>
            <span><%=s.getGender()%></span>
        </div>
        <div class="student-info">
            <strong>Department:</strong>
            <span><%=s.getDepartment()%></span>
        </div>
        <div class="student-info">
            <strong>Email:</strong>
            <span><%=s.getEmail()%></span>
        </div>
        <div class="student-info">
            <strong>Location:</strong>
            <span><%=s.getLocation()%></span>
        </div>
        <div class="student-info">
            <strong>Contact:</strong>
            <span><%=s.getContact()%></span>
        </div>
        <div class="student-info">
            <strong>Status:</strong>
            <span><%=s.getStatus()%></span>
        </div>
    </div>
</body>
</html>
