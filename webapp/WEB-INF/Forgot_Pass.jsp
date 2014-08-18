<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon"
	href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<title>Forgot My Password | Vanjari Udyog Vishwa</title>

<script>
	function isBlank() {
		var email = document.getElementById("emailAddress").value;
		if (email == null || email == "") {
			alert("email Address field can't be blank");
			return false;
		}
	}
</script>
</head>
<body style="background-color: bisque">
	<h3>
		<font color="blue">${forgotPassMessage}</font>
	</h3>
	<c:if test="${empty forgotPassMessage}">
		<form action="/vanjariudyogvishwa-v2/ForgotPassword" method="post" style="width: 500px;height: 305px;margin-left: 600px;">
			<table
				style="border: 1px solid gray; border-radius: 5px; margin-top: 80px; width: 400px;height: 300px;"
				align="center">
				<tr>
					<td style="background-color: orange;text-align: center;">Forgot Password Form</td>
				</tr>

				<tr>
					<td>Email Address :-</td>
				</tr>
				<tr>
					<td><input type="text" name="emailAddress" id="emailAddress"
						placeholder="please write your Registered EmailId"
						style="height: 25px; width: 300px;"/></td>
				</tr>
				<tr>

					<td align="right"><input type="submit" value="Send Request"
						class="savebtn" onclick="return isBlank()"></td>
				</tr>
			</table>
		</form>
	</c:if>
</body>
</html>