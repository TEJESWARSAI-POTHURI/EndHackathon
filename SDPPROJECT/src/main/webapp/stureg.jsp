<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
       body {
           font-family: 'Arial', sans-serif;
           margin: 0;
           padding: 0;
           background-image: url('https://images.rawpixel.com/image_800/czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvbHIvdjU0NmJhdGNoMy1teW50LTM0LWJhZGdld2F0ZXJjb2xvcl8xLmpwZw.jpg'); /* Replace with your image URL */
           background-size: cover; /* Ensure the image covers the entire background */
           background-repeat: no-repeat;
           background-attachment: fixed; /* Fix the background on scroll */
           color: #000; /* White text for better contrast */
           text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.7); /* Subtle text shadow for readability */
       }
       h2 {
           text-align: center;
       }
       .registration-container {
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
       input[type="email"],
       input[type="password"],
       input[type="number"],
       select {
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
    </style>
    <script>
        function validateForm() {
            const name = document.getElementById("sname").value;
            const email = document.getElementById("semail").value;
            const password = document.getElementById("spwd").value;
            const contact = document.getElementById("scontact").value;

            const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            const contactPattern = /^[0-9]{10}$/;

            if (!emailPattern.test(email)) {
                alert("Please enter a valid email address.");
                return false;
            }

            if (password.length < 8) {
                alert("Password must be at least 8 characters long.");
                return false;
            }

            if (!contactPattern.test(contact)) {
                alert("Please enter a valid 10-digit contact number.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h2>Student Registration</h2>
    <div class="registration-container">
        <form method="post" action="insertstu" onsubmit="return validateForm()">
            <table>
                <tr>
                    <td><label for="sname">Enter Name</label></td>
                    <td><input type="text" id="sname" name="sname" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="sgender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="sgender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="sgender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="sdept">Select Department</label></td>
                    <td>
                        <select id="sdept" name="sdept" required>
                            <option value="">---Select---</option>
                            <option value="CSE">CSE</option>
                            <option value="ECE">ECE</option>
                            <option value="AI-DS">AI-DS</option>
                            <option value="EEE">EEE</option>
                            <option value="CSIT">CSIT</option>
                            <option value="IOT">IOT</option>
                            <option value="ECS">ECS</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="slocation">Enter Location</label></td>
                    <td><input type="text" id="slocation" name="slocation" required/></td>
                </tr>
                <tr>
                    <td><label for="semail">Enter Email ID</label></td>
                    <td><input type="email" id="semail" name="semail" required/></td>
                </tr>
                <tr>
                    <td><label for="spwd">Enter Password</label></td>
                    <td><input type="password" id="spwd" name="spwd" required/></td>
                </tr>
                <tr>
                    <td><label for="scontact">Enter Contact</label></td>
                    <td><input type="number" id="scontact" name="scontact" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Register"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
