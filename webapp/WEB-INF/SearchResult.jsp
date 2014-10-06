<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<title>Search Reslt | Vanjari Udyog Vishwa</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
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

<style type="text/css">
	
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
#rightMain {
    border-radius: 3px;
    margin-top: -1003px;
    width: 300px;
    height: 1000px;
    background-color: #FFF;
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
	border-radius: 3px;
	background-color: bisque;
	/* border: 1px solid gray; */
}
#leftMain3{
	height: 555px;
}
</style>
</head>
<body>
	<center>
		<div id="main">
			<%@include file="header.jsp" %>
			
			<div id="hiderMenu">
				<a id="anchor" href="Home">Home</a>
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession"><font color="#E45FF2">Members</font></a>
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

			<div id="outsidemiddleHome" style="margin-right: 300px; height: 1195px">
				<div id="middleHome" style="height: 1195px;width: 802px;">
				
				
					<c:if test="${!empty searchSByProfList}">
						<c:forEach items="${searchSByProfList}" var="searchSByProf">
						  <c:if test="${searchSByProf[5] != loginUser.email}">
							<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
								<table width=96% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px">
								<tr>
									<td width="40"><img src="${pageContext.request.contextPath}/resources/ProfileImages/${searchSByProf[2]}" height="80" width="80" style="margin: 4px auto auto 4px;"></td>
									<td><a style="font-size: 27px;color: black;">${searchSByProf[0]}&nbsp;${searchSByProf[1]}</a><br>
										<a style="font-size: 16px;color: rgba(249, 35, 9, 0.99); float: left;">${searchSByProf[3]}</a>
									</td>
								</tr>
								<tr>
									<td></td>
									<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Education:</b> ${searchSByProf[7]}</a><br>
										<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Specialization in</b> @ ${searchSByProf[8]}</a>
									</td>
								</tr>
								<tr>
									<td></td>
									<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Mobile :</b> ${searchSByProf[10]}</a></td>
								</tr>
								<tr>
									<td></td>
									<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Home Address</b> ${searchSByProf[6]}</a></td>
								</tr>
								<tr>
									<td></td>
									<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Web Address</b> ${searchSByProf[9]}</a></td>
								</tr>
								<tr>
									<td><input type="hidden" name="friendsEmailId" value="${searchSByProf[5]}"></td>
									<td><input id="ViewProDetailsBtn" type="submit"  value="View Details" style="float: right;"></td>
								</tr>
								</table>
								</form>
							</c:if>
						</c:forEach>
					</c:if>
				
				
					
						<c:if test="${!empty SearchUserList}">

							<c:forEach items="${SearchUserList}" var="searchUser">
								<c:if test="${searchUser.emailId != loginUser.email}">
									<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
										<table width=96% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px">
										<tr>
											<td width="40"></td>
											<td><input type="hidden" name="friendsEmailId" value="${searchUser.emailId}">
												<a style="font-size: 27px;color: black;">${searchUser.firstName} ${searchUser.middleName} ${searchUser.lastName}</a>
											</td>
										</tr>
										<tr>
											<td></td>
											<td><img src="${pageContext.request.contextPath}/resources/icons/House.png" title="Home Address" style="opacity: 0.5; float: left;" height="30" width="30">
												<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Mobile:</b> ${searchUser.contactNo} </a>
											</td>
										</tr>
										<tr>
											<td></td>
											<td><img src="${pageContext.request.contextPath}/resources/icons/House.png" title="Home Address" style="opacity: 0.5; float: left;" height="30" width="30">
												<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Home Address:</b> ${searchUser.homeAddress} </a>
											</td>
										</tr>
										<tr>
											<td></td>
											<td><img src="${pageContext.request.contextPath}/resources/icons/office-building-icon.png" title="Office Address" style="opacity: 0.7; float: left;" height="30" width="30">
												<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Office Address:</b> ${searchUser.officeAddress} </a>
											</td>
										</tr>
										<tr>
											<td></td>
											<td><input id="ViewProDetailsBtn" type="submit"  value="View Details" style="float: right;"></td>
										</tr>
										</table>
									</form>
									
								
								</c:if>
								
							</c:forEach>

						</c:if>
						<c:if test="${empty SearchUserList && empty searchSByProfList}">
							<table width=96%>
								<tr>
									<td>There is no user with name you searched.</td>
								</tr>
							</table>
						</c:if>
					

					<table width=96%>
						<c:if test="${!empty SearchProductList}">

							<c:forEach items="${SearchProductList}" var="searchProduct">
								<tr>
									<td width="40px;">
									<img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="80" width="80"></td>
									<td>&nbsp; ${searchProduct.productName}&nbsp; By :
										${searchProduct.userMail}</td>

								</tr>
							</c:forEach>
						</c:if>
					</table>
					
					<%-- <c:if test="${!empty SearchStatusList}">
						<c:forEach items="${SearchStatusList}" var="searchStatus">
							<div id="ShowStatusUpdet"  style="border: 1px solid gray;">
								<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
										height="52" width="50">
								</div>
								<div class="statusUserName"
									style="float: left; margin-left: 10px;">
									<font color="green">${searchStatus.usermail}</font>
								</div>
								<div class="StatusContent">
									<table width=100%>
										<tr>
											<td></td>
										</tr>
										<tr>
											<td align="left">${searchStatus.status}</td>
										</tr>
										<tr>
											<td><font color="gray" size="2" style="float: right;">${searchStatus.statusDate}</font></td>
										</tr>
									</table>
									<c:if test="${!empty searchStatus.comments}">
										<c:forEach items="${searchStatus.comments}" var="myComment">

											<div id="Showcomment"
												style="border: 1px solid bisque; margin-top: 5px">

												<div class="commentBoxImage">
													<img
														src="${pageContext.request.contextPath}/resources/images/ashok.jpg"
														height="42" width="40">
												</div>

												<div>
													<table width=90%>
														<tr>
															<td align="left"><font color="green">${myComment.user.emailId}
															</font> <br>${myComment.comment}</td>
														</tr>
														<tr>
															<td><font color="blue" size="0.5"></font></td>
														</tr>
													</table>
												</div>
											</div>
										</c:forEach>
									</c:if>


								</div>
							</div>
						</c:forEach>
					</c:if> --%>
				</div>
			</div>
			
			<div id="rightMain" style="background-color: bisque;margin-top: -1200px;border: none;">
				<%@include file="RightContainer.jsp" %>
			</div>
		</div>
		
		<%@include file="footer.jsp" %>
		
	</center>
</body>
</html>
