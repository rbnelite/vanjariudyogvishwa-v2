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
		
        <title>Vanjari Udyog Vishwa | Photos</title>
         </head>
    <body>
      <center>
        <div id="main">
            <div id="Header">

                <input  id="input_search" type="text" name="SearchProfile" placeholder="Search"/>
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
				<a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>	</a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
			</div>
			
            <div id="leftMain">
				<c:if test="${!empty eventstList}">
					<div id="OutsideleftMain1">
						<div id="leftMain1">
							<table width=100%>
								<th style="background-color: #fab039"><font color="white">Upcoming
										Events</font></th>
								<c:forEach items="${eventstList}" var="myEvents">
									<tr>
										<td align="left">${myEvents.usermail}created an event
											:${myEvents.name}</td>
									</tr>
								</c:forEach>
							</table>

						</div>
					</div>
				</c:if>
				<div id="leftMain2">
                  <table width=100%><th style="background-color: #fab039"><font color="white">Links</font></th></table>
                    <br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32"width="32"><a style="float: left;" href="message"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32"width="32"><a style="float: right;" href="Events"><h4><font color="#00cccc">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32"width="32"><a style="float: left;" href="#"><h4><font color="Black">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32"width="32"><a style="float: right;" href="Product"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32"width="32"><a style="float: left;" href="FriendList"> <h4><font color="#00cccc">Friends</font></h4></a>
                </div>
                
				</div>


            <div id="NotificationTopHome">
                
                <a onclick="return DisableNotificBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px;height: 40px; float: right;"></a>
				
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
                <a>Change Account Setting</a>
                <a onclick="return DisableSettingBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                <br>
                <a href="AccountSetting.jsp">More Settings...</a>
            </div>
            <div id="middlePhotos">
               
                    <table width=90%>
                        <tr>
                        <td>
                        <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" >
                        </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" >
                         </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer"id="personalPhoto" >
                          </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto">
                          </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto">
                          </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/gallery1.thumb.jpg" class="photoviewer" id="personalPhoto" >
                          </td>
                          </tr><tr>
                          <td>
                          <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" >
                          </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" >
                         </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" >
                         </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg"class="photoviewer" id="personalPhoto" >
                        </td></tr>
                        
                    </table>
            		  <div id="enlargePhoto">
            		  	
            		  	<form action="/vanjariudyogvishwa-v2/editOther" method="post">
            		  	<table>
            		  		<tr><td><input type="file"></td>
                        <td><input type="submit" value="Upload"> </td>
                        </tr>
            		  	</table>
            		  	
            		  	</form>
            		  	
            		  	
            		  </div>
            </div>
           <div id="rightMainPhotos"></div>
        </div>
    </center>
     </body>
</html>
