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
	   <script src="<c:url value="/resources/js/RBNelite.js" />"></script>
	   <style>
	   #OutsideInterestAreas{
	
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
	padding-right:30px;
	border-radius: 3px;
	margin-right:465px;
	border: 1px solid gray;
	width: 462px;
	height: 300px;
	overflow:auto;
	background-color: bisque;
	margin-bottom: 1px;
}
#OutsideProfileProducts {
	border-radius: 3px;
	margin-right:465px;
	border: 1px solid gray;
	width: 462px;
	height: 300px;
	overflow:hidden;
	background-color: bisque;
	margin-bottom: 1px;
	
}
	   </style>
        <title>FriendsProfilePage</title>
    </head>
    <body>
    <center>
        <div id="main">
            <div id="Header">

                
                <label style="margin-left: 470px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="images/DefaultProfileImg.png">
                    <br>&nbsp;&nbsp;&nbsp;
                    <a href="#">Change Photo</a>
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
                <a onclick="return DisableNotificBlockPro()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                
            </div>
            
            <div id="RequestTopHome">
                <a onclick="return DisableRequestBlockPro()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                
            </div>
            <div id="SettingTopHome">
                <a>Change Account Setting</a>
                <a onclick="return DisableSettingBlock()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                <br>
                <a href="AccountSetting.jsp">More Settings...</a>
            </div>
            <div style="height: 300px;width: 1400px;">
            
            <div id="OutsideInterestAreas">
            <div id="InterestAreas">Interest Areas
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
            <div id="ProfileProducts"> Products
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
            <div id="Friends">Friend's</div>
            </div>
            
            
            <div id="ProfileDetails">Education Details
            	<c:if test="${!empty FriendseducationworkList}">
                  <c:forEach items="${FriendseducationworkList}" var="FriendseducationWORK">
                  <table>
                  <tr>
                  <td style="width: 200px;"><b>Name of School :</b></td><td>${FriendseducationWORK.school}</td></tr>
                  <tr><td><b>Name of College :</b></td><td>${FriendseducationWORK.collage}</td></tr>
                  <tr><td><b>Graduation Degree :</b></td><td>${FriendseducationWORK.graduation}</td>></tr>
                   <tr><td><b>Specialization :</b></td><td>${FriendseducationWORK.otherGraduation}</td></tr>
                    <tr><td><b>PG College Name :</b></td><td>${FriendseducationWORK.PGCollege}</td></tr>
                     <tr><td><b>PG Degree:</b></td><td>${FriendseducationWORK.PGDegree}</td></tr>
                     
                    <tr><td><b>Specialization :</b></td><td>${FriendseducationWORK.otherPG}</td></tr>
                      <tr><td><b>Email-Id:</b></td><td>${FriendseducationWORK.userMail}</td></tr> 
                      </table>
                  </c:forEach>
                 </c:if>
            </div>
            
            <div id="ProfileDetails">Contact Details </div>
            
            <!--<div id="RightUpdatedStatus">Updated Status</div>-->
            <div id="ProfileDetails">Family Details
   
             </div>
            <div id="ProfileDetails">Hobbies Details
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
            
            
            <div id="ProfileDetails">Astro Details
            <c:if test="${!empty FriendsastroList}">
            <c:forEach items="${FriendsastroList}" var="FriendsastroDetails">
           <table>
           <tr><td><b>Country :</b></td><td>${FriendsastroDetails.country}</td></tr>
           <tr><td><b>City :</b></td><td>${FriendsastroDetails.city}</td></tr>
			<tr><td><b>Zodiac :</b></td><td>${FriendsastroDetails.zodiac}</td></tr>					
            
            
            </table>
            </c:forEach>
            </c:if>
            </div>
            
            
            
            <div id="ProfileDetails">Religion & Ethnicity Details</div>
            <div id="ProfileDetails">Lifestyle and Attributes Details
            <c:if test="${!empty FriendsLifeStylelist}">
            <c:forEach items="${FriendsLifeStylelist}" var="FriendslifeStyleDetails"> 
            <table>
            <tr><td><b>Diet :</b></td><td>${FriendslifeStyleDetails.diet}</td></tr>
            <tr><td><b>Smoke :</b></td><td>${FriendslifeStyleDetails.smoke}</td></tr>
            <tr><td><b>Drink :</b></td><td>${FriendslifeStyleDetails.drink}</td></tr>
		    <tr><td><b>Complexion :</b></td><td>${FriendslifeStyleDetails.complexion}</td></tr>
		    <tr><td><b>Body Type :</b></td><td>${FriendslifeStyleDetails.bodytype}</td></tr>

            <tr><td><b>Blood Group :</b></td><td>${FriendslifeStyleDetails.bloodgroup}</td></tr>
			<tr><td><b>Weight :</b></td><td>${FriendslifeStyleDetails.weight}</td></tr>
            </table>
            </c:forEach>
            </c:if>
            </div>
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
            
            <div id="RightProfile">
                <div id="Photos">Photos</div>
                <div id="RightUpdatedStatus">Updated Status</div>
                
            </div>

        </div>
    </center>
    </body>
</html>
