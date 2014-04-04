<%-- 
    Document   : Profile
    Created on : Dec 9, 2013, 6:10:34 PM
    Author     : dogkiller
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>

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
h3 {
	 background-color: transparent; 
	/* background-color:#00FF00; */
	margin-top: 0px;
	
}

input[type=text]{
	width: 400px;
	height: auto;
	font-size: large;

}

#IntrestAreaImages{
	width: 100px;
	height: 50px;

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
#Friends {
	border-radius: 3px;
	border: 1px solid gray;
	background-color: bisque;
	margin-top: 0.1px;
	width: 466px;
	height: 300px;
	 margin-right: -18px; 
	overflow: auto;
	padding-left: 20px;
}
#OutsideFriends {
	float: right;
	border-radius: 3px;
	border: 1px solid gray;
	background-color: bisque;
	margin-top: -303px;
	width: 466px;
	height: 300px;
	margin-right: -2px;
	overflow: hidden;
}
#NotificationTopHome{
    border-radius: 5px;
    width: 350px;
    height: 300px;
    background-color: bisque;
    display: none;
    margin-left: 650px;
    border: 1px solid gray; 
    position: absolute;
    overflow: hidden;
    /* style="height: auto ;overflow:auto" */
 }
#InsideNotificationTopHome{
    border-radius: 5px;
    width: 350px;
    height: 300px;
    background-color: bisque;
    /* margin-left: 650px; */
    border: 1px solid gray; 
    position: absolute;
    overflow: auto;
 }
</style>

<title>${loginUser.firstName} ${loginUser.lastName}'s Profile Page</title>

