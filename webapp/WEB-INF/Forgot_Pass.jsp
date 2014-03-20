<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<title>,m  mVanjari Udyog Vishwa | Forgot Password</title>

<script>
function isBlank()
{
	alert("check if it is blank");
}
</script>
</head>
<body style="background-color: bisque">
<h3><font color="blue">${forgotPassMessage}</font></h3>
<c:if test="${empty forgotPassMessage}">
<form action="/vanjariudyogvishwa-v2/ForgotPassword" method="post" >
		<table style="border: 1px solid gray; border-radius: 5px; margin-top: 80px; " align="center" >
		<tr><td></td></tr>
		
		<tr>
		<td>Email Address :-</td>
		</tr>
		<tr>
		<td><input type="text" name="emailAddress" style="height:25px; width: 300px;"/></td>
		</tr>
		<tr>
		
		<td align="right"><input type="submit" value="Send Password" class="savebtn"></td>
		</tr>
		</table>
</form>
</c:if>
 </body>
</html>