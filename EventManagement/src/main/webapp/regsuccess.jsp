<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Success</title>
</head>
<body>
    <div class="success-message">
        <c:out value="${message}"></c:out>
    </div>
    <a href="facultylogin">Login Here</a>
</body>
</html>