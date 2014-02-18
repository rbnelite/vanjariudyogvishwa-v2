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
		<div id="main">
			<div id="Header">
			<form action="/vanjariudyogvishwa-v2/SearchResult">
				<input id="SearchData" type="text" name="SearchData" placeholder="Search" /><input type="submit" value="Search Data">
					</form>
					 <label style="margin-left: 110px; margin-right:5px; float: right;">WelCome !<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
				<div id="profile_photo">
					<c:if test="${! empty ProfileImageList}">
				<c:forEach items="${ProfileImageList}" var="ProfileImage">
					<img width="140px" height="140px"
						src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
					<br>&nbsp;&nbsp;&nbsp; <a href="#" onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:forEach>
					</c:if>

				</div>
				
				<div id="ChangePhotoHome">
				<form action="/vanjariudyogvishwa-v2/UpdateProfileImage" method="post" enctype="multipart/form-data">
				<input type="hidden" name="JspPageName" value="SearchResult">
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
				<table width=100% style="margin-left: 30px;">
					<tr>
					<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<td><a href="Home" class="menuContent">Home</a></td>
						<td><a href="Profile" class="menuContent">My Profile</a></td>
						<td><a href="Message" class="menuContent">Message</a></td>
						<td><a href="#" onclick="return DisplayINeedBlock()"
							class="menuContent">Looking for</a></td>
						<td><a href="#" onclick="return DisplayNotificationBlock()"
							class="menuContent">Notification</a></td>
						<td><a href="#" onclick="return DisplayRequestBlock()"
							class="menuContent">Requests</a></td>
						<td><a href="#" onclick="return DisplaySettingBlock()"
							class="menuContent">Setting</a></td>
						<td><a href="Index" class="menuContent">LogOut</a></td>
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
						style="float: right;" href="Products">
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
			
			<div id="outsidemiddleHome" style="border: 1px solid red;">
				<div id="middleHome">
					<table width=60%>
			<th colspan="3">Users List</th>
	<c:if test="${!empty SearchUserList}">
		
			<c:forEach items="${SearchUserList}" var="searchUser">
				<tr style="background-color: gray">
					<td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="30" width="30"> </td>
					<td> ${searchUser.firstName}&nbsp;${searchUser.middleName}&nbsp;${searchUser.lastName}&nbsp;</td>
					<td><input type="button" value="Connect" class="connectBtn"></td>
				</tr>
			</c:forEach>
	
	</c:if>
		</table>
		
			<table width=60%>
			<th colspan="2">Product List</th>
	<c:if test="${!empty SearchProductList}">
		
			<c:forEach items="${SearchProductList}" var="searchProduct">
				<tr style="background-color: gray">
					<td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="30" width="30"> </td>
					<td> ${searchProduct.productName}&nbsp;Owners Name : ${searchProduct.userMail}</td>
					
				</tr>
			</c:forEach>
	
	</c:if>
		</table>
		
							<c:if test="${!empty SearchStatusList}">
						<c:forEach items="${SearchStatusList}" var="searchStatus">
							<div id="ShowStatusUpdet">
								<div class="userStatusImage">
									<img src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="52" width="50">
								</div>

								<div class="statusUserName"
									style="float: left; margin-left: 10px;">
									
								</div>
								<br>
								<div class="StatusContent">
									<table width=100%>
									<tr><td><font color="green">${searchStatus.usermail}</font></td></tr>
										<tr>
											<td align="left">${searchStatus.status}</td>
										</tr>
										<tr><td><font color="blue" size="2">${searchStatus.statusDate}</font></td></tr>
									</table>

									<br>
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
														<tr><td><font color="blue" size="0.5"></font></td></tr>
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
	
		</div>
	</center>
</body>
</html>
