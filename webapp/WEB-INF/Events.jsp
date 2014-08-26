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
<title>Events Page | Vanjari Udyog Vishwa</title>

<script type="text/javascript">

function abc(){
	 var name=document.getElementById("EventName").value;
	 var details=document.getElementById("EventDetails").value;
	 var location=document.getElementById("EventLocation").value;
	 var datatime=document.getElementById("EventDatatime").value;
	 
	 	if(name.length==0)
		{
			document.getElementById("error").innerHTML="please provide proper name"; 
	     	return false;		
		}
	 	else if(details.length==0)
	    {
			document.getElementById("error").innerHTML="please provide proper details";    
			return false;	
	    }
	 	else if(location.length==0) 
		{
	    	document.getElementById("error").innerHTML="please provide proper location";
	    	return false;
		} 
	 	else if(datatime.length==0)
	    {
	    	document.getElementById("error").innerHTML="please provide proper datetime";
	    	return false;
	    }
	 	else{
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
		  	
		  		
		  		
		  	// document.getElementById("middleEvent").innerHTML=myfirstReq.responseText;
		 /* */
	    } 
	  };
	
		myfirstReq.send(parameters);

}

</script>



<script type="text/javascript">
            
            var image1=new Image();
            image1.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 2.jpg";
            var image2=new Image();
            image2.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 3.jpg";
            var image3=new Image();
            image3.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 4.jpg";
            var image4=new Image();
            image4.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 5.jpg";
            var image5=new Image();
            image5.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 6.jpg";
            var image6=new Image();
            image6.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 7.jpg";
            
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



#errortr{
display: none;
}

#mainEvents {
    background-color: bisque;
    width: 1400px;
    height: 1250px;
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
input[type="text"],input[type="password"], select {
	width:235px;
	height:30px;
	border: 1px solid gray;
	border-radius:5px;
	background-color: rgba(246, 212, 212, 0.42);
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

#newEventBtn{
	width: auto;
	height: 40px;
	background-color: rgba(240, 59, 59, 0.25);
	color:black;
	border-radius: 6px;
	border: 1px solid black;
	font-size: 20px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	
}
#newEventBtn:HOVER{
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
			<div id="Header">

				<form action="/vanjariudyogvishwa-v2/SearchResult">
					<div style="">
						<input id="SearchData" type="text" name="SearchData"
						placeholder="Search for people, Place, Events....." style="height: 25px; width: 350px; border-radius:5px; border: none;background-color: white;"/>
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
					<img width="140px" height="140px" style="border-radius: 50px;border: 3px solid red"
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
				<input type="hidden" name="JspPageName" value="Events">
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
				<a id="anchor" href="SearchPeopleByProfession">Members</a>
				<a id="anchor" href="message">Message</a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -550px" href="logoutUser">LogOut</a>
			</div>

			 <div id="leftMain">
				<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana;">Upcoming Events</h3>
				<div id="OutsideleftMainHome">
					<div id="leftMainHome">
						<c:if test="${!empty eventstList}">
								<c:forEach items="${eventstList}" var="myEvents">
									<table width=100%>
										<tr>
											<td align="center" width="100%"><a id="showEventUserName">${myEvents[1]} ${myEvents[2]}</a></td>
										</tr>
										<tr>
											<td align="left" width="100%"><font color="orange">Title :</font> <a id="showEventCred">${myEvents[0]}</a></td>
										</tr>
										<tr>
											<td align="left" width="100%"><font color="orange">At : </font><a id="showEventCred">${myEvents[4]}</a></td>
										</tr>
										<tr>
											<td align="left" width="100%"><font color="orange">On : </font><a id="showEventCred">${myEvents[5]}</a></td>
										</tr>
										<tr>
											<td align="left" width="100%"><font color="orange">Details : </font><a id="showEventCred">${myEvents[3]}</a></td>
										</tr>
									</table>
									<hr>
								</c:forEach>
								
							</c:if>
					</div>
				</div>
				<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana;">Links</h3>
				<div id="leftMain2">
					<table width=100% >
						<!-- <th style="background-color: #fab039"><font color="white">Links</font></th> -->
					<tr>
						<td width="16%"> <img  src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32" width="32"></td>
						<td width="84%"><a id="Shortlinks" href="message">Message</a></td>
					</tr>
					<tr>
						<td width="16%"> <img src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32" width="32"></td>
						<td width="84%"> <a id="Shortlinks" style="color: #E45FF2; cursor: pointer;">Events</a> </td>
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
				
				<div id="leftMain3" style="height: 368px">
					<h3 style="background-color: #FF6300; margin-top: 0px; font-family: vardana; ">Links</h3>
				</div>
				

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

			<div id="MiddleTopEvent">
				<form action="/vanjariudyogvishwa-v2/Events" method="post">
					<table>
						<h3><font color="purple">Create Event</font></h3>
						
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
							<td><input type="text" name ="datatime" id="EventDatatime"
								placeholder="dd/mm/yyyy"
								style="width: 400px; height: 30px;"/><br>
								
							</td>
						</tr>
						<tr><td></td><td><span id="error" style="color:red;"></span></td></tr>
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
								<tr title="${myEvents[5]}">
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


			<div id="rightMain" style="background-color: bisque;margin-top: -1007px;">
			<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">People You May Know</h3>
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
										<input type="hidden" name="JspPageName" value="Events">
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
				
				<%-- <form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
					<table>
						<tr>
							<td><input id="SearchByProTxt" type="text" name="SearchDatabyprofession" placeholder="Search People By Profession"></td>
							<td><input id="VUVsearchByProBtn" type="submit" value="search"></td>
						</tr>
						<tr>
							<td></td>
							<td><a href="SearchPeopleByProfession">more.....</a></td>
						</tr>
					</table>
				</form> --%>
				
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
