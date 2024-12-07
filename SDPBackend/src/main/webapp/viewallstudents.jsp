<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #444;
            margin-top: 30px;
            font-size: 26px;
        }

        table {
            width: 30%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 15px;
            text-align: center;
            font-size: 18px;
        }

        th {
            background-color: #333;
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:nth-child(odd) {
            background-color: #e8e8e8;
        }

        tr:hover {
            background-color: #d3e0ea;
            transition: background-color 0.3s;
        }

        @media (max-width: 768px) {
            table {
                width: 95%;
            }

            th, td {
                font-size: 16px;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>

    <h1>Student Details</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>NAME</th>
        </tr>
        <c:forEach items="${studentlist}" var="student">
            <tr>
                <td><c:out value="${student.sid}" /></td>
                <td><c:out value="${student.sname}" /></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
