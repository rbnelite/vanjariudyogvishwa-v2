<%-- 
    Document   : Message
    Created on : Dec 10, 2013, 6:18:04 PM
    Author     : Manoj Sawant
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/SawantManojM.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
<link href="<c:url value="/resources/css/autocomplete.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.4.4.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.autocomplete.js" />"></script>
<title>Message | Vanjari Udyog Vishwa</title>

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
/******************For Message Form Validation ******************/

function validateMsgForm() {
	var msgToId=document.getElementById("country").value;
	var msgToArea=document.getElementById("MsgToArea").value;
	if(msgToId==null || msgToId==""){
		alert("Receiver's Name is required. Write receivers name.");
		return false;
	}
	if (msgToArea==null || msgToArea=="") {
		alert("If you want to send any message then, Write your message.");
		return false;
	}
}
</script>

<style type="text/css">
#mainMessage {
	background-color: #FFE4C4;
	width: 1400px;
	height: 1314px;
	margin: 10px 50px 10px 50px;
	border-radius: 3px;
}

#showFrndConversionImg {
	width: 100px;
	height: 100px;
}

#showFrndConversionName {
	background: none;
	border: none;
	border-color: bisque;
	border-radius: 20px;
	cursor: pointer;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	color: black;
}
#showFrndConversionName:hover {
	color: #008000;
} 
#InnerleftMainMsg {
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 645px;
	margin: -4px 2px 0px 2px;
	background-color: bisque;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 10px;
}

#OutsideleftMainMsg {
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 1067px;
	background-color: bisque;
	overflow: hidden;
}

#RightMainMessage {
	width: 300px;
	height: 645px;
	background-color: red;
	float: right;
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

#middlePhotos {
	margin-top: -3px;
	border-radius: 3px;
	width: 790px;
	height: 1070px;
	background-color: #FFE4C4;
	border: 1px solid gray; 
}

textarea{
	resize: none;
	width:290px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color: rgba(255, 255, 255, 0.69);
	border: 1px solid rgba(0, 0, 0, 0.3);
	border-radius:5px;
}
textarea:FOCUS{
	resize: none;
	width:290px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color: rgba(255, 255, 255, 0.9);
	border: 1px solid rgba(28, 87, 227, 0.28);
	border-radius:5px;
}
</style>
<style type="text/css">
#leftMain {
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 1070px;
	overflow: auto;
	background-color: transparent;
}
#leftMainHome {
	float: left;
	width: 290px;
	height: 350px;
	overflow: auto;
	background-color: bisque;
	padding-right: 30px;
	padding-bottom: 20px;
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
#leftMain2{
    border-radius: 3px;
    float: left;
    width: 300px;
    height:213px;
    margin: -20px 0px 8px 0px;
    background-color: bisque;
     /* border: 1px solid gray; */
}
#leftMain3{
	height: 450px;
}
#rightMain{
    border-radius: 3px;
    margin-top: -1073px;
    width: 300px;
    height: 1070px;
    background-color: transparent;
    float: right;
  
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
#InsideRightMessage {
	width: 292px;
	height: 270px;
	background-color: yellow;
	margin-top: -20px;
}
#OutsideRightMessage {
	border-radius: 3px;
	width: 300px;
	height: 675px;
	background-color: transparent;
	float: right;
}
</style>

</head>
<body>
	<center>
		<div id="mainMessage">
			<%@include file="header.jsp" %>
			
			<div id="hiderMenu">
				<a id="anchor" href="Home">Home</a> 
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession">Members</a>
				<a id="anchor" href="message"><font color="#E45FF2">Message</font></a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -550px" href="logoutUser">LogOut</a>
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

			<div id="leftMain">
				<%@include file="LeftContainer.jsp" %>
			</div>


			<div id="middlePhotos">
				<form action="/vanjariudyogvishwa-v2/message", method="post" onsubmit="return validateMsgForm()">
					
					
					<c:if test="${! empty msgConversionFrndName}">
						<a id="MsgTo"> To :<input type="text" id="country" value="${msgConversionFrndName}"
							name="msgReceiverID" style="width: 725px; height: 30px; border-radius:5px"/>
							<script>
								$("#country").autocomplete("list");
							</script>
						</a>
					</c:if>
						
					<c:if test="${empty msgConversionFrndName}">
						<a id="MsgTo"> To :<input type="text" id="country"
							name="msgReceiverID" style="width: 725px; height: 30px; border-radius:5px" contenteditable="true" />
							<script>
								$("#country").autocomplete("list");
							</script>
						</a>
					</c:if>	
					<br>
					<div style="margin: 7px auto auto 5px; width: 735px; height: 360px; background-color: transparent; overflow: hidden;">
						<div style="margin: 5px auto auto 37px; width: 735px; height: 355px; background-color: transparent; overflow: auto; padding-right: 20px; padding-bottom: 8px;">
							<c:if test="${!empty msgConversionList}">
							
								<%-- <c:if test="${! empty ProfileImageListMsgFrnd}">
									<c:forEach items="${ProfileImageListMsgFrnd}" var="ProfileImageMsgFrnd">
										<div id="ProfileImageMsgFrnd">
										
										<img width="80px" height="70px"
												src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImageMsgFrnd.profileImage}">
										</div>
									</c:forEach>
								</c:if> --%>
								
		<c:forEach items="${msgConversionList}" var="msgConversion">
			<c:choose>
	        	<c:when test="${msgConversion[0]==loginUser.email}">
			        <div class="bubble">
			        	<font color="red" style="font-size: 20px;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;">You :</font><br>
			        	<font color="black" style="font-size: 16px;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;">${msgConversion[3] }</font> <br>
			             	<a><font color="gray" size="1">${msgConversion[2]}</font></a>
			        </div>
	        	</c:when>
	           	<c:otherwise>
					<div class="bubble bubble--alt">
						<font color="red" style="font-size: 20px;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;">${msgConversion[4]} ${msgConversion[5]}</font><br>
			        	<font color="black" style="font-size: 16px;font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;">${msgConversion[3] }</font> <br>
			             	<a><font color="gray" size="1">${msgConversion[2]}</font></a>
			        </div>
	        	</c:otherwise>
        	</c:choose>
         </c:forEach>
        
        
        
        
       </c:if>
					<a style="color:red;">${SenderReceiverSameError}</a>

						</div>
						
					</div>
					<input	type="hidden" name="msgSenderID" value="${loginUser.email}">
					<input type="text" id="MsgToArea" name="myMsgText" style="resize: none; border-radius: 5px;"
						placeholder="Write your message here...">
					<input id="VUVloginBtn" type="submit" name="SubmitMsg" value="Send" style="float:right; margin-top: 20px; margin-right: 18px">
			</form>
			</div>

			<div id="rightMain" style="background-color: bisque;border: none;">
				<%@include file="RightContainer.jsp" %>
			</div>
			
			
			
		</div>
		
		<%@include file="footer.jsp" %>
		
	</center>
</body>

</html>
