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
	   <script type="text/javascript">
	   function jumpcomment(NotificationId) {
			/* alert(NotificationId); */
			document.getElementById("notificationId").value = NotificationId;

			var temp = document.getElementById("submit1").click();
		}
	   </script>
	<style>
	h3 {
		background-color: transparent;
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
	
	#ProfileProducts {
		padding-right: 30px;
		border-radius: 3px;
		margin-right: 465px;
		border: 1px solid gray;
		width: 462px;
		height: 300px;
		overflow: auto;
		background-color: bisque;
		margin-bottom: 1px;
	}
	
	#OutsideProfileProducts {
		border-radius: 3px;
		margin-right: 465px;
		border: 1px solid gray;
		width: 462px;
		height: 300px;
		overflow: hidden;
		background-color: bisque;
		margin-bottom: 1px;
	}
	#NotificationTopHome{
    border-radius: 5px;
    width: 350px;
    height: 300px;
    background-color: bisque;
    display: none;
    margin-left: 650px;
    border: 1px solid gray; 
    position: absolute;
    overflow: hidden;
    /* style="height: auto ;overflow:auto" */
 }
#InsideNotificationTopHome{
    border-radius: 5px;
    width: 350px;
    height: 300px;
    background-color: bisque;
    /* margin-left: 650px; */
    border: 1px solid gray; 
    position: absolute;
    overflow: auto;
 }
	</style>
