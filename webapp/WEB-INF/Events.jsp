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
<script type="text/javascript" src="js/RBNelite.js"></script>
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

				<input id="input_search" type="text" name="SearchProfile"
					placeholder="Search" />
					<label style="margin-left: 110px; margin-right:5px; float: right;">WelCome !<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
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
				<a id="anchor" href="Home" style="text-decoration: none"><font color="white">Home</font></a>
				<a id="anchor" href="Profile" style="text-decoration: none" ><font color="white">My Profile</font></a>
				<a id="anchor" href="message"style="text-decoration: none"><font color="white">Message</font></a>
				<a id="anchor" href="#" style="text-decoration: none"onclick="return DisplayNotificationBlock()"><font color="white">Notification</font></a>
				<a id="anchor" href="#" style="text-decoration: none"onclick="return DisplayRequestBlock()"><font color="white">Requests</font></a> 
				<a id="anchor" href="#" style="text-decoration: none" onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser" style="text-decoration: none" ><font color="white">LogOut</font></a>
			</div>

			 <div id="leftMain">
				 <c:if  test="${!empty eventstList}">
             		   
                <div id="leftMain1">
                <table width=100%>
                <th style="background-color: #fab039"><font color="white">Upcoming Events</font></th>
                <c:forEach items="${eventstList}" var="myEvents">
                <tr>
                <td align="left">${myEvents.usermail} created an event :${myEvents.name}</td>
                </tr>
                  </c:forEach>
                </table>
                
                 </div>
               
                 </c:if>
                <div id="leftMain2">
                  <table width=100%><th style="background-color: #fab039"><font color="white">Links</font></th></table>
                    <br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png"  title="Message" height="32"width="32"><a style="float: left;" href="message"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png"  title="Events" height="32"width="32"><a style="float: right;" href="#"><h4><font color="black">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png"  title="Photos" height="32"width="32"><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png"  title="My Products" height="32"width="32"><a style="float: right;" href="Product"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png"  title="Friend's" height="32"width="32"><a style="float: left;" href="Friends"> <h4><font color="#00cccc">Friends</font></h4></a>
                </div>
                <div id="leftMain3">Needs</div>

            </div>

			


			<div id="NotificationTopHome">
				<a onclick="return DisableNotificBlock()"> 
				<img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px; height: 40px; float: right;">
				</a>

			</div>

			<div id="RequestTopHome">
				<a onclick="return DisableRequestBlock()"> <img
					src="${pageContext.request.contextPath}/resources/images/close (3).png"
					style="width: 40px; height: 40px; float: right;">
				</a>

			</div>
			<div id="SettingTopHome">
				<a>Change Account Setting</a> <a
					onclick="return DisableSettingBlock()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;">
				</a> <br> <a href="AccountSetting.jsp">More Settings...</a>
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
									<td>${myEvents.name}<br></td>
									<td>${myEvents.location}<br></td>
									<td>${myEvents.datatime}<br></td>
									<td align="left">${myEvents.details}<br></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
				</div>
			</div>


			<div id="rightMainEvents"> </div>
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
