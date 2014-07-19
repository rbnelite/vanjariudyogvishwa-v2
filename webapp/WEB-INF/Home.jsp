<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : Anil
--%>
<%@ page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Home Page : Vanjari Udyog Vishwa</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/autocomplete.css" />" rel="stylesheet">

<script src="<c:url value="/resources/js/jquery-1.4.4.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.autocomplete.js" />"></script>
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>

<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<!-- <script type="text/javascript">
$(function() {
	
setTimeout(function() { $("#testdiv").fadeOut(1500); }, 3000)

$('#btnclick').click(function() {
$('#testdiv').show();
setTimeout(function() { $("#testdiv").fadeOut(1500); }, 3000)
})
})
</script> -->

<script type="text/javascript">
//code for validation status post for blank code
var flag="";
function abc1(evt){
	
	 var charCode=(evt.which) ? evt.which :event.keyCode;
	
if(charCode==32 && (flag=="n" || flag==""))
	{
		flag="n";
	}
else
	flag="y";
if(charCode==8) flag="";
}


function abc(){
	 var status1=document.myform.status.value;
		 if(status1.length==0|| flag=="n")
		 {
		   /* alert("please enter something");   */
		 return false;
		 }	
}

function dispimgUploadBtn(){
	var btn=document.getElementById("imgUploadBtn");
	btn.style.display='block';
}

function DisplayChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='block';
}

function HideChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='none';
}

function DisplayUPdatePhotoBlock()
{
   var updatePhoto=document.getElementById("UpdatePhoto");
   updatePhoto.style.display='block';
}
function HideUpdatePhotoBlock()
{
	 var updatePhoto=document.getElementById("UpdatePhoto");
	   updatePhoto.style.display='none';
	   var btn=document.getElementById("imgUploadBtn");
		btn.style.display='none';
}



function showSpanEdit(id)
{
	var spanComment=document.getElementById(id);
	spanComment.style.display="none";
	var spanEdit=document.getElementById("con"+id);
	spanEdit.style.display="block";
}
function hideSpanEdit(id)
{
	var spanComment=document.getElementById(id);
	spanComment.style.display="block";
	var spanEdit=document.getElementById("con"+id);
	spanEdit.style.display="none";
}

function emptyEditerror(id1)
{
	var commenttext=document.getElementById("comment"+id1).value;
	if(commenttext==null || commenttext=="")
		{
		 alert("please check the comment");
		return false;
		}
	return true;
	}
function jumpcomment(NotificationId)
{
/* alert(NotificationId); */
document.getElementById("notificationId").value=NotificationId;


	var temp=document.getElementById("submit1").click();
		}
function errorComment()
{
	alert("kkkk");
	var temp=document.getElementById("commentt").value;
	alert(temp);
	if(temp=="" || temp==null)
	{
		alert("please enter the comment"); 
	return false;
   }
	document.getElementById("commentsubmit").click();
	return true;
	 }
	 
function setbg(color)
{
	document.getElementById("styledTextArea").style.background=color;
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


<style type="text/css">

#oldnotification:hover, #close:hover
{
cursor: pointer;
}

#imgUploadBtn{
	display: none;
}
#ChangePhotoHome {
	border-radius: 5px;
	width: 300px;
	height: 100px;
	background-color: bisque;
	display: none;
	margin-left: 1090px;
	border: 1px solid gray;
	position: absolute;
	margin-top: 130px;
}
#UpdatePhoto{
display: none;
background-color:#fab039;
width:790px;	
position: absolute;
height:199px;	

}
#InsideRightMessage {
	width: 292px;
	height: 270px;
	background-color: yellow;
	margin-top: -20px;
}

#OutsideRightMessage {
	border-radius: 3px;
	width: 300px;
	height: 830px;
	background-color: transparent;
	float: right;
}

#leftMainHome {
	float: left;
	width: 290px;
	height: 350px;
	overflow: auto;
	/* border-radius: 3px; */
	background-color: bisque;
	/* border: 1px solid gray; */
	padding-right: 30px;
}

#OutsideleftMainHome {
	float: left;
	width: 300px;
	height: 350px;
	overflow: hidden;
	background-color: bisque;
	margin-top: -20px;
	/* border: 1px solid gray; */
}

