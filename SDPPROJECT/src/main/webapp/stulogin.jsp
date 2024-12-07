<!DOCTYPE html>
<html>
<head>
    <title>Student Login</title>
    <style>
       body {
           font-family: 'Arial', sans-serif;
           margin: 0;
           padding: 0;
           background-image: url('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjU0NmJhdGNoMy1teW50LTM0LWJhZGdld2F0ZXJjb2xvcl8xLmpwZw.jpg'); /* Replace with your image URL */
           background-size: cover; /* Ensure the image covers the entire background */
           background-repeat: no-repeat;
           background-attachment: fixed; /* Fix the background on scroll */
           color: #000; /* Black text for better contrast */
           text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.7); /* Subtle text shadow for readability */
       }

       h2 {
           text-align: center;
       }

       .login-container {
           width: 400px;
           padding: 20px;
           border: 1px solid #ccc;
           border-radius: 10px;
           box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
           background-color: white; /* Optional: white background to highlight the form */
           margin: 0 auto;
           margin-top: 20px; /* Space between navbar and form */
       }

       table {
           width: 100%;
       }

       td {
           padding: 10px;
       }

       input[type="text"],
       input[type="password"] {
           width: 100%;
           padding: 8px;
           border: 1px solid #ccc;
           border-radius: 5px;
       }

       input[type="submit"],
       input[type="reset"] {
           background-color: #4CAF50;
           color: white;
           padding: 10px 15px;
           border: none;
           border-radius: 5px;
           cursor: pointer;
           margin-right: 10px;
       }

       input[type="submit"]:hover,
       input[type="reset"]:hover {
           background-color: #45a049;
       }

       .button-container {
           text-align: center;
       }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h2>Student Login</h2>
    <div class="login-container">
        <form method="post" action="checkstulogin">
            <table>
                <tr>
                    <td><label for="semail">Enter Email</label></td>
                    <td><input type="text" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
