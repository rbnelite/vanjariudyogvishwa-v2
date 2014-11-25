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
<title>Home | Vanjari Udyog Vishwa</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/autocomplete.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/ManojSawant.js" />"></script>
<script src="<c:url value="/resources/js/jquery-1.4.4.min.js" />"></script>
<script src="<c:url value="/resources/js/jquery.autocomplete.js" />"></script>
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>

<script type="text/javascript">
//code for validation status post for blank code
var flag="";

function validateMyStatus(){
	var mystatus=document.myform.status;
	 
		 if(mystatus.value==null || mystatus.value=="")
		 {
			document.getElementById("MyStatusError").innerHTML="Please Enter Your Status...!";
			mystatus.focus();
		 	return false;
		 }
		 else{
			 return true;
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
	 

</script>

<script type="text/javascript">
	function editMyStatusReq(statusId){
		document.getElementById("VUVStatus"+statusId).style.display='none';
		document.getElementById("EditVUVStatus"+statusId).style.display='block';
	}
	function cancelEditMyStatusReq(statusId){
		document.getElementById("VUVStatus"+statusId).style.display='block';
		document.getElementById("EditVUVStatus"+statusId).style.display='none';
	}
	function deleteMyStatusReq(sIdToDel){
		document.getElementById("deleteStatusConfirmBox"+sIdToDel).style.display='block';
	}
	function canceldeleteMyStatusReq(sIdToDel){
		document.getElementById("deleteStatusConfirmBox"+sIdToDel).style.display='none';
	}
</script>
	<script type="text/javascript">
		function goEditStatus(statusId){
			goEditMyStatusNow(statusId);
			return false;
		}
		function goDeleteStatus(statusId){
			canceldeleteMyStatusReq(statusId);
			goDeleteMyStatusNow(statusId);
			return false;
		}
	</script>
	<script type="text/javascript">
	
	function goEditMyStatusNow(statusId){
		var tempStat=document.getElementById("newVuvStatus"+statusId).value;
		var statusDate="";
		var usermail="";
		var parameters = "status="+tempStat+"&id="+statusId+"&statusDate="+statusDate+"&usermail="+usermail+"";
		
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
		myfirstReq.open("POST", "/vanjariudyogvishwa-v2/updateStatus", true);
		
		//Send the proper header information along with the request
		myfirstReq.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		myfirstReq.setRequestHeader("Content-length", parameters .length);
		myfirstReq.setRequestHeader("Connection", "close");
		
		myfirstReq.onreadystatechange=function()
		  {		
		  if (myfirstReq.readyState==4 && myfirstReq.status==200)
		    {	
		    	document.getElementById("VUVStatus"+statusId).style.display='block';
			  	document.getElementById("vuvStatusStatus"+statusId).innerHTML=tempStat;
				document.getElementById("EditVUVStatus"+statusId).style.display='none';
		    } 
		  };
			myfirstReq.send(parameters);
	}
</script>
<script type="text/javascript">
function goDeleteMyStatusNow(statusId){
	document.getElementById("MyStatusId"+statusId).style.display='none';
}
</script>
<style type="text/css">
	#editStatusBtn{
		width: 33px;
		height: 30px;
		margin-right:15px;
		cursor: pointer;
		background-image: url('${pageContext.request.contextPath}/resources/images/edit2.png');
		background-color: transparent;
		border:none;
		color: rgba(129, 99, 227, 1);
		font: 22px cursive MS;"
	}
	
	#InstructionDeleteStatus {
	    width: 550px;
	    height: 190px;
	    margin-top: 50px;
	    border: 1px solid #808080;
	    border-radius: 2px;
	    background-color: white;
	}
</style>

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

#oldnotification:hover, #close:hover
{
cursor: pointer;
}
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
background-color:#FFE4C4;
width:790px;	
position: absolute;
height:197px;	

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
	margin-top: -20px;
	/* border: 1px solid gray; */
}
#leftMain3{
	height: 575px;
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
input[type="button"][value="Comments"]
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
<style type="text/css">
    	 	
			textarea{
				resize: vertical;
				width:650px;
				height:inherit;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				background-color: rgba(228, 243, 245, 1);
				border: 1px solid #cccccc;
				border-radius:5px;
				padding-top: 0px;
			    padding-right: 10px;
			    padding-bottom: 0px;
			    padding-left: 10px;
			}
			textarea:FOCUS{
				resize: vertical;
				width:650px;
				height:inherit;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				background-color:white;
				border: 1px solid red;
				border-radius:5px;
				padding-top: 0px;
			    padding-right: 10px;
			    padding-bottom: 0px;
			    padding-left: 10px;
			}

    </style>