#ShowStatusUpdet4One{
    width: 785px;
    margin-top: 10px;
    float: left;
    height: auto;
    background-color: rgba(175, 17, 233, 0.07);
    border: 2px solid red;
   
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
#styledTextArea{
	width: 666px;
	height: 120px;
	border: 3px solid #cccccc;
	padding: 5px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	/* font-family: Tahoma, sans-serif; */
	background-color:rgba(228, 243, 245, 1);
	background-position: bottom right;
	background-repeat: no-repeat;
	border-radius:8px;
}
#SearchByProTxt{
	width:200px;
	height:30px;
	margin-top:10px;
	border: 1px solid gray;
	border-radius:5px;
	background-color: rgba(246, 212, 212, 0.42);
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
#SearchByProTxt:HOVER{
	width:200px;
	height:30px;
	border: 2px solid red;
	border-radius:5px;
	background-color:white;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
</style>
<style type="text/css">
    	 input[type="text"]{
				width:235px;
				height:30px;
				border: 1px solid gray;
				border-radius:5px;
				background-color: rgba(246, 212, 212, 0.42);
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			}
			
			input[type="text"]:FOCUS{
				width:235px;
				height:30px;
				border: 2px solid red;
				border-radius:5px;
				background-color:white;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			}
			
			textarea{
				resize: none;
				width:540px;
				height:50px;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				background-color: rgba(246, 212, 212, 0.42);
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
			 
			#VUVloginBtn{
				height: 35px;
				width: 80px;
				color:white;
				background-color: green;
				font-size: 20px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				border-radius: 6px;
				border: none;
			}
			#VUVloginBtn:HOVER{
				height: 35px;
				width: 80px;
				color:black;
				background-color: rgba(188, 26, 249, 0.75);
				font-size: 20px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				border-radius: 6px;
				border: none;
				cursor: pointer;
			}
    </style>

</head>

