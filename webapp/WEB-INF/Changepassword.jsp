<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : sawantmanojm@gmail.com
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Account Setting | Vanjari Udyog Vishwa</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
<script type="text/javascript">
	function validateChangePassword()
	{
		var oldPwd=document.getElementById("OldPassword").value;
		var newPwd=document.getElementById("NewPassword").value;
		var reNewPwd=document.getElementById("ReNewPassword").value;
		
		
		if (oldPwd=="" && newPwd=="" && reNewPwd=="" ) {
			document.getElementById("ChangePwdError").innerHTML="All Fields Marked with (*) are mandetary...!!!";
			document.getElementById("OldPassword").focus();
				return false;
		}
		
		else if (oldPwd==null || oldPwd=="") {
			document.getElementById("ChangePwdError").innerHTML="You Must Provide Old Password.";
			document.getElementById("OldPassword").focus();
				return false;
		}
		
		else if (newPwd==null || newPwd=="") {
			document.getElementById("ChangePwdError").innerHTML="You Must Provide New Password.";
			document.getElementById("NewPassword").focus();
				return false;
		}
		else if (reNewPwd==null || reNewPwd=="") {
			document.getElementById("ChangePwdError").innerHTML="Provide New Password Again.";
			document.getElementById("ReNewPassword").focus();
				return false;
		}
		else if(newPwd!=reNewPwd)
		{
			document.getElementById("ChangePwdError").innerHTML="New Password & Confirm Password are not same.";
			document.getElementById("ReNewPassword").focus();
			return false;
		}
		else{
			return true;
		}
	}
	
	function checkOldPwdNull(){
		var oldPwd=document.getElementById("OldPassword").value;
		if (oldPwd==null || oldPwd=="") {
			document.getElementById("ChangePwdError").innerHTML="You Must Provide Old Password.";
			document.getElementById("OldPassword").focus();
				return false;
		}
	}
	function checkNewPwdNull(){
		var newPwd=document.getElementById("NewPassword").value;
		if (newPwd==null || newPwd=="" ) {
			document.getElementById("ChangePwdError").innerHTML="You Must Provide New Password.";
			document.getElementById("NewPassword").focus();
				return false;
		}
		if ( newPwd.length<6) {
			document.getElementById("ChangePwdError").innerHTML="Password must contain 1 digit, 1 Character, and Length must be 6 to 16.";
			document.getElementById("NewPassword").focus();
				return false;
		}
	}
	function checkEqualityPwd(){
		var newPwd=document.getElementById("NewPassword").value;
		var reNewPwd=document.getElementById("ReNewPassword").value;
		if(newPwd!=reNewPwd)
		{
			document.getElementById("ChangePwdError").innerHTML="New Password & Confirm Password are not same.";
			document.getElementById("NewPassword").focus();
			return false;
		}
	}
	
	function clearChangePwdError(){
		document.getElementById("ChangePwdError").innerHTML="";
	}
	
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

		document.getElementById("submit1").click();
	}
</script>

<style type="text/css">
	

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

input[value="Save Changes"], input[type="reset"]{
	width: auto;
	height: 40px;
	background-color: rgba(240, 59, 59, 0.25);
	color:black;
	border-radius: 6px;
	border: 1px solid black;
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
input[value="Save Changes"]:HOVER, input[type="reset"]:HOVER{
	width: auto;
	height: 40px;
	background-color: rgba(240, 59, 59, 0.45);
	color:black;
	border-radius: 6px;
	border: 1px solid black;
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	cursor: pointer;
}
#changeMyPwd2 {
    width: 780px;
    height: 295px;
    /* margin-right: 305px; */
    border-radius: 3px;
    background-color: #FFE4C4;
    border: 1px solid orange;
    border-radius:6px;
} 
.error {
	color: #ff0000;
}
			
.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>

<body>
	<center>
		<div id="main">
			<%@include file="header.jsp" %>
			<div id="hiderMenu">
				<a id="anchor" href="Home">Home </a>
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession">Members</a>
				<a id="anchor" href="message">Message</a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()"><font color="#E45FF2">Setting</font></a>
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
			<div id="MiddleTopchangepwd" style="margin-left: 305px;">
			
				<div id="changeMyPwd2">
					<form action="/vanjariudyogvishwa-v2/ChangePassword" method="post" commandName="changepwd">
					<input type="hidden" id="NewPasswordUserMail" name="user_email" value="${loginUser.email}">
					<center>
						<table width=70% style="margin-top: 10px">
							<tr>
								<th colspan="2">Change Password</th>
							</tr>
							<tr>
								<td style="padding-top: 15px;padding-bottom: -6px;">Old password: (<font color="red">*</font>)</td>
								<td style="padding-top: 15px;padding-bottom: -6px;"><input id="OldPassword" type="password" name="password" placeholder="Old Password" size="30" maxlength="16"
								 		title="Type Your Currend password" onkeypress="return clearChangePwdError();"/></td>
							</tr>
							<tr >
								<td style="padding-top: 7px;padding-bottom: -6px;">New password: (<font color="red">*</font>)</td>
								<td style="padding-top: 7px;padding-bottom: -6px;"><input id="NewPassword" type="password" name="newPassword" placeholder="New Password" size="30" maxlength="16" 
										title="Password must contain 1 digit, 1 Character, and Length must be 6 to 16." onfocus="return checkOldPwdNull();" onkeypress="return clearChangePwdError();"/></td>
							</tr>
							<tr>
								<td style="padding-top: 7px;padding-bottom: -6px;">Confirm password: (<font color="red">*</font>)</td>
								<td style="padding-top: 7px;padding-bottom: -6px;"><input id="ReNewPassword" type="password" name="rePassword" placeholder="Confirm Password" size="30" maxlength="16"
										title="Type password matches to above" onfocus="return checkNewPwdNull();" onkeypress="return clearChangePwdError();" onblur="checkEqualityPwd();"/></td>
							</tr>
							<tr>
								<td style="padding-top: 15px;padding-bottom: -6px;"><center><input type="submit" value="Save Changes" onclick="return validateChangePassword();"></center></td>
								<td style="padding-top: 15px;padding-bottom: -6px;"><input type="reset" value="Cancel"></td>
							</tr>
							<tr>
								<td colspan="2" id="ChangePwdError" style="color: red"><h5><font color="blue">${changePwdMessage}</font></h5></td>
							</tr>
						</table>
					</center>
				</form>
				</div>
			</div>
			
			<div id="outsidemiddlechangepwd">
				<div id="InstructionChangePwd" >
					<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px; font-size: 21px">To change Your password you must follow these steps:</h3>
					<ol style="text-align: left;">
						<li>Enter your Current password in 1st text box.</li>
						<li>Enter your New password in 2nd text box.</li>
						<li>Re-Enter your New password in 3nd text box.</li>
						<li>Click on Save Changes button to Change your New password.</li>
					</ol>
				</div>
			</div>
			
			
			
			<div id="rightMain" style="background-color: bisque;margin-top: -1200px">
				<%@include file="RightContainer.jsp" %>
			</div>
			
		</div>
		
		<%@include file="footer.jsp" %>
		
		
	</center>
</body>
</html>
