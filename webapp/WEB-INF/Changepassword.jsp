<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : Anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script type="text/javascript">
	//code for validation status post for blank code
	function abc1() {
		var status1 = document.myform.status.value;

		if (status1.length == 0) {
			alert("please enter something");
			return false;
		}

	}
	
	function validateChangePassword()
	{
		
	}
</script>
</head>

<body>
	<center>
		<div id="main">
			<div id="Header">
				<form action="/vanjariudyogvishwa-v2/SearchResult">
					<input id="SearchData" type="text" name="SearchData"
						placeholder="Search" style="height: 25px; width: 200px;" /> <input
						type="submit" value=" "
						style="margin-left :-7px ;height: 30px;width: 40px; background-image: url('${pageContext.request.contextPath}/resources/images/searchlogo.png');">
				</form>
				<label style="margin-left: 110px;">WelCome !
					${loginUser.firstName}</label> <br>
				<div id="profile_photo">
					<img
						src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
						height="120" width="115"> <br> <a
						href="ProfilePhotoOperation.jsp">Change Photo</a>
				</div>
			</div>
			<div id="hiderMenu">
				<table width=100% style="margin-left: 30px;">
					<tr>
						<input type="hidden" name="usermail" value="${CurrentEmailId}">
						<td><a href="Home" class="menuContent">Home</a></td>
						<td><a href="Profile" class="menuContent">My Profile</a></td>
						<td><a href="message" class="menuContent">Message</a></td>
						<td><a href="#" onclick="return DisplayINeedBlock()"
							class="menuContent">Looking for</a></td>
						<td><a href="#" onclick="return DisplayNotificationBlock()"
							class="menuContent">Notification</a></td>
						<td><a href="#" onclick="return DisplayRequestBlock()"
							class="menuContent">Requests</a></td>
						<td><a href="#" onclick="return DisplaySettingBlock()"
							class="menuContent">Setting</a></td>
						<td><a href="logoutUser" class="menuContent">LogOut</a></td>
					</tr>
				</table>
			</div>

			<div id="leftMain">
				<c:if test="${!empty eventstList}">

					<div id="leftMain1">
						<table width=100%>
							<th style="background-color: #fab039"><font color="white">Upcoming
									Events</font></th>
							<c:forEach items="${eventstList}" var="myEvents">
								<tr>
									<td align="left">Anil Budge created an event
										:${myEvents.name}</td>
								</tr>
							</c:forEach>
						</table>

					</div>

				</c:if>
				<div id="changepwdleftMain2">
					<table width=100%>
						<th style="background-color: #fab039"><font color="white">Links</font></th>
					</table>
					<br> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/message-1.png"
						title="Message" height="32" width="32"><a
						style="float: left;" href="Message"><h4>
							<font color="#00cccc">Message</font>
						</h4></a> <img style="float: right;"
						src="${pageContext.request.contextPath}/resources/images/event.png"
						title="Events" height="32" width="32"><a
						style="float: right;" href="Events"><h4>
							<font color="#00cccc">Events</font>
						</h4></a> <br> <br> <br> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/photo.png"
						title="Photos" height="32" width="32"><a
						style="float: left;" href="Photos"><h4>
							<font color="#00cccc">Photos</font>
						</h4></a> <br> <br> <br> <img style="float: right;"
						src="${pageContext.request.contextPath}/resources/images/product1.png"
						title="My Products" height="32" width="32"><a
						style="float: right;" href="Product">
						<h4>
							<font color="#00cccc">Products</font>
						</h4>
					</a> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/friends1.png"
						title="Friend's" height="32" width="32"><a
						style="float: left;" href="Friends">
						<h4>
							<font color="#00cccc">Friends</font>
						</h4>
					</a>
				</div>

			</div>
			
			<div id="NotificationTopHome">
				<table width="100%">
					<th style="background-color: #fab039"><font color="white">Notification</font>
						<a onclick="return DisableNotificBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
					<tr>
						<td colspan=2 align="center">No notifications for display</td>
					</tr>
				</table>
			</div>
			<div id="RequestTopHome">
				<table width=100%>
					<th colspan=3 style="background-color: #fab039"><font
						color=white>Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
					<tr align="center">
						<td><img
							src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
							height="30" width="30"></td>
						<td><b> Manoj Savant</b><br>java developer at RBNelite</td>
						<td><input type="button" value="Connect" class="connectBtn"></td>

					</tr>
					<tr align="center">
						<td><img
							src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
							height="30" width="30"></td>
						<td><b>Vikram Takalkar</b><br>java developer at RBNelite</td>
						<td><input type="button" value="Connect" class="connectBtn"></td>
					</tr>
				</table>
			</div>
			<div id="SettingTopHome">
				<table width=100%>
					<tr>
						<th style="background-color: #fab039"><a
							href="AccountSetting.jsp"
							style="text-decoration: none; color: white">Change Account
								Setting</a><a onclick="return DisableSettingBlock()"> <img
								src="${pageContext.request.contextPath}/resources/images/close (3).png"
								style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					<tr>
						<td align="left"><a href=""
							style="text-decoration: none; color: black">Change Profile
								Picture</a></td>
					</tr>
				</table>
			</div>
			<div id="MiddleTopchangepwd">
			
				<div id="changepwd">
					<form:form action="/vanjariudyogvishwa-v2/ChangePassword" method="post" commandName="changepwd">
						<form:errors cssClass="errorblock"/>
					<input type="hidden" name="user_email" value="${loginUser.email}">
					<center>
						<table width=40% style="margin-top: 30px">
							<tr>
								<th colspan="2">Change Password</th>
							</tr>
							<tr>
								<td style="padding-top: 15px;padding-bottom: -6px;">Old password:</td>
								<td style="padding-top: 15px;padding-bottom: -6px;"><form:password path="Password"/>
								
								</td><td><form:errors path="Password" cssClass="error"/></td>
							</tr>
							<tr >
								<td style="padding-top: 7px;padding-bottom: -6px;">New password:</td>
								<td style="padding-top: 7px;padding-bottom: -6px;"><form:password path="NewPassword"/></td>
								<td><form:errors path="NewPassword"/></td>
							</tr>
							<tr>
								<td style="padding-top: 7px;padding-bottom: -6px;">Confirm password:</td>
								<td style="padding-top: 7px;padding-bottom: -6px;"><form:password path="RePassword"/></td>
								<td><form:errors path="RePassword"/></td>
							</tr>
							<tr>
								<td style="padding-top: 15px;padding-bottom: -6px;"><center><input type="submit" value=" Save Changes"></center></td>
								<td style="padding-top: 15px;padding-bottom: -6px;"><input type="reset" value="Cancel"></td>
							</tr>
						</table>
					</center>
				</form:form>
				</div>
			</div>
			
			<div id="outsidemiddlechangepwd">
				
			</div>
			
			<div id="rightmainchangepwd">
				<div id="changepwdpplMayKnw">
					<table width=100%>
						<th colspan=3 style="background-color: #fab039"><font
							color="">People You May Know</th>
						<tr>
							<td><img
								src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
								height="30" width="30"></td>
							<td>Manoj Savant</td>
							<td><input type="button" value="Connect" class="connectBtn"></td>
						</tr>
						<tr>
							<td><img
								src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
								height="30" width="30"></td>
							<td>Mayur Kulkarni</td>
							<td><input type="button" value="Connect" class="connectBtn"></td>
						</tr>
						<tr>
							<td><img
								src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
								height="30" width="30"></td>
							<td>Vishal Pansare</td>
							<td><input type="button" value="Connect" class="connectBtn"></td>
						</tr>
					</table>
				</div>
			</div>
		</div>
	</center>
</body>
</html>
