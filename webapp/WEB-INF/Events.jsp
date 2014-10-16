<%-- 
    Document   : Events
    Created on : Dec 10, 2013, 6:17:00 PM
    Author     : Manoj Sawant
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
<title>Events Page | Vanjari Udyog Vishwa</title>

<script type="text/javascript">
function isValidEvtDate(evt){
	var charCode=(evt.which) ? evt.which :event.keyCode;
    if((charCode >46 && charCode<58) || charCode==8)
        return true;
    return false;
}
function abc(){
	 var name=document.getElementById("EventName");
	 var details=document.getElementById("EventDetails");
	 var location=document.getElementById("EventLocation");
	 var datatime=document.getElementById("EventDatatime");
	 var eventError=document.getElementById("error");
	 
	 	if(name.value.length==0)
		{
	 		eventError.innerHTML="please provide Event name"; 
			name.focus();
	     	return false;		
		}
	 	else if(details.value.length==0)
	    {
	 		eventError.innerHTML="please provide Event details"; 
			details.focus();
			return false;	
	    }
	 	else if(location.value.length==0) 
		{
	 		eventError.innerHTML="please provide Event location";
	    	location.focus();
	    	return false;
		} 
	 	else if(datatime.value.length<10)
	    {
	 		eventError.innerHTML="please provide Event datetime";
	    	datatime.focus();
	    	return false;
	    }
	 	else{
	 		eventError.innerHTML="";
	 		saveMyEvent();
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

function jumpcomment(NotificationId) {
	/* alert(NotificationId); */
	document.getElementById("notificationId").value = NotificationId;

	var temp = document.getElementById("submit1").click();
}

function saveMyEvent(){
	
	var EventName=document.getElementById("EventName").value;
	var EventDetails=document.getElementById("EventDetails").value;
	var EventLocation=document.getElementById("EventLocation").value;
	var EventDate=document.getElementById("EventDatatime").value;
	var EventUserMail=document.getElementById("MyUsermail").value;
	
	var parameters = "name="+EventName+"&details="+EventDetails+"&location="+EventLocation+"&datatime="+EventDate+"&usermail="+EventUserMail+"";
	
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
	myfirstReq.open("POST", "/vanjariudyogvishwa-v2/Events", true);
	
	//Send the proper header information along with the request
	myfirstReq.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	myfirstReq.setRequestHeader("Content-length", parameters .length);
	myfirstReq.setRequestHeader("Connection", "close");
	
	myfirstReq.onreadystatechange=function()
	  {
	  if (myfirstReq.readyState==4 && myfirstReq.status==200)
	    {
		  	 var table = document.getElementById("MyEventTable");
		  	
		 	// Create an empty <tr> element and add it to the 1st position of the table:
		  	var row = table.insertRow(1);
		  	
		  	// Insert new cells (<td> elements) at the 1st and 2nd position of the "new" <tr> element:
		  		var cell1 = row.insertCell(0);
		  		var cell2 = row.insertCell(1);
		  		var cell3 = row.insertCell(2);
		  		var cell4 = row.insertCell(3);
		  		var cell5 = row.insertCell(4);
		  		
		  		var EventName=document.getElementById("EventName").value;
		  		var EventDetails=document.getElementById("EventDetails").value;
		  		var EventLocation=document.getElementById("EventLocation").value;
		  		var EventDate=document.getElementById("EventDatatime").value;
		  		
		  		
		  	// Add some text to the new cells:
		  		cell1.innerHTML ="<img title='"+EventDate+"' src='${pageContext.request.contextPath}/resources/images/event.png' width='52' height='50' /> &nbsp;";
		  		cell2.innerHTML = EventName;
		  		cell3.innerHTML = EventLocation;
		  		cell4.innerHTML = EventDate;
		  		cell5.innerHTML = EventDetails;
		  	
		  		document.getElementById("massage").innerHTML="Event created Successfully";
		  		
		  		
		  	// document.getElementById("middleEvent").innerHTML=myfirstReq.responseText;
		 /* */
	    } 
	  };
	
		myfirstReq.send(parameters);

}

</script>

<style type="text/css">
#middleEvent{
    margin-top: 5px;
    border-radius: 3px;
    width: 790px;
    height: 645px;
    background-color: bisque;
    border: 1px solid gray; 
}
#OutsideShowEventsUpdet{
    width: 775px;
    /* margin-top: 10px; */
    margin-left: 5px;
    float: left;
    height: 629px;
    overflow: auto;
	padding-bottom: 10px;
	padding-right: 35px;
   
}

#ShowEventsUpdet{
    width: 775px;
    float: left;
    height: auto;
    overflow: hidden;
       
   
}

input[type="text"], select {
	margin-bottom: 5px;
}

#mainEvents {
    background-color: bisque;
    width: 1400px;
    height: 1310px;
    margin: 10px 50px;
    border-radius: 3px;
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
    
 #leftMain {
    border-radius: 3px;
    float: left;
    width: 300px;
    height: 1000px;
    overflow: auto;
    background-color: bisque;
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
	height: 368px;
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

