<%-- 
    Document   : Photos
    Created on : Dec 10, 2013, 6:18:04 PM
    Author     : sawantmanojm@gmail.com
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
        <script src="<c:url value="/resources/js/ManojSawant.js" />"></script>
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
function dispimgUploadBtn(){
	var btn=document.getElementById("imgUploadBtn");
	btn.style.display='block';
}
</script>
<script type="text/javascript">
function sendRequest(RequestTo){
	
	sendFriendRequest(RequestTo);
	return false;
}

function sendFriendRequest(RequestTo){
	RequestFrom="";
	requestStatus="";
	reqDate="";
	var parameters = "requestTo="+RequestTo+"&requestFrom="+RequestFrom+"&requestDate="+reqDate+"&requestStatus="+requestStatus+"";
	
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		myfirstReq=new XMLHttpRequest();
	}
	else
	  {
		// code for IE6, IE5
		myfirstReq=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	myfirstReq.open("POST", "/vanjariudyogvishwa-v2/sendFriendRequest", true);
	
	//Send the proper header information along with the request
	myfirstReq.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	myfirstReq.setRequestHeader("Content-length", parameters .length);
	myfirstReq.setRequestHeader("Connection", "close");
	
	myfirstReq.onreadystatechange=function()
	  {
	  if (myfirstReq.readyState==4 && myfirstReq.status==200)
	    {
		  		document.getElementById("people"+RequestTo).style.display='none';
	    } 
	  };
		myfirstReq.send(parameters);
	
}
</script>		
<script type="text/javascript">
            
            var image1=new Image()
            image1.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 2.jpg"
            var image2=new Image()
            image2.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 3.jpg"
            var image3=new Image()
            image3.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 4.jpg"
            var image4=new Image()
            image4.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 5.jpg"
            var image5=new Image()
            image5.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 6.jpg"
            var image6=new Image()
            image6.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 7.jpg"
            
</script>

<script type="text/javascript">
function validatePhotoUploadForm(){
	var pName=document.getElementById("myPhotoTitle").value;
	var pDetails=document.MyPhotoForm.photoDescription.value;
	var newPhoto=document.MyPhotoForm.photoPath.value;
	
	if(pName==null || pName==""){
		document.getElementById("myPhotoError").innerHTML="Photo Name is Required...!!!";
		document.getElementById("myPhotoTitle").focus();
		return false;	
	}
	else if (pDetails==null || pDetails=="") {
		document.getElementById("myPhotoError").innerHTML="Photo Description is Required...!!! ";
		return false;
	}
	else if(newPhoto==null || newPhoto==""){
		document.getElementById("myPhotoError").innerHTML="Select Photo to Upload...!!! ";
		return false;
	}
	else {
		return true;
	}
}
function hideMyPhotoError() {
	document.getElementById("myPhotoError").innerHTML="";
}
function hideMyStatusError() {
	document.getElementById("MyStatusError").innerHTML="";
}
</script>

<style type="text/css">
#MyStatusError{
	color: red;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

#myPhotoError{
	color: red;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

#imgUploadBtn {
    display: none;
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
    
#rightMain{
    margin-top: -1195px;
    width: 300px;
    height: 1000px;
    background-color: #FFE4C4;
    float: right;
    border-radius: 0px;
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
    max-height: 256px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    overflow: hidden;
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
	background-color: bisque;
	margin-top: -2px;
	/* border: 1px solid gray; */
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

#styledTextArea{
	width: 666px;
	height: 110px;
	border: 1px solid rgba(0, 0, 0, 0.3);
	padding: 5px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	/* font-family: Tahoma, sans-serif; */
	background-color: rgba(255, 255, 255, 0.69);
	background-position: bottom right;
	background-repeat: no-repeat;
	border-radius:8px;
}
#styledTextArea:FOCUS{
	width: 666px;
	height: 110px;
	border: 1px solid rgba(28, 87, 227, 0.28);
	padding: 5px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	/* font-family: Tahoma, sans-serif; */
	background-color: rgba(255, 255, 255, 0.9);
	background-position: bottom right;
	background-repeat: no-repeat;
	border-radius:8px;
}
textarea{
	resize: none;
	width:540px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color: rgba(255, 255, 255, 0.09);
	border: 1px solid gray;
	border-radius:5px;
}
textarea:FOCUS{
	resize: none;
	width:540px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color:white;
	border: 1px solid red;
	border-radius:5px;
}
			
