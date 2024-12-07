<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Sphere - Events</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            margin: 0;
            padding: 20px;
            background-color: #f9f9f9;
        }
        h1 {
            width: 100%;
            text-align: center;
            font-size: 36px;
            margin-bottom: 20px;
        }
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            width: 100%;
            max-width: 1200px;
        }
        .card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            width: 300px;
            box-sizing: border-box;
            text-align: center;
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .card h2 {
            font-size: 24px;
            color: #333;
        }
        .card p {
            font-size: 16px;
            color: #666;
            margin: 8px 0;
        }
        .register-btn {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            border-radius: 5px;
            text-align: center;
        }
        .register-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
   <%@include file="stunavbar.jsp" %>
    <h1>Events</h1>

    <div class="card-container">
        <!-- Event Card 1 -->
        <div class="card">
            <h2>The Great Brain Puzzle</h2>
            <p><strong>Location:</strong> Room 101</p>
            <p><strong>Points:</strong> 50</p>
            <p><strong>Category:</strong> Club</p>
            <p><strong>Incharge:</strong> Dr. Santhi Sri</p>
            <form action="register.jsp" method="get">
                <input type="hidden" name="event" value="The Great Brain Puzzle">
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>

        <!-- Event Card 2 -->
        <div class="card">
            <h2>ATS Score Checker</h2>
            <p><strong>Location:</strong> Lab 202</p>
            <p><strong>Points:</strong> 30</p>
            <p><strong>Category:</strong> Club</p>
            <p><strong>Incharge:</strong> Prof. J Surya Kiran</p>
            <form action="register.jsp" method="get">
                <input type="hidden" name="event" value="ATS Score Checker">
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>

        <!-- Event Card 3 -->
        <div class="card">
            <h2>Throwball Selections</h2>
            <p><strong>Location:</strong> Sports Ground</p>
            <p><strong>Points:</strong> 20</p>
            <p><strong>Category:</strong> Sports</p>
            <p><strong>Incharge:</strong> Coach Samba Siva Rao</p>
            <form action="register.jsp" method="get">
                <input type="hidden" name="event" value="Throwball Selections">
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>

        <!-- Event Card 4 -->
        <div class="card">
            <h2>Guardians of the Network</h2>
            <p><strong>Location:</strong> Network Lab 3</p>
            <p><strong>Points:</strong> 40</p>
            <p><strong>Category:</strong> SIL</p>
            <p><strong>Incharge:</strong> Prof. Gupta</p>
            <form action="register.jsp" method="get">
                <input type="hidden" name="event" value="Guardians of the Network">
                <button type="submit" class="register-btn">Register</button>
            </form>
        </div>
    </div>

</body>
</html>
