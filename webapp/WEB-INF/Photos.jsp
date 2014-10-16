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
		<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
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
#leftMain3{
	height: 560px;
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
            <%@include file="header.jsp" %>
            
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
				<%@include file="LeftContainer.jsp" %>

			</div>

			<%@include file="NotificationPopUp.jsp" %>
            
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
				<%@include file="RightContainer.jsp" %>
			</div>
          </div>
          
          <%@include file="footer.jsp" %>
          
    </center>
     </body>
</html>
