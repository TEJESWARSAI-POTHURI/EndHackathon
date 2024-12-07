<html>
<head>
    <title>Employee Login</title>
    <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f2f2f2;
    }

    .form-container {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 80vh;
    }

    form {
      background-color: white;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 10px;
      text-align: left;
    }

    input[type=email], input[type=password] {
      width: 100%;
      padding: 12px 20px;
      margin: 8px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 4px;
      box-sizing: border-box;
    }

    input[type=submit], input[type=reset] {
      background-color: #ef7c8e;
      color: white;
      padding: 14px 20px;
      margin: 8px 0;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    input[type=submit]:hover, input[type=reset]:hover {
      background-color: #ef7c8e;
    }
    .button-container {
      text-align: center;
    }
  </style>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
 
    <h3 style="text-align: center;"><u>Faculty Login</u></h3>
    <div class="form-container">
        <form method="post" action="checkfacultylogin">
            <table>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                 <tr>
                    <td><label for="epassword">Enter Password</label></td>
                    <td><input type="password" id="epassword" name="epassword" required/></td>
                </tr>
                <tr>
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