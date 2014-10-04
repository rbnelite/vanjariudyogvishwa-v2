<%-- 
    Document   : Notification
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : sawantmanojm@gmail.com
--%>
<%@ page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<title>Notifications | Vanjari Udyog Vishwa</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/jquery-1.4.4.min.js" />"></script>
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script type="text/javascript">
//code for validation status post for blank code
function abc1(){
	 var status1=document.myform.status.value;
	 
	 if(status1.length==0)
		 {
		 alert("please enter something");
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
function showSpanEdit(id)
{
	var spanComment=document.getElementById(id);
	spanComment.style.display="none";
	var spanEdit=document.getElementById("con"+id);
	spanEdit.style.display="block";
	}
function emptyEditerror(id1)
{
	var commenttext=document.getElementById("comment"+id1).value;
	if(commenttext==null || commenttext=="")
		{
		/* alert("please check the comment"); */
		return false;
		}
	return true;
	}
function jumpcomment(NotificationId)
{
	document.getElementById("submit"+NotificationId).click();
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


#outsidemiddleNoti{
    margin-top: 5px;
    border-radius: 3px;
    width: 788px;
    height: 1068px;
    background-color: bisque;
    border: 1px solid gray; 
    overflow: hidden;
    margin-right: 305px;
    
    
}

#peopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 256px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    overflow: auto;
    padding-right: 40px;
}
#OutsidepeopleMayKnwNoti
{
	width: 303px;
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
	border-radius: 3px;
	background-color: bisque;
	/* border: 1px solid gray; */
}
#leftMain3{
	height: 430px;
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
	height: 509px;
	background-color: transparent;
	float: right;
}
</style>

</head>

<body>
	<center>
	
		<div id="mainNoti">
			<%@include file="header.jsp" %>
			
			<div id="hiderMenu">
				<a id="anchor" href="Home">Home</a> 
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession">Members</a>
				<a id="anchor" href="message">Message</a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()"><font color="#E45FF2">Notification</font><font color="red"><%-- ${fn:length(NotificationList)} --%></font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -550px" href="logoutUser">LogOut</a>
			</div>
			<div id="leftMainNotification">
				<%@include file="LeftContainer.jsp" %>
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
			
			<div id="outsidemiddleNoti">
				<div id="middleHome">
					
					<!-- View perticular Notification Start here -->
					
						
						
						<c:if test="${!empty NotificationList}">
							<table width=100% style="margin-left: 10px">
								<tr>
									<td>Notification List</td>
								</tr>
							</table>
							<c:forEach items="${NotificationList}" var="notification">
								<form action="/vanjariudyogvishwa-v2/Notification" method="post">
									<table width=100% style="margin-left: 10px">
										<tr id="NotiTRdiv">
											<td width="40px;">
												<img src="${pageContext.request.contextPath}/resources/ProfileImages/${notification[4]}"
													height="80" width="80"; style="border-radius:30px;border: 2px dashed red;" >
											</td>
											<td>
												<span id="${notification[3]}" onclick="jumpcomment('${notification[3]}');" style="cursor: pointer;">
													<b style="color: purple;">${notification[1]}&nbsp;${notification[2]} </b>  commented on status :<br/>
													<font style=" color:green; font-size:medium;  margin-left: 7px;"> ${notification[0]}</font>
												</span>
												<input type="submit" id="submit${notification[3]}" style="display: none">
												<input type="hidden" id="notificationId" name="notificationId" value="${notification[3]}">
											</td>
										</tr>
									</table>
								</form>
							</c:forEach>
						</c:if>
						
						<c:if test="${empty NotificationList}">
							<table width=100% style="margin-left: 10px">
								<tr>
									<td>There is no Notification for display</td>
								</tr>
							</table>
						</c:if>
					
					
					<!-- View perticular Notification End here -->
					
				</div>
			</div>
			<div id="rightMain" style="margin-top: -1072px;">
				<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">People You May Know</h3>
					<div id="OutsidepeopleMayKnwNoti">
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
				
				<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">AdvertiseMents</h3>
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

