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

.form-container input[type="text"], .form-container input[type="date"],
	.form-container input[type="number"], .form-container select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 4px;
}

.button-container {
	text-align: center;
}

.button-container input[type="submit"], .button-container input[type="reset"]
	{
	padding: 10px 20px;
	background-color: #f8afa6;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin: 0 5px;
}

.button-container input[type="reset"] {
	background-color: #f8afa6;
}
</style>
</head>
<body>
	<%@include file="facultynavbar.jsp"%>
	<!-- Navbar included here -->
	<div class="form-container">
		<h3>Add the event</h3>
		<!-- Styled heading, consistent with home.jsp -->
		<form method="post" action="insertevent">
			<table>
				<tr>
					<td><label for="eventName">Enter Event Name</label></td>
					<td><input type="text" id="eventName" name="eventName"
						required /></td>
				</tr>
				<tr>
					<td><label for="date">Enter Date of The Event</label></td>
					<td><input type="date" id="date" name="date" required /></td>
				</tr>
				<tr>
					<td><label for="domain">Select Domain</label></td>
					<td><select id="domain" name="domain" required>
							<option value="">---Select---</option>
							<option value="TECHNICAL">Technical</option>
							<option value="IIE">IIE</option>
							<option value="ESO">ESO</option>
							<option value="HWB">HWB</option>
					</select></td>
				</tr>
				<tr>
					<td><label for="points">Enter Points</label></td>
					<td><input type="number" id="points" name="points" step="0.01"
						required /></td>
				</tr>
				<tr>
					<td><label for="location">Enter Event Location</label></td>
					<td><input type="text" id="location" name="location" required /></td>
				</tr>
				<tr>
					<td colspan="2" class="button-container"><input type="submit"
						value="Register" /> <input type="reset" value="Clear" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>