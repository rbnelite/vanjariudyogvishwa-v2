<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vanjari Udyog Vishwa | Registration</title>
</head>
<body>
<form action="/vanjariudyogvishwa-v2/Registration" method="post">
<table>
<tr><td>First Name</td><td><input type="text" name="first_name"></td></tr>
<tr><td>Middle Name</td><td><input type="text" name="middle_name"></td></tr>
<tr><td>Last Name</td><td><input type="text" name="last_name"></td></tr>
<tr><td>Email Id</td><td><input type="text" name="email_id"></td></tr>
<tr><td>Mobile No</td><td><input type="text" name="mobile_no"></td></tr>
<tr><td>Birth Date</td><td><input type="text" name="birth_date"></td></tr>
<tr><td>Gender</td><td><input type="checkbox" name="gender" value="male">
<input type="checkbox" name="gender" value="female"></td></tr>
<tr><td>Password</td><td><input type="password" name="password"></td></tr>
<tr><td><input type="submit" name="registration"></td></tr><tr>
</table>
</body>
</form>
</html>