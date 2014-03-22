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

function underscoreName() {
	var nameButton=document.getElementById("nameButton");
	nameButton.style.background='orange';
	
}

function NounderscoreName() {
	var nameButton=document.getElementById("nameButton");
	nameButton.style.background='none';
	
}


function jumpcomment(NotificationId) {
	/* alert(NotificationId); */
	document.getElementById("notificationId").value = NotificationId;

	var temp = document.getElementById("submit1").click();
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

#peopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 500px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    overflow: auto;
    padding-right: 40px;
}
#OutsidepeopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 500px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    overflow: hidden;
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
				 <c:if  test="${!empty eventstList}">
             		   <div id="OutsideleftMain1">
                <div id="leftMain1">
                <table width=100%>
                <th style="background-color: #fab039"><font color="white">Upcoming Events</font></th>
                <c:forEach items="${eventstList}" var="myEvents">
                <tr>
                <td align="left"><font color="orange">${myEvents[1]} ${myEvents[2]}</font> created an event :${myEvents[0]}</td>
                </tr>
                  </c:forEach>
                </table>
                
                 </div>
               </div>
                 </c:if>
                <div id="leftMain2">
                  <table width=100%><th style="background-color: #fab039"><font color="white">Links</font></th></table>
                    <br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png"  title="Message" height="32"width="32"><a style="float: left;" href="message"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png"  title="Events" height="32"width="32"><a style="float: right;" href="Events"><h4><font color="#00cccc">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png"  title="Photos" height="32"width="32"><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png"  title="My Products" height="32"width="32"><a style="float: right;" href="Product"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png"  title="Friend's" height="32"width="32"><a style="float: left;" href="#"> <h4><font color="black">Friends</font></h4></a>
                </div>
                
            </div>
			
			<div id="NotificationTopHome" style="overflow:scroll;height: auto ;width:30%;overflow:auto">
				<table width="100%">
					<th style="background-color: #fab039"><font color="white">Notification</font>
						<a onclick="return DisableNotificBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
					<form action="/vanjariudyogvishwa-v2/Notification" method="post">
											<c:if test="${!empty NotificationList}">
						<c:forEach items="${NotificationList}" var="note">
						<tr><td colspan=2 align="left">
						<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${note[4]}"
										height="20" width="20">
								</div><h7 id="${note[3]}" onclick="jumpcomment('${note[3]}')"><b style="color: red;">${note[1]} ${note[2]}</b> commented on status: <i style="color: gray;">${note[0]}</i></h7>
						
						<input type="submit" id="submit1" style="display: none">
						</td></tr>						
						</c:forEach>
						<input type="hidden" id="notificationId" name="notificationId">
						</c:if>
						
					</form>
				</table>
				<form action="/vanjariudyogvishwa-v2/Notificationjsp" method="post">
				<table style="float: right;"><tr><td><input type="submit" style="border: none; background: none;" value="See Old Notifications"></td></tr></table></form>
			</div>
			<div id="RequestTopHome">
				<table width=100%>
					<th colspan=3 style="background-color: #fab039"><font
						color=white> Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
					<c:if test="${!empty friendRequestList}">
						<c:forEach items="${friendRequestList}" var="friendRequest">
							<form action="/vanjariudyogvishwa-v2/acceptFriendRequest"
								method="post">

								<tr align="center">
									<input type="hidden" name="requestFrom"
										value="${friendRequest.requestFrom}">
									<input type="hidden" name="requestTo"
										value="${loginUser.email}">
									<td><img
										src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="30" width="30"></td>
									<td><b>${friendRequest.requestFrom}</b><br> java
										developer @ RBNelite</td>
									<td><input type="submit" name="status" value="Accept"
										class="connectBtn"> <input type="submit" name="status"
										value="Reject" class="connectBtn"></td>

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
							href="ChangePassword"
							style="text-decoration: none; color: white">Change Account
								Setting</a><a onclick="return DisableSettingBlock()"> <img
								src="${pageContext.request.contextPath}/resources/images/close (3).png"
								style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					
				</table>
			</div>
			
			<div id="outsidemiddleHome" style="margin-right: 300px">
				<div id="middleHome">
				<div id="userStatusImage">
				<table width=90% style="margin-top: 5px; ">
			<c:if test="${!empty userFriendsList}">
			  <c:forEach items="${userFriendsList}" var="userFriends">
				
				
				<tr>
				<td>
				<table style="border: 1px solid gray;border-radius: 5px;">
				<tr><td rowspan="3">
			<img src="${pageContext.request.contextPath}/resources/ProfileImages/${userFriends[4]}" style="height: 150px; width: 140px;">
			   </td>
			   <td align="left">
			   <form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
			   <c:choose>
			   	<c:when test="${userFriends[2]==loginUser.email}">
			   		<input type="hidden" name="friendsEmailId" value="${userFriends[3]}">
			   		
			   	</c:when>
			   	<c:otherwise>
			   		<input type="hidden" name="friendsEmailId" value="${userFriends[2]}">
			   		
			   	</c:otherwise>
			   	</c:choose>
					<input type="submit" id="nameButton"
						style="background: none; margin-right: 10px; border: none; font-size: 30px;
						font-family: monospace; font-weight: bold;"
						value="${userFriends[0]} ${userFriends[1]}"
						onmouseover="return underscoreName();"
						onmouseout="return NounderscoreName();">
				</form>
			   </td>
			   <td width="100%"></td>
			   </tr>
			   <tr><td><a> <font color="gray" size="2">From Pune, India</font></a></td></tr>
			   <tr><td><a> <font color="gray" size="2">Works @ Rbnelite</font></a></td></tr>
			   </table>
			   </td>
			    </tr>
			  </c:forEach>
			 </c:if>
			  </table>
			     </div>
				</div>
				</div>
			
			<div id="rightMain" style="margin-top: -1003px; float: right; margin-right: 4px;">
			<div id="OutsidepeopleMayKnw">
			<div id="peopleMayKnw">

					<table width=100%>
						<th colspan=3 style="background-color: #fab039"><font
							color="">People You May Know</th>
						<c:if test="${!empty knownPeopleList}">
							<c:forEach items="${knownPeopleList}" var="knownPeople">
								<c:choose>
								<c:when test="${loginUser.email != knownPeople[0]}">
								<tr>
								<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
									<input type="hidden" name="friendsEmailId" value="${knownPeople[0]}">
									
									
										<td>
										
										<img src="${pageContext.request.contextPath}/resources/ProfileImages/${knownPeople[3]}"
												height="30" width="30">
										</td>
										<td><input type="submit" value="${knownPeople[1]} ${knownPeople[2]}" style="background: none;border: none;"><br>
											<font size="2" color="gray">
												
											</font>
										</td>	
									
									
								</form>
										<td>
									<form action="/vanjariudyogvishwa-v2/sendFriendRequest"method="post">
										<input type="hidden" name="JspPageName" value="Friendlist">
										<input type="hidden" name="requestTo" value="${knownPeople[0]}">
										<input type="hidden" name="requestFrom" value="${loginUser.email}">
										<input type="submit" value="Connect" class="connectBtn"	style="float: right;">
									</form>
										</td>
										</tr>
										<tr>
											<td colspan="2"></td>
										</tr>

								</c:when>

								</c:choose>
							</c:forEach>
						</c:if>
					</table>
				</div>
				</div>
				<div id="OutsideRightMessage">
					<div id="InsideRightMessage">
						<h3 style="background-color: #FAB039; margin-top: 0px;">AdvertiseMents</h3>
					</div>
				</div>
				
			</div>
			<table>
			<tr>
				<td height="45"  width= "1400" colspan="2" bgcolor="#fab039" align="center"><span class="style10"> About | Developers | Create Ad | Music |
						Games | Apps | Privacy | Help</span>

					<p class="style8">
						<u>All Right Reserved</u>
					</p></td>
			</tr>
			</table>
		</div>
	</center>
</body>
</html>