<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>adminLogin</title>
<style>
* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
	font-family: Arial, sans-serif;
}

body {
/* 	background-image: url('https://wallpaperaccess.com/full/2314950.jpg'); /* R */eplace with the path to your image */
	background-size: cover;
	background-position: center;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
	overflow: hidden;
}

.content {
	position: absolute;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.login-container {
    background-color: rgba(255, 255, 255, 0.9); /* White background with some transparency */
    padding: 40px;
    border-radius: 15px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 400px;
    z-index: 1; /* Brings the login container above the background */
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

	<div class="content">
	   <a href="overalllogins">
        <button class="arrow-btn">←</button>
    </a>
	
		<div class="login-container">
			<h2>Sign In</h2>
			<form action="checkadminlogin" method="post">
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
						<td colspan="2" class="button-container"><input type="submit"
							value="Login" class="login-btn" /></td>
					</tr>
				</table>

				<div class="login-options">
					<label><input type="checkbox"> Remember me</label> <a
						href="#">Recover password</a>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