<title>FriendsProfilePage</title>
    </head>
    <body>
    <center>
        <div id="mainProfile">
            <div id="Header">

                
                <label style="margin-left: 470px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <c:if test="${! empty ProfileImageList}">
						<c:forEach items="${ProfileImageList}" var="ProfileImage">
							<img width="140px" height="140px"
								src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
							<br>&nbsp;&nbsp;&nbsp;

						</c:forEach>
					</c:if>
                </div>
            </div>
            <div id="hiderMenu">
				<a id="anchor" href="Home"><font color="white">Home</font> </a> 
				<a	id="anchor" href="Profile"><font color="white">My Profile</font> </a>
				<a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>	</a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
			</div>
            
            
            
            <div id="NeedTopProfile">
                <table>
                    <label><font color="purple">Need Something?</font></label>
                    <a onclick="return DisableINeedBlockPro()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
                    <tr>
                <td>I Need :</td>
                <td><input type="text" placeholder="Write your Need here...." style="width: 400px; height: 30px;"></td>
                </tr>
                <tr>
                <td>
                Description :
                </td>
                <td>
                    <textarea type="text" placeholder="Write your Need here...." style="width: 400px; height: 100px; resize: none;"></textarea>
                </td>
                </tr>
                <tr>
                <td>
                Contact No :
                </td>
                <td>
                    <input type="text" placeholder="Write your Need here...." style="width: 400px; height: 30px;"><br><br>
                </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                <input type="submit" value="Ask for Solution" style="margin-left: 287px;" onclick="return DisableINeedBlock()">
                </td>
                </tr>
                </table>
            </div>
            
            
            <div id="NotificationTopHome">
				<div id="InsideNotificationTopHome">
				<table width="100%">
					<th style="background-color: #fab039"><font color="white">Notification</font>
						<a onclick="return DisableNotificBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
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
				<table style="float: right;"><tr><td><input type="submit" style="border: none; background: none;" value="See Old Notifications"></td></tr></table></form>
			</div>
            </div>
            <div id="RequestTopHome">
				<table width=100%>
					<th colspan=3 style="background-color: #fab039"><font color=white>
					Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							style="width: 40px; height: 40px; float: right;"></a></th>
							<c:if test="${!empty friendRequestList}">
					<c:forEach items="${friendRequestList}" var="friendRequest">
					<form action="/vanjariudyogvishwa-v2/acceptFriendRequest" method="post">
					
					<tr align="center">
					<input type="hidden" name="requestFrom" value="${friendRequest.requestFrom}">
					<input type="hidden" name="requestTo" value="${loginUser.email}">
						<td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" 
							height="30" width="30"></td>
						<td>
						<b>${friendRequest.requestFrom}</b><br>
						java developer @ RBNelite</td>
						<td><input type="submit" name="status" value="Accept" class="connectBtn">
						
						<input type="submit" name="status" value="Reject" class="connectBtn"></td>

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
								style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					
				</table>
			</div>
            <div style="height: 300px;width: 1400px;">
            
            <div id="OutsideInterestAreas">
            <div id="InterestAreas">
            <h3>IntrestAreas Details</h3>
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
								<div id="IntrestAreaImageProfile"><img src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png" title="Tracking" style="width: 50px; height: 50px;"><h4 style="margin-top:-5px">Tracking</h4></div>
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
            <div id="OutsideProfileProducts">
            <div id="ProfileProducts"><h3> Products</h3>
            <c:if test="${!empty FriendsProductList}">
            <c:forEach items="${FriendsProductList}" var="FriendsproductNAME">
            <table>
            <tr>
	        <td>
				<img src="${pageContext.request.contextPath}/resources/images/product1.png" title="${FriendsproductNAME.productName}" style="width: 70px; height: 60px;">
		    </td>
		    <td>
				<h4 style="margin-top:-5px">${FriendsproductNAME.productName}</h4>
		  </td>
		  </tr> 
          </table>
           </c:forEach>
            </c:if>
            </div>
            </div>
            <div id="Friends">
					<h3><img src="${pageContext.request.contextPath}/resources/images/friends1.png" style="width: 70px; height: 60px;"> Friend's</h3>
					
					<table width=90% >
							<c:if test="${!empty userFriendsList}">
								<c:forEach items="${userFriendsList}" var="userFriends">
									
											<tr>
												<td style="border: 1px solid gray;">
													
											<form action="/vanjariudyogvishwa-v2/FriendProfile"
												method="post">

												<table>
													<tr>
														<td rowspan="2">
														<img
															src="${pageContext.request.contextPath}/resources/ProfileImages/${userFriends[4]}"
															height="72" width="70">
														</td>
													</tr>
													<tr>
														<td><input type="hidden" name="friendsEmailId"
															value="${userFriends[2]}"> <input type="submit"
															style="background: none; border: none;"
															value="${userFriends[0]} ${userFriends[1]}"> <br>
															<a><font color="gray" size="2">Works @
																	Rbnelite</font></a>
												</table>
											</form>


										</td>
												</tr>
										</c:forEach>
							</c:if>
						</table>
					
					</div>
            </div>
            
            <div id="OutsideProfileDetails">
            <div id="ProfileDetails">
            	<h3>Education Details</h3>
            	<c:if test="${!empty FriendseducationworkList}">
                  <c:forEach items="${FriendseducationworkList}" var="FriendseducationWORK">
                  <table>
                  <tr>
                  <td style="width: 200px;"><b>Name of School :</b></td><td>${FriendseducationWORK.school}</td></tr>
                  <tr><td><b>Name of College :</b></td><td>${FriendseducationWORK.collage}</td></tr>
                  <tr><td><b>Graduation Degree :</b></td><td>${FriendseducationWORK.graduation}</td></tr>
                   <tr><td><b>Specialization :</b></td><td>${FriendseducationWORK.otherGraduation}</td></tr>
                    <tr><td><b>PG College Name :</b></td><td>${FriendseducationWORK.PGCollege}</td></tr>
                     <tr><td><b>PG Degree:</b></td><td>${FriendseducationWORK.PGDegree}</td></tr>
                     
                    <tr><td><b>Specialization :</b></td><td>${FriendseducationWORK.otherPG}</td></tr>
                      <tr><td><b>Email-Id:</b></td><td>${FriendseducationWORK.userMail}</td></tr> 
                      </table>
                  </c:forEach>
                 </c:if>
            </div>
            </div>
            
           <div id="OutsideProfileDetails"> <div id="ProfileDetails">Contact Details </div></div>
            
          
             <div id="OutsideProfileDetails">
            <div id="ProfileDetails">
             <h3>Hobbies Details</h3>
             <c:if test="${!empty FriendshobbiesList}">
             <c:forEach items="${FriendshobbiesList}" var="FriendshobbiesDetails">
             <table>
             
             <tr><td style="width: 200px;"><b>Hobbies :</b></td><td>${FriendshobbiesDetails.hobbiesName}</td></tr>
             <tr><td><b>Favourite Music :</b></td><td>${FriendshobbiesDetails.favouriteMusic}</td></tr>
             <tr><td><b>Favourite Book :</b></td><td>${FriendshobbiesDetails.favouriteBooks}</td></tr>
             <tr><td><b>Favourite TV show :</b></td><td>${FriendshobbiesDetails.favouritrTvShows}</td></tr>
             <tr><td><b>Favourite Sport :</b></td><td>${FriendshobbiesDetails.sports}</td></tr>
              <tr> 	<td><b>Food I Cook :</b></td>    <td>${FriendshobbiesDetails.foodIcook}</td></tr>  
             </table>
             </c:forEach>
             </c:if>
            </div>
            </div>
            
            
            
            <div id="OutsideProfileDetails">
            <div id="ProfileDetails"><h3>Religion & Ethnicity Details</h3></div>
            </div>
            <div id="OutsideProfileDetails">
            <div id="ProfileDetails">Other Details
            <c:if test="${!empty FriendsotherDetailsList}">
            <c:forEach items="${FriendsotherDetailsList}" var="FriendsotherDetailsList">
            <table>
            <tr>
			  <td style="width: 200px"><b>Social Status :</b></td>
			  <td style="width: 590px;">${FriendsotherDetailsList.socialStatus}</td>
			</tr>
			<tr>
				<td><b>Polytical Status :</b></td>
			    <td>${FriendsotherDetailsList.polyticalstatus}</td>
		   </tr>
			<tr>
				<td><b>Social Activities :</b></td>
			    <td>${FriendsotherDetailsList.socialact}</td>
			</tr>
			<tr>
				<td><b>Polytical Activities :</b></td>
			    <td>${FriendsotherDetailsList.polyticalact}</td>
			</tr>
			<tr>
				<td><b>Cultural activities :</b></td>
			    <td>${FriendsotherDetailsList.culturalact}</td>
		   </tr>
            
            
            
            </table>
            </c:forEach>
             </c:if>
            </div>
            </div>
            <div id="RightProfile">
				<div id="outside_Photos">
					<div id="Photos">
						<h3><img src="${pageContext.request.contextPath}/resources/images/PhotoGallary.png" style="width: 30px; height: 30px;"> Photos </h3>
						
							

					</div>
				</div>
				<div id="OuterRightStatusProfile">
					<div id="RightUpdatedStatusProfile">
						<h3>Updated Status</h3>
						<a>@@@@@@@@@@ @@@@@@@@@ @@@@@@@@ @@@@@@@@@@@@@ @@@@@@@@@@ @@@@@@@@@@@@ @@@@@@@@@ @@@@
							@@@@@@@@@@@ @@@@ @@@@@@@@@ @@@@@ @@@@@@@@@@@@
							@@@@@@@ @@@@@@@@ @@@@@@@@@@@ @@@@@@@@@ @@@@@@@ @@@@@@@@@@@ </a>
 
						<%-- <img src="${pageContext.request.contextPath}/resources/images/photo.png" style=" margin-left:-400px; width: 70px; height: 60px;"> --%>
					</div>
				</div>

			</div>

        </div>
    </center>
    </body>
</html>
