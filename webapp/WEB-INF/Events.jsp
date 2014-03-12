<%-- 
    Document   : Events
    Created on : Dec 10, 2013, 6:17:00 PM
    Author     : mayur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<title>Events Page</title>

<script type="text/javascript">
function DisplayChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='block';
}

function HideChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='none';
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
#mainEvents {
    background-color: bisque;
    width: 1400px;
    height: 2300px;
    margin: 10px 50px;
    border-radius: 3px;
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
    
 #leftMain {
    border-radius: 3px;
    float: left;
    width: 300px;
    height: 1000px;
    overflow: auto;
    background-color: bisque;
}
    #leftMain1{
    float: left;
    width: 290px;
    height: 350px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    padding-right: 20px;
}
#OutsideleftMain1{
    float: left;
    width: 290px;
    height: 350px;
    overflow: hidden;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    margin-left: 7px;
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

</head>
<body>
	<center>
		<div id="mainEvents" style="border-color: bisque">
			<div id="Header">

				<form action="/vanjariudyogvishwa-v2/SearchResult">
					<input id="SearchData" type="text" name="SearchData"
						placeholder="Search" style="height: 25px; width: 200px;" /> <input
						type="submit" value=" "
						style="margin-left :-7px ;height: 30px;width: 40px; background-image: url('${pageContext.request.contextPath}/resources/images/searchlogo.png');">
				</form>
					<label
					style="margin-left: 110px; margin-right: 5px; margin-top: -30px; float: right;">WelCome
					!<b> ${loginUser.firstName} ${loginUser.lastName}</b>
				</label> <br>
				<div id="profile_photo" style="margin-top: -20px;">
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
				<input type="hidden" name="JspPageName" value="Events">
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
				<a id="anchor" href="Home"><font color="white">Home</font> </a> <a
					id="anchor" href="Profile"><font color="white">My
						Profile</font> </a> <a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()"><font
					color="white">Notification</font> </a> <a id="anchor" href="#"
					onclick="DisplayRequestBlockPro()"><font color="white">Requests</font>
				</a> <a id="anchor" href="#" onclick="return DisplaySettingBlock()"><font
					color="white">Setting</font></a> <a id="anchor" href="logoutUser"><font
					color="white">LogOut</font> </a>
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
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png"  title="Events" height="32"width="32"><a style="float: right;" href="#"><h4><font color="black">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png"  title="Photos" height="32"width="32"><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png"  title="My Products" height="32"width="32"><a style="float: right;" href="Product"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png"  title="Friend's" height="32"width="32"><a style="float: left;" href="FriendList"> <h4><font color="#00cccc">Friends</font></h4></a>
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
										src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
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

			<div id="MiddleTopEvent">
				<form action="/vanjariudyogvishwa-v2/Events" method="post">
					<table>
						<h3><font color="purple">Create Event</font></h3>
						

						<tr>
							<td>Event Name :</td>
							<td><input type="text" name="name"
								placeholder="Write Event Name...."
								style="width: 400px; height: 30px; margin-left: -100px;">
							</td>
						</tr>
						<tr>
							<td>Event Details :</td>
							<td><textarea type="text" name="details"
									placeholder="Write Event Details with time...."
									style="width: 400px; height: 100px; resize: none; margin-left: -100px;"></textarea>
							</td>
						</tr>
						<tr>
							<td>Event Location :</td>
							<td><input type="text" name="location"
								placeholder="Write Location of Event...."
								style="width: 400px; height: 30px; margin-left: -100px;">
							</td>
						</tr>
						<tr>
							<td>Date :</td>
							<td><input type="text" name="datatime"
								placeholder="dd/mm/yyyy"
								style="width: 400px; height: 30px; margin-left: -100px;">
							</td>
						</tr>
						<!-- <tr>
							<td>Time :</td>
							<td><input type="text" name=""
								placeholder="hh:mm:ss"
								style="width: 400px; height: 30px; margin-left: -100px;">
								<select style="height: 30px;"><option>AM</option>
									<option>PM</option>
							</select><br>
							<br></td>
						</tr> -->
						
						<tr><td></td><td></td></tr>
						<tr><td></td><td></td></tr>
						
						<tr>
							<td><input type="submit" value="Create Event"
								style="margin-left: 290px; height: 40px;">
							</td>
							<td><input type="reset" value="Cancel"
								style="margin-left: 100px; height: 40px;">
								<input type="hidden" name="usermail" value="${loginUser.email}">
							</td>
						</tr>
					</table>
				</form>
			</div>

			<div id="middleEvent">
				<div id="ShowStatusUpdet">
					<h3>List of Events</h3>
					<c:if test="${!empty eventstList}">
						<table border=1 width=100%>
							<tr>
								<th>Photo</th>
								<th>Event Name</th>
								<th>Location</th>
								<th>Date/Time</th>
								<th>Event Details</th>
							</tr>
							<c:forEach items="${eventstList}" var="myEvents">
								<tr>
									<td><img src="${pageContext.request.contextPath}/resources/images/event.png" height="50" width="52"></td>
									<td>${myEvents[0]}<br></td>
									<td>${myEvents[4]}<br></td>
									<td>${myEvents[5]}<br></td>
									<td align="left">${myEvents[3]}<br></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
				</div>
			</div>


			<div id="rightMainEvents">
			<div id="OutsidepeopleMayKnw">
			<div id="peopleMayKnw">

					<table width=100%>
						<th colspan=3 style="background-color: #fab039"><font
							color="">People You May Know</th>
						<c:if test="${!empty knownPeopleList}">
							<c:forEach items="${knownPeopleList}" var="knownPeople">
								
										<tr>

											<td><img
												src="${pageContext.request.contextPath}/resources/ProfileImages/${knownPeople[3]}"
												height="30" width="30"></td>
											<td>${knownPeople[1]} ${knownPeople[2]}<br>
											<font size="2" color="gray">${knownPeople[0]}</font>
												<form action="/vanjariudyogvishwa-v2/sendFriendRequest"
													method="post">
													<input type="hidden" name="JspPageName" value="Home">
													<input type="hidden" name="requestTo"
														value="${knownPeople[0]}"> <input
														type="hidden" name="requestFrom"
														value="${loginUser.email}"> <input type="submit"
														value="Connect" class="connectBtn" style="float: right;">
												</form>
											</td>
										</tr>
										<tr>
											<td colspan="2"></td>
										</tr>
								
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
