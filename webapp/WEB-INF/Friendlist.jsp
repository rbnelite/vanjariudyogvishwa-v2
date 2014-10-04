<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : sawantmanojm@gmail.com
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script type="text/javascript">

Employee;
function employee(){
		
}
	
	function DisplayChangePhotoBlock() {
		var dispPhoto = document.getElementById("ChangePhotoHome");
		dispPhoto.style.display = 'block';
	}

	function HideChangePhotoBlock() {
		var dispPhoto = document.getElementById("ChangePhotoHome");
		dispPhoto.style.display = 'none';
	}

	/* function underscoreName() {
		var nameButton = document.getElementById("nameButton");
		nameButton.style.background = 'orange';

	}

	function NounderscoreName() {
		var nameButton = document.getElementById("nameButton");
		nameButton.style.background = 'none';

	} */

	function jumpcomment(NotificationId) {
		/* alert(NotificationId); */
		document.getElementById("notificationId").value = NotificationId;

		var temp = document.getElementById("submit1").click();
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
}
#leftMain1{
    float: left;
    width: 290px;
    height: 350px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    padding-right: 20px;
}
#OutsideleftMain1{
    float: left;
    width: 290px;
    height: 350px;
    overflow: hidden;
    border-radius: 3px;
    background-color: bisque;
    border: 1px solid gray;
    margin-left: 7px;
}
#leftMain3{
	height: 575px;
}
</style>

<title>Friends List | Vanjari Udyog Vishwa</title>
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
									<tr>
										<td colspan=2 align="left">
											<div class="userStatusImage">
												<img
													src="${pageContext.request.contextPath}/resources/ProfileImages/${note[4]}"
													height="20" width="20">
											</div> <h7 id="${note[3]}" onclick="jumpcomment('${note[3]}')">
											<b style="color: red;">${note[1]} ${note[2]}</b> commented on
											status: <i style="color: gray;">${note[0]}</i></h7> <input
											type="submit" id="submit1" style="display: none">
										</td>
									</tr>
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
									<td><b>${friendRequest[0]}</b><br>${friendRequest[3]}
										@ ${friendRequest[2]}</td>
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
							href="ChangePassword" style="text-decoration: none; color: white">Change
								Account Setting</a><a onclick="return DisableSettingBlock()"> <img
								src="${pageContext.request.contextPath}/resources/images/close (3).png"
								id="close" style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>

				</table>
			</div>

			<div id="outsidemiddleHome" style="margin-right: 300px;height: 1195px">
				<div id="middleHome" style="height: 1195px">
					<c:if test="${!empty userFriendsList}">
						<c:forEach items="${userFriendsList}" var="userFriends">
							<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
								<table width=100% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px;margin-bottom: 5px;">
									
									<tr>
										<td width="40"><img src="${pageContext.request.contextPath}/resources/ProfileImages/${userFriends[4]}" height="80" width="80" style="margin: 4px auto auto 4px;border-radius: 50px;border: 3px solid #F00;"></td>
										<td><a style="font-size: 27px;color: black;">${userFriends[0]}&nbsp;${userFriends[1]}</a><br>
										<a style="font-size: 16px;color: rgba(249, 35, 9, 0.99); float: left;">${userFriends[6]}</a>
										</td>
									</tr>
									<tr>
										<td></td>
										<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Education:</b> ${userFriends[10]}</a><br>
										<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Specialization in</b> @ ${userFriends[11]}</a>
										</td>
									</tr>
									<tr>
										<td></td>
										<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Mobile :</b> ${userFriends[8]}</a></td>
									</tr>
									<tr>
										<td></td>
										<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Home Address</b> ${userFriends[7]}</a></td>
									</tr>
									<tr>
										<td></td>
										<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Web Address</b> ${userFriends[9]}</a></td>
									</tr>
									<tr>
										<td>
											<c:choose>
												<c:when test="${userFriends[2]==loginUser.email}">
													<input type="hidden" name="friendsEmailId" value="${userFriends[3]}">
												</c:when>
												<c:otherwise>
													<input type="hidden" name="friendsEmailId" value="${userFriends[2]}">
												</c:otherwise>
											</c:choose>
										</td>
										<td><input id="ViewProDetailsBtn" type="submit"  value="View Details" style="float: right;"></td>
									</tr>
								</table>
							</form>
									
								</c:forEach>
							</c:if>
						
					
					
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
		
		
		<%@include file="footer.jsp" %>
		
	</center>
</body>
</html>