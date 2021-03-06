<%-- 
    Document   : Profile
    Created on : Dec 9, 2013, 6:10:34 PM
    Author     : dogkiller
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
       <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
	   <script src="<c:url value="/resources/js/RBNelite.js" />"></script>
	   <script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
	   <script type="text/javascript">
	   function jumpcomment(NotificationId) {
			/* alert(NotificationId); */
			document.getElementById("notificationId").value = NotificationId;

			document.getElementById("submit1").click();
		}
	   </script>
	   
<style>
h3 {
	background-color: rgba(236, 198, 124, 0.5);
	/* background-color:#00FF00; */
	margin-top: 0px;
}

#OutsideInterestAreas {
	border-radius: 3px;
	border: 1px solid gray;
	float: left;
	width: 468px;
	height: 300px;
	background-color: bisque;
	overflow: hidden;
}

#InterestAreas {
	border-radius: 3px;
	border: 1px solid gray;
	float: left;
	width: 468px;
	height: 300px;
	background-color: bisque;
	margin-bottom: 1px;
	overflow: auto;
	padding-right: 20px;
	padding-bottom: 20px;
}

#Friends {
	border-radius: 3px;
	background-color: bisque;
	margin-top: -18px;
	width: 760px;
	height: 300px;
	overflow: auto;
	padding-left: 20px;
}

#OutsideFriends {
	border-radius: 3px;
	border: 1px solid rgba(245, 186, 118, 0.8);
	background-color: bisque;
	width: 760px;
	height: 300px;
	overflow: hidden;
	margin-left: 10px;
	margin-bottom: 20px;
}

#ProfileProducts {
	padding-right: 30px;
	border-radius: 3px;
	/* margin-right: 465px; */
	/* border: 1px solid gray; */
	width: 760px;
	height: 300px;
	overflow: auto;
	background-color: bisque;
	margin-bottom: 1px;
}

#OutsideProfileProducts {
	border-radius: 3px;
	/* margin-right: 465px; */
	border: 1px solid rgba(245, 186, 118, 0.8);
	width: 760px;
	height: 300px;
	overflow: hidden;
	background-color: bisque;
	margin-bottom: 1px;
}

#FrndReqBtn{
	background-color: #0F0;
	height: 25px;
	width: 60px;
	float: left;
}

#leftMain {
	border-radius: 3px;
	float: left;
	width: 300px;
	height: 1127px;
	overflow: auto;
	background-color: transparent;
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
#leftMain2{
    border-radius: 3px;
    float: left;
    width: 300px;
    height:213px;
    margin: -20px 0px 8px 0px;
    background-color: bisque;
     /* border: 1px solid gray; */
}
#rightMain{
    border-radius: 3px;
    margin-top: -1250px;
    width: 300px;
    height: 1000px;
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
	height: 830px;
	background-color: transparent;
	float: right;
}
#ProfileDetails table{
	float: left;
	margin-left: 10px;
}
#ProfileDetails table tr td {
	text-align: left;
}
#ProfileDetails table tr td b{
	font-size: 17px;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}
