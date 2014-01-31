
<%-- 
    Document   : Step11OtherDetails
    Created on : Dec 24, 2013, 8:00:42 PM
    Author     : dogkiller
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/css/style4.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>

<title>Thank You! - RBNelite IT Solutions</title>
</head>
<body>



	<center>
		<div id="mainMsg">
			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! User</label> <br>
				<div id="profile_photo">
					<img
						src="${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png">
					<br> <a href="ProfilePhotoOperation.jsp">Change Profile
						Photo</a>
				</div>
			</div>

			<div id="leftMainStep3"></div>

			<div id="middleStep4">

				<form action="/vanjariudyogvishwa-v2/Profile" method="post">
					<h2 style="color: blue">${CurrentEmailId} ! </h2>
					<h3>Thank you for Registration on</h3>
					<h5>www.vanjariudyogvishwa.com</h5>
					<input type="submit" value="Get Start">


				</form>

			</div>


			<div id="rightMainStep3"></div>

		</div>
	</center>



</body>
</html>

