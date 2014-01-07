<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Anil Budge</title>
</head>
<body>
	<div id="main">
		<form action="/vanjariudyogvishwa-v2/Anil" method="post">
			<table>
				<tr>
					<td>first name</td>
					<td><input type="text" name="first_name">
					<td></td>
				</tr>
				<tr>
					<td>last name</td>
					<td><input type="text" name="last_name">
					</td>
				</tr>
				<tr>
					<td><input type="submit" name="submitData" value="Add Data">
					</td>
				</tr>
			</table>
			<input type="button" onclick="return abc();">
		</form>

	</div>
</body>
</html>