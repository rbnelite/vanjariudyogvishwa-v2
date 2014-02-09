<%-- 
    Document   : Photos
    Created on : Dec 10, 2013, 6:18:04 PM
    Author     : anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<title>Vanjari Udyog Vishwa | Photos</title>

<style type="text/css">
#showFrndConversionImg {
	width: 100px;
	height: 100px;
}

#showFrndConversionName {
	background:none;
	border:none;
	border-color: bisque;
	border-radius: 20px;
}

#InnerleftMainMsg{
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 645px;
	margin: 5px 2px 0px 2px;
	background-color: bisque;
	border: 1px solid gray;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 8px;
}

#OutsideleftMainMsg{
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 645px;
	background-color: bisque;
	border: 1px solid gray;
	overflow: hidden;
	
	
}

#InsideRightMessage{
	border-radius: 3px;
	margin-top: -648px;
	width: 285px;
	height: 645px;
	background-color: bisque;
	float: right;
	border: 1px solid gray;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 8px;
	
}

#OutsideRightMessage {
	border-radius: 3px;
	margin-top: -648px;
	width: 285px;
	height: 645px;
	background-color: bisque;
	float: right;
	border: 1px solid gray;
	overflow: hidden;
}


</style>


</head>
<body>
	<center>
		<div id="main">
			<div id="Header">
				<input id="input_search" type="text" name="SearchProfile"
					placeholder="Search" /> <label style="margin-left: 110px;">WelCome
					! ${CurrentEmailId}</label> <br>
				<div id="profile_photo">
					<img
						src="${pageContext.request.contextPath}/resources/images/dummy_male_ic.png"
						height="120" width="115"> <br> <a
						href="ProfilePhotoOperation.jsp">Change Photo</a>
				</div>
			</div>
			<div id="hiderMenu">
				<table width=100% style="margin-left: 30px;">
					<tr>
						<td><a href="Home" class="menuContent">Home</a></td>
						<td><a href="Profile" class="menuContent">My Profile</a></td>
						<td><a href="#" class="menuContent">Message</a></td>
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


			<div id="NeedTopHome">
				<table>
					<label><font color="purple">Need Something?</font></label>
					<a onclick="return DisableINeedBlock()"> <img
						src="${pageContext.request.contextPath}/resources/images/close (3).png"
						style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
					<tr>
						<td>I Need :</td>
						<td><input type="text" placeholder="Write your Need here...."
							style="width: 400px; height: 30px;"></td>
					</tr>
					<tr>
						<td>Description :</td>
						<td><textarea type="text"
								placeholder="Write your Need here...."
								style="width: 400px; height: 100px; resize: none;"></textarea></td>
					</tr>
					<tr>
						<td>Contact No :</td>
						<td><input type="text" placeholder="Write your Need here...."
							style="width: 400px; height: 30px;"><br>
						<br></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Ask for Solution"
							style="margin-left: 287px;" onclick="return DisableINeedBlock()">
						</td>
					</tr>
				</table>
			</div>


			<div id="NotificationTopHome">
				<a onclick="return DisableNotificBlock()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;"></a>

			</div>

			<div id="RequestTopHome">
				<a onclick="return DisableRequestBlock()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;"></a>

			</div>
			<div id="SettingTopHome">
				<a>Change Account Setting</a> <a
					onclick="return DisableSettingBlock()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;"></a> <br> <a
					href="AccountSetting.jsp">More Settings...</a>
			</div>

			<div id="OutsideleftMainMsg">
				
				<div id="InnerleftMainMsg">
					<h3 style="background-color: #FAB039; margin-top: 0px;">Inbox</h3>
					<form action="">
						<table>
							<c:if test="${!empty msgSentFriendsList}">
								<c:forEach items="${msgSentFriendsList}" var="msgSentFriends">
									<tr>
										<td><input id="showFrndConversionImg" type="submit" value=""
											name="viewFrndConversion" width="70px" height="60px"
											style="background-image: url('${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png');">
										</td>
										<td><input id="showFrndConversionName" type="submit" value="${msgSentFriends.msgSenderID}"
											name="msgReceiverID" style="color: ">
											</td>
									</tr>
									
								</c:forEach>

							</c:if>

						</table>
					</form>

				</div>
				
			</div>

			<div id="middlePhotos">
				<form action="/vanjariudyogvishwa-v2/message" ,  method="post">
					<a id="MsgTo"> To :<input type="text" name="msgReceiverID"
						placeholder="Write initial of Name..."
						style="width: 734px; height: 25px; border-radius: 5px;" /></a>
						 <input	type="hidden" name="msgSenderID" value="${CurrentEmailId}">
					<br>
					<div
						style="margin: 20px auto auto 37px; width: 735px; height: 400px; border-radius: 5px; background-color: white; overflow: hidden;">
						<div
							style="margin: 20px auto auto 37px; width: 735px; height: 400px; border-radius: 5px; background-color: white; overflow: auto; padding-right: 20px; padding-bottom: 8px;">
							<c:if test="${!empty msgConversionList}">
								<table align="center" style="float: left;">
									<img
										src="${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png"
										height="100" width="100" title="${msgConversion.msgSenderID}">
									<c:forEach items="${msgConversionList}" var="msgConversion">


										<c:choose>
											<c:when test="${msgConversion.msgSenderID==CurrentEmailId}">

												<tr style="border: 1px solid gray">
													<td><font color="purple" size="4">You&nbsp;</font></td>
													<td><img
														src="${pageContext.request.contextPath}/resources/images/msg_Outbox.png"
														height="18" width="20"></td>
													<td><font color="purple" size="4">
															${msgConversion.myMsgText }</font> <br> <a
														style="float: left;"><font color="gray" size="2">
																${msgConversion.msgDate}</font></a></td>
												</tr>
											</c:when>



											<c:otherwise>

												<tr style="border: 1px solid gray">
													<td><font color="sky blue" size="4">${msgConversion.msgSenderID}</font>
													</td>
													<td><img
														src="${pageContext.request.contextPath}/resources/images/msg_Inbox.png"
														height="18" width="20"></td>
													<td><font color="sky blue" size="4">
															${msgConversion.myMsgText} </font> <br> <a
														style="float: left;"><font color="gray" size="2">
																${msgConversion.msgDate}</font></a></td>
												</tr>

											</c:otherwise>

										</c:choose>


										<%-- ${msgConversion.msgSenderID } : ${msgConversion.msgReceiverID }
                			<a><font color="blue"> ${msgConversion.myMsgText }</font></a> --%>

									</c:forEach>
								</table>

							</c:if>


						</div>
					</div>

					<input type="text" id="MsgToArea" name="myMsgText"
						style="resize: none; border-radius: 5px;"
						placeholder="Write your message here..."> <a id="anchor">Text</a>
					<a id="anchor">Photos</a> <a id="anchor">Link</a> <a id="anchor">Videos</a>
					<a id="anchor"><input type="submit" name="SubmitMsg"
						value="Send" style="margin-top: 5px;"></a>
				</form>
			</div>
			<div id="OutsideRightMessage"></div>
			<div id="InsideRightMessage">
				
			</div>
		</div>
	</center>
</body>
</html>
