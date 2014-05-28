<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : Anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
#rightMain {
    border-radius: 3px;
    margin-top: -1003px;
    width: 300px;
    height: 1000px;
    background-color: #FFF;
    float: right;
}

#leftMainHome {
	float: left;
	width: 290px;
	height: 350px;
	overflow: auto;
	/* border-radius: 3px; */
	background-color: bisque;
	/* border: 1px solid gray; */
	padding-right: 27px;
}

#OutsideleftMainHome {
	float: left;
	width: 300px;
	height: 350px;
	overflow: hidden;
	border-radius: 3px;
	background-color: bisque;
	/* border: 1px solid gray; */
}
</style>
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
					<label style="margin-left:110px; margin-right:5px;margin-top: -30px; float: right;">WelCome!<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
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
				<input type="hidden" name="JspPageName" value="SearchResult">
				<a onclick="return HideChangePhotoBlock()">
				 <img src="${pageContext.request.contextPath}/resources/images/close (3).png"
								id="close" style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
								
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
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font><font color="red">${fn:length(NotificationList)}</font></a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font><font color="red">${fn:length(friendRequestList)}</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
			</div>

			<div id="leftMain" style="background-color: bisque">
				<div id="OutsideleftMainHome">
					<div id="leftMainHome">

						<c:if test="${!empty eventstList}">

							<table width=100%>
								<th style="background-color: #fab039"><font color="white">Upcoming
										Events</font></th>
								<c:forEach items="${eventstList}" var="myEvents">
								
									<tr>
										<td align="left"><font color="orange">${myEvents[1]} ${myEvents[2]}</font>
											created an event :${myEvents[0]}</td>
									</tr>
								</c:forEach>
							</table>
						</c:if>
					</div>
				</div>

				<div id="leftMain2">
					<table width=100%>
						<!-- <th style="background-color: #fab039"><font color="white">Links</font></th> -->
					<tr id="leftLink">
						<td> <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="25" width="30"></td>
						<td><a style="float: left; text-decoration: none;" href="message"><h4><font color="#00cccc">Message</font></h4></a></td>
					</tr>
					<tr id="leftLink">
						<td> <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32" width="32"></td>
						<td> <a style="float: left;" href="Events"><h4><font color="#00cccc">Events</font></h4></a> </td>
					</tr>
					<tr id="leftLink">
						<td> <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32" width="32"></td>
						<td><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> </td>
					</tr>
					<tr id="leftLink">
						<td> <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32" width="32"></td>
						<td><a style="float: left;" href="Product"><h4><font color="#00cccc">Products</font></h4></a></td>
					</tr>
					<tr id="leftLink">
						<td> <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32" width="32"></td>
						<td><a style="float: left;" href="FriendList"><h4><font color="#00cccc">Friends</font></h4></a></td>
					</tr>
					</table>
				</div>

			</div>

			<div id="NotificationTopHome">
				<div id="InsideNotificationTopHome">
				<table width="100%">
					<th style="background-color: #fab039"><font color="white">Notification</font>
						<a onclick="return DisableNotificBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right;"></a></th>
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
				<table style="float: right;"><tr><td><input type="submit" id="oldnotification" style="border: none; background: none;" value="See Old Notifications"></td></tr></table></form>
			</div>
			</div>
			<div id="RequestTopHome">
				<table width=100%>
					<th colspan=3 style="background-color: #fab039"><font
						color=white> Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right;"></a></th>
					<c:if test="${!empty friendRequestList}">
						<c:forEach items="${friendRequestList}" var="friendRequest">
							<form action="/vanjariudyogvishwa-v2/acceptFriendRequest"
								method="post">

								<tr align="center">
									<input type="hidden" name="requestFrom"
										value="${friendRequest[0]}">
									<input type="hidden" name="requestTo"
										value="${loginUser.email}">
									<td><img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${friendRequest[1]}"
										height="30" width="30"></td>
									<td><b>${friendRequest[0]}</b><br>${friendRequest[3]}  @ ${friendRequest[2]}</td>
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
								id="close" style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					
				</table>
			</div>

			<div id="outsidemiddleHome" style="margin-right: 300px;">
				<div id="middleHome">
				
				<table width=60%>
						<th colspan="3" bgcolor="#fcca7b">People By Profession</th>
						<c:if test="${!empty searchSByProfList}">

							<c:forEach items="${searchSByProfList}" var="searchSByProf">
								<tr style="background-color: #fab039">
									<td width="40px;"><img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${searchSByProf[2]}"
										height="80" width="80"></td>
									<td>&nbsp; ${searchSByProf[0]}&nbsp;${searchSByProf[1]}
										</td>

								</tr>
								<tr></tr>
								<tr></tr>
								<tr>
									<td colspan="3" bgcolor="#fcca7b"><center>
											<!-- <b>Status/Need</b> -->
										</center></td>
								</tr>
							</c:forEach>
						</c:if>
						

					</table>
				
					<table width=60%>
						<th colspan="3" bgcolor="#fcca7b">Users List</th>
						<c:if test="${!empty SearchUserList}">

							<c:forEach items="${SearchUserList}" var="searchUser">
									<c:if test="${searchUser.emailId != loginUser.email}">
								<tr style="background-color: #fab039">
									<td width="40px;"><img
										src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="80" width="80"></td>
										<td width="100px;">
									<center>
										
											
									<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
										<input type="hidden" name="friendsEmailId" value="${searchUser.emailId}">
										<a>${searchUser.firstName} ${searchUser.middleName} ${searchUser.lastName}</a>
										<br>
										<input type="submit"  value="View Profile">
									</form>
										
										
										
										
									</center>
									</td>
								</tr>
								</c:if>
								<tr></tr>
							</c:forEach>

						</c:if>
						<c:if test="${empty SearchUserList}">
							<table>
								<tr>
									<td>There is no user with name you searched.</td>
								</tr>
							</table>
						</c:if>
					</table>

					<table width=60%>
						<th colspan="3" bgcolor="#fcca7b">Product List</th>
						<c:if test="${!empty SearchProductList}">

							<c:forEach items="${SearchProductList}" var="searchProduct">
								<tr style="background-color: #fab039">
									<td width="40px;"><img
										src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="80" width="80"></td>
									<td>&nbsp; ${searchProduct.productName}&nbsp;Owners Name :
										${searchProduct.userMail}</td>

								</tr>
								<tr></tr>
								<tr></tr>
								<tr>
									<td colspan="3" bgcolor="#fcca7b"><center>
											<b>Status</b>
										</center></td>
								</tr>
							</c:forEach>
						</c:if>
						<c:if test="${empty SearchProductList}">
							<table width=60%>
								<tr>
									<td><center>There is no any Product with name you searched.</center></td>
								</tr>
								<tr></tr>
								<tr></tr>
								<tr>
									<td bgcolor="#fcca7b"><center>
											<b>Status</b>
										</center></td>
								</tr>
							</table>
						</c:if>

					</table>
					
					
					
					<c:if test="${!empty SearchStatusList}">
						<c:forEach items="${SearchStatusList}" var="searchStatus">
							<div id="ShowStatusUpdet"  style="border: 1px solid gray;">
								<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="52" width="50">
								</div>
								<div class="statusUserName"
									style="float: left; margin-left: 10px;">
									<%-- <font color="green">${searchStatus.usermail}</font> --%>
								</div>
								<div class="StatusContent">
									<table width=100%>
										<tr>
											<td></td>
										</tr>
										<tr>
											<td align="left">${searchStatus.status}</td>
										</tr>
										<tr>
											<td><font color="gray" size="2" style="float: right;">${searchStatus.statusDate}</font></td>
										</tr>
									</table>
									<c:if test="${!empty searchStatus.comments}">
										<c:forEach items="${searchStatus.comments}" var="myComment">

											<div id="Showcomment"
												style="border: 1px solid bisque; margin-top: 5px">

												<div class="commentBoxImage">
													<img
														src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
														height="42" width="40">
												</div>

												<div>
													<table width=90%>
														<tr>
															<td align="left"><font color="green">${myComment.whoseComment}
															</font> <br>${myComment.comment}</td>
														</tr>
														<tr>
															<td><font color="blue" size="0.5"></font></td>
														</tr>
													</table>
												</div>
											</div>
										</c:forEach>
									</c:if>


								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>




			</div>
			
			<div id="rightMain" style="background-color: bisque">
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
										<input type="hidden" name="JspPageName" value="SearchResult">
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
