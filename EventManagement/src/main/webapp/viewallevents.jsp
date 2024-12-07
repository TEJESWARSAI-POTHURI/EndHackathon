<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<%@ taglib uri="jakarta.tags.functions" prefix="fn" %> <!-- For length function -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            min-height: 100vh;
        }
        /* Navigation Bar Styling */
        .navbar {
            width: 250px;
            background-color: #333;
            height: 100vh;
            position: fixed;
            top: 0;
            left: 0;
            color: white;
            padding-top: 20px;
            box-sizing: border-box;
            overflow-y: auto;
        }
        .navbar a {
            display: block;
            padding: 15px;
            text-decoration: none;
            color: white;
            text-align: center;
        }
        .navbar a:hover {
            background-color: #555;
        }
        /* Main Content Styling */
        .content {
            margin-left: 250px; /* Matches navbar width */
            padding: 20px;
            flex: 1;
            background-color: #f8f9fa;
        }
        h3, h4 {
            text-align: center;
            color: #333;
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #ffffff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 12px;
            text-align: center;
        }
        th {
            background-color: #4CAF50;
            color: white;
            font-weight: bold;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #f1f1f1;
        }
        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                width: 200px;
            }
            .content {
                margin-left: 200px;
            }
        }
        @media (max-width: 576px) {
            .navbar {
                position: relative;
                width: 100%;
                height: auto;
            }
            .content {
                margin-left: 0;
            }
        }
    </style>
</head>
<body>
    <div class="navbar">
        <%@include file="facultynavbar.jsp" %>
    </div>
    <div class="content">
        <h3>View All Events</h3>
        <h4>Total Events: <c:out value="${fn:length(eventlist)}"/></h4>
        <table>
            <tr>
                <th>ID</th>
                <th>Event Name</th>
                <th>Date</th>
                <th>Domain</th>
                <th>Location</th>
                <th>Points</th>
            </tr>
            <c:forEach items="${eventlist}" var="event">
                <tr>
                    <td><c:out value="${event.id}"/></td>
                    <td><c:out value="${event.eventname}"/></td>
                    <td><c:out value="${event.date}"/></td>
                    <td><c:out value="${event.domain}"/></td>
                    <td><c:out value="${event.location}"/></td>
                    <td><c:out value="${event.points}"/></td>
                </tr>
            </c:forEach>
        </table>
    </div>
</body>
</html>
