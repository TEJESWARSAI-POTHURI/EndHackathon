<%@page import="com.klef.jfsd.springboot.model.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
  <%
  Admin a =(Admin)session.getAttribute("admin");
    
    if(a!=null){
    	response.sendRedirect("empsessionfail.jsp");
    	return ;
    }
   %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home Page</title>
    
</head>
<body>
 <%@include file="adminnavbar.jsp" %>
    <div class="content">
        <h1>Hello Admin</h1>
        
x
    </div>
</body>
</html>
