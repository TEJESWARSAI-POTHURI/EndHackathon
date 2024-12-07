<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View All Events</title>
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

    .card-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
        gap: 20px;
        padding: 20px;
        max-width: 1200px;
        margin: 0 auto;
    }

    .card {
        background-color: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        padding: 20px;
        text-align: center;
        transition: transform 0.3s;
    }

    .card:hover {
        transform: scale(1.05);
    }

    .card h3 {
        color: #333;
        margin: 10px 0;
        font-size: 20px;
    }

    .card p {
        color: #555;
        font-size: 16px;
        margin: 8px 0;
    }
</style>
</head>
<body>
    <%@include file="adminnavbar.jsp"%>

    <h1>All Events</h1>
    <div class="card-container">
        <c:forEach items="${eventlist}" var="event">
            <div class="card">
                <h3><c:out value="${event.ename}" /></h3>
                <p><strong>ID:</strong> <c:out value="${event.eid}" /></p>
                <p><strong>Location:</strong> <c:out value="${event.elocation}" /></p>
                <p><strong>Points:</strong> <c:out value="${event.epoints}" /></p>
                <p><strong>Category:</strong> <c:out value="${event.ecategory}" /></p>
                <p><strong>Incharge:</strong> <c:out value="${event.eincharge}" /></p>
            </div>
        </c:forEach>
    </div>
</body>
</html>