<body>
	<center>
	
		<div id="main" style="background-color: bisque">
			<div id="Header">
				<form action="/vanjariudyogvishwa-v2/SearchResult">
				<div style="">
					<input id="SearchData" type="text" name="SearchData"
						placeholder="Search for people, Place, Events....." style="height: 25px; width: 250px; border-radius:5px; border: none;"/>
					<input id="VUVloginBtn" type="submit" value="Search">
						<%-- style="margin-left :-7px ;height: 36px;width: 94px; background-image: url('${pageContext.request.contextPath}/resources/icons/search-Button-Logo.png');"> --%>
				</div>
				</form>
				<label
					style="margin-left: 110px; margin-right: 5px; margin-top: -30px; float: right;">WelCome
					!<b> ${loginUser.firstName} ${loginUser.lastName}</b>
				</label> <br>
				<div id="profile_photo" style="margin-top: -30px;">
					<c:if test="${! empty ProfileImageList}">
						<c:forEach items="${ProfileImageList}" var="ProfileImage">
							<img width="140px" height="140px"
								src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
							<br>&nbsp;&nbsp;&nbsp; <a href="#"
								onclick="return DisplayChangePhotoBlock()">Change Photo</a>

						</c:forEach>
					</c:if>
					<c:if test="${empty ProfileImageList}">
						<img width="140px" height="140px"
							src="${pageContext.request.contextPath}/resources/ProfileImages/DefaultProfileImg.png">
						<br>&nbsp;&nbsp;&nbsp; <a href="#"
							onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:if>

				</div>

				<div id="ChangePhotoHome">
					<form action="/vanjariudyogvishwa-v2/UpdateProfileImage"
						method="post" enctype="multipart/form-data">
						<input type="hidden" name="JspPageName" value="Home"> <a
							onclick="return HideChangePhotoBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>

						<table>
							<tr>
								<td>Pick file : <input type="file"
									name="updateProfileImage" size="50" /></td>
							</tr>
							<tr>
								<td colspan="2"><br>
							</tr>
							<tr>
								<td><input type="submit" value="Upload" name=""></td>
								<td></td>
							</tr>
						</table>
					</form>
				</div>

			</div>
			<div id="hiderMenu">
				<a id="anchor" href="Home"><font color="#E45FF2">Home</font> </a> 
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="message">Message</a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -600px" href="logoutUser">LogOut</a>
			</div>
			
			<div id="leftMain">
				<h3 style="background-color: rgba(143, 250, 57, 0.60); margin-top: 0px; font-family: vardana;">Upcoming Events</h3>
				<div id="OutsideleftMainHome">
					<div id="leftMainHome">
					<table width=100%>
								
						<c:if test="${!empty eventstList}">
								<c:set var="eventCount" value="0"></c:set>
							
								<c:forEach items="${eventstList}" var="myEvents">
									<c:set var="eventCount" value="${eventCount + 1}"></c:set>
									<c:choose>
										<c:when test="${eventCount % 2==0}">
									<tr>
									
										<td align="left"><font color="orange">${myEvents[1]} ${myEvents[2]}</font> : ${myEvents[0]}</td>
									</tr>
									</c:when>
									<c:otherwise>
										<tr>
											<td align="left"><font color="orange">${myEvents[1]} ${myEvents[2]}</font> : ${myEvents[0]}</td>
										</tr>
									</c:otherwise>
									</c:choose>
								</c:forEach>
							
						</c:if>
						</table>
					</div>
				</div>
				<h3 style="background-color: rgba(143, 250, 57, 0.60); margin-top: 0px; font-family: vardana;">Links</h3>
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
				
				<div id="leftMain3">
					<h3 style="background-color: rgba(143, 250, 57, 0.60); margin-top: 0px; font-family: vardana; ">Links</h3>
				</div>
				

			</div>

			<div id="NotificationTopHome">
				<div id="InsideNotificationTopHome">
				<table width="100%">
					<th style="background-color: #fab039"><font color="white">Notification</font>
						<a onclick="return DisableNotificBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close"  style="width: 40px; height: 40px; float: right;"></a></th>
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
				<table style="float: right;"><tr><td><input type="submit"  id="oldnotification" style="border: none; background: none;" value="See Old Notifications"></td></tr></table></form>
			</div>
			</div>
			<div id="RequestTopHome">
				<table width=100%>
					<th colspan=3 style="background-color: #fab039"><font
						color=white> Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close"  style="width: 40px; height: 40px; float: right;"></a></th>
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
								id="close"  style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					
				</table>
			</div>
			<div id="MiddleTop" style="height: 200px">
			<div id="UpdatePhoto">
				<table>
				<tr>
				<td>
				<a
							onclick="return HideUpdatePhotoBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close"  style="width: 40px; height: 40px; float: right; margin-right: -270px;"></a>
				</td>
				</tr>
					<tr>
						<td><form action="/vanjariudyogvishwa-v2/AddPhotos"
								method="POST" enctype="multipart/form-data">
								<input id="VUVloginBtn" type="file" name="photoPath" onclick="return dispimgUploadBtn()">
								<input id="imgUploadBtn" id="VUVloginBtn" type="submit" value="Upload">
							</form></td>
					</tr>
				</table>
			</div>
				<form name="myform" action="/vanjariudyogvishwa-v2/Status"
					method="post">
					<table align="left">
						<tr>
							<td>Update Status/Photo</td>
						</tr>
					</table>
					<br>
					<textarea name="status" id="styledTextArea" placeholder="Enter your Status here..." rows="2" cols="95" style="resize: none;" onkeypress="return abc1(event)" onfocus="setbg('white');" onblur="setbg('rgba(228, 243, 245, 1)')"></textarea>
					<br>
					<table align="right" width="70%">
						<tr>
							<td><font color="purple">Text</font></td>
						
							<td><a href="#" style="text-decoration: none;"
								onclick="return DisplayUPdatePhotoBlock()"><font color="purple">Photo</font></a></td>
							
							
							<input type="hidden" name="usermail" value="${loginUser.email}">
							<td><input type="submit" value="Post"

								style="margin-right: -20px;" class="buttonclr"
								onclick="return abc()">

							</td>
						</tr>
					</table>
				</form>
			</div>
			<div id="outsidemiddleHome" style="margin-right: 300px; height: 985px">
				<div id="middleHome" style="height: 985px;">
					
					<!-- View perticular Notification Start here -->
				
					
					<c:if test="${!empty NotificationStatusList}">
					<c:forEach items="${NotificationStatusList}" var="notifStatus">
					
					<div id="ShowStatusUpdet4One">
								<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${notifStatus[0].profileImages.getDisplayPhoto()}"
										height="72" width="70">
								</div>

								<div class="statusUserName"
									style="float: left; margin-left: 10px;">
									<font color="green">${notifStatus[0].user.getDisplayName()}</font>
								</div>
								<br>

								<div class="StatusContent">
									<table width=100%>

										<tr>
											<td align="left"><pre style="font-family: Tahoma, sans-serif;">${notifStatus[0].status}</pre></td>
										</tr>
										<tr>
											
											<td align="right" colspan="2"><font color="gray" size="2">${notifStatus[0].statusDate}</font></td>
										</tr>
									</table>
									<c:if test="${!empty notifStatus[0].comments}">
										<c:forEach items="${notifStatus[0].comments}" var="myComment">

											<div id="Showcomment"
												style="border: 1px solid bisque; margin-top: 5px">

												<div class="commentBoxImage">
													<img
														src="${pageContext.request.contextPath}/resources/ProfileImages/${myComment.profileImages.getDisplayPhoto()}"
														height="42" width="40">
												</div>

												<div>
													
														<table width=90%>
															<tr>
																<td align="left"><font color="green">${myComment.user.displayName}
																</font>
																	<br> ${myComment.comment}</td>
															</tr>
															<tr>
																<td><font color="blue" size="0.5"></font></td>
															</tr>
														</table>
													
												</div>
											</div>
										</c:forEach>
									</c:if>

									<div id="commentBox">
										<div class="commentBoxImage">
											<c:if test="${! empty ProfileImageList}">
													<c:forEach items="${ProfileImageList}" var="ProfileImage">
													<img
														src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}"
														height="42" width="40">
														</c:forEach>
														</c:if>
								</div>
										<div>
											<form action="/vanjariudyogvishwa-v2/Comment" method="post"
												onKeyPress="return submitenter(this,event)"
												name="commentZone">
												<input type="hidden" name="statusIdForComment"
													value="${notifStatus[0].id}"> <input type="hidden"
													name="whoseComment" value="${loginUser.email}"> <input
													type="text" name="commenttext" id="commentt"
													placeholder="Write a comment and Press Enter...."
													style="width: 535px; height: 20px; margin-top: 10px; margin-left: -50px">
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											<!-- Code for Like Count/Unlike Count Start here -->
												<c:set var="LikeCount4One" value="0"></c:set>
												<c:set var="UnLikeCount4One" value="0"></c:set>
												<c:if test="${!empty notifStatus[0].likeStatus}">
													<c:forEach items="${notifStatus[0].likeStatus}" var="likeStatus">
														<c:if test="${notifStatus[0].id==likeStatus.statusId}">
															<c:if test="${likeStatus.myReply}">
																<c:set var="LikeCount" value="${LikeCount + 1}"></c:set>
															</c:if>
															<c:if test="${! likeStatus.myReply}">
																<c:set var="UnLikeCount" value="${UnLikeCount + 1}"></c:set>
															</c:if>
														</c:if>
														</c:forEach>
														</c:if>
										<!-- Code for Like Count/Unlike Count End here -->
										
											<tr>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${notifStatus[0].id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="true">
															 <table style="margin-top: -10px"><tr><td><input type="submit" value="Like" class="LikeUnlikeBtn"></td> <td><a>${LikeCount}</a></td></tr> </table>
														</form>
												</td>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${notifStatus[0].id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="false">
															 <table style="margin-top: -10px"><tr><td><input type="submit" value="UnLike" class="LikeUnlikeBtn"></td><td><a>${UnLikeCount}</a></td></tr></table>
													</form>
												</td>
												<td>
													<table style="margin-top: -10px"><tr><td><input type="submit" value="Comments" class="LikeUnlikeBtn"></td> <td><a>${fn:length(notifStatus[0].comments)}</a></td></tr> </table>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>		
					
					</c:forEach>
					</c:if>
					
					
					<!-- View perticular Notification End here -->
					
					
					
					<c:if test="${!empty statusList}">
						<c:forEach items="${statusList}" var="status11">
							<div id="ShowStatusUpdet">
								<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${status11.profileImages.getDisplayPhoto()}"
										height="72" width="70">
								</div>

								<div class="statusUserName"
									style="float: left; margin-left: 10px;">
									
									<font color="green">${status11.user.getDisplayName()}</font>
								</div>
								<br>

								<div class="StatusContent">
									<table width=100% >

										<tr>
											<td align="left"><pre style="font-family: Tahoma, sans-serif;">${status11.status}</pre></td>
										</tr>
										<tr>
											
											<td align="right" colspan="2"><font color="gray" size="2">${status11.statusDate}</font></td>
										</tr>
									</table>
									<c:if test="${!empty status11.comments}">
										<c:forEach items="${status11.comments}" var="myComment">

											<div id="Showcomment"
												style="border: 1px solid bisque; margin-top: 1px">

												<div class="commentBoxImage">
													<img
														src="${pageContext.request.contextPath}/resources/ProfileImages/${myComment.profileImages.getDisplayPhoto()}"
														height="42" width="40">
												</div>

												<div>
													<form action="/vanjariudyogvishwa-v2/CommentUpdate"
														method="post">
														<table width=90%>
															<tr>
																<td align="left"><font color="green">${myComment.user.displayName}
																</font>
																<c:if test="${myComment.user.emailId==loginUser.email}">
																<input type="button"
																	style="width: 50px; height: 25px; float: right; margin-top: 10px;cursor: pointer; background-color: transparent; border:none; color: rgba(129, 99, 227, 1); font: 22px cursive MS;"
																	value="edit" onclick="showSpanEdit('${myComment.id}')">
																</c:if>
																	<br> <span id="${myComment.id}">${myComment.comment}</span>
																	<%-- <br><span>${myComment.date}</span> --%>
																	<span id="con${myComment.id}" style="display: none;">
																		<input type="hidden" name="id" value="${myComment.id}">

																		<textarea name="commenttext" id="comment${myComment.id}" style="height: auto;" >
																			<c:out value="${myComment.comment}"/>
																		</textarea>
																		<div style="float: right; margin:4px 40px -3px 0px">
																			<input type="submit" value="Edit" id="editCommentBtnHome" onclick="return emptyEditerror('${myComment.id}')">
																			<input type="reset" value="Cancel" id="editCommentResetBtn" onclick="hideSpanEdit('${myComment.id}')">
																		</div>
																</span></td>
															</tr>
															<tr>
																<td><font color="blue" size="0.5"></font></td>
															</tr>
														</table>
													</form>
												</div>
											</div>
										</c:forEach>
									</c:if>
									<div id="commentBox">
										<div class="commentBoxImage">
											<c:if test="${! empty ProfileImageList}">
													<c:forEach items="${ProfileImageList}" var="ProfileImage">
													<img
														src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}"
														height="42" width="40">
														</c:forEach>
														</c:if>
										</div>
										<div>
											<form action="/vanjariudyogvishwa-v2/Comment" method="post"
												onKeyPress="return submitenter(this,event)"
												name="commentZone">
												<input type="hidden" name="statusIdForComment"
													value="${status11.id}"> <input type="hidden"
													name="whoseComment" value="${loginUser.email}"> <input
													type="text" name="commenttext" id="commentt"
													placeholder="Write a comment and Press Enter...."
													style="width: 535px; height: 20px; margin-top: 10px; margin-left: -50px">
													<!-- <input type="submit" id="commentsubmit" style="border: none; background: none; display: none;" > -->
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											
											<tr>
												
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
										<!-- Code for Like Count/Unlike Count Start here -->
												<c:set var="LikeCount" value="0"></c:set>
												<c:set var="UnLikeCount" value="0"></c:set>
												<c:if test="${!empty status11.likeStatus}">
													<c:forEach items="${status11.likeStatus}" var="likeStatus">
														<c:if test="${status11.id==likeStatus.statusId}">
															<c:if test="${likeStatus.myReply}">
																<c:set var="LikeCount" value="${LikeCount + 1}"></c:set>
															</c:if>
															<c:if test="${! likeStatus.myReply}">
																<c:set var="UnLikeCount" value="${UnLikeCount + 1}"></c:set>
															</c:if>
														</c:if>
														</c:forEach>
														</c:if>
										<!-- Code for Like Count/Unlike Count End here -->
															 <input type="hidden" name="statusId" value="${status11.id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="true">
															<table style="margin-top: -10px"><tr><td><input type="submit" value="Like" class="LikeUnlikeBtn"></td> <td><a>${LikeCount}</a></td></tr> </table>
													</form>
												</td>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
															<input type="hidden" name="statusId" value="${status11.id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="false">
															 <table style="margin-top: -10px"><tr><td><input type="submit" value="UnLike" class="LikeUnlikeBtn"></td><td><a>${UnLikeCount}</a></td></tr></table>
													</form>
												</td>
												
												<td>
													<table style="margin-top: -10px"><tr><td><input type="submit" value="Comments" class="LikeUnlikeBtn"></td> <td><a>${fn:length(status11.comments)}</a></td></tr> </table>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<div id="rightMain" style="background-color: bisque">
			<h3 style="background-color: rgba(143, 250, 57, 0.60); font-family: vardana; margin-top: 0px;">People You May Know</h3>
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
										<input type="hidden" name="JspPageName" value="Home">
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
				<form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
					<table>
						<tr>
							<td><input id="SearchByProTxt" type="text" name="SearchDatabyprofession" placeholder="Search People By Profession"></td>
							<td><input id="VUVsearchByProBtn" type="submit" value="search"></td>
						</tr>
					</table>
				</form>
				<h3 style="background-color:rgba(143, 250, 57, 0.60); font-family: vardana; margin-top: 0px;">AdvertiseMents</h3>
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
