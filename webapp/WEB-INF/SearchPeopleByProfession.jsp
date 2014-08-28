<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search People By Profession | Vanjari Udyog Vishwa</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
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
<script type="text/javascript">
            
            var image1=new Image();
            image1.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 2.jpg";
            var image2=new Image();
            image2.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 3.jpg";
            var image3=new Image();
            image3.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 4.jpg";
            var image4=new Image();
            image4.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 5.jpg";
            var image5=new Image();
            image5.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 6.jpg";
            var image6=new Image();
            image6.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 7.jpg";
            
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
#peopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 500px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    /* border: 1px solid gray; */
    overflow: auto;
    padding-right: 40px;
}
#OutsidepeopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 256px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    /* border: 1px solid gray; */
    overflow: hidden;
    margin-left: -3px;
    margin-top: -19px;
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
	width: 300px;
	height: 350px;
	overflow: auto;
	background-color: bisque;
	margin-left: 20px;
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

#VUVsearchByProBtn2{
	width: 130px;
	height: 130px;
	background-color: green;
	border-radius: 6px;
	border: none;
}
#VUVsearchByProBtn2:HOVER{
	width: 130px;
	height: 130px;
	background-color: rgba(188, 26, 249, 0.75);
	border-radius: 6px;
	border: none;
	cursor: pointer;
}
#SearchOccupationName{
	text-align: center;
	color: rgba(118, 112, 120, 0.99);
	font-size: 16px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
