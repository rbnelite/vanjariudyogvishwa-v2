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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.4.4.min.js" />"></script>
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
	flag="n";}
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
}



function showSpanEdit(id)
{
	var spanComment=document.getElementById(id);
	spanComment.style.display="none";
	var spanEdit=document.getElementById("con"+id);
	spanEdit.style.display="block";
	}
function emptyEditerror(id1)
{alert("come");
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
</script>

<style type="text/css">
#anchor {
	margin-left: 80px;
	font-family: white;
	text-decoration: none;
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
height:125px;	

}
#InsideRightMessage {
	border-radius: 3px;
	width: 300px;
	height: 645px;
	background-color: bisque;
	float: right;
	border: 1px solid gray;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 8px;
}

#OutsideRightMessage {
	border-radius: 3px;
	width: 300px;
	height: 645px;
	background-color: bisque;
	float: right;
	border: 1px solid gray;
	overflow: hidden;
}

#leftMainHome {
	float: left;
	width: 290px;
	height: 350px;
	overflow: auto;
	/* border-radius: 3px; */
	background-color: bisque;
	/* border: 1px solid gray; */
	padding-right: 27px;
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

#ShowStatusUpdet4One{
    width: 650px;
    margin-top: 10px;
    margin-left: 75px;
    float: left;
    height: auto;
    border-top: 4px solid Red;
    border-right: 4px solid Red;
    border-bottom: 1px solid Red;
    border-left: 1px solid Red;
    background-color: bisque;
   
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
	
		<div id="main" style="background-color: bisque">
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
							style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>

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
				<a id="anchor" href="Home"><font color="indigo">Home</font> </a> <a
					id="anchor" href="Profile"><font color="white">My
						Profile</font> </a> <a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()"><font
					color="white">Notification</font><font color="red">${fn:length(NotificationList)}</font> </a> <a id="anchor" href="#"
					onclick="DisplayRequestBlockPro()"><font color="white">Requests</font><font color="red">${fn:length(friendRequestList)}</font>
				</a> <a id="anchor" href="#" onclick="return DisplaySettingBlock()"><font
					color="white">Setting</font></a> <a id="anchor" href="logoutUser"><font
					color="white">LogOut</font> </a>
			</div>
			
			<div id="leftMain" style="background-color: bisque">
				<div id="OutsideleftMainHome">
					<div id="leftMainHome">
					<table width=100%>
								<th style="background-color: #fab039"><font color="white">Upcoming
										Events</font></th>
						<c:if test="${!empty eventstList}">

							
								<c:forEach items="${eventstList}" var="myEvents">
								
									<tr>
										<td align="left"><font color="orange">${myEvents[1]} ${myEvents[2]}</font>
											created an event :${myEvents[0]}</td>
									</tr>
								</c:forEach>
							
						</c:if>
						</table>
					</div>
				</div>

				<div id="leftMain2">
					<table width=100%>
						<th style="background-color: #fab039"><font color="white">Links</font></th>
					</table>
					<br> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/message-1.png"
						title="Message" height="32" width="32"><a
						style="float: left;" href="message"><h4>
							<font color="#00cccc">Message</font>
						</h4></a> <img style="float: right;"
						src="${pageContext.request.contextPath}/resources/images/event.png"
						title="Events" height="32" width="32"><a
						style="float: right;" href="Events"><h4>
							<font color="#00cccc">Events</font>
						</h4></a> <br> <br> <br> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/photo.png"
						title="Photos" height="32" width="32"><a
						style="float: left;" href="Photos"><h4>
							<font color="#00cccc">Photos</font>
						</h4></a> <br> <br> <br> <img style="float: right;"
						src="${pageContext.request.contextPath}/resources/images/product1.png"
						title="My Products" height="32" width="32"><a
						style="float: right;" href="Product">
						<h4>
							<font color="#00cccc">Products</font>
						</h4>
					</a> <img style="float: left;"
						src="${pageContext.request.contextPath}/resources/images/friends1.png"
						title="Friend's" height="32" width="32"><a
						style="float: left;" href="FriendList">
						<h4>
							<font color="#00cccc">Friends</font>
						</h4>
					</a>
				</div>

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
								style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					
				</table>
			</div>
			<div id="MiddleTop">
			<div id="UpdatePhoto">
				<table>
				<tr>
				<td>
				<a
							onclick="return HideUpdatePhotoBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right; margin-right: -220px; margin-top: 5px;"></a>
				</td>
				</tr>
					<tr>
						<td><form action="/vanjariudyogvishwa-v2/AddPhotos"
								method="POST" enctype="multipart/form-data">
								<input type="file" name="photoPath"><input type="submit"
									value="Upload">
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
					<textarea name="status" rows="2" cols="95" style="resize: none;" onkeypress="return abc1(event)"></textarea>
					<br>
					<table align="right" width="70%">
						<tr>
							<td><font color="purple">Text</font></td>
						
							<td><a href="#" style="text-decoration: none;"
								onclick="return DisplayUPdatePhotoBlock()"><font color="purple">Photo</font></a></td>
							
							
							<input type="hidden" name="usermail" value="${loginUser.email}">
							<td><input type="submit" value="POST"

								style="margin-right: 30px;" class="buttonclr"
								onclick="return abc()">

							</td>
						</tr>
					</table>
				</form>
			</div>
			<div id="outsidemiddleHome" style="margin-right: 300px;">
				<div id="middleHome">
					
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
											<td align="left">${notifStatus[0].status}</td>
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
													style="width: 440px; height: 20px; margin-top: 10px; margin-left: -30px">
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											<tr>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${notifStatus[0].id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="MyReply" value="true">
															 <input	type="submit" value="Like" class="LikeUnlikeBtn">
														0
													</form>
												</td>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${notifStatus[0].id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="MyReply" value="false">
															 <input	type="submit" value="UnLike" class="LikeUnlikeBtn">
														 0
													</form>
												</td>
												<td>Comments 0</td>
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
											<td align="left">${status11.status}</td>
										</tr>
										<tr>
											
											<td align="right" colspan="2"><font color="gray" size="2">${status11.statusDate}</font></td>
										</tr>
									</table>
									<c:if test="${!empty status11.comments}">
										<c:forEach items="${status11.comments}" var="myComment">

											<div id="Showcomment"
												style="border: 1px solid bisque; margin-top: 5px">

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
																</font><input type="button"
																	style="width: 50px; height: 20px; float: right; margin-top: -4px; background-color: #fab039; border-style: outset;"
																	value="edit" onclick="showSpanEdit('${myComment.id}')">
																	<br> <span id="${myComment.id}">${myComment.comment}</span>
																	<span id="con${myComment.id}" style="display: none;">
																		<input type="hidden" name="id" value="${myComment.id}">

																		<input type="text" name="commenttext" id="comment${myComment.id}"
																		value="${myComment.comment}"
																		style="width: 440px; height: 20px; margin-top: 10px; margin-left: 5px" >
																		<input type="submit"
																		style="width: 50px; height: 20px; float: right; margin-bottom: -5px; background-color: #fab039; border-style: outset;"
																		value="post" onclick="return emptyEditerror('${myComment.id}')">
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
													style="width: 440px; height: 20px; margin-top: 10px; margin-left: -30px">
													<!-- <input type="submit" id="commentsubmit" style="border: none; background: none; display: none;" > -->
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											<tr>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
										<!-- Code for Like Count Start here -->
														
															<c:set var="LikeCount" value="0"></c:set>
														<c:if test="${!empty likeStatusList || empty likeStatusList}">
															<c:forEach items="likeStatusList" var="likeStatus">
																<%-- <c:if test="${likeStatus.statusId == status11.id}"> --%>
																	
																	<c:set var="LikeCount" value="${ikeCount + 1}"></c:set>
																	
																<%-- </c:if> --%>
															</c:forEach>
														</c:if>
														
										<!-- Code for Like Count End here -->
														<input type="hidden" name="statusId" value="${status11.id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="MyReply" value="true">
															 <input	type="submit" value="Like" class="LikeUnlikeBtn">
														${LikeCount}
													</form>
												</td>
												<td>
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${status11.id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="MyReply" value="false">
															 <input	type="submit" value="UnLike" class="LikeUnlikeBtn">
														 0
													</form>
												</td>
												<td>Comments 0</td>
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
	</center>
</body>
</html>
