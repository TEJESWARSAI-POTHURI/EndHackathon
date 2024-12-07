<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Main Navbar</title>
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        body {
            background-color: #f0f4ff;
            display: flex;
            justify-content: flex-start; /* Align to the left */
            align-items: flex-start;
            height: 100vh;
            padding: 20px;
            flex-direction: column; /* Vertical layout */
        }

        .content {
            flex: 1; /* Takes up remaining space */
            padding: 20px;
            text-align: center;
        }

        .login-container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 320px;
            position: fixed; /* Keep the form in the right corner */
            top: 20px; /* Adjust as needed */
            right: 20px; /* Adjust as needed */
        }

        h2 {
            margin-bottom: 20px;
            font-size: 24px;
            color: #333;
        }

        table {
            width: 100%;
            margin-top: 10px;
        }

        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .login-options {
            display: flex;
            justify-content: space-between;
            margin-top: 10px;
        }

        .login-options a {
            text-decoration: none;
            color: #007bff;
            font-size: 12px;
        }

        .login-options input[type="checkbox"] {
            margin-right: 5px;
        }

        .login-btn {
            width: 100%;
            padding: 12px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }

        .social-signin {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }

        .signup-link {
            margin-top: 10px;
            font-size: 12px;
            color: #555;
        }

        .signup-link a {
            text-decoration: none;
            color: #007bff;
        }
    </style>
</head>
<body>

<div class="login-container">
    <h2>Sign In</h2>
    <form action="/login" method="post">
        <table>
            <tr>
                <td><label for="auname">Enter Username</label></td>
                <td><input type="text" id="auname" name="auname" required /></td>
            </tr>
            <tr>
                <td><label for="apwd">Enter Password</label></td>
                <td><input type="password" id="apwd" name="apwd" required /></td>
            </tr>
            <tr>
                <td colspan="2" class="button-container">
                    <input type="submit" value="Login" class="login-btn" />
                  
                </td>
            </tr>
        </table>

        <div class="login-options">
            <label><input type="checkbox"> Remember me</label>
            <a href="#">Recover password</a>
        </div>
    </form>
</div>

<div class="content">
    <h1>Welcome to the Home Page</h1>
    <p>This is a long page layout where you can add more content.</p>
    <p>Add any additional information, links, or sections as needed.</p>
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
    <p>More content goes here...</p>
    <p>More content goes here...</p>
    <p>More content goes here...</p>
    <p>More content goes here...</p>
</div>

</body>
</html>
