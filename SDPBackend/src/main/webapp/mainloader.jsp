<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Home</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #333;
        }

        .navbar {
            width: 100%;
            background: rgba(0, 0, 0, 0.7);
            padding: 1rem 2rem;
            position: fixed;
            top: 0;
            left: 0;
            display: flex;
            justify-content: space-between;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            color: white;
            z-index: 1000;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            margin: 0 1rem;
            font-size: 1.1rem;
            transition: color 0.3s ease;
        }

        .navbar a:hover {
            color: #ffcc00;
        }

        .navbar .logo {
            font-size: 1.5rem;
            font-weight: bold;
        }

        .content {
            text-align: center;
            z-index: 2;
            margin-top: 10%;
            padding: 2rem;
        }

        .content h1 {
            font-size: 3rem;
            color: #333;
            margin-bottom: 1rem;
        }

        .content p {
            font-size: 1.3rem;
            margin-top: 1rem;
            color: #666;
        }

        .section {
            display: flex;
            align-items: center;
            padding: 2rem;
            width: 100%;
        }

        .section:nth-child(even) {
            flex-direction: row-reverse;
        }

        .section img {
            width: 50%;
            height: auto;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .section .text-content {
            width: 50%;
            padding: 2rem;
        }

        .section .text-content h2 {
            font-size: 2rem;
            color: #333;
        }

        .section .text-content p {
            margin-top: 1rem;
            font-size: 1.2rem;
            color: #666;
        }

        .footer {
            width: 100%;
            background: #333;
            color: white;
            padding: 2rem;
            text-align: center;
            margin-top: 2rem;
        }

        .footer .footer-links {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-bottom: 1rem;
        }

        .footer .footer-links a {
            color: #ffcc00;
            text-decoration: none;
            font-size: 1rem;
        }

        .footer .footer-links a:hover {
            text-decoration: underline;
        }

        .footer p {
            font-size: 0.9rem;
            color: #ccc;
        }
    </style>
</head>
<body>
    <nav class="navbar">
     
         <a href="#" class="logo">
            <img src=""D:\JFSD\SpringBoot\SDPBackend\src\main\webapp\Screenshot 2024-11-07 120338.png"" alt="KL Hub">
        </a>
        <div>
        
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="overalllogins">Login</a>
          
        </div>
    </nav>

    <div class="content">
        <h1>"One place, endless paths: where every skill, sport, and spark of knowledge finds its way to grow."</h1>
        <p>Welcome to EduHub, your one-stop platform for educational resources and learning opportunities.</p>
    </div>

    <div class="section">
        <img src="https://www.otacfitness.com/wp-content/uploads/2018/08/Sports-and-Athletes-Website-Header.png" alt="Educational Image 1">
        <div class="text-content">
            <h2>Sports</h2>
            <p>"Sports sharpen the mind, strengthen the body, and build resilience empowering you on and off the field."</p>
        </div>
    </div>

    <div class="section">
        <img src="https://gp1.com/wp-content/uploads/2018/08/Coach.jpg" alt="Educational Image 2">
        <div class="text-content">
            <h2>Expert Mentors and Coaches</h2>
            <p>Learn from experienced mentors who guide you at every step, helping you unlock your full potential.</p>
            <p>"Coaches guide, inspire, and push you beyond limits, fostering growth through every challenge."</p>
        </div>
    </div>

    <div class="section">
        <img src="https://th.bing.com/th/id/OIP.iYBXD0Mvk-vTgbmWcsTnLwHaEK?rs=1&pid=ImgDetMain" alt="Educational Image 3">
        <div class="text-content">
            <h2>Comprehensive Resources</h2>
            <p>Access a rich repository of resources across subjects to complement your learning journey.</p>
            <p>"Technological events ignite curiosity and innovation, shaping skills that drive the future."</p>
        </div>
    </div>
    
    
    <div class="section">
        <img src="https://vtmnsscollege.ac.in/wp-content/uploads/2017/11/Student-club-activities.jpg" alt="Educational Image 3">
        <div class="text-content">
            <h2>Student Activity Center</h2>
            <p>Access a rich repository of resources across subjects to complement your learning journey.</p>
            <p>"Technological events ignite curiosity and innovation, shaping skills that drive the future."</p>
        </div>
    </div>

    <div class="footer">
        <div class="footer-links">
            <a href="about.jsp">About</a>
            <a href="contact.jsp">Contact</a>
            <a href="feedback.jsp">Feedback</a>
            <a href="mailto:eswarsai1668@gmail.com">Chat with Us</a>
        </div>
        <p>&copy; 2024 KL Hub. All rights reserved. | KL Hub: Inspiring growth and innovation in every learner.</p>
    </div>
</body>
</html>
