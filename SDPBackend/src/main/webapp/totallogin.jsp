<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Roles</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #f0f2f5;
            color: #333;
            position: relative; /* Make sure the arrow button stays positioned correctly */
        }

        .container {
            display: flex;
            gap: 2rem;
            justify-content: center;
            align-items: center;
        }

        .card {
            width: 250px;
            height: 300px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            overflow: hidden;
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s, box-shadow 0.3s;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            text-decoration: none;
            color: inherit;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.3);
        }

        .card-icon {
            font-size: 3rem;
            margin-bottom: 1rem;
            color: #007bff;
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 0.5rem;
        }

        .card-description {
            font-size: 1rem;
            padding: 0 1rem;
            color: #555;
        }

        /* Style for the arrow button */
        .arrow-btn {
            position: absolute;
            top: 20px;
            left: 20px; /* Position the button to the left */
            background: transparent;
            border: none;
            font-size: 2rem;
            color: #007bff;
            cursor: pointer;
            transition: color 0.3s;
        }

        .arrow-btn:hover {
            color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Arrow Button -->
    <a href="/">
        <button class="arrow-btn">←</button>
    </a>

    <div class="container">
        <a href="adminlogin" class="card">
            <div class="card-icon">👨‍💼</div>
            <div class="card-title">Admin</div>
            <div class="card-description">Manage users, settings, and system configurations.</div>
        </a>

        <a href="faculty" class="card">
            <div class="card-icon">👩‍🏫</div>
            <div class="card-title">Faculty</div>
            <div class="card-description">Access teaching resources and manage student records.</div>
        </a>

        <a href="student" class="card">
            <div class="card-icon">🎓</div>
            <div class="card-title">Student</div>
            <div class="card-description">Access course materials, assignments, and grades.</div>
        </a>
    </div>
</body>
</html>
