<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About KL University</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 80%;
            margin: 0 auto;
            padding: 2rem 0;
        }

        h1 {
            font-size: 2.5rem;
            color: #003366;
            text-align: center;
        }

        p {
            line-height: 1.6;
            font-size: 1.1rem;
            margin-top: 1rem;
        }

        .highlight {
            color: #003366;
            font-weight: bold;
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
    <div class="container">
    
     <a href="/">
        <button class="arrow-btn">←</button>
    </a>
    
        <h1>About KL University</h1>
        <p>
            Welcome to <span class="highlight">KL University</span>, one of India's leading institutions renowned for excellence in higher education.
            We offer a wide range of programs at the <span class="highlight">Undergraduate (UG)</span>, <span class="highlight">Postgraduate (PG)</span>, and <span class="highlight">PhD</span> levels, empowering students to excel in their chosen fields.
        </p>
        <p>
            Our commitment to quality education, state-of-the-art facilities, and a vibrant campus environment makes KL University a preferred destination for students from around the world.
            With a strong emphasis on research, innovation, and global perspectives, we aim to prepare students for successful careers and meaningful contributions to society.
        </p>
        <p>
            Join us at KL University to explore your potential and achieve your aspirations in a supportive and dynamic academic community.
        </p>
    </div>
</body>
</html>
