<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <style>
    
    body {
 font-family: Arial, sans-serif;
 margin: 0;
 padding: 0;
}

.navbar {
 background-color: #333;
 overflow: hidden;
}

.navbar a {
 float: left;
 color: white;
 text-align: center;
 padding: 14px 16px;
 text-decoration: none;
}

.navbar a:hover {
 background-color: #ddd;
 color: black;
}

h2 {
 padding: 20px 0;
}
    </style>
</head>
<body>
    <h2 align="center">Faculty Dashboard</h2>
    <div class="navbar">
         <a href="facultyhome">Home</a>
         <a href="viewallevents">View All Events</a>

<a href="eventreg.jsp">Add Event</a>
<a href="updateevent.jsp">Update Event</a>
         <a href="facultylogout">Logout</a>
    </div>
</body>
</html>