#newEventBtn{
	width: auto;
	height: 40px;
	background: -moz-linear-gradient(center top , #FAA51A, #F47A20) repeat scroll 0% 0% transparent;
    background-color: orange;
    color: black;
	border-radius: 4px;
	border: 1px solid orange;
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	transition: all 1s;
}
#newEventBtn:HOVER{
	width: auto;
	height: 40px;
	background: -moz-linear-gradient(center top , #FAA51A, #F47A20) repeat scroll 0% 0% transparent;
    background-color: orange;
    color: white;
	border-radius: 4px;
	border: 1px solid orange;
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	cursor: pointer;
	transition: all 1s;
}
</style>
<!-- <style type="text/css">
	#MyNewEventDesc{
		display: none;
		background-color: pink;
	}
</style> -->
</head>
<body>
	<center>
		<div id="mainEvents" style="border-color: bisque">
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

			<div id="MiddleTopEvent" style="height: 410px;">
				<form action="/vanjariudyogvishwa-v2/Events" method="post">
					<table>
						<h3><font color="purple">Create Event</font></h3>
						<tr><td></td><td><span id="error" style="color:red;"></span></td></tr>
						<tr>
							<td>Event Name <font color="red">*</font> :</td>
							<td><input type="text" name ="name" id="EventName"
								placeholder="Write Event Name...."
								style="width: 400px; height: 30px;"/>
								
								
							</td>
							
						</tr>
						<%-- <tr><td> <form:errors path="name" cssClass="error"/></td></tr> --%>
						<tr>
							<td>Event Details <font color="red">*</font> :</td>
							<td>
							<input type="text" name ="details" id="EventDetails"
									placeholder="Write Event Details with time...."
									style="width: 400px; height: 100px; resize: none;"/><br>
								
							</td>
						</tr>
						<%-- <tr><td>  <form:errors path="details" cssClass="error"/> </td></tr> --%>
						<tr>
							<td>Event Location <font color="red">*</font> :</td>
							<td><input type="text" name ="location" id="EventLocation"
								placeholder="Write Location of Event...."
								style="width: 400px; height: 30px;"/><br>
								
							</td>
						</tr>
						<%-- <tr><td>  <form:errors path="location" cssClass="error"/> </td></tr> --%>
						<tr>
							<td>Date <font color="red">*</font> :</td>
							<td>
								<input type="text" name ="datatime" id="EventDatatime" placeholder="dd/mm/yyyy" 
									onkeypress="return isValidEvtDate(event);" maxlength="10"
									style="width: 400px; height: 30px;"/><br>
								
							</td>
						</tr>
						
						<tr>
							<td>
								<input type="hidden" id="MyUsermail" name="usermail" value="${loginUser.email}">
							</td>
							<td><input id="newEventBtn" type="submit" value="Create Event" onclick="return abc();">
									<!-- onclick="return abc()" -->
									 <!-- onclick="loadXMLDoc()" -->
							</td>
						</tr>
					</table>
				</form>
			</div>

			<div id="middleEvent">
				<div id="OutsideShowEventsUpdet">
				<div id="ShowEventsUpdet">
				<span id="massage" style="color: green;">${massage}</span>
					<h3 style="background-color:#FF6300; background-color: #FF6300;position: absolute;width: 790px;margin-top: 0px;margin-left: -5px;">List of Events</h3>
					<c:if test="${!empty eventstList}">
						<table id="MyEventTable" border="1" width=100%; style="margin-bottom: 15px;margin-top: 45px;">
							<tr style="width: 100%">
								<td style="width: 10%"><b>Photo</b></td>
								<td style="width: 25%"><b>Event Name</b></td>
								<td style="width: 20%"><b>Location</b></td>
								<td style="width: 10%"><b>Date/Time</b></td>
								<td style="width: 35%"><b>Event Details</b></td>
							</tr>
							<!-- <tr style="min-width: 100%" id="MyNewEventDesc">
								<td style="min-width: 10%;" id="MyNewEventPhoto"></td>
								<td style="min-width: 25%" id="MyNewEventName"></td>
								<td style="min-width: 20%" id="MyNewEventLocation"></td>
								<td style="min-width: 10%" id="MyNewEventDateTime"></td>
								<td style="min-width: 35%" id="MyNewEventDetails"></td>
							</tr> -->
							<c:forEach items="${eventstList}" var="myEvents">
								<tr title="${myEvents[5]}-${myEvents[1]} ${myEvents[2]}">
									<td><img src="${pageContext.request.contextPath}/resources/images/event.png" title="${myEvents[5]}" height="50" width="52"></td>
									<td>${myEvents[0]}<br></td>
									<td>${myEvents[4]}<br></td>
									<td>${myEvents[5]}<br></td>
									<td align="left">${myEvents[3]}<br></td>
								</tr>
							</c:forEach>
						</table>
					</c:if>
				</div>
				</div>
			</div>


			<div id="rightMain" style="background-color: bisque;margin-top: -1067px; height: 1070px;">
				<%@include file="RightContainer.jsp" %>
			</div>
				
		</div>
		
		<%@include file="footer.jsp" %>
		
			</center>
			
</body>
</html>