</style>
</head>
<body>
	<center>
		<div id="main">
			<div id="Header">
				<form action="/vanjariudyogvishwa-v2/SearchResult">
					<div style="">
						<input id="SearchData" type="text" name="SearchData"
						placeholder="Search for people, Place, Events....." style="height: 25px; width: 350px; border-radius:5px; border: none;background-color: white;"/>
						<input id="VUVloginBtn" type="submit" value="Search">
						<%-- style="margin-left :-7px ;height: 36px;width: 94px; background-image: url('${pageContext.request.contextPath}/resources/icons/search-Button-Logo.png');"> --%>
					</div>
				</form>
					<label style="margin-left:110px; margin-right:5px;margin-top: -30px; float: right;">WelCome!<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
				<div id="profile_photo" style="margin-top: -25px;">
					<c:if test="${! empty ProfileImageList}">
				<c:forEach items="${ProfileImageList}" var="ProfileImage">
					<img width="140px" height="140px" style="border-radius: 50px;border: 3px solid red"
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
				<a id="anchor" href="Home">Home</a> 
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession"><font color="#E45FF2">Members</font></a>
				<a id="anchor" href="message">Message</a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -550px" href="logoutUser">LogOut</a>
			</div>

			<div id="leftMain">
				<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana;">Upcoming Events</h3>
				<div id="OutsideleftMainHome">
					<div id="leftMainHome">
					<c:if test="${!empty eventstList}">
							<c:forEach items="${eventstList}" var="myEvents">
								<table width=100%>
									<tr>
										<td align="center" width="100%"><a id="showEventUserName">${myEvents[1]} ${myEvents[2]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">Title :</font> <a id="showEventCred">${myEvents[0]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">At : </font><a id="showEventCred">${myEvents[4]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">On : </font><a id="showEventCred">${myEvents[5]}</a></td>
									</tr>
									<tr>
										<td align="left" width="100%"><font color="orange">Details : </font><a id="showEventCred">${myEvents[3]}</a></td>
									</tr>
								</table>
								<hr>
							</c:forEach>
						</c:if>
					</div>
				</div>
				<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana;">Links</h3>
				<div id="leftMain2">
					<table width=100% >
						<!-- <th style="background-color: #fab039"><font color="white">Links</font></th> -->
					<tr>
						<td width="16%"> <img  src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="message">Message</a></td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32" width="32"></td>
						<td width="84%"> <a id="Shortlinks" href="Events">Events</a> </td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="Photos">Photos</a> </td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="Product">Products</a></td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="FriendList">Friends</a></td>
					</tr>
					</table>
				</div>
				
				<div id="leftMain3" style="height: 570px">
					<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana; ">Links</h3>
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

			<div id="outsidemiddleHome" style="margin-right: 300px; height: 1195px">
				<div id="middleHome" style="height: 1195px">
								
				<table>
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Doctor"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Doctors" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Doctor-Male-icon.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Admin Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Admin Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/AdminProfessional.gif');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Actor"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Actor" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Actor.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Advertising Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Advertising Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Advertising Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Agricultural Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Agricultural Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Doctor</td><td>Admin Professional</td><td>Actor</td><td>Advertising Professional</td><td>Agricultural Professional</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Air Hostes"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Air Hostes" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/airhostess.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Architect"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Architect" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/architecture.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Airforce"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Airforce" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/airforce.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Army"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Army" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Agent/Broker"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Agent/Broker" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/broker.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Air Hostes</td><td>Architect</td><td>Airforce</td><td>Army</td><td>Agent/Broker</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Animator"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Animator" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/animator.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Banking Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Banking Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Banking.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Businessman"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Businessman" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/businessman.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Charted Accountant"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Charted Accountant" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Company Secretory"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Company Secretory" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Animator</td><td>Banking Professional</td><td>Businessman</td><td>Charted Accountant</td><td>Company Secretory</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Civil Engineer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Civil Engineer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Catering Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Catering Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/catering.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Commercial Artist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Commercial Artist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/artist_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Customer Support/BPO/KPO"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Customer Support/BPO/KPO" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Doctor"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Doctor" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Doctor-Male-icon.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Civil Engineer</td><td>Catering Professional</td><td>Commercial Artist</td><td>Customer Support/ BPO/KPO</td><td>Doctor</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Defence Services"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Defence Services" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Dentist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Dentist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/dentist.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Entertainment Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Entertainment Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Entertainment Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Event Manager"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Event Manager" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Event Manager.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Electronics/Telecom Engineer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Electronics/Telecom Engineer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Telecom Engineer.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Defence Services</td><td>Dentist</td><td>Entertainment Professional</td><td>Event Manager</td><td>Electronics and TeleCom Engineer</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Finance Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Finance Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Finance Professional.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Fashion Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Fashion Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/fashion designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Farming"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Farming" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/farmer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Human Resource Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Human Resource Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Human Resource.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Horticulturist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Horticulturist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Finance Professional</td><td>Fashion Designer</td><td>Farming</td><td>Human Resource Professional</td><td>Horticulturist</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Hardware Network Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Hardware Network Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Hardware Network Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Investment Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Investment Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Interior Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Interior Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Interior Designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="IAS/IES/IRS/IFS"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for IAS/IES/IRS/IFS" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Indian Police Service(IPS)"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Indian Police Service(IPS)" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Hardware Network Professional</td><td>Investment Professional</td><td>Interior Designer</td><td>IAS/IES /IRS/IFS</td><td>Indian Police Service(IPS)</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Jewellary Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Jewellary Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Jewellary Designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Journalist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Journalist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/journalist.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Lawyer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Lawyer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/lawyer_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Lecturer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Lecturer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/teacher_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Landscape Architect"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Landscape Architect" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Landscape Architect.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Jewellary Designer</td><td>Journalist</td><td>Lawyer</td><td>Lecturer</td><td>Landscape Architect</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Media Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Media Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Media Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Marketing Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Marketing Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Marketing Professional.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Mechanical/Production Engineer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Mechanical/Production Engineer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Sr.Manager/Manager"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Sr.Manager/Manager" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Navy"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Navy" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/navy.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Media Professional</td><td>Marketing Professional</td><td>Mechanical / Production Engineer</td><td>Sr.Manager / Manager</td><td>Navy</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Nurse"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Nurse" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/nurse.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Other Airline Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Other Airline Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Airline Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Pilot"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Pilot" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/pilot_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Professor"></td>
					<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Professor" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Poet"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Poet" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/writer_icon.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Nurse</td><td>Other Airline Professional</td><td>Pilot</td><td>Professor</td><td>Poet</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Politician"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Politician" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/politician_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Research Asst."></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Research Asst." style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Research Asst.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Software Developer/Programmer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Software Developer/Programmer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/softwareengineer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Software Consultant"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Software Consultant" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Singer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Singer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/singer-icon.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Politician</td><td>Research Asst.</td><td>Software Developer / Programmer</td><td>Software Consultant</td><td>Singer</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Surgeon"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Surgeon" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Science Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Science Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Science Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Social Worker"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Social Worker" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Sportsman"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Sportsman" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/tennis_player_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Student"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Student" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/student_icon.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Surgeon</td><td>Science Professional</td><td>Social Worker</td><td>Sportsman</td><td>Student</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Teacher"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Teacher" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/teacher_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Training Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Training Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Writer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Writer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Writer_Male_Light.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Web Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Web Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Web Designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Not Working"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Not Working / Unemployed" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Not Working.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				<tr id="SearchOccupationName"><td>Teacher</td><td>Training Professional</td><td>Writer</td><td>Web Designer</td><td>Not Working</td></tr>
				
				</table>
					
				</div>
			</div>
			
			<div id="rightMain" style="background-color: bisque;margin-top: -1200px;border: none;">
			<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">People You May Know</h3>
			<div id="OutsidepeopleMayKnw">
				<div id="peopleMayKnw">

					<table width=100%>
						
						<c:if test="${!empty knownPeopleList}">
							<c:forEach items="${knownPeopleList}" var="knownPeople">
								<c:if test="${loginUser.email != knownPeople[0]}">
								<tr>
								<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
									<input type="hidden" name="friendsEmailId" value="${knownPeople[0]}">
									<td>
										<img src="${pageContext.request.contextPath}/resources/ProfileImages/${knownPeople[3]}"
												height="30" width="30">
									</td>
									<td><input id="MayKnowUserName" title="View Profile of ${knownPeople[1]} ${knownPeople[2]}" type="submit" value="${knownPeople[1]} ${knownPeople[2]}"><br></td>	
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
									</c:if>
								
							</c:forEach>
						</c:if>
					</table>
				</div>
				</div>
				
				<%-- <form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
					<table>
						<tr>
							<td><input id="SearchByProTxt" type="text" name="SearchDatabyprofession" placeholder="Search People By Profession"></td>
							<td><input id="VUVsearchByProBtn" type="submit" value="search"></td>
						</tr>
						<tr>
							<td></td>
							<td><a href="SearchPeopleByProfession">more.....</a></td>
						</tr>
					</table>
				</form> --%>
				
				<h3 style="background-color:#FF6300; font-family: vardana; margin-top: 0px;">AdvertiseMents</h3>
				<div id="OutsideRightMessage">
					<div id="InsideRightMessage">
						
						<div style="width: 292px;height: 270px;">
							<img src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 1.jpg" name="slide" width="292" height="270"/>
                        </div>
                        
                            <script>
                                
                                //variable that will increment through the images
                                var step=1
                               
                                function slideit(){
                                    //if browser does not support the image object, exit.
                                    if (!document.images)
                                        return
                                    document.images.slide.src=eval("image"+step+".src")
                                    
                                    if (step<6 )
                                       	step++
                                       
                                    else
                                        step=1
                                        
                                    //call function "slideit()" every 2.5 seconds
                                    setTimeout("slideit()",9900)
                                }
                                slideit()
                                
                            </script>
						
						</div>
					</div>
				</div>
		</div>
		
		<div id="footer">
			<div id="footer-box">
				<div class="footer_left" style="margin-left: -200px;">
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
							<td height="23"><div align="right">Email &nbsp-</div></td>
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