#UpdatePhoto{
	width:790px;	
	height:210px;
	background-color:#FFE4C4;
	border: 1px solid rgba(245, 186, 118, 0.8);
	border-radius: 7px;
}
#MyUploadedPhotoUi{
	width:500px;
	height:500px;
	border: 1px solid red;
	border-radius:10px;
}
#insideShowPhoto{
	/* background-color: aqua; */
	height: 960px;
	width: 100%;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 10px;
}
#outsideShowPhoto{
	/* background-color: blue; */
	height: 960px;
	width: 100%;
	overflow: hidden;
	margin-top: 5px;
	/* border: 1px solid rgba(245, 186, 118, 0.8); */
	border-radius: 7px;
}
input[type="button"][value="Like"]
{
   	background: repeat scroll 0% 0% transparent;
    background-color: rgba(243, 246, 249, 0.43);
    color: black;
    border: 1px solid rgba(255, 165, 0, 0.57);
    border-radius: 5px;
    width: 90px;
    height: 30px;
    text-decoration: none;
    font-size: 17px;
    cursor: default;
}
input[type="button"][value="UnLike"]
{
    background: repeat scroll 0% 0% transparent;
    background-color: rgba(243, 246, 249, 0.43);
    color: black;
    border: 1px solid rgba(255, 165, 0, 0.57);
    border-radius: 5px;
    width: 90px;
    height: 30px;
    text-decoration: none;
    font-size: 17px;
    cursor: default;
}
</style>
		
        <title>Photos | Vanjari Udyog Vishwa</title>
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
                <label style="margin-left:110px; margin-right:5px; float: right;margin-top: -35px">WelCome!<b> ${loginUser.firstName} ${loginUser.lastName}</b></label>
                <br>
                <div id="profile_photo" style="margin-top: -28px;">
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
				<a id="anchor" href="Home">Home</a> 
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession">Members</a>
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
				<div id="leftMain2" style="margin: 0px 0px 8px;">
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
						<td width="84%"><a id="Shortlinks" href="Photos" style="color: #E45FF2;">Photos</a> </td>
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
				
				<div id="leftMain3" style="height: 585px;">
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
				<table style="float: right;">
					<tr><td>
						<a href="Notificationjsp"> See All Notification....</a>
					</td></tr>
				</table>
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
            
            <div id="middlePhotos" style="height: 1195px;">
              
             <div id="UpdatePhoto">
				<form action="/vanjariudyogvishwa-v2/AddPhotos" method="POST" enctype="multipart/form-data" name="MyPhotoForm">
					<table>
				
					<img onclick="return HideUpdatePhotoBlock()"
						src="${pageContext.request.contextPath}/resources/images/close (3).png"
						id="close"  style="width: 40px; height: 40px; float: right;">
				
						<tr>
							<td><input id="myPhotoTitle" type="text" name="photoTitle" placeholder="Enter Photo Title here..." style="width: 444px;margin-top: 4px;border-radius:7px;" onkeypress="return hideMyPhotoError();"></td>
						</tr>
						<tr><td id="myPhotoError"></td></tr>
						<tr>
							<td>
								<textarea name="photoDescription" id="styledTextArea" id="myPhotoDetails" placeholder="Enter Photos details here..." rows="2" cols="95" style="resize: none;height: 72px;" onkeypress="return hideMyPhotoError();"></textarea><br>
							</td>
						</tr>
						<tr>
							<td>
								<input class="LikeUnlikeBtn" id="myPhotobrowsBtn" type="file" name="photoPath" onclick="return dispimgUploadBtn()">
								<input id="imgUploadBtn" class="LikeUnlikeBtn" id="VUVloginBtn" type="submit" value="Upload" style="float: right;" onclick="return validatePhotoUploadForm();">
							
							</td>
						</tr>
					</table>
				</form>
			</div>
		
		<div id="outsideShowPhoto">
		<div id="insideShowPhoto">
			<c:if test="${!empty userPhotosList}">


					<c:forEach items="${userPhotosList}" var="userPhotos">
						<table width=98% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px;margin-bottom: 5px;">
							<tr>
								<td width="40"><img src="${pageContext.request.contextPath}/resources/ProfileImages/DefaultProfileImg.png"height="80" width="80" style="margin: 4px auto auto 4px;border-radius: 20px;border: 3px solid #F00;"></td>
								<td><a style="font-size: 27px;color: black;"> ${userPhotos[4]} ${userPhotos[5]} </a><br>
									<a style="font-size: 22px;color: rgba(42, 163, 240, 0.68);">${userPhotos[0]}</a></td>
							</tr>
							<tr>
								<td></td>
								<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Photo Description :</b> ${userPhotos[1]}</a></td>
							</tr>
							<tr>
								<td></td>
								<td><font color="gray" size="2" style="float: right;margin-right: 25px;margin-bottom: 10px;">${userPhotos[2]}</font></td>
							</tr>
							<tr>
								<td></td>
								<td>
									<img id="MyUploadedPhotoUi" src="${pageContext.request.contextPath}/resources/photos/${userPhotos[3]}" alt="description"/>
								</td>
							</tr>
							<!-- Like Unlike Photo Start Here -->
							<tr>
								<td></td>
								<td>
								<form action="/vanjariudyogvishwa-v2/LikePhoto" method="post">
									<c:set var="LikeCount" value="0"></c:set>
									<c:set var="UnLikeCount" value="0"></c:set>
									<c:set var="DispLike" value="0"></c:set>
									<c:set var="DispUnLike" value="0"></c:set>
									
									<c:if test="${!empty likePhotoList}">
										<c:forEach items="${likePhotoList}" var="likePhoto">
											<c:if test="${userPhotos[6]==likePhoto.photoId}">
												<c:if test="${likePhoto.myReply}">
													<c:set var="LikeCount" value="${LikeCount + 1}"></c:set>
													<c:if test="${likePhoto.whoLike==loginUser.email}">
														<c:set var="DispLike" value="1"></c:set>
													</c:if>
												</c:if>
												<c:if test="${! likePhoto.myReply}">
													<c:set var="UnLikeCount" value="${UnLikeCount + 1}"></c:set>
													<c:if test="${likePhoto.whoLike==loginUser.email}">
														<c:set var="DispUnLike" value="1"></c:set>
													</c:if>
												</c:if>
											</c:if>
										</c:forEach>
									</c:if>
									
									
										<input type="hidden" name="photoId" value="${userPhotos[6]}">
										<input type="hidden" name="whoLike" value="${loginUser.email}">
										<input type="hidden" name="myReply" value="true">
										<%-- <table style=""><tr><td><input type="submit" value="Like" class="LikeUnlikeBtn"></td> <td><a>${LikeCount}</a></td></tr> </table> --%>
										
										<c:if test="${DispLike=='0' && DispUnLike =='0'}">														
											<table><tr><td><input type="submit" value="Like" class="LikeUnlikeBtn"></td> <td><a>${LikeCount}</a></td></tr> </table>
										</c:if>
										<c:if test="${DispLike=='1' || DispUnLike=='1'}">														
											<table><tr><td><input type="button" value="Like" class="LikeUnlikeBtn" disabled="disabled"></td> <td><a>${LikeCount}</a></td></tr> </table>
										</c:if>
										
									</form>
									<form action="/vanjariudyogvishwa-v2/LikePhoto" method="post">
										<input type="hidden" name="photoId" value="${userPhotos[6]}">
										<input type="hidden" name="whoLike" value="${loginUser.email}">
										<input type="hidden" name="myReply" value="false">
										
										<%-- <table style="margin-top: -34px;margin-left: 120px;"><tr><td><input type="submit" value="UnLike" class="LikeUnlikeBtn"></td><td><a>${UnLikeCount}</a></td></tr></table> --%>
										
										<c:if test="${DispUnLike=='0' && DispLike =='0'}">	
											<table style="margin-top: -34px;margin-left: 120px;"><tr><td><input type="submit" value="UnLike" class="LikeUnlikeBtn"></td><td><a>${UnLikeCount}</a></td></tr></table>
										</c:if>
										<c:if test="${DispUnLike=='1' || DispLike=='1'}">	
											<table style="margin-top: -34px;margin-left: 120px;"><tr><td><input type="button" value="UnLike" class="LikeUnlikeBtn" disabled="disabled"></td><td><a>${UnLikeCount}</a></td></tr></table>
										</c:if>
										
									</form>
								</td>												
							</tr>
							<!-- Like Unlike Photo End Here -->
						</table>
					</c:forEach>

				</c:if>
			</div>
			</div>
			
			</div>
           <div id="rightMain" style="background-color: bisque">
			<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">People You May Know</h3>
			<div id="OutsidepeopleMayKnw">
				<div id="peopleMayKnw">

					<table width=100%>
						
						<c:if test="${!empty knownPeopleList}">
							<c:forEach items="${knownPeopleList}" var="knownPeople">
								<c:if test="${loginUser.email != knownPeople[0]}">
									<tr id="people${knownPeople[0]}">
										<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
											<input type="hidden" name="friendsEmailId" value="${knownPeople[0]}">
											<td>
												<img src="${pageContext.request.contextPath}/resources/ProfileImages/${knownPeople[3]}"
														height="30" width="30">
											</td>
											<td><input id="MayKnowUserName" title="View Profile of ${knownPeople[1]} ${knownPeople[2]}" type="submit" value="${knownPeople[1]} ${knownPeople[2]}"><br></td>	
										</form>
										<form action="/vanjariudyogvishwa-v2/sendFriendRequest"method="post">
											<td>
												<input type="hidden" id="sendRequestToId" name="requestTo" value="${knownPeople[0]}">
												<input type="hidden" id="sendRequestFromId" name="requestFrom" value="${loginUser.email}">
												<input type="submit" value="Connect" class="connectBtn"	style="float: right;" onclick="return sendRequest('${knownPeople[0]}');">
											</td>
										</form>
									</tr>
								</c:if>
								
							</c:forEach>
						</c:if>
					</table>
				</div>
				</div>
				
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
