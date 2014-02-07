
<%-- 
    Document   : Profile
    Created on : Dec 9, 2013, 6:10:34 PM
    Author     : dogkiller
--%>


<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style4.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>





<title>Profile2 Page</title>
<style type="text/css">
h3 {
	 background-color: transparent; 
	/* background-color:#00FF00; */
	margin-top: 0px;
	
}

input[type=text]{
	width: 400px;
	height: auto;
	font-size: large;

}

#IntrestAreaImages{
	width: 100px;
	height: 50px;

}
</style>



</head>
<body>
	<center>
		<div id="mainProfile">
			<div id="Header">


				<label style="margin-left: 470px;">WelCome
					! ${CurrentEmailId}</label> <br>
				<div id="profile_photo">
					<img
						src="${pageContext.request.contextPath}/resources/images/DefaultProfileImg.png">
					<br>&nbsp;&nbsp;&nbsp; <a href="#">Change Photo</a>
				</div>
			</div>
			<div id="hiderMenu">
				<a id="anchor" href="Home"><font color="white">Home</font> </a> <a
					id="anchor" href="#"><font color="indigo">My
						Profile</font> </a> <a id="anchor" href="message"><font color="white">Message</font>
				</a> <a id="anchor" href="#" onclick="DisplayINeedBlockPro()"><font
					color="white">Looking for</font> </a> <a id="anchor" href="#"
					onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>
				</a> <a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font
					color="white">Requests</font> </a> <a id="anchor" href="#"
					onclick="return DisplaySettingBlock()"><font color="white">Setting</font>
				</a> <a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
			</div>



			<div id="NeedTopProfile">
				<table>
					<label><font color="purple">Need Something?</font> </label>
					<a onclick="return DisableINeedBlockPro()"> <img
						src="${pageContext.request.contextPath}/resources/images/close.png"
						style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;">
					</a>
					<tr>
						<td>I Need :</td>
						<td><input type="text" placeholder="Write your Need here...."
							style="width: 400px; height: 30px;"></td>
					</tr>
					<tr>
						<td>Description :</td>
						<td><textarea type="text"
								placeholder="Write your Need here...."
								style="width: 400px; height: 100px; resize: none;"></textarea></td>
					</tr>
					<tr>
						<td>Contact No :</td>
						<td><input type="text" placeholder="Write your Need here...."
							style="width: 400px; height: 30px;"><br> <br></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="Ask for Solution"
							style="margin-left: 287px;" onclick="return DisableINeedBlock()">
						</td>
					</tr>
				</table>
			</div>


			<div id="NotificationTopHome">
				<a onclick="return DisableNotificBlockPro()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;">
				</a>

			</div>

			<div id="RequestTopHome">
				<a onclick="return DisableRequestBlockPro()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;">
				</a>

			</div>
			<div id="SettingTopHome">
				<a>Change Account Setting</a> <a
					onclick="return DisableSettingBlock()"> <img
					src="${pageContext.request.contextPath}/resources/images/close.png"
					style="width: 40px; height: 40px; float: right;">
				</a> <br> <a href="AccountSetting">More Settings...</a>
			</div>
			<div style="height: 300px; width: 1400px;">
				<div id="OutsideInterestAreas">
				<div id="InterestAreas">
					<c:if test="${!empty intrestAreasList}">
					<form action="/vanjariudyogvishwa-v2/EditIntrestAreasDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editIntrestAreasReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
						<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3>IntrestAreas Details</h3>
								
									<c:forEach items="${intrestAreasList}" var="intrestAreasDetails">
									
											<c:set var="tempStr" value="${fn: split(intrestAreasDetails.interestId,',')}"></c:set>
											
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
								
								
								
						</form>
					</c:if>
					<c:if test="${!empty editIntrestAreasDetailsList}">
					
						<form action="/vanjariudyogvishwa-v2/EditIntrestAreas">
						
						<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3>Edit IntrestAreas Details</h3>
						<c:forEach items="${editIntrestAreasDetailsList}" var="editIntrestAreasDetails">
						
						<c:set var="tempStr" value="${fn: split(editIntrestAreasDetails.interestId,',')}"></c:set>
							
						
						
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
								
								
								
						</form>
					</c:if>
					
					
				</div>
				</div>
				
				
				<div id="OutsideProfileProducts">
				<div id="ProfileProducts">

					<h3>Products</h3>
								

					<c:if test="${!empty ProductList}">
						<c:forEach items="${ProductList}" var="productNAME">
							
							
							<div>
								<table>
									<tr>
										<td>
											<img src="${pageContext.request.contextPath}/resources/images/product1.png" title="${productNAME.productName}" style="width: 70px; height: 60px;">
										</td>
										<td>
											<h4 style="margin-top:-5px">${productNAME.productName}</h4>
										</td>
									</tr>
								</table>
							</div>

						</c:forEach>

					</c:if>


				</div>
				</div>
				<div id="Friends">
					<h3><img src="${pageContext.request.contextPath}/resources/images/friends1.png" style="width: 70px; height: 60px;"> Friend's</h3>
					
				</div>
			</div>
			<div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
					<c:if test="${!empty educationworkList}">
					<form action="/vanjariudyogvishwa-v2/EditEducationDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editEducationReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
						<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3><img src="${pageContext.request.contextPath}/resources/images/Education Details.png"
								style=" float:left; width: 70px; height: 60px;">Education Details</h3>
						<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${educationworkList}" var="educationWORK">
										<tr>
											<td style="width: 200px;"><b>Name of School :</b></td>
											<td>${educationWORK.school}</td>
										</tr>
										<tr>
											<td><b>Name of College :</b></td>
											<td>${educationWORK.collage}</td>
										</tr>
										<tr>
											<td><b>Graduation Degree :</b></td>
											<td>${educationWORK.graduation}</td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td>${educationWORK.otherGraduation}</td>
										</tr>
										<tr>
											<td><b>PG College Name :</b></td>
											<td>${educationWORK.PGCollege}</td>
										</tr>
										<tr>
											<td><b>PG Degree:</b></td>
											<td>${educationWORK.PGDegree}</td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td>${educationWORK.otherPG}</td>
										</tr>
										
									</c:forEach>
								</table>
								</div>
								</form>
							</c:if>
							<c:if test="${!empty EditEducationDetailsList}">
							<form action="/vanjariudyogvishwa-v2/EditEducation" method="post">
								<input type="hidden" name="userMail"
								value="${CurrentEmailId}">
							<h3><img src="${pageContext.request.contextPath}/resources/images/Education Details.png"
								style="float:left; width: 70px; height: 60px;">Edit Education Details</h3>

								
							<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${EditEducationDetailsList}" var="EditEducationDetails">
										<tr>
											<td style="width: 200px;"><b>Name of School :</b></td>
											<td><input type="text" name="school"
													value="${EditEducationDetails.school}"></td>
										</tr>
										<tr>
											<td><b>Name of College :</b></td>
											<td><input type="text" name="collage"
													value="${EditEducationDetails.collage}"></td>
										</tr>
										<tr>
											<td><b>Graduation Degree :</b></td>
											<td>
											<select name="graduation" style="width: 400px; height: auto;">
												<option selected="selected">${EditEducationDetails.graduation}</option>
                                                <option>BA</option>
                                                <option>BBA</option>
                                                <option>B.B.M.</option>
                                                <option>BCA</option>
                                                <option>B.Com</option>
                                                <option>B.D.S</option>
                                                <option>B.Sc</option>
                                                <option>B.Sc.HS</option>
                                                <option>B.E</option>
                                                <option>B.Tech</option>
                                                <option>B.Ed.</option>
                                                <option>BHMCT</option>
                                                <option>B.Pharm</option>
                                                <option>D.T.L</option>
                                                <option>Diploma in Journalism</option>
                                                <option>Diploma in Philosophy</option>
                                                <option>Diploma in Social Work</option>
                                                <option>DM</option>
                                                <option>D.Ed</option>
                                                <option>GNM</option>
                                                <option>LLB</option>
                                                <option>LLM</option>
                                            </select>
													
													
													
													
													
													</td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td><input type="text" name="otherGraduation"
													value="${EditEducationDetails.otherGraduation}"></td>
										</tr>
										<tr>
											<td><b>PG College Name :</b></td>
											<td><input type="text" name="PGCollege"
													value="${EditEducationDetails.PGCollege}"></td>
										</tr>
										<tr>
											<td><b>PG Degree:</b></td>
											<td><input type="text" name="PGDegree"
													value="${EditEducationDetails.PGDegree}"></td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td><input type="text" name="otherPG"
													value="${EditEducationDetails.otherPG}"></td>
										</tr>
										<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editEducationBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
									</c:forEach>
								</table>
								</div>
							</form>
							</c:if>
							
							
						</div>

					</div>
			

				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<img id="EditProfileDetails"
							src="${pageContext.request.contextPath}/resources/images/edit1.png">
							<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3><img src="${pageContext.request.contextPath}/resources/images/ContactDetails.jpg"
								style="float:left; width: 70px; height: 60px;">Contact Details</h3>
						<c:if test="${!empty contactInfoList}">
							<table style="background-image: url('${pageContext.request.contextPath}/resources/images/ContactDetails.jpg');">
								<c:forEach items="${contactInfoList}" var="contactInfo">
									<tr>
										<td><b>Home Address :</b></td>
										<td>${contactInfo.homeAddress}</td>
									</tr>
									<tr>
										<td><b>Office Address :</b></td>
										<td>${contactInfo.officeAddress}</td>
									</tr>
									<tr>
										<%-- <td><b>Telephone No. :</b></td>
						<td>${contactInfo.telephone}</td> --%>
									</tr>

								</c:forEach>

							</table>


						</c:if>


					</div>
				</div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<form action="/vanjariudyogvishwa-v2/Family">
							<input id="EditProfileDetails" type="submit" value=""
								style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
							<h3>Family Details</h3>
							<c:if test="${!empty familyList}">
								<table>
									<c:forEach items="${familyList}" var="family">
										<tr>
											<td><b>Family Members :</b></td>
											<td>${family.familyValue}</td>
										</tr>
										<tr>
											<td><b>Family type :</b></td>
											<td>${family.familyType}</td>
										</tr>
										<tr>
											<td><b>Family Status :</b></td>
											<td>${family.familyStatus}</td>
										</tr>
										<tr>
											<td><b>Family Income :</b></td>
											<td>${family.familyIncome}</td>
										</tr>

									</c:forEach>
								</table>
							</c:if>
						</form>
					</div>
				</div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty hobbiesList}">
					<form action="/vanjariudyogvishwa-v2/EditHobbiesDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editHobbiesReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
						<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3>Hobbies </h3>
						<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${hobbiesList}" var="hobbiesDetails">
										<tr>
											<td style="width: 200px;"><b>Hobbies :</b></td>
											<td>${hobbiesDetails.hobbiesName}</td>
										</tr>
										<tr>
											<td><b>Favourite Music :</b></td>
											<td>${hobbiesDetails.favouriteMusic}</td>
										</tr>
										<tr>
											<td><b>Favourite Book :</b></td>
											<td>${hobbiesDetails.favouriteBooks}</td>
										</tr>
										<%-- <tr>
								<td><b>Dress Style :</b>
								</td>
								<td>${hobbiesDetails.DressStyletyle}</td>
							</tr> --%>
										<tr>
											<td><b>Favourite TV show :</b></td>
											<td>${hobbiesDetails.favouritrTvShows}</td>
										</tr>
										<%-- <tr>
								<td><b>Favourite Movie :</b>
								</td>
								<td>${hobbiesDetails.FavouriteMovies}</td>
							</tr> --%>
										<tr>
											<td><b>Favourite Sport :</b></td>
											<td>${hobbiesDetails.sports}</td>
										</tr>
										<tr>
											<td><b>Food I Cook :</b></td>
											<td>${hobbiesDetails.foodIcook}</td>
										</tr>
										<%-- <tr>
								<td><b>Vacation Destination :</b>
								</td>
								<td>${hobbiesDetails.VacationDestination}</td>
							</tr> --%>
									</c:forEach>
								</table>
								</div>
								</form>
							</c:if>
							
							<c:if test="${!empty editHobbiesList}">
					<form action="/vanjariudyogvishwa-v2/editHobbies" method="post">
					
					<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
					
					<h3>Edit Hobbies </h3>
						<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${editHobbiesList}" var="editHobbiesDetails">
										<tr>
											<td style="width: 200px;"><b>Hobbies :</b></td>
											<td><input type="text" name="hobbiesName"
													value="${editHobbiesDetails.hobbiesName}"></td>
										</tr>
										<tr>
											<td><b>Favourite Music :</b></td>
											<td><input type="text" name="favouriteMusic"
													value="${editHobbiesDetails.favouriteMusic}"></td>
										</tr>
										<tr>
											<td><b>Favourite Book :</b></td>
											<td><input type="text" name="favouriteBooks"
													value="${editHobbiesDetails.favouriteBooks}"></td>
										</tr>
									<%-- 	<tr>
								<td><b>Dress Style :</b>
								</td>
								<td><input type="text" name="DressStyletyle" value="${editHobbiesDetails.DressStyletyle}">
								</td>
							</tr> --%>
										<tr>
											<td><b>Favourite TV show :</b></td>
											<td><input type="text" name="favouritrTvShows"
													value="${editHobbiesDetails.favouritrTvShows}"></td>
										</tr>
										<%-- <tr>
								<td><b>Favourite Movie :</b>
								</td>
								<td><input type="text" name="FavouriteMovies"
													value="${editHobbiesDetails.FavouriteMovies}"></td>
							</tr> --%>
										<tr>
											<td><b>Favourite Sport :</b></td>
											<td><input type="text" name="sports"
													value="${editHobbiesDetails.sports}"></td>
										</tr>
										<tr>
											<td><b>Food I Cook :</b></td>
											<td><input type="text" name="foodIcook"
													value="${editHobbiesDetails.foodIcook}"></td>
										</tr>
										<%-- <tr>
								<td><b>Vacation Destination :</b>
								</td>
								<td><input type="text" name="VacationDestination"
													value="${editHobbiesDetails.VacationDestination}">
								</td>
							</tr> --%>
							
							<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editHobbiesBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
							
							
									</c:forEach>
								</table>
								</div>
					
					
					
					
					</form>
					</c:if>
							
						
					</div>
				</div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
					
					
						<c:if test="${!empty astroList}">
					<form action="/vanjariudyogvishwa-v2/EditAstroDetails">
						<input id="EditProfileDetails" type="submit" value=""
									name="editAstroReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
									<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3>Astro Details</h3>

						
							<table>
								<c:forEach items="${astroList}" var="astroDetails">
									<tr>
										<td><b>Country :</b></td>
										<td>${astroDetails.country}</td>
									</tr>
									<tr>
										<td><b>City :</b></td>
										<td>${astroDetails.city}</td>
									</tr>
									<tr>
										<td><b>Zodiac :</b></td>
										<td>${astroDetails.zodiac}</td>
									</tr>

								</c:forEach>
							</table>
							</form>
						</c:if>

						<c:if test="${!empty editAstroList}">
					<form action="/vanjariudyogvishwa-v2/editAstro" method="post">
					<input type="hidden" name="userMail"
								value="${CurrentEmailId}">
					<h3>Edit Astro Details</h3>
					<table>
								<c:forEach items="${editAstroList}" var="editAstroDetails">
									<tr>
										<td><b>Country :</b></td>
										<td><input type="text" name="country"
													value="${editAstroDetails.country}"></td>
									</tr>
									<tr>
										<td><b>City :</b></td>
										<td><input type="text" name="city"
													value="${editAstroDetails.city}"></td>
									</tr>
									<tr>
										<td><b>State :</b></td>
										<td><input type="text" name="state"
													value="${editAstroDetails.state}"></td>
									</tr>
									<tr>
										<td><b>Zodiac :</b></td>
										<td><input type="text" name="zodiac"
													value="${editAstroDetails.zodiac}"></td>
									</tr>
									
									<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editAstroBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
									
								</c:forEach>
							</table>
						</form>
					</c:if>
					</div>
				</div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<img id="EditProfileDetails"
							src="${pageContext.request.contextPath}/resources/images/edit1.png">
						<h3>Religion & Ethnicity Details</h3>

						<c:if test="${!empty religionList}">
							<table>
								<c:forEach items="${religionList}" var="religionDetails">
									<tr>
										<td><b>Religion :</b></td>
										<td>${religionDetails.religionname}</td>
									</tr>
									<tr>
										<td><b>Cast :</b></td>
										<td>${religionDetails.relcast}</td>
									</tr>
									<tr>
										<td><b>MotherToung :</b></td>
										<td>${religionDetails.mothertoung}</td>
									</tr>
									<tr>
										<td><b>Native Place :</b></td>
										<td>${religionDetails.nativeplace}</td>
									</tr>

								</c:forEach>
							</table>
						</c:if>

					</div>

				</div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty LifeStylelist}">
							<form action="/vanjariudyogvishwa-v2/EditLifeStyleDetails">
								<input id="EditProfileDetails" type="submit" value=""
									name="editLifeStyReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
						<h3>Lifestyle and Attributes Details</h3>
						<div id="InsideProfileDetails">
						
							<table>
								<c:forEach items="${LifeStylelist}" var="lifeStyleDetails">
									<tr>
										<td><b>Diet :</b></td>
										<td>${lifeStyleDetails.diet}</td>
									</tr>
									<tr>
										<td><b>Smoke :</b></td>
										<td>${lifeStyleDetails.smoke}</td>
									</tr>
									<tr>
										<td><b>Drink :</b></td>
										<td>${lifeStyleDetails.drink}</td>
									</tr>
									<tr>
										<td><b>Complexion :</b></td>
										<td>${lifeStyleDetails.complexion}</td>
									</tr>
									<tr>
										<td><b>Body Type :</b></td>
										<td>${lifeStyleDetails.bodytype}</td>
									</tr>

									<tr>
										<td><b>Blood Group :</b></td>
										<td>${lifeStyleDetails.bloodgroup}</td>
									</tr>
									<tr>
										<td><b>Weight :</b></td>
										<td>${lifeStyleDetails.weight}</td>
									</tr>

								</c:forEach>
							</table>
							</div>
							</form>
						</c:if>
						
						<c:if test="${!empty editLifeStyleList}">
							<form action="/vanjariudyogvishwa-v2/editLifeStyle" method="post">
								<input type="hidden" name="usermail"
								value="${CurrentEmailId}">
								<h3>Edit Lifestyle and Attributes Details</h3>
								<div id="InsideProfileDetails">
								
								<table>
								<c:forEach items="${editLifeStyleList}" var="editLifeStyleDetails">
									<tr>
										<td><b>Diet :</b></td>
										<td><input type="text" name="diet" value="${editLifeStyleDetails.diet}"></td>
									</tr>
									<tr>
										<td><b>Smoke :</b></td>
										<td><input type="text" name="smoke" value="${editLifeStyleDetails.smoke}"></td>
									</tr>
									<tr>
										<td><b>Drink :</b></td>
										<td><input type="text" name="drink" value="${editLifeStyleDetails.drink}"></td>
									</tr>
									<tr>
										<td><b>Complexion :</b></td>
										<td><input type="text" name="complexion" value="${editLifeStyleDetails.complexion}"></td>
									</tr>
									<tr>
										<td><b>Body Type :</b></td>
										<td><input type="text" name="bodytype" value="${editLifeStyleDetails.bodytype}"></td>
									</tr>

									<tr>
										<td><b>Blood Group :</b></td>
										<td><input type="text" name="bloodgroup" value="${editLifeStyleDetails.bloodgroup}"></td>
									</tr>
									<tr>
										<td><b>Weight :</b></td>
										<td><input type="text" name="weight" value="${editLifeStyleDetails.weight}"></td>
									</tr>
									
									
									<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editLifestyleBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
									
								</c:forEach>
							</table>
								
								</div>
							</form>
						</c:if>
								


					</div>
				</div>
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty otherDetailsList}">
							<form action="/vanjariudyogvishwa-v2/EditOtherDetails">
								<input id="EditProfileDetails" type="submit" value=""
									name="editOtherReqBtn"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								<input type="hidden" name="usermail"
								value="${CurrentEmailId}">

								<h3>Other Details</h3>
								<div id="InsideProfileDetails">

									<table>
										<c:forEach items="${otherDetailsList}" var="otherDetails">
											<tr>
												<td style="width: 200px"><b>Social Status :</b></td>
												<td style="width: 590px;">${otherDetails.socialStatus}</td>
											</tr>
											<tr>
												<td><b>Polytical Status :</b></td>
												<td>${otherDetails.polyticalstatus}</td>
											</tr>
											<tr>
												<td><b>Social Activities :</b></td>
												<td>${otherDetails.socialact}</td>
											</tr>
											<tr>
												<td><b>Polytical Activities :</b></td>
												<td>${otherDetails.polyticalact}</td>
											</tr>
											<tr>
												<td><b>Cultural activities :</b></td>
												<td>${otherDetails.culturalact}</td>
											</tr>


										</c:forEach>
									</table>
								</div>
							</form>
						</c:if>

						<c:if test="${!empty EditOtherDetailsList}">
							<form action="/vanjariudyogvishwa-v2/editOther" method="post">

								<input type="hidden" name="usermail"
								value="${CurrentEmailId}">

								<h3>Edit Other Details</h3>
								<div id="InsideProfileDetails">
									<table>
										<c:forEach items="${EditOtherDetailsList}"
											var="EditOtherDetails">
											<tr>
												<td style="width: 200px"><b>Social Status :</b></td>
												<td style="width: 590px;"><input type="text" name="socialStatus"
													value="${EditOtherDetails.socialStatus}"></td>
											</tr>
											<tr>
												<td><b>Polytical Status :</b></td>
												<td><input type="text" name="polyticalstatus" value="${EditOtherDetails.polyticalstatus}"></td>
											</tr>
											<tr>
												<td><b>Social Activities :</b></td>
												<td><input type="text" name="socialact"
													value="${EditOtherDetails.socialact}"></td>
											</tr>
											<tr>
												<td><b>Polytical Activities :</b></td>
												<td><input type="text" name="polyticalact"
													value="${EditOtherDetails.polyticalact}"></td>
											</tr>
											<tr>
												<td><b>Cultural activities :</b></td>
												<td><input type="text" name="culturalact"
													value="${EditOtherDetails.culturalact}"></td>
											</tr>

											<tr>
												<td colspan="1"><input type="submit" value="Edit"
													name="editOtherBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel"></td>
											</tr>
											<tr>
												<td><br></td>
												<td></td>
											</tr>
										</c:forEach>
									</table>
								</div>
							</form>

						</c:if>



					</div>

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

