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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
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

<title>Vanjari Udyog Vishwa | Home</title>
</head>

<body>
	<center>
		<div id="main">
			<div id="Header">
				<input id="input_search" type="text" name="SearchProfile"
					placeholder="Search" />
					<label style="margin-left:110px; margin-right:5px; float: right;">WelCome!<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
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
				<input type="hidden" name="JspPageName" value="Friendlist">
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
				<a id="anchor" href="#"><font color="white">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>	</a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
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
				<div id="leftMain2">
                  <table width=100%><th style="background-color: #fab039"><font color="white">Links</font></th></table>
                    <br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32"width="32"><a style="float: left;" href="message"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32"width="32"><a style="float: right;" href="Events"><h4><font color="#00cccc">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32"width="32"><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32"width="32"><a style="float: right;" href="Product"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32"width="32"><a style="float: left;" href="#"> <h4><font color="Black">Friends</font></h4></a>
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
					<th colspan=3 style="background-color: #fab039"><font color=white>
					Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
							<c:if test="${!empty friendRequestList}">
					<c:forEach items="${friendRequestList}" var="friendRequest">
					<form action="/vanjariudyogvishwa-v2/acceptFriendRequest" method="post">
					
					<tr align="center">
					<input type="hidden" name="requestFrom" value="${friendRequest.requestFrom}">
					<input type="hidden" name="requestTo" value="${loginUser.email}">
						<td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" 
							height="30" width="30"></td>
						<td>
						<b>${friendRequest.requestFrom}</b><br>
						java developer @ RBNelite</td>
						<td><input type="submit" name="status" value="Accept" class="connectBtn">
						
						<input type="submit" name="status" value="Reject" class="connectBtn"></td>

					</tr>
					</form>
					</c:forEach>
					
					</c:if>
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
						<td align="left"><a href=""
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					<tr>
						<td align="left"><a href=""
							style="text-decoration: none; color: black">Change Profile
								Picture</a></td>
					</tr>
				</table>
			</div>
			
			<div id="outsidemiddleHome">
				<div id="middleHome">
				<div id="userStatusImage">
				<table width=90%>
							<c:if test="${!empty userFriendsList}">
								<c:forEach items="${userFriendsList}" var="userFriends">
									<c:choose>
										<c:when test="${userFriends.requestFrom == loginUser.email}">
											<tr>
												<td><img
													src="${pageContext.request.contextPath}/resources/images/33.png"
													height="72" width="70"></td>
												<td>
													<form action="/vanjariudyogvishwa-v2/FriendProfile"
														method="post">
														<input type="submit" name="friendsEmailId"
															value="${userFriends.requestTo}"> <br> <a>
															<font color="gray" size="2">Works @ Rbnelite</font>
														</a>
													</form>
												</td>
											</tr>
										</c:when>
										<c:when test="${userFriends.requestTo == loginUser.email}">
											<tr>
												<td><img
													src="${pageContext.request.contextPath}/resources/images/33.png"
													height="72" width="70"></td>
												<td>
													<form action="/vanjariudyogvishwa-v2/FriendProfile"
														method="post">
														<input type="submit" name="friendsEmailId"
															value="${userFriends.requestFrom}"> <br> <a><font
															color="gray" size="2">Works @ Rbnelite</font></a>
													</form>
												</td>
											</tr>
										</c:when>
									</c:choose>
								</c:forEach>
							</c:if>
						</table>
			     </div>
				</div>
				</div>
			</div>
			<div id="rightMain" style="margin-top: -2060px; float: none; margin-left: 1100px;">
			<div id="peopleMayKnw">
			<table width=100%>
						<th colspan=3 style="background-color: #fab039"><font
							color="">People You May Know</th>
							<c:if test="${!empty knownPeopleList}">
						<c:forEach items="${knownPeopleList}" var="knownPeople">
						<c:choose>
						<c:when test="${knownPeople.userMail != loginUser.email}">
						<tr>
						<td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
								height="30" width="30"></td>
						<td>${knownPeople.userMail}<br><font size="2" color="gray">RBNelite It Solutions</font>
						<form action="/vanjariudyogvishwa-v2/sendFriendRequest" method="post">					
						<input type="hidden" name="requestTo" value="${knownPeople.userMail}">
						<input type="hidden" name="requestFrom"value="${loginUser.email}">
						<input type="submit" value="Connect" class="connectBtn" style="float: right;">
						</form>
						</td>
						</tr>
						<tr><td colspan="2"></td></tr>
						</c:when>
						</c:choose>
						</c:forEach>
						</c:if>
				</table>
				</div>
			</div>
		</div>
	</center>
</body>
</html>