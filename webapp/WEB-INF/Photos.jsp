<%-- 
    Document   : Photos
    Created on : Dec 10, 2013, 6:18:04 PM
    Author     : anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

function jumpcomment(NotificationId) {
	/* alert(NotificationId); */
	document.getElementById("notificationId").value = NotificationId;

	var temp = document.getElementById("submit1").click();
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
    
    #leftMain1{
    float: left;
    width: 290px;
    height: 350px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    border: 0px solid gray;
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

#rightMainPhotos1 {
    margin-top: -1005px;
    width: 300px;
    height: 1000px;
    background-color: #FFE4C4;
    float: right;
    border-radius: 0px;
    border: 1px solid #808080;
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
/* -------------------image viewer------------------ */
*
{
	border: 0;
	margin: 0;
	padding: 0;
}

/* =Basic HTML, Non-essential
----------------------------------------------------------------------*/

a
{
	text-decoration: none;
}



h1
{
	background: inherit;
	border-bottom: 1px dashed #ccc;
	color: #933;
	font: 17px Georgia, serif;
	margin: 0 0 10px;
	padding: 0 0 5px;
	text-align: center;
}

p
{
	clear: both;
	font: 10px Verdana, sans-serif;
	padding: 10px 0;
	text-align: center;
}

p a
{
	background: inherit;
	color: #777;
}

p a:hover
{
	background: inherit;
	color: #000;
}

/* =Hoverbox Code
----------------------------------------------------------------------*/

.hoverbox
{
	cursor: default;
	list-style: none;
}

.hoverbox a
{
	cursor: default;
}

.hoverbox a .preview
{
	display: none;
}

.hoverbox a:hover .preview
{
	display: block;
	position: absolute;
	top: -33px;
	left: -45px;
	z-index: 1;
}

.hoverbox img
{
	background: #fff;
	border-color: #aaa #ccc #ddd #bbb;
	border-style: solid;
	border-width: 1px;
	color: inherit;
	padding: 2px;
	vertical-align: top;
	width: 200px;
	height: 150px;
}

.hoverbox li
{
	background: #eee;
	border-color: #ddd #bbb #aaa #ccc;
	border-style: solid;
	border-width: 1px;
	color: inherit;
	display: inline;
	float: left;
	margin: 3px;
	padding: 5px;
	position: relative;
}

.hoverbox .preview
{
	border-color: #000;
	width: 400px;
	height: 350px;
}





/* =Internet Explorer Fixes
----------------------------------------------------------------------*/

.hoverbox a
{
	position: relative;
}

.hoverbox a:hover
{
	display: block;
	font-size: 100%;
	z-index: 1;
}

.hoverbox a:hover .preview
{
	top: -38px;
	left: -50px;
}

.hoverbox li
{
	position: static;
}
</style>
		
        <title>Vanjari Udyog Vishwa | Photos</title>
         </head>
    <body>
      <center>
        <div id="main">
            <div id="Header">

                <form action="/vanjariudyogvishwa-v2/SearchResult">
					<div style="background-color: white; border-bottom: 5px solid gray; border-radius:3px; width: 345px; border-right: 5px solid gray;">
					<input id="SearchData" type="text" name="SearchData"
						placeholder="Search for people, Place, Events....." style="height: 25px; width: 250px; border-radius:5px; border: none;"/>
					<input type="submit" value=" "
						style="margin-left :-7px ;height: 36px;width: 94px; background-image: url('${pageContext.request.contextPath}/resources/icons/search-Button-Logo.png');">
					</div>
				</form>
                <label style="margin-left:110px; margin-right:5px; float: right;">WelCome!<b> ${loginUser.firstName} ${loginUser.lastName}</b></label>
                <br>
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
				<input type="hidden" name="JspPageName" value="Photos">
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
				<a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font><font color="red">${fn:length(NotificationList)}</font></a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font><font color="red">${fn:length(friendRequestList)}</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" style="margin-right: -800px" href="logoutUser"><font color="white">LogOut</font> </a>
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
					<th colspan=3 style="background-color: #fab039"><font color=white>
					Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right;"></a></th>
							<c:if test="${!empty friendRequestList}">
					<c:forEach items="${friendRequestList}" var="friendRequest">
					<form action="/vanjariudyogvishwa-v2/acceptFriendRequest" method="post">
					
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
            <div id="middlePhotos">
              
             
            <table><tr><td><form action="/vanjariudyogvishwa-v2/AddPhotos" method="POST" enctype="multipart/form-data"><input type="file" name="photoPath"><input type="submit" value="Upload"></form></td></tr></table>
                	<c:if test="${!empty userPhotosList}">

							
								<c:forEach items="${userPhotosList}" var="userPhotos">           
<ul class="hoverbox">
<li>
<a href="#"><img src="${pageContext.request.contextPath}/resources/photos/${userPhotos.photoPath}" alt="description" /><img src="${pageContext.request.contextPath}/resources/photos/${userPhotos.photoPath}" alt="description" class="preview" /></a>
</li>
</ul>
</c:forEach>
						
						</c:if>
               
            </div>
           <div id="rightMainPhotos1">
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
										<input type="hidden" name="JspPageName" value="Photos">
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
          </div>
          
          <div id="footer">
			<div id="footer-box">
				<div class="footer_left">
					<h4>Links</h4>
					<div class="divide"></div>
					<table width="92%" height="40" border="0" cellpadding="0"
						cellspacing="0" class="foot-links">
						<tr>
							<td width="13%" rowspan="2">&nbsp;</td>
							<td width="46%" height="18">Home</td>
							<td width="41%">How It work</td>
						</tr>
						<tr>
							<td height="22">About Us</td>
							<td>Privacy Policy</td>
						</tr>
						<tr>
							<td width="13%" rowspan="2">&nbsp;</td>
							<td width="46%" height="18">Career</td>
							<td width="41%">Developers</td>
						</tr>
					</table>
				</div>
				<!---footer_left1 ends Here--->

				<div class="footer_left">
					<h4>Partners</h4>
					<div class="divide"></div>
					<table width="91%" height="41" border="0" cellpadding="0"
						cellspacing="0" class="foot-links">
						<tr>
							<td width="8%" height="18">&nbsp;</td>
							<td width="58%">www.rbnelite.com</td>
						</tr>
						<tr>
							<td height="18">&nbsp;</td>
							<td>www.drushtidanthemovie.com</td>
						</tr>
					</table>
				</div>
				<!---footer_left2 ends Here--->

				<div class="footer_right">
					<h4>Contact Us</h4>
					<div class="divide"></div>
					<table width="100%" height="41" border="0" cellpadding="0"
						cellspacing="0" class="foot-links">
						<tr>
							<td width="31%" height="18"><div align="right">Phone -</div></td>
							<td width="3%">&nbsp;</td>
							<td width="66%">020 27658554</td>
						</tr>
						<tr>
							<td height="23"><div align="right">Email -</div></td>
							<td>&nbsp;</td>
							<td>Services@vanjariudyogvishwa.org</td>
						</tr>
					</table>
				</div>

			</div>
		</div>
          
    </center>
     </body>
</html>
