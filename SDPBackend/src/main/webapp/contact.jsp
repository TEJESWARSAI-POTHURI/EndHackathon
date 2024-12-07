<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            background-color: #f9f9f9;
            padding: 2rem;
            background-image: url('your-background-image.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            color: #fff;
        }

        .container {
            max-width: 600px;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent background for better text visibility */
            padding: 2rem;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 8px;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 1rem;
        }

        p {
            color: #666;
            margin-bottom: 1.5rem;
        }

        .contact-info {
            margin-bottom: 2rem;
            text-align: left;
        }

        .contact-info div {
            margin-bottom: 1rem;
        }

        .contact-info label {
            font-weight: bold;
            color: #333;
        }

        .contact-info span {
            color: #007bff;
        }

        .btn-submit {
            padding: 0.8rem 2rem;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 1rem;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn-submit:hover {
            background-color: #0056b3;
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
    <a href="/">
        <button class="arrow-btn">←</button>
    </a>
    <div class="container">
        <h1>Contact Us</h1>
        <p>We'd love to hear from you! Here are the ways you can reach us:</p>

        <div class="contact-info">
            <div>
                <label for="mobile">Mobile:</label>
                <span id="mobile">+1 234 567 890</span>
            </div>
            <div>
                <label for="email">Email:</label>
                <span id="email">eswarsai1668@gmail.com</span>
            </div>
            <div>
                <label for="location">Location:</label>
                <span id="location">1234 EduHub St, Learning City, ABC</span>
            </div>
            <div>
                <label for="landline">Landline:</label>
                <span id="landline">+1 800 123 4567</span>
            </div>
        </div>

       
    </div>
</body>
</html>
