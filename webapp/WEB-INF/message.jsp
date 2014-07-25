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
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<link href="<c:url value="/resources/css/autocomplete.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.4.4.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.autocomplete.js" />"></script>
<title>Vanjari Udyog Vishwa | Message</title>

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
	border: 3px solid gray;
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
}
/* #showFrndConversionName:hover {
	background: none;
	border: none;
	border-color: yellow;
	border-radius: 20px;
	
} */
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

#InsideRightMessage {
	border-radius: 3px;
	width: 300px;
	height: 1068px;
	background-color: bisque;
	float: right;
	overflow: auto;
	padding-right: 0px;
	padding-bottom: 0px;
}

#OutsideRightMessage {
	border-radius: 3px;
	margin-top: -1072px;
	width: 300px;
	height: 1069px;
	background-color: bisque;
	float: right;
	overflow: hidden;
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

input[type="text"],input[type="password"], select {
	width:235px;
	height:30px;
	border: 1px solid gray;
	border-radius:5px;
	background-color: rgba(133, 219, 237, 0.42);
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}
			
input[type="text"]:FOCUS, input[type="password"]:FOCUS, select :ACTIVE{
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
	width:290px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color: rgba(133, 219, 237, 0.42);
	border: 1px solid gray;
	border-radius:5px;
}
textarea:FOCUS{
	resize: none;
	width:290px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color:white;
	border: 1px solid red;
	border-radius:5px;
}
</style>


</head>
<body>
	<center>
		<div id="mainMessage">
			<div id="Header">
				<form action="/vanjariudyogvishwa-v2/SearchResult">
				<div style="background-color: white; border-bottom: 5px solid gray; border-radius:3px; width: 346px; border-right: 5px solid gray;">
					<input id="SearchData" type="text" name="SearchData"
						placeholder="Search for people, Place, Events....." style="height: 25px; width: 350px; border-radius:5px; border: none;background-color: white;"/>
					<input type="submit" value=" "
						style="margin-left :-7px ;height: 36px;width: 94px; background-image: url('${pageContext.request.contextPath}/resources/icons/search-Button-Logo.png');">
					</div>
				</form>
					 <label style="margin-left: 110px; margin-right:5px; margin-top: -30px; float: right;">WelCome !<b> ${loginUser.firstName} ${loginUser.lastName}</b></label> <br>
				<div id="profile_photo" style="margin-top: -25px;">
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
				<input type="hidden" name="JspPageName" value="message">
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
				<a id="anchor" href="message"><font color="#E45FF2">Message</font></a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -600px" href="logoutUser">LogOut</a>
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

			<div id="OutsideleftMainMsg">

				<div id="InnerleftMainMsg">
					<h3 style="background-color: rgba(143, 250, 57, 0.60); margin-top: 0px; font-family: vardana;">Inbox</h3>
					
						
						<table>
							<c:if test="${!empty msgFriendsList}">
								<c:forEach items="${msgFriendsList}" var="msgFriends">
									
									<form action="/vanjariudyogvishwa-v2/viewConversion" ,  method="post">
										
										<tr>
											<td>
												<img src="${pageContext.request.contextPath}/resources/ProfileImages/${msgFriends[4]}"
												height="30" width="30">
											</td>
									<td>
										<input type="hidden" name="msgSenderID" value="${loginUser.email}">
										 <input type="hidden" name="msgReceiverID" 
										 value="${msgFriends[1]} ${msgFriends[2]} ${msgFriends[3]} '${msgFriends[0]}'">
										<input id="showFrndConversionName" type="submit"
										value="${msgFriends[1]} ${msgFriends[2]} ${msgFriends[3]}" style="color:">
									</td>

								</tr>
										</form>
										
										
								</c:forEach>

							</c:if>

						</table>
					

				</div>

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
					
					
						 <input	type="hidden" name="msgSenderID" value="${loginUser.email}">
					<br>
					<div
						style="margin: 27px auto auto 37px; width: 735px; height: 400px; border-radius: 10px; background-color: transparent; overflow: hidden;">
						<div
							style="margin: 20px auto auto 37px; width: 735px; height: 400px; border-radius: 5px; background-color: transparent; overflow: auto; padding-right: 20px; padding-bottom: 8px;">
							<c:if test="${!empty msgConversionList}">
							<table>
								<c:if test="${! empty ProfileImageListMsgFrnd}">
									<c:forEach items="${ProfileImageListMsgFrnd}"
										var="ProfileImageMsgFrnd">
										<tr>
											<td></td>
											<td><img width="60px" height="60px"
												src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImageMsgFrnd.profileImage}">
											</td>
										</tr>
									</c:forEach>
								</c:if>
							</table>
								<table align="center" style="float: left;">
       			
         <c:forEach items="${msgConversionList}" var="msgConversion">


          <c:choose>
           <c:when test="${msgConversion[0]==loginUser.email}">

            <tr style="border: 1px solid gray">
             <td><font color="purple" size="4">You&nbsp;</font></td>
             <td><img
              src="${pageContext.request.contextPath}/resources/images/msg_Outbox.png"
              height="18" width="20"></td>
             <td><font color="purple" size="4">
               ${msgConversion[3] }</font> <br> <a
              style="float: left;"><font color="gray" size="2">
                ${msgConversion[2]}</font></a><br> <hr>
             </td>
                
            </tr>
            
           </c:when>
           <c:otherwise>

            <tr style="border: 1px solid gray">
             <td><font color="sky blue" size="4">${msgConversion[4]} ${msgConversion[5]}</font>
             </td>
             <td><img
              src="${pageContext.request.contextPath}/resources/images/msg_Inbox.png"
              height="18" width="20"></td>
             <td><font color="sky blue" size="4">
               ${msgConversion[3]} </font> <br> <a
              style="float: left;"><font color="gray" size="2">
                ${msgConversion[2]}</font></a><br> <hr color="sky blue">
             </td>
            </tr>

           </c:otherwise>

          </c:choose>
         </c:forEach>
         <tr><td></td><td></td><td></td></tr>
         
        </table>

       </c:if>


						</div>
						
					</div>
					
					<input type="text" id="MsgToArea" name="myMsgText"
						style="resize: none; border-radius: 5px;"
						placeholder="Write your message here..."> <a id="anchor">Text</a>
					<a id="anchor">Photos</a> <a id="anchor">Link</a> <a id="anchor">Videos</a>
					<a id="anchor"><input type="submit" name="SubmitMsg"
						value="Send" style="margin-top: 5px;"></a>
					
				</form>
			</div>

			<!-- <div id="RightMainMessage"> -->
			<div id="OutsideRightMessage">
				<div id="InsideRightMessage">

					<h3 style="background-color: rgba(143, 250, 57, 0.60); margin-top: 0px; font-family: vardana;">AdvertiseMents</h3>


				</div>
			</div>
			<!-- </div> -->
			
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