</head>

<body>
	<center>
	
		<div id="main" style="background-color: bisque">
			<%@include file="header.jsp" %>
			
			<div id="hiderMenu">
				<a id="anchor" href="Home"><font color="#E45FF2">Home</font> </a>
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
								<input type="file" id="myPhotobrowsBtn" name="photoPath" onclick="return dispimgUploadBtn()">
								<input id="imgUploadBtn" class="LikeUnlikeBtn" id="VUVloginBtn" type="submit" value="Upload" style="float: right;" onclick="return validatePhotoUploadForm();">
							
							</td>
						</tr>
					</table>
				</form>
			</div>
			
			
				<form name="myform" action="/vanjariudyogvishwa-v2/Status"
					method="post">
					<table align="left" style="width: 90%;margin-left: 2%;">
						<tr>
							<td>Update Status/Photo</td>
							<td id="MyStatusError"></td>
						</tr>
					</table>
					<br>
					<textarea name="status" id="styledTextArea" id="myNewStatus" placeholder="Enter your Status here..." rows="2" cols="95" style="resize: none;" onkeypress="return hideMyStatusError();"></textarea>
					<br>
					<table align="right" width="70%">
						<tr>
							<td><font color="purple">Text</font></td>
						
							<td><a href="#" style="text-decoration: none;"
								onclick="return DisplayUPdatePhotoBlock()"><font color="purple">Photo</font></a></td>
							
							
							<input type="hidden" name="usermail" value="${loginUser.email}">
							<td><input type="submit" value="Post" style="margin-right: -20px;
									border-radius:6px;width: 75px;height: 40px;" class="buttonclr"onclick="return validateMyStatus();">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div id="outsidemiddleHome" style="margin-right: 300px; margin-top:0px; height: 985px">
				<div id="middleHome" style="height: 985px;padding-bottom: 55px;padding-right: 55px;">
					
					<!-- View perticular Notification Start here -->
				
					
					<c:if test="${!empty NotificationStatusList}">
					<c:forEach items="${NotificationStatusList}" var="notifStatus">
					<div  id="MyStatusId${notifStatus[0].id}" style="display: block;">
					<div id="ShowStatusUpdet4One">
								<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${notifStatus[0].profileImages.getDisplayPhoto()}"
										height="72" width="70">
								</div>

								<div class="statusUserName" style="float: left; margin-left: 10px;">
									<font color="green">${notifStatus[0].user.getDisplayName()}</font>
								</div>
								<div style="width: 120px; float: right;">
									<c:if test="${notifStatus[0].user.emailId==loginUser.email}"> 
										<input type="button" title="Edit This Status" value="" id="editStatusBtn" onclick="return editMyStatusReq('${notifStatus[0].id}');">
										<input type="button" title="Delete This Status" value="" id="editStatusBtn" onclick="return deleteMyStatusReq('${notifStatus[0].id}');"
												style="background-image:url('${pageContext.request.contextPath}/resources/icons/trash-empty-icon.png'); ">
									</c:if>
								</div>
								
								<div id="deleteStatusConfirmBox${notifStatus[0].id}" style="display: none; position: absolute;margin-left: 130px;">
									<div id="InstructionDeleteStatus">
										<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px; font-size: 21px">Alert...!!! ${notifStatus[0].id}</h3>
										<ol style="text-align: left;">
											<li>Are you Sure ?</li>
											<li> All Comments as well as Like/Unlike Counts related to this Status will be deleted... </li>
											<li>If you Don't want to delete then Click cancel Button.</li>
										</ol>
										<%-- <form action="/vanjariudyogvishwa-v2/deleteStatus" method="post"> --%>
											<input type="submit" value="Delete" class="connectBtn" onclick="return goDeleteStatus('${notifStatus[0].id}');">
											<input type="button" value="Cancel" class="connectBtn" onclick="return canceldeleteMyStatusReq('${notifStatus[0].id}');">
										<%-- </form> --%>
									</div>
								</div>
								
								<div class="StatusContent">
									<table width=100%>

										<tr>
											<td align="left" id="VUVStatus${notifStatus[0].id}">
												<pre id="vuvStatusStatus${notifStatus[0].id}" style="font-family: Tahoma, sans-serif; font-size: 18px;color: #741818">${notifStatus[0].status}</pre>
											</td>
											<td align="left" id="EditVUVStatus${notifStatus[0].id}" style="display: none;">
											<form action="/vanjariudyogvishwa-v2/updateStatus" method="post">
												<textarea id="newVuvStatus${notifStatus[0].id}" name="status" id="styledTextArea" rows="2" cols="95" style="resize: none;">${notifStatus[0].status}</textarea><br>
												<input type="submit" value="Save" class="connectBtn" onclick="return goEditStatus('${notifStatus[0].id}');" style="margin: 15px 15px 10px 480px;">
												<input type="button" value="Cancel" class="connectBtn" onclick="return cancelEditMyStatusReq('${notifStatus[0].id}');">
											</form>
											</td>
											
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
																	<br> <pre style="font-family: Tahoma, sans-serif;color: #605A5A;">${myComment.comment}</pre></td>
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
													style="width: 535px; height: 30px; margin-top: 10px; margin-left: -50px">
													<input type="hidden" name="whoseStatus" value="${notifStatus[0].user.emailId}">
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											<!-- Code for Like Count/Unlike Count Start here -->
												<c:set var="LikeCount4One" value="0"></c:set>
												<c:set var="UnLikeCount4One" value="0"></c:set>
												<c:set var="DispLike4One" value="0"></c:set>
												<c:set var="DispUnLike4One" value="0"></c:set>
												
												<c:if test="${!empty notifStatus[0].likeStatus}">
													<c:forEach items="${notifStatus[0].likeStatus}" var="likeStatus">
														<c:if test="${notifStatus[0].id==likeStatus.statusId}">
															<c:if test="${likeStatus.myReply}">
																<c:set var="LikeCount" value="${LikeCount + 1}"></c:set>
																<c:if test="${likeStatus.whoLike==loginUser.email}">
																	<c:set var="DispLike4One" value="1"></c:set>
																</c:if>
																
															</c:if>
															<c:if test="${! likeStatus.myReply}">
																<c:set var="UnLikeCount" value="${UnLikeCount + 1}"></c:set>
																<c:if test="${likeStatus.whoLike==loginUser.email}">
																	<c:set var="DispUnLike4One" value="1"></c:set>
																</c:if>
															</c:if>
														</c:if>
														</c:forEach>
														</c:if>
										<!-- Code for Like Count/Unlike Count End here -->
										
											<tr>
												<td style="min-width: 100px;">
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${notifStatus[0].id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="true">
															 
															 <c:if test="${DispLike4One=='0' && DispUnLike4One =='0'}}">	
															 	<table><tr><td><input type="submit" value="Like" class="LikeUnlikeBtn"></td> <td><a>${LikeCount}</a></td></tr> </table>
															 </c:if>
															 <c:if test="${DispLike4One=='1' || DispUnLike4One=='1'}">	
															 	<table><tr><td><input type="button" value="Like" class="LikeUnlikeBtn" disabled="disabled"></td> <td><a>${LikeCount}</a></td></tr> </table>
															 </c:if>
														</form>
												</td>
												<td style="min-width: 100px;">
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${notifStatus[0].id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="false">
															 
															 <c:if test="${DispUnLike4One=='0' && DispLike4One=='0'}">	
															 	<table><tr><td><input type="submit" value="UnLike" class="LikeUnlikeBtn"></td><td><a>${UnLikeCount}</a></td></tr></table>
															 </c:if>
															 <c:if test="${DispUnLike4One=='1' || DispLike4One=='1'}">	
															 	<table><tr><td><input type="button" value="UnLike" class="LikeUnlikeBtn" disabled="disabled"></td><td><a>${UnLikeCount}</a></td></tr></table>
															 </c:if>
															 
													</form>
												</td>
												<td style="min-width: 100px;">
													
													<table><tr><td><input type="button" value="Comments" class="LikeUnlikeBtn" disabled="disabled"></td> <td><a>${fn:length(notifStatus[0].comments)}</a></td></tr> </table>
													
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>		
						</div>
					</c:forEach>
					</c:if>
					
					
					<!-- View perticular Notification End here -->
					
					
					
					<c:if test="${!empty statusList}">
						<c:forEach items="${statusList}" var="status11">
							<div id="MyStatusId${status11.id}" style="display: block;">
							<div id="ShowStatusUpdet">
								<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${status11.profileImages.getDisplayPhoto()}"
										height="72" width="70">
								</div>

								<div class="statusUserName" style="float: left; margin-left: 10px;">
									<font color="green">${status11.user.getDisplayName()}</font>
								</div>
								
								<div style="width: 120px; float: right;">
									<c:if test="${status11.user.emailId==loginUser.email}">
										<input type="button" title="Edit This Status" value="" id="editStatusBtn" onclick="return editMyStatusReq('${status11.id}');">
										<input type="button" title="Delete This Status" value="" id="editStatusBtn" onclick="return deleteMyStatusReq('${status11.id}');"
												style="background-image:url('${pageContext.request.contextPath}/resources/icons/trash-empty-icon.png'); ">
									</c:if>
								</div>
								
								<div id="deleteStatusConfirmBox${status11.id}" style="display: none; position: absolute;margin-left: 130px;">
									<div id="InstructionDeleteStatus">
										<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px; font-size: 21px">Alert...!!! ${status11.id}</h3>
										<ol style="text-align: left;">
											<li>Are you Sure ?</li>
											<li> All Comments as well as Like/Unlike Counts related to this Status will be delete... </li>
											<li>If you Don't want to delete then Click calcel Button.</li>
										</ol>
										<%-- <form action="/vanjariudyogvishwa-v2/deleteStatus" method="post"> --%>
											<input type="submit" value="Delete" class="connectBtn" onclick="return goDeleteStatus('${status11.id}');">
											<input type="button" value="Cancel" class="connectBtn" onclick="return canceldeleteMyStatusReq('${status11.id}');">
										<%-- </form> --%>
									</div>
								</div>
								
								<div class="StatusContent">
									<table width=100% >

										<tr>
											<td align="left" id="VUVStatus${status11.id}">
												<pre id="vuvStatusStatus${status11.id}" style="font-family: Tahoma, sans-serif; font-size: 18px;color: #741818">${status11.status}</pre>
											</td>
											
												<td align="left" id="EditVUVStatus${status11.id}" style="display: none;">
												<form action="/vanjariudyogvishwa-v2/updateStatus" method="post">
													<textarea id="newVuvStatus${status11.id}" name="status" id="styledTextArea" rows="2" cols="95" style="resize: none;">${status11.status}</textarea><br>
													<input type="submit" value="Save" class="connectBtn" onclick="return goEditStatus('${status11.id}');" style="margin: 15px 15px 10px 480px;">
													<input type="button" value="Cancel" class="connectBtn" onclick="return cancelEditMyStatusReq('${status11.id}');">
												</form>
												</td>
											
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
																	style="width: 35px; height: 25px; float: right; margin-top: 8px; cursor: pointer; background-color: transparent; border: none; color: rgba(129, 99, 227, 1); font: 18px cursive MS;"
																	value="edit" title="Click to Edit this comment..." onclick="showSpanEdit('${myComment.id}')">
																</c:if>
																	<br> <span id="${myComment.id}"><pre style="font-family: Tahoma, sans-serif;color: #605A5A;">${myComment.comment}</pre></span>
																	<%-- <br><span>${myComment.date}</span> --%>
																	<span id="con${myComment.id}" style="display: none;">
																		<input type="hidden" name="id" value="${myComment.id}">

																		<textarea name="commenttext" id="comment${myComment.id}" style="height: auto; width: 560px;" >${myComment.comment}</textarea>
																		<%-- <input type="text" name="commenttext" id="comment${myComment.id}" value="${myComment.comment}" 
																			style="width: 100%; height: 30px; margin-top: 10px; margin-left: 5px" > --%>
																		
																		<div style="float: right; margin:10px -20px 0px 0px;">
																			<input type="submit" value="Edit" id="editCommentBtnHome" onclick="return emptyEditerror('${myComment.id}')">
																			<input type="reset" value="Exit" id="editCommentResetBtn" onclick="hideSpanEdit('${myComment.id}')">
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
													style="width: 535px; height: 30px; margin-top: 10px; margin-left: -50px">
													<!-- <input type="submit" id="commentsubmit" style="border: none; background: none; display: none;" > -->
													<input type="hidden" name="whoseStatus" value="${status11.user.emailId}">
											</form>
										</div>
										<br>
										<table align="left" width=50%>
											
											<tr>
												
												<td style="min-width: 100px;">
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
										<!-- Code for Like Count/Unlike Count Start here -->
												<c:set var="LikeCount" value="0"></c:set>
												<c:set var="UnLikeCount" value="0"></c:set>
												<c:set var="DispLike" value="0"></c:set>
												<c:set var="DispUnLike" value="0"></c:set>
												<c:if test="${!empty status11.likeStatus}">
													<c:forEach items="${status11.likeStatus}" var="likeStatus">
														<c:if test="${status11.id==likeStatus.statusId}">
															
															<c:if test="${likeStatus.myReply}">
																<c:set var="LikeCount" value="${LikeCount + 1}"></c:set>
																<c:if test="${likeStatus.whoLike==loginUser.email}">
																	<c:set var="DispLike" value="1"></c:set>
																</c:if>
															</c:if>
															
															<c:if test="${! likeStatus.myReply}">
																<c:set var="UnLikeCount" value="${UnLikeCount + 1}"></c:set>
																<c:if test="${likeStatus.whoLike==loginUser.email}">
																	<c:set var="DispUnLike" value="1"></c:set>
																</c:if>
															</c:if>
															
														</c:if>
													</c:forEach>
												</c:if>
										<!-- Code for Like Count/Unlike Count End here -->
															 <input type="hidden" name="statusId" value="${status11.id}">
															 <input type="hidden" name="whoLike" value="${loginUser.email}">
															 <input type="hidden" name="myReply" value="true">
															
															 <c:if test="${DispLike=='0' && DispUnLike =='0'}">														
																<table><tr><td><input type="submit" value="Like" class="LikeUnlikeBtn"></td> <td><a>${LikeCount}</a></td></tr> </table>
															 </c:if>
															 <c:if test="${DispLike=='1' || DispUnLike=='1'}">														
																<table><tr><td><input type="button" value="Like" class="LikeUnlikeBtn" disabled="disabled"></td> <td><a>${LikeCount}</a></td></tr> </table>
															 </c:if>		
															
															
													</form>
												</td>
												<td style="min-width: 100px;">
													<form action="/vanjariudyogvishwa-v2/LikeStatus" method="post">
														<input type="hidden" name="statusId" value="${status11.id}">
														<input type="hidden" name="whoLike" value="${loginUser.email}">
														<input type="hidden" name="myReply" value="false">
														
														<c:if test="${DispUnLike=='0' && DispLike =='0'}">	
															<table><tr><td><input type="submit" value="UnLike" class="LikeUnlikeBtn"></td><td><a>${UnLikeCount}</a></td></tr></table>
														</c:if>
														<c:if test="${DispUnLike=='1' || DispLike=='1'}">	
															<table><tr><td><input type="button" value="UnLike" class="LikeUnlikeBtn" disabled="disabled"></td><td><a>${UnLikeCount}</a></td></tr></table>
														</c:if>
													</form>
												</td>
												
												<td style="min-width: 100px;">
													<table><tr><td><input type="button" value="Comments" class="LikeUnlikeBtn" disabled="disabled"></td> <td><a>${fn:length(status11.comments)}</a></td></tr> </table>
												</td>
											</tr>
										</table>
									</div>
								</div>
							</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<div id="rightMain" style="background-color: bisque;margin-top: -1190px">
				<%@include file="RightContainer.jsp" %>
			</div>
				
				
				
			</div>
			
			<%@include file="footer.jsp" %>
	</center>
</body>
</html>