</style>
<title>Friends Profile | Vanjari Udyog Vishwa</title>
    </head>
    <body>
    <center>
        <div id="mainProfile">
            <div id="Header">
				<!-- <input id="FrndReqBtn" type="submit" value="Connect"/> -->
               <label style="margin-left: 110px; margin-right: 5px; float: right;">
					<c:if test="${!empty contactInfoList}">
						<c:forEach items="${contactInfoList}" var="contactInfo">
							<b> ${contactInfo.firstName} ${contactInfo.lastName}</b>
						</c:forEach>
					</c:if>
				</label> <br>
				<br>
                <div id="profile_photo">
                    <c:if test="${! empty ProfileImageList}">
						<c:forEach items="${ProfileImageList}" var="ProfileImage">
							<img width="140px" height="140px" style="border-radius: 50px;border: 3px solid red"
								src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
							<br>&nbsp;&nbsp;&nbsp;

						</c:forEach>
					</c:if>
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
				<a id="anchor" style="margin-right: -750px" href="logoutUser">LogOut</a>
			</div>
            
            <div id="leftMain">
				<%@include file="LeftContainer.jsp" %>
			</div>
            
            <%@include file="NotificationPopUp.jsp" %>
            
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
            
            
            
            <div id="outsidemiddleHome" style="margin-right: 300px; height: 1250px">
				<div id="middleHome" style="height: 1250px;">

	            	<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<h3>User Details</h3>
						<c:if test="${!empty contactInfoList}">
							<table>
								<c:forEach items="${contactInfoList}" var="contactInfo">
									<tr>
										<td style="width: 200px;"><b>Name </b></td><td>:</td>
										<td>${contactInfo.firstName} ${contactInfo.middleName} ${contactInfo.lastName}</td>
									</tr>
									<tr>
										<td><b>Email ID </b></td><td>:</td>
										<td>${contactInfo.emailId}</td>
									</tr>
									<tr>
										<td><b>Gender </b></td><td>:</td>
										<td>${contactInfo.gender}</td>
									</tr>
									<tr>
										<td><b>BirthDate </b></td><td>:</td>
										<td>${contactInfo.birthDate}</td>
									</tr>
									<tr>
										<td><b>Home Address </b></td><td>:</td>
										<td>${contactInfo.homeAddress}</td>
									</tr>
									<tr>
										<td><b>Office Address </b></td><td>:</td>
										<td>${contactInfo.officeAddress}</td>
									</tr>
									<tr>
										<td><b>Mobile No. </b></td><td>:</td>
										<td>${contactInfo.contactNo}</td>
									</tr>
								</c:forEach>
							</table>
						</c:if>
					</div>
				</div>
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<h3>Employement Details</h3>
						<c:if test="${!empty occupationList}">
							<table>
								<c:forEach items="${occupationList}" var="occupation">
									<tr>
										<td style="width: 200px;"><b>Company Name </b></td><td>:</td>
										<td>${occupation.companyName}</td>
									</tr>
									<tr>
										<td><b>Occupation </b></td><td>:</td>
										<td>${occupation.occupation}</td>
									</tr>
									<tr>
										<td><b>Annual Incom </b></td><td>:</td>
										<td>${occupation.annualincome}</td>
									</tr>
									<tr>
										<td><b>Employement Type </b></td><td>:</td>
										<td>${occupation.emptype}</td>
									</tr>
									<tr>
										<td><b>No of Employees </b></td><td>:</td>
										<td>${occupation.numberofemp}</td>
									</tr>
									<tr>
										<td><b>Product Details </b></td><td>:</td>
										<td>${occupation.productdetails}</td>
									</tr>
									<tr>
										<td><b>Web Address </b></td><td>:</td>
										<td>${occupation.webAddress}</td>
									</tr>
								</c:forEach>
							</table>
						</c:if>
					</div>
				</div>
            
	            <div id="OutsideProfileDetails">
	            	<div id="ProfileDetails">
	            	<h3>Education Details</h3>
	            	<c:if test="${!empty FriendseducationworkList}">
	                	<c:forEach items="${FriendseducationworkList}" var="FriendseducationWORK">
						  <table>
	                  		<tr><td style="width: 200px;"><b>Name of School </b></td><td>:</td><td>${FriendseducationWORK.school}</td></tr>
	                  		<tr><td><b>Name of College </b></td><td>:</td><td>${FriendseducationWORK.collage}</td></tr>
	                  		<tr><td><b>Graduation Degree </b></td><td>:</td><td>${FriendseducationWORK.graduation}</td></tr>
	                  		<tr><td><b>Specialization </b></td><td>:</td><td>${FriendseducationWORK.otherGraduation}</td></tr>
	                    	<tr><td><b>PG College Name </b></td><td>:</td><td>${FriendseducationWORK.PGCollege}</td></tr>
							<tr><td><b>PG Degree</b></td><td>:</td><td>${FriendseducationWORK.PGDegree}</td></tr>
	                    	<tr><td><b>Specialization </b></td><td>:</td><td>${FriendseducationWORK.otherPG}</td></tr>
	                    	<tr><td><b>Email-Id</b></td><td>:</td><td>${FriendseducationWORK.userMail}</td></tr> 
						  </table>
	                	</c:forEach>
	                 </c:if>
	            	</div>
	            </div>
            
            <div id="OutsideProfileDetails">
            <div id="ProfileDetails">
             <h3>Hobbies Details</h3>
             <c:if test="${!empty FriendshobbiesList}">
             <c:forEach items="${FriendshobbiesList}" var="FriendshobbiesDetails">
             <table>
             
             <tr><td style="width: 200px;"><b>Hobbies </b></td><td>:</td><td>${FriendshobbiesDetails.hobbiesName}</td></tr>
             <tr><td><b>Favourite Music </b></td><td>:</td><td>${FriendshobbiesDetails.favouriteMusic}</td></tr>
             <tr><td><b>Favourite Book </b></td><td>:</td><td>${FriendshobbiesDetails.favouriteBooks}</td></tr>
             <tr><td><b>Dress Style </b></td><td>:</td><td>${FriendshobbiesDetails.dressStyletyle}</td></tr>
             <tr><td><b>Favourite TV show </b></td><td>:</td><td>${FriendshobbiesDetails.favouritrTvShows}</td></tr>
             <tr><td><b>Favourite Movie </b></td><td>:</td><td>${FriendshobbiesDetails.favouriteMovies}</td></tr>
             <tr><td><b>Favourite Sport </b></td><td>:</td><td>${FriendshobbiesDetails.sports}</td></tr>
             <tr><td><b>Food I Cook </b></td><td>:</td><td>${FriendshobbiesDetails.foodIcook}</td></tr>
             <tr><td><b>Vacation Destination </b></td><td>:</td><td>${FriendshobbiesDetails.vacationDestination}</td></tr>  
             </table>
             </c:forEach>
             </c:if>
            </div>
            </div>

			
			<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<h3>Religion Details</h3>
						<c:if test="${!empty religionList}">
									<table>
										<c:forEach items="${religionList}" var="religionDetails">
											<tr>
												<td style="width: 200px;"><b>Religion </b></td><td>:</td>
												<td>${religionDetails.religion}</td>
											</tr>
											<tr>
												<td><b>Cast </b></td><td>:</td>
												<td>${religionDetails.subCast}</td>
											</tr>


										</c:forEach>
									</table>
								
						</c:if>
					</div>

				</div>
			
			
			<div id="OutsideProfileDetails">
            <div id="ProfileDetails">
            <h3>Other Details</h3>
            <c:if test="${!empty FriendsotherDetailsList}">
            <c:forEach items="${FriendsotherDetailsList}" var="FriendsotherDetailsList">
            <table>
            <tr>
			  <td style="width: 200px"><b>Social Status </b></td><td>:</td>
			  <td style="width: 590px;">${FriendsotherDetailsList.socialStatus}</td>
			</tr>
			<tr>
				<td><b>Polytical Status </b></td><td>:</td>
			    <td>${FriendsotherDetailsList.polyticalstatus}</td>
		   </tr>
			<tr>
				<td><b>Social Activities </b></td><td>:</td>
			    <td>${FriendsotherDetailsList.socialact}</td>
			</tr>
			<tr>
				<td><b>Polytical Activities </b></td><td>:</td>
			    <td>${FriendsotherDetailsList.polyticalact}</td>
			</tr>
			<tr>
				<td><b>Cultural activities </b></td><td>:</td>
			    <td>${FriendsotherDetailsList.culturalact}</td>
		   </tr>
            
            
            
            </table>
            </c:forEach>
             </c:if>
            </div>
            </div>
            
            
            <div id="OutsideProfileProducts">
            	 <h3> Products</h3>
            	<div id="ProfileProducts" style="padding-right: 55px;">
							<c:if test="${!empty FriendsProductList}">
								<c:forEach items="${FriendsProductList}" var="FriendsproductNAME">
									<table width=98% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px;margin-bottom: 5px;">
										<tr>
											<td width="40"><img src="${pageContext.request.contextPath}/resources/ProductImages/${FriendsproductNAME.imgPath}" title="${FriendsproductNAME.productName}" height="80" width="80" style="margin: 4px auto auto 4px;border-radius: 50px;border: 3px solid #F00;"></td>
											<td><a style="font-size: 22px;color: rgba(42, 163, 240, 0.68);">${FriendsproductNAME.productName}</a></td>
										</tr>
										<tr>
											<td></td>
											<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Product Details :</b> ${FriendsproductNAME.productDetails}</a></td>
										</tr>
									</table>
								</c:forEach>
							</c:if>
						</div>
            </div>
            	 
            	 <div id="OutsideFriends">
            	 	<h3>Friend's</h3>
            		<div id="Friends" style="padding-right: 55px;">
						<c:if test="${!empty userFriendsList}">
							<c:forEach items="${userFriendsList}" var="userFriends">
								<table style="width:50%;border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px;margin-top: 10px;margin-bottom: 35px;">									
									<tr>
										<td>
											<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
												<table>
													<tr>
														<td rowspan="2">
														<img
															src="${pageContext.request.contextPath}/resources/ProfileImages/${userFriends[4]}"
															height="72" width="70">
														</td>
													</tr>
													<tr>
														<td><input type="hidden" name="friendsEmailId" value="${userFriends[2]}"> 
															<c:if test="${userFriends[2]!=loginUser.email}">
															<input type="submit" id="FriendsName" style="font-size: 22px;" value="${userFriends[0]} ${userFriends[1]}"> 
															</c:if>
															<c:if test="${userFriends[2]==loginUser.email}">
																<a href="Profile">${userFriends[0]} ${userFriends[1]} (You)</a>
															</c:if>
															<br>
															<a style="font-size: 16px;color: rgba(249, 35, 9, 0.50); float: left;">${userFriends[6]} </a><br>
															<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Works At :</b> ${userFriends[5]} </a><br>
															<a style="font-size: 16px;color: rgba(59, 79, 105, 0.62); float: left;"><b style="color: green;">Home Address :</b> ${userFriends[7]} </a>
															<%-- <a><font color="">Works At :</font><font color="gray" size="2"> ${userFriends[5]}</font></a> --%>
														</td>
													</tr>
												</table>
											</form>


										</td>
												</tr>
											</table>
										</c:forEach>
							</c:if>
						
					
					</div>
					</div>
            
            
            <!-- <div style="height: 300px;width: 1400px;"> -->
            
            <div id="OutsideInterestAreas" style="width: 760px;border: 1px solid rgba(245, 186, 118, 0.8);margin: -15px auto 20px 10px;">
            	<h3>IntrestAreas Details</h3>
            <div id="InterestAreas" style="width: 730px;border: none;">
            
            <c:if test="${!empty FriendsintrestAreasList}">
           <c:forEach items="${FriendsintrestAreasList}" var="FriendsintrestAreasDetails">
									
											<c:set var="tempStr" value="${fn: split(FriendsintrestAreasDetails.interestId,',')}"></c:set>
											
											<c:forEach items="${tempStr}" var="intrestAreaNumber">
							
							<c:if test="${intrestAreaNumber=='1'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png" title="Sports" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Sports</h4> </div>
							</c:if>
							<c:if test="${intrestAreaNumber=='2'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/2-DRAWING.png" title="Drawing" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Drawing</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='3'}">
								<div style="width: 120px; float: left;"><img src="${pageContext.request.contextPath}/resources/icons/3-PhotoGraphy.png" title="PhotoGraphy" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">PhotoGraphy</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='4'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/4-TRAVELLING.png" title="Travelling"><h4 style="margin-top:-5px">Travelling</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='5'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/5-musics.png" title="Music" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Music</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='6'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/6-READING.png" title="Reading" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Reading</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='7'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/7-BROWSING.png" title="Browsing" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Browsing</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='8'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/8-BIKE RIDING.png" title="Bike Riding" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Bike Riding</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='9'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/9-CAR_RIDING.png" title="Car Riding"style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Car Riding</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='10'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png" title="Trekking" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Trekking</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='11'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/11-Movies-.png" title="Watching Movies" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Movies</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='12'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/12-SocialWork.jpg" title="Social Work" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Social Work</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='13'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/13-POLITICAL.png" title="Politics" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Politics</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='14'}">
								<div style="width: 140px; float: left;"><img src="${pageContext.request.contextPath}/resources/icons/14-parties.png" title="Friends/Parties/dating" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Friends/Parties/dating</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='15'}">
							<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/15-shopping-bag.png"  title="Shopping" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Shopping</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='16'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/16-business.png"  title="Business" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Business</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='17'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/17-drama.png" title="Drama" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Drama</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='18'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/18-CIRCUS.png" title="Circus" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Circus</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='19'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/19-DanceShow.png" title="Dance Show" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Dance Show</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='20'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/PhotoGallary.png" title="Cultural Activities" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Cultural Activities</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='21'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/21-SPEEECH.png" title="Speech" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Speech</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='22'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/22-gym.png" title="Gym/Health Club" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Gym/Health Club</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='23'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/23-teaching.png" title="Teaching" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Teaching</h4></div>
							</c:if>
							<c:if test="${intrestAreaNumber=='24'}">
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/24-SPIRTUALITY.png" title="Spirituality" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Spirituality</h4></div>
							</c:if>
							
						</c:forEach>
											
									
								</c:forEach>
             </c:if>
            </div>
            </div>
            
           
            <!-- </div> -->
            
            
            
            
            </div>
            </div>
            
			
			<div id="rightMain" style="background-color: bisque;border: none;">
				<%@include file="RightContainer.jsp" %>
			</div>
			
			
		</div>
		
		
		<%@include file="footer.jsp" %>
		
		
    </center>
    </body>
</html>
