<%-- 
    Document   : Message
    Created on : Dec 10, 2013, 6:18:04 PM
    Author     : Manoj Sawant
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

<script type="text/javascript">
function DisplayChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='block';
}

function HideChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='none';
}

</script>

<style type="text/css">

#anchor {
	margin-left: 80px;
	font-family: white;
	text-decoration: none;
}



#hiderMenu {
	border-radius: 3px;
	background-color: #fab039;
	width: 1400px;
	height: 40px;
	margin: 1px 50px 1px 0px;
	font-size: 150%;
	border: 1px solid gray;
}
#mainMessage {
	background-color: orange;
	width: 1400px;
	height: 1000px;
	margin: 10px 50px 10px 50px;
	border: 3px solid gray;
	border-radius: 3px;
}

#showFrndConversionImg {
	width: 100px;
	height: 100px;
}

#showFrndConversionName {
	background: none;
	border: none;
	border-color: bisque;
	border-radius: 20px;
}
/* #showFrndConversionName:hover {
	background: none;
	border: none;
	border-color: yellow;
	border-radius: 20px;
	
} */

#InnerleftMainMsg {
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 645px;
	margin: 5px 2px 0px 2px;
	background-color: bisque;
	border: 1px solid gray;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 10px;
}

#OutsideleftMainMsg {
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 645px;
	background-color: bisque;
	border: 1px solid gray;
	overflow: hidden;
}

#RightMainMessage {
	width: 300px;
	height: 645px;
	background-color: red;
	float: right;
}

#InsideRightMessage {
	border-radius: 3px;
	/* margin-top: -648px; */
	width: 300px;
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
	width: 300px;
	height: 645px;
	background-color: bisque;
	float: right;
	border: 1px solid gray;
	overflow: hidden;
}

#ChangePhotoHome{
	border-radius: 5px;
    width: 300px;
    height:100px;
    background-color: bisque;
    display: none;
    margin-left: 1090px;
    border: 1px solid gray; 
    position: absolute;
    margin-top: 130px;
    }
</style>


</head>
<body>
	<center>
		<div id="mainMessage">
			<div id="Header">
				<input id="input_search" type="text" name="SearchProfile" placeholder="Search" />
				 <label style="margin-left: 110px; margin-right:5px; float: right;">WelCome !<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
				<div id="profile_photo" style="margin-top: -25px;">
					<c:if test="${! empty ProfileImageList}">
				<c:forEach items="${ProfileImageList}" var="ProfileImage">
					<img width="140px" height="140px"
						src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
					<br>&nbsp;&nbsp;&nbsp; <a href="#" onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:forEach>
					</c:if>
					
					<c:if test="${empty ProfileImageList}">
						<img width="140px" height="140px"
						src="${pageContext.request.contextPath}/resources/ProfileImages/DefaultProfileImg.png">
					<br>&nbsp;&nbsp;&nbsp; <a href="#" onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:if>

				</div>
				
				<div id="ChangePhotoHome">
				<form action="/vanjariudyogvishwa-v2/UpdateProfileImage" method="post" enctype="multipart/form-data">
				<input type="hidden" name="JspPageName" value="message">
				<a onclick="return HideChangePhotoBlock()">
				 <img src="${pageContext.request.contextPath}/resources/images/close (3).png"
								style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
								
				<table>
				<tr>
                                        <td>Pick file : 
                                        <input type="file" name="updateProfileImage" size="50" /></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                     <td><input type="submit" value="Upload" name=""></td>
                                        <td>
                                        
                                        </td>
                                    </tr> 
                                </table>
                                </form>
				</div>
				
				
			</div>
			<div id="hiderMenu">
				<a id="anchor" href="Home"><font color="white">Home</font> </a> 
				<a	id="anchor" href="Profile"><font color="white">My Profile</font> </a>
				<a id="anchor" href="#"><font color="indigo">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>	</a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
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
					<form action="/vanjariudyogvishwa-v2/viewConversion" ,  method="post">
						<input type="hidden" name="msgSenderID" value="${loginUser.email}">
						<table>
							<c:if test="${!empty msgFriendsList}">
								<c:forEach items="${msgFriendsList}" var="msgFriends">
									<c:if test="${msgFriends.msgSenderID != loginUser.email}">
										<tr>
											<td><input id="showFrndConversionImg" type="submit"
												value="" name="viewFrndConversion" width="70px"
												height="60px"
												style="background-image: url('${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png');">
											</td>
											<td><input id="showFrndConversionName" type="submit"
												value="${msgFriends.msgSenderID}" name="msgReceiverID"
												style="color:"></td>
										</tr>
										</c:if>
										
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
						style="width: 734px; height: 25px; border-radius: 5px;" /></a> <input
						type="hidden" name="msgSenderID" value="${loginUser.email}">
					<br>
					<div
						style="margin: 20px auto auto 37px; width: 735px; height: 400px; border-radius: 5px; background-color: white; overflow: hidden;">
						<div
							style="margin: 20px auto auto 37px; width: 735px; height: 400px; border-radius: 5px; background-color: white; overflow: auto; padding-right: 20px; padding-bottom: 8px;">
							<c:if test="${!empty msgConversionList}">
								<table align="center" style="float: left;">
<%-- 								<c:if test="${FrndProfileImageList}">
									<c:forEach items="${FrndProfileImageList}" var="FrndProfileImage"> --%>
									<img
										src="${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png"
										height="100" width="100" title="${msgConversion.msgSenderID}">
								<%-- 	</c:forEach>
								</c:if> --%>
									<c:forEach items="${msgConversionList}" var="msgConversion">


										<c:choose>
											<c:when test="${msgConversion.msgSenderID==loginUser.email}">

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

			<!-- <div id="RightMainMessage"> -->
			<div id="OutsideRightMessage">
				<div id="InsideRightMessage">

					<h3 style="background-color: #FAB039; margin-top: 0px;">AdvertiseMents</h3>


				</div>
			</div>
			<!-- </div> -->
		</div>
	</center>
</body>
</html>
