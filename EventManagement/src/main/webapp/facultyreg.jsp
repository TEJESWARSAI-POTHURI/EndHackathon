<!DOCTYPE html>
<html>
<head>
    <title>Registration</title>
    <style>
    body {
  font-family: Arial, sans-serif;
  margin: 0;
  padding: 0;
}

.navbar {
  background-color: #333;
  overflow: hidden;
}

.navbar a {
  float: left;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.navbar a:hover {
  background-color: #ddd;
  color: black;
}

.form-container {
  max-width: 600px;
  margin: 20px auto;
  padding: 20px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

.form-container h3 {
  text-align: center;
  margin-bottom: 20px;
}

.form-container table {
  width: 100%;
  border-collapse: collapse;
}

.form-container td {
  padding: 10px;
}

.form-container input[type="text"],
.form-container input[type="date"],
.form-container input[type="number"],
.form-container select {
  width: 100%;
  padding: 8px;
  border: 1px solid #ccc;
  border-radius: 4px;
}

.button-container {
  text-align: center;
}

.button-container input[type="submit"],
.button-container input[type="reset"] {
  padding: 10px 20px;
  background-color: #846075;
  color: white;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  margin: 0 5px;
}

.button-container input[type="reset"] {
  background-color: #846075;
}
    
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %> <!-- Navbar included here -->
    <div class="form-container">
        <h3>Faculty Registration</h3> <!-- Styled heading, consistent with home.jsp -->
        <form method="post" action="insertfaculty">
            <table>
                <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <input type="radio" id="male" name="egender" value="MALE" required/>
                        <label for="male">Male</label>
                        <input type="radio" id="female" name="egender" value="FEMALE" required/>
                        <label for="female">Female</label>
                        <input type="radio" id="others" name="egender" value="OTHERS" required/>
                        <label for="others">Others</label>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td> 
                    <td><input type="date" id="edob" name="edob" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL">Technical</option>
                            <option value="MARKETING">Marketing</option>
                            <option value="SALES">Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="contact" id="econtact" name="econtact" required/></td>
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