</head>
<body>
	<center>
		<div id="mainProfile">
			<div id="Header">


				<label style="margin-left: 110px; margin-right:5px; float: right;">WelCome !<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br><br>
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
				<input type="hidden" name="JspPageName" value="Profile">
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
				<a	id="anchor" href="#"><font color="indigo">My Profile</font> </a>
				<a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>	</a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
			</div>



			


			<div id="NotificationTopHome">
				<div id="InsideNotificationTopHome">
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
						</div>
						<h7 id="${note[3]}" onclick="jumpcomment('${note[3]}')"><b style="color: red;">${note[1]} ${note[2]}</b> commented on status: <i style="color: gray;">${note[0]}</i></h7>
						
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
			<div style="height: 300px; width: 1400px;">
				<div id="OutsideInterestAreas">
				<div id="InterestAreas">
					<h3>IntrestAreas Details</h3>
					<c:if test="${!empty intrestAreasList}">
					<form action="/vanjariudyogvishwa-v2/EditIntrestAreasDetails">
						
						<input type="hidden" name="usermail"
								value="${loginUser.email}">
						
								<table>
									<c:forEach items="${intrestAreasList}" var="intrestAreasDetails">
									
											<c:set var="tempStr" value="${fn: split(intrestAreasDetails.interestId,',')}"></c:set>
											
											<c:forEach items="${tempStr}" var="intrestAreaNumber">
							
							<c:if test="${intrestAreaNumber=='1'}">
								<tr><td><div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png" title="Sports" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Sports</h4> </div></td></tr>
							</c:if>
							<c:if test="${intrestAreaNumber=='2'}">
								<tr><td><div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/2-DRAWING.png" title="Drawing" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Drawing</h4></div></td></tr>
							</c:if>
							<c:if test="${intrestAreaNumber=='3'}">
								<div style="width: 120px; float: left;"><img src="${pageContext.request.contextPath}/resources/icons/3-PhotoGraphy.png" title="PhotoGraphy" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">PhotoGraphy</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='4'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/4-TRAVELLING.png" title="Travelling"><h4 style="margin-top:-5px">Travelling</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='5'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/5-musics.png" title="Music" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Music</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='6'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/6-READING.png" title="Reading" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Reading</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='7'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/7-BROWSING.png" title="Browsing" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Browsing</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='8'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/8-BIKE RIDING.png" title="Bike Riding" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Bike Riding</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='9'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/9-CAR_RIDING.png" title="Car Riding"style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Car Riding</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='10'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png" title="Tracking" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Trekking</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='11'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/11-Movies-.png" title="Watching Movies" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Movies</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='12'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/12-SocialWork.jpg" title="Social Work" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Social Work</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='13'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/13-POLITICAL.png" title="Politics" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Politics</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='14'}">
								<div style="width: 140px; float: left;"><img src="${pageContext.request.contextPath}/resources/icons/14-parties.png" title="Friends/Parties/dating" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Friends/Parties/dating</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='15'}">
							<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/15-shopping-bag.png"  title="Shopping" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Shopping</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='16'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/16-business.png"  title="Business" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Business</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='17'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/17-drama.png" title="Drama" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Drama</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='18'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/18-CIRCUS.png" title="Circus" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Circus</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='19'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/19-DanceShow.png" title="Dance Show" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Dance Show</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='20'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/PhotoGallary.png" title="Cultural Activities" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Cultural Activities</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='21'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/21-SPEEECH.png" title="Speech" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Speech</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='22'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/22-gym.png" title="Gym/Health Club" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Gym/Health Club</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='23'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/23-teaching.png" title="Teaching" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Teaching</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='24'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/24-SPIRTUALITY.png" title="Spirituality" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Spirituality</h4></div>
							</c:if>
							
						</c:forEach>
											
									
								</c:forEach>
								</table>
								
								
						</form>
					</c:if>
					<c:if test="${!empty editIntrestAreasDetailsList}">
						<h3>Edit IntrestAreas Details</h3>
						<form action="/vanjariudyogvishwa-v2/EditIntrestAreas">
						
						<input type="hidden" name="usermail"
								value="${loginUser.email}">
						
						<c:forEach items="${editIntrestAreasDetailsList}" var="editIntrestAreasDetails">
						
						<c:set var="tempStr" value="${fn: split(editIntrestAreasDetails.interestId,',')}"></c:set>
							
						
						
						<c:forEach items="${tempStr}" var="intrestAreaNumber">
							
							<c:if test="${intrestAreaNumber=='1'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png" title="Sports" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Sports</h4> </div>
							</c:if>
							<c:if test="${intrestAreaNumber=='2'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/2-DRAWING.png" title="Drawing" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Drawing</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='3'}">
								<div style="width: 120px; float: left;"><img src="${pageContext.request.contextPath}/resources/icons/3-PhotoGraphy.png" title="PhotoGraphy" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">PhotoGraphy</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='4'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/4-TRAVELLING.png" title="Travelling"><h4 style="margin-top:-5px">Travelling</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='5'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/5-musics.png" title="Music" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Music</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='6'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/6-READING.png" title="Reading" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Reading</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='7'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/7-BROWSING.png" title="Browsing" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Browsing</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='8'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/8-BIKE RIDING.png" title="Bike Riding" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Bike Riding</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='9'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/9-CAR_RIDING.png" title="Car Riding"style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Car Riding</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='10'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png" title="Trekking" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Trekking</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='11'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/11-Movies-.png" title="Watching Movies" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Movies</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='12'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/12-SocialWork.jpg" title="Social Work" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Social Work</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='13'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/13-POLITICAL.png" title="Politics" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Politics</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='14'}">
								<div style="width: 140px; float: left;"><img src="${pageContext.request.contextPath}/resources/icons/14-parties.png" title="Friends/Parties/dating" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Friends/Parties/dating</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='15'}">
							<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/15-shopping-bag.png"  title="Shopping" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Shopping</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='16'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/16-business.png"  title="Business" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Business</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='17'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/17-drama.png" title="Drama" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Drama</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='18'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/18-CIRCUS.png" title="Circus" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Circus</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='19'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/19-DanceShow.png" title="Dance Show" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Dance Show</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='20'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/PhotoGallary.png" title="Cultural Activities" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Cultural Activities</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='21'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/21-SPEEECH.png" title="Speech" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Speech</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='22'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/22-gym.png" title="Gym/Health Club" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Gym/Health Club</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='23'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/23-teaching.png" title="Teaching" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Teaching</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='24'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/24-SPIRTUALITY.png" title="Spirituality" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Spirituality</h4></div>
							</c:if>
							
						</c:forEach>
							
							
							
						</c:forEach>
								
								
								
						</form>
					</c:if>
					
					
				</div>
				</div>
				
				
				<div id="OutsideProfileProducts">
				<div id="ProfileProducts">

					<h3>Products</h3>
								

					<c:if test="${!empty ProductList}">
						<c:forEach items="${ProductList}" var="productNAME">
							
							
							<div>
								<table>
									<tr>
										<td>
											<img src="${pageContext.request.contextPath}/resources/images/product1.png" title="${productNAME.productName}" style="width: 70px; height: 60px;">
										</td>
										<td>
											<h4 style="margin-top:-5px">${productNAME.productName}</h4>
										</td>
									</tr>
								</table>
							</div>

						</c:forEach>

					</c:if>


				</div>
				</div>
				<div id="OutsideFriends">
				<div id="Friends">
					<h3><img src="${pageContext.request.contextPath}/resources/images/friends1.png" style="width: 70px; height: 60px;"> Friend's</h3>
					
					<table width=90% >
							<c:if test="${!empty userFriendsList}">
								<c:forEach items="${userFriendsList}" var="userFriends">
									
											<tr>
												<td style="border: 1px solid gray;">
													
											<form action="/vanjariudyogvishwa-v2/FriendProfile"
												method="post">

												<table>
													<tr>
														<td rowspan="2">
														<img
															src="${pageContext.request.contextPath}/resources/ProfileImages/${userFriends[4]}"
															height="72" width="70">
														</td>
													</tr>
													<tr>
														<td><input type="hidden" name="friendsEmailId"
															value="${userFriends[2]}"> <input type="submit"
															style="background: none; border: none;"
															value="${userFriends[0]} ${userFriends[1]}"> <br>
															<a><font color="gray" size="2">Works @
																	Rbnelite</font></a>
												</table>
											</form>


										</td>
												</tr>
										</c:forEach>
							</c:if>
						</table>
					
					</div>
				</div>
			</div>
			<div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
					
					<c:if test="${!empty educationworkList}">
					<form action="/vanjariudyogvishwa-v2/EditEducationDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editEducationReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
						<input type="hidden" name="usermail"
								value="${loginUser.email}">
						
						<div id="InsideProfileDetails">
							<h3><img src="${pageContext.request.contextPath}/resources/images/Education Details.png"
								style=" float:left; width: 70px; height: 60px;">Education Details</h3>
								<table>
									<c:forEach items="${educationworkList}" var="educationWORK">
										<tr>
											<td style="width: 200px;"><b>Name of School :</b></td>
											<td>${educationWORK.school}</td>
										</tr>
										<tr>
											<td><b>Name of College :</b></td>
											<td>${educationWORK.collage}</td>
										</tr>
										<tr>
											<td><b>Graduation Degree :</b></td>
											<td>${educationWORK.graduation}</td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td>${educationWORK.otherGraduation}</td>
										</tr>
										<tr>
											<td><b>PG College Name :</b></td>
											<td>${educationWORK.PGCollege}</td>
										</tr>
										<tr>
											<td><b>PG Degree:</b></td>
											<td>${educationWORK.PGDegree}</td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td>${educationWORK.otherPG}</td>
										</tr>
										
									</c:forEach>
								</table>
								</div>
								</form>
							</c:if>
							<c:if test="${!empty EditEducationDetailsList}">
							<form action="/vanjariudyogvishwa-v2/EditEducation" method="post">
								<input type="hidden" name="userMail"
								value="${loginUser.email}">
							<h3><img src="${pageContext.request.contextPath}/resources/images/Education Details.png"
								style="float:left; width: 70px; height: 60px;">Edit Education Details</h3>

								
							<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${EditEducationDetailsList}" var="EditEducationDetails">
										<tr>
											<td style="width: 200px;"><b>Name of School :</b></td>
											<td><input type="text" name="school"
													value="${EditEducationDetails.school}"></td>
										</tr>
										<tr>
											<td><b>Name of College :</b></td>
											<td><input type="text" name="collage"
													value="${EditEducationDetails.collage}"></td>
										</tr>
										<tr>
											<td><b>Graduation Degree :</b></td>
											<td>
											<select name="graduation" style="width: 400px; height: auto;">
												<option selected="selected">${EditEducationDetails.graduation}</option>
                                                <option>BA</option>
                                                <option>BBA</option>
                                                <option>B.B.M.</option>
                                                <option>BCA</option>
                                                <option>B.Com</option>
                                                <option>B.D.S</option>
                                                <option>B.Sc</option>
                                                <option>B.Sc.HS</option>
                                                <option>B.E</option>
                                                <option>B.Tech</option>
                                                <option>B.Ed.</option>
                                                <option>BHMCT</option>
                                                <option>B.Pharm</option>
                                                <option>D.T.L</option>
                                                <option>Diploma in Journalism</option>
                                                <option>Diploma in Philosophy</option>
                                                <option>Diploma in Social Work</option>
                                                <option>DM</option>
                                                <option>D.Ed</option>
                                                <option>GNM</option>
                                                <option>LLB</option>
                                                <option>LLM</option>
                                            </select>
													
													
													
													
													
													</td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td><input type="text" name="otherGraduation"
													value="${EditEducationDetails.otherGraduation}"></td>
										</tr>
										<tr>
											<td><b>PG College Name :</b></td>
											<td><input type="text" name="PGCollege"
													value="${EditEducationDetails.PGCollege}"></td>
										</tr>
										<tr>
											<td><b>PG Degree:</b></td>
											<td><input type="text" name="PGDegree"
													value="${EditEducationDetails.PGDegree}"></td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td><input type="text" name="otherPG"
													value="${EditEducationDetails.otherPG}"></td>
										</tr>
										<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editEducationBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
									</c:forEach>
								</table>
								</div>
							</form>
							</c:if>
							
							
						</div>

					</div>
			

				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty contactInfoList}">
						
						<form action="/vanjariudyogvishwa-v2/EditContactDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editContactReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
						<input type="hidden" name="usermail"
								value="${loginUser.email}">
						
						<div id="InsideProfileDetails">
							<h3><img src="${pageContext.request.contextPath}/resources/images/ContactDetails.jpg"
								style=" float:left; width: 70px; height: 60px;">Contact Details</h3>
							<table>
								<c:forEach items="${contactInfoList}" var="contactInfo">
									<tr>
										<td><b>Home Address :</b></td>
										<td>${contactInfo.homeAddress}</td>
									</tr>
									<tr>
										<td><b>Office Address :</b></td>
										<td>${contactInfo.officeAddress}</td>
									</tr>
									<tr>

										<td><b>Telephone No. :</b></td>
						<td>${contactInfo.contactNo}</td>

									</tr>

								</c:forEach>

							</table>
						</div>
						</form>
						</c:if>
						

						<c:if test="${!empty EditContactDetailsList}">
						
						<form action="/vanjariudyogvishwa-v2/editContact" method="post">
					
					<input type="hidden" name="userMail"
								value="${loginUser.email}">
					
					<h3><img src="${pageContext.request.contextPath}/resources/images/ContactDetails.jpg"
								style=" float:left; width: 70px; height: 60px;">Edit Contact Details</h3>
						<div id="InsideProfileDetails">
							
							<table>
								<c:forEach items="${EditContactDetailsList}" var="EditContactDetails">
									<tr>
										<td><b>Home Address :</b></td>
										<td><input type="text" name="homeAddress"
													value="${EditContactDetails.homeAddress}"></td>
									</tr>
									<tr>
										<td><b>Office Address :</b></td>
										<td><input type="text" name="officeAddress"
													value="${EditContactDetails.officeAddress}"></td>
									</tr>
									<tr>
										<td><b>Telephone No. :</b></td>
						<td><input type="text" name="telephone"
													value="${EditContactDetails.contactNo}"></td>
									</tr>
									<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editContactBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
								</c:forEach>


							</table>
						</div>
						</form>
						</c:if>

					</div>
				</div>
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						
						<c:if test="${!empty hobbiesList}">
					<form action="/vanjariudyogvishwa-v2/EditHobbiesDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editHobbiesReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
						<input type="hidden" name="usermail"
								value="${loginUser.email}">
						
						<div id="InsideProfileDetails">
							<h3>Hobbies </h3>
								<table>
									<c:forEach items="${hobbiesList}" var="hobbiesDetails">
										<tr>
											<td style="width: 200px;"><b>Hobbies :</b></td>
											<td>${hobbiesDetails.hobbiesName}</td>
										</tr>
										<tr>
											<td><b>Favourite Music :</b></td>
											<td>${hobbiesDetails.favouriteMusic}</td>
										</tr>
										<tr>
											<td><b>Favourite Book :</b></td>
											<td>${hobbiesDetails.favouriteBooks}</td>
										</tr>
										<%-- <tr>
								<td><b>Dress Style :</b>
								</td>
								<td>${hobbiesDetails.DressStyletyle}</td>
							</tr> --%>
										<tr>
											<td><b>Favourite TV show :</b></td>
											<td>${hobbiesDetails.favouritrTvShows}</td>
										</tr>
										<%-- <tr>
								<td><b>Favourite Movie :</b>
								</td>
								<td>${hobbiesDetails.FavouriteMovies}</td>
							</tr> --%>
										<tr>
											<td><b>Favourite Sport :</b></td>
											<td>${hobbiesDetails.sports}</td>
										</tr>
										<tr>
											<td><b>Food I Cook :</b></td>
											<td>${hobbiesDetails.foodIcook}</td>
										</tr>
										<%-- <tr>
								<td><b>Vacation Destination :</b>
								</td>
								<td>${hobbiesDetails.VacationDestination}</td>
							</tr> --%>
									</c:forEach>
								</table>
								</div>
								</form>
							</c:if>
							
							<c:if test="${!empty editHobbiesList}">
					<form action="/vanjariudyogvishwa-v2/editHobbies" method="post">
					
					<input type="hidden" name="usermail"
								value="${loginUser.email}">
					
					<h3>Edit Hobbies </h3>
						<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${editHobbiesList}" var="editHobbiesDetails">
										<tr>
											<td style="width: 200px;"><b>Hobbies :</b></td>
											<td><input type="text" name="hobbiesName"
													value="${editHobbiesDetails.hobbiesName}"></td>
										</tr>
										<tr>
											<td><b>Favourite Music :</b></td>
											<td><input type="text" name="favouriteMusic"
													value="${editHobbiesDetails.favouriteMusic}"></td>
										</tr>
										<tr>
											<td><b>Favourite Book :</b></td>
											<td><input type="text" name="favouriteBooks"
													value="${editHobbiesDetails.favouriteBooks}"></td>
										</tr>
									<%-- 	<tr>
								<td><b>Dress Style :</b>
								</td>
								<td><input type="text" name="DressStyletyle" value="${editHobbiesDetails.DressStyletyle}">
								</td>
							</tr> --%>
										<tr>
											<td><b>Favourite TV show :</b></td>
											<td><input type="text" name="favouritrTvShows"
													value="${editHobbiesDetails.favouritrTvShows}"></td>
										</tr>
										<%-- <tr>
								<td><b>Favourite Movie :</b>
								</td>
								<td><input type="text" name="FavouriteMovies"
													value="${editHobbiesDetails.FavouriteMovies}"></td>
							</tr> --%>
										<tr>
											<td><b>Favourite Sport :</b></td>
											<td><input type="text" name="sports"
													value="${editHobbiesDetails.sports}"></td>
										</tr>
										<tr>
											<td><b>Food I Cook :</b></td>
											<td><input type="text" name="foodIcook"
													value="${editHobbiesDetails.foodIcook}"></td>
										</tr>
										<%-- <tr>
								<td><b>Vacation Destination :</b>
								</td>
								<td><input type="text" name="VacationDestination"
													value="${editHobbiesDetails.VacationDestination}">
								</td>
							</tr> --%>

											<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editHobbiesBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>


										</c:forEach>
								</table>
								</div>
					
					
					
					
					</form>
					</c:if>
							
						
					</div>
				</div>
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty religionList}">
							<form action="/vanjariudyogvishwa-v2/EditReligionDetails">
								<input id="EditProfileDetails" type="submit" value=""
									name="editOtherReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								<input type="hidden" name="usermail"
								value="${loginUser.email}">

								
								<div id="InsideProfileDetails">
									<h3>Religion Details</h3>
						
							<table>
								<c:forEach items="${religionList}" var="religionDetails">
									<tr>
										<td><b>Religion :</b></td>
										<td>${religionDetails.religion}</td>
									</tr>
									<tr>
										<td><b>Cast :</b></td>
										<td>${religionDetails.subCast}</td>
									</tr>
									

								</c:forEach>
							</table>
							</div>
							</form>
						</c:if>
						
						
						<c:if test="${!empty EditReligionList}">
							<form action="/vanjariudyogvishwa-v2/editReligion" method="post">

								<input type="hidden" name="emailId"
								value="${loginUser.email}">

								<h3>Edit Religion Details</h3>
								<div id="InsideProfileDetails">
						
							<table>
								<c:forEach items="${EditReligionList}" var="EditReligionDetails">
									<tr>
										<td><b>Religion :</b></td>
										<td><input type="text" name="religion"
													value="${EditReligionDetails.religion}"></td>
									</tr>
									<tr>
										<td><b>Cast :</b></td>
										<td><input type="text" name="subCast"
													value="${EditReligionDetails.subCast}"></td>
									</tr>
									
									<tr>
										<td colspan="1"><input type="submit" value="Edit"
											name="editReligionBtn" style="float: right;"></td>
										<td><input type="reset" value="Cancel"></td>
									</tr>
									<tr>
										<td><br></td>
										<td></td>
									</tr>
								</c:forEach>
							</table>
							</div>
							</form>
						</c:if>

					</div>

				</div>
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						
						<c:if test="${!empty otherDetailsList}">
							<form action="/vanjariudyogvishwa-v2/EditOtherDetails">
								<input id="EditProfileDetails" type="submit" value=""
									name="editOtherReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								<input type="hidden" name="usermail"
								value="${loginUser.email}">

								
								<div id="InsideProfileDetails">
									<h3>Other Details</h3>
									<table>
										<c:forEach items="${otherDetailsList}" var="otherDetails">
											<tr>
												<td style="width: 200px"><b>Social Status :</b></td>
												<td style="width: 590px;">${otherDetails.socialStatus}</td>
											</tr>
											<tr>
												<td><b>Polytical Status :</b></td>
												<td>${otherDetails.polyticalstatus}</td>
											</tr>
											<tr>
												<td><b>Social Activities :</b></td>
												<td>${otherDetails.socialact}</td>
											</tr>
											<tr>
												<td><b>Polytical Activities :</b></td>
												<td>${otherDetails.polyticalact}</td>
											</tr>
											<tr>
												<td><b>Cultural activities :</b></td>
												<td>${otherDetails.culturalact}</td>
											</tr>


										</c:forEach>
									</table>
								</div>
							</form>
						</c:if>

						<c:if test="${!empty EditOtherDetailsList}">
							<form action="/vanjariudyogvishwa-v2/editOther" method="post">

								<input type="hidden" name="usermail"
								value="${loginUser.email}">

								<h3>Edit Other Details</h3>
								<div id="InsideProfileDetails">
									<table>
										<c:forEach items="${EditOtherDetailsList}"
											var="EditOtherDetails">
											<tr>
												<td style="width: 200px"><b>Social Status :</b></td>
												<td style="width: 590px;"><input type="text" name="socialStatus"
													value="${EditOtherDetails.socialStatus}"></td>
											</tr>
											<tr>
												<td><b>Polytical Status :</b></td>
												<td><input type="text" name="polyticalstatus" value="${EditOtherDetails.polyticalstatus}"></td>
											</tr>
											<tr>
												<td><b>Social Activities :</b></td>
												<td><input type="text" name="socialact"
													value="${EditOtherDetails.socialact}"></td>
											</tr>
											<tr>
												<td><b>Polytical Activities :</b></td>
												<td><input type="text" name="polyticalact"
													value="${EditOtherDetails.polyticalact}"></td>
											</tr>
											<tr>
												<td><b>Cultural activities :</b></td>
												<td><input type="text" name="culturalact"
													value="${EditOtherDetails.culturalact}"></td>
											</tr>

											<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editOtherBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</form>

						</c:if>



					</div>

				</div>
			</div>
			<div id="RightProfile">
				<div id="outside_Photos">
					<div id="Photos">
						<h3><img src="${pageContext.request.contextPath}/resources/images/PhotoGallary.png" style="width: 30px; height: 30px;"> Photos </h3>
						
							

					</div>
				</div>
				<div id="OuterRightStatusProfile">
					<div id="RightUpdatedStatusProfile">
						<h3>Updated Status</h3>
						<a>@@@@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@
							@@@@@@@@@@@ @@@@ @@@@@@@@@ @@@@@ @@@@@@@@@@@@
							@@@@@@@ @@@@@@@@ @@@@@@@@@@@ @@@@@@@@@ @@@@@@@ @@@@@@@@@@@ </a>
 
						<%-- <img src="${pageContext.request.contextPath}/resources/images/photo.png" style=" margin-left:-400px; width: 70px; height: 60px;"> --%>
					</div>
				</div>

			</div>

		</div>
	</center>
</body>
</html>

