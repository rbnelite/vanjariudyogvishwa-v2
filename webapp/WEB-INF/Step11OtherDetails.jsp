
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

<link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>

<title>Step-11 Other Details Page</title>
</head>
<body>



	<center>
		<div id="mainMsg">
			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! User</label> <br>
				<div id="profile_photo">
					<img src="${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png"> <br> <a
						href="ProfilePhotoOperation.jsp">Change Profile Photo</a>
				</div>
			</div>

			<div id="leftMainStep3"></div>

			<div id="middleStep4">
			<form action="/vanjariudyogvishwa-v2/OtherDetails" method="post">
			<h2>Step-11</h2>
				<table align="center">
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td colspan="2"><font size="5">Fill Out Your Other
								Details</font>
						</td>
					</tr>

					<tr>
						<td colspan="2">This Information will helps us to Create Your
							Profile</td>
					</tr>
					<tr>
						<td colspan="2"><hr />
						</td>
					</tr>
					<tr>
						<td><br>
						<br>
						</td>
					</tr>

					<tr>
						<td>Social Status</td>
						<td><textarea name="socialStatus" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Political Status/View</td>
						<td><textarea name="polyticalstatus" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Social Activity</td>
						<td><textarea name="socialact" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Political Activity</td>
						<td><textarea name="polyticalact" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Cultural Activity</td>
						<td><textarea name="culturalact" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<!-- <tr>
						<td>Games</td>
						<td><textarea name="games" rows="1" cols="25" maxlength="80"
								style="resize: none;"></textarea>
						</td>
					</tr> -->
					<tr>
						<td><input type="hidden" name="usermail" value="${CurrentEmailId}"></td>
						<td align="right">&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="submit" name="save_other" value="Save & Continue">
						</td>
					</tr>
				</table>
				</form>
			</div>


			<div id="rightMainStep3"></div>

		</div>
	</center>



</body>
</html>

