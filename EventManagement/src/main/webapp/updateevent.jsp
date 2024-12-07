<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Event</title>
</head>
<style>


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
</style>
<body>
<%@include file="facultynavbar.jsp" %>
    <div class="form-container">
        <h3>Update Event</h3> <!-- Styled heading, consistent with home.jsp -->
        <form method="post" action="update">
            <table>
                <tr>
                    <td><label for="Eventid">ID</label></td>
                    <td><input type="number" id="Eventid" name="Eventid"  required/></td>
                </tr>
                <tr>
                    <td><label for="Eventname">Enter Event Name</label></td>
                    <td><input type="text" id="Eventname" name="Eventname"  required/></td>
                </tr>
               
                <tr>
                    <td><label for="Date">Enter Date of Event</label></td>
                    <td><input type="date" id="Date" name="Date" required/></td>
                </tr>
                <tr>
                    <td><label for="Domain">Select Domain</label></td>
                    <td>
                        <select id="Domain" name="Domain" required>
                            <option value="">---Select---</option>
                            <option value="IIE">IIE</option>
                            <option value="ESO">ESO</option>
                            <option value="HWB">HWB</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="Points">Enter Points</label></td>
                    <td><input type="number" id="Points" name="Points" step="0.01" required/></td>
                </tr>
                <tr>
                    <td><label for="Location">Enter Location</label></td>
                    <td><input type="text" id="Location" name="Location" required/></td>
                </tr>
               
                <tr>
                    <td colspan="2" class="button-container">
                    <input type="submit" value="Update"/>
                    
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>