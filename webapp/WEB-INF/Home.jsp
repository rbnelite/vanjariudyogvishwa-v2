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
//code for validation status post for blank code
function abc1(){
	 var status1=document.myform.status.value;
	 
	 if(status1.length==0)
		 {
		 alert("please enter something");
		 return false;
		 }
	
}
</script>
</head>

<body>
	<center>
		<div id="main">
			<div id="Header">
			<form action="/vanjariudyogvishwa-v2/SearchResult">
				<input id="SearchData" type="text" name="SearchData" placeholder="Search" style="height: 25px; width: 200px;"/>
				<input type="submit" value=" " style="margin-left :-7px ;height: 30px;width: 40px; background-image: url('${pageContext.request.contextPath}/resources/images/searchlogo.png');" >
					</form>
					 <label style="margin-left: 110px;">WelCome	! ${loginUser.firstName}</label> <br>
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
					<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
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
									<td align="left"><font color="orange">${myEvents.usermail}</font> created an event
										:${myEvents.name}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</c:if>
				<div id="leftMain2">
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
						</h4></a> <br>
					<br>
					<br> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/photo.png"
						title="Photos" height="32" width="32"><a
						style="float: left;" href="Photos"><h4>
							<font color="#00cccc">Photos</font>
						</h4></a> <br>
					<br>
					<br> <img style="float: right;"
						src="${pageContext.request.contextPath}/resources/images/product1.png"
						title="My Products" height="32" width="32"><a
						style="float: right;" href="Product">
						<h4>
							<font color="#00cccc">Products</font>
						</h4>
					</a> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/friends1.png"
						title="Friend's" height="32" width="32"><a
						style="float: left;" href="FriendList">
						<h4>
							<font color="#00cccc">Friends</font>
						</h4>
					</a>
				</div>

			</div>
			<div id="NeedTopHome">
				<form action="/vanjariudyogvishwa-v2/Need" method="post">
					<table width=100%>
						<th style="background-color: #fab039" colspan=2><font
							color="white">Need Something?</font> <a
							onclick="return DisableINeedBlock()"> <img
								src="${pageContext.request.contextPath}/resources/images/close (3).png"
								style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
						</th>
						<tr align="center">
							<td>Looking For :</td>
							<td><input type="text" name="need"
								placeholder="Write your Need here...."
								style="width: 400px; height: 30px;"></td>
						</tr>
						<tr align="center">
							<td>Description :</td>
							<td><textarea type="text" name="description"
									placeholder="Write your Need here...."
									style="width: 400px; height: 100px; resize: none;"></textarea>
							</td>
						</tr>
						<tr align="center">
							<td>Contact No :</td>
							<td><input type="text" name="mobile"
								placeholder="Write your Need here...."
								style="width: 400px; height: 30px;"><br>
							<br></td>
						</tr>
						<tr align="center">
							<td><input type="hidden" name="usermail"
								value="${CurrentEmailId}"></td>
							<td><input type="submit" value="Ask for Solution"
								style="margin-left: 287px;" onclick="return DisableINeedBlock()">
							</td>
						</tr>
					</table>
				</form>
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
			<div id="MiddleTop">
				<form name="myform" action="/vanjariudyogvishwa-v2/Status" method="post">
					<table align="left">
						<tr>
							<td>Update Status/Photo</td>
						</tr>
					</table>
					<br>
					<textarea name="status" rows="2" cols="95" style="resize: none" ></textarea>
					<br>
					<table align="left" width="170%">
						<tr>
							<td><font color="purple">Text</font></td>
							<td><font color="purple">Photo</font></td>
							<input type="hidden" name="usermail" value="${CurrentEmailId}">
							<td><input type="submit" value="POST" style="margin-right: 30px;" class="buttonclr" onclick="return abc1()"></td>
						</tr>
					</table>
				</form>
			</div>
			<div id="outsidemiddleHome">
				<div id="middleHome">
					<c:if test="${!empty statusList}">
						<c:forEach items="${statusList}" var="status11">
							<div id="ShowStatusUpdet">
								<div class="userStatusImage">
									<img src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="72" width="70">
								</div>

								<div class="statusUserName"style="float: left; margin-left: 10px;">
									<font color="green">${status11.usermail}</font>
								</div>
								<br>
								<div class="StatusContent">
									<table width=100%>
									
										<tr>
											<td align="left">${status11.status}</td>
										</tr>
										<tr><td></td><td align="right"><font color="gray" size="2">${status11.statusDate}</font></td></tr>
									</table>
									<c:if test="${!empty status11.comments}">
										<c:forEach items="${status11.comments}" var="myComment">

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
														<tr><td><font color="blue" size="0.5"></font></td></tr>
													</table>
												</div>
											</div>
										</c:forEach>
									</c:if>

									<div id="commentBox">
										<div class="commentBoxImage">
											<img
												src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
												height="42" width="40">
										</div>
										<div>
											<form action="/vanjariudyogvishwa-v2/Comment" method="post"
												onKeyPress="return submitenter(this,event)"
												name="commentZone">
												<input type="hidden" name="statusIdForComment"
													value="${status11.id}"> <input type="hidden"
													name="whoseComment" value="${CurrentEmailId}"> <input
													type="text" name="commenttext"
													placeholder="Write a comment and Press Enter...."
													style="width: 440px; height: 20px; margin-top: 10px; margin-left: -30px">
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											<tr>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus"
														method="post">
														<input type="hidden"
													name="usermail" value="${CurrentEmailId}">
														<input type="submit" value="Like" class="LikeUnlikeBtn">
														0
													</form>
												</td>
												<td><form action="/vanjariudyogvishwa-v2/UnlikeStatus"
														method="post">
														<input type="hidden"
													name="usermail" value="${CurrentEmailId}">
														<input type="submit" value="Unlike" class="LikeUnlikeBtn">
														0
													</form></td>
												<td>Comments 0</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<div id="rightMain">
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
