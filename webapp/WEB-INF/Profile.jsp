<%-- 
    Document   : Profile
    Created on : Dec 9, 2013, 6:10:34 PM
    Author     : dogkiller
--%>


<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


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
	/* background-color: #fab039; */
	background-color:#00FF00;
	margin-top: 0px;
}

input[type=text]{
	width: 400px;
	height: auto;
	font-size: large;

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
					id="anchor" href="Profile"><font color="indigo">My
						Profile</font> </a> <a id="anchor" href="message"><font color="white">Message</font>
				</a> <a id="anchor" href="#" onclick="DisplayINeedBlockPro()"><font
					color="white">Looking for</font> </a> <a id="anchor" href="#"
					onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>
				</a> <a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font
					color="white">Requests</font> </a> <a id="anchor" href="#"
					onclick="return DisplaySettingBlock()"><font color="white">Setting</font>
				</a> <a id="anchor" href="Index"><font color="white">LogOut</font> </a>
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
				<div id="InterestAreas">
					<h3>Interest Areas</h3>
				</div>
				<div id="ProfileProducts">

					<h3><img src="${pageContext.request.contextPath}/resources/images/new-product.jpg"
								style="width: 70px; height: 60px;">Products</h3>
								

					<c:if test="${!empty ProductList}">
						<c:forEach items="${ProductList}" var="productNAME">
							<img
								src="${pageContext.request.contextPath}/resources/images/product1.png"
								style="float: left; width: 70px; height: 60px;">
							<a><font color="Purple"><b>
										${productNAME.productName}:</b></font></a>


						</c:forEach>

					</c:if>


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
							<form action="/vanjariudyogvishwa-v2/EditEducationDetails">

							<h3><img src="${pageContext.request.contextPath}/resources/images/Education Details.png"
								style="float:left; width: 70px; height: 60px;">Edit Education Details</h3>

								
							<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${EditEducationDetailsList}" var="EditEducationDetails">
										<tr>
											<td style="width: 200px;"><b>Name of School :</b></td>
											<td><input type="text"
													value="${EditEducationDetails.school}"></td>
										</tr>
										<tr>
											<td><b>Name of College :</b></td>
											<td><input type="text"
													value="${EditEducationDetails.collage}"></td>
										</tr>
										<tr>
											<td><b>Graduation Degree :</b></td>
											<td><input type="text"
													value="${EditEducationDetails.graduation}"></td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td><input type="text"
													value="${EditEducationDetails.otherGraduation}"></td>
										</tr>
										<tr>
											<td><b>PG College Name :</b></td>
											<td><input type="text"
													value="${EditEducationDetails.PGCollege}"></td>
										</tr>
										<tr>
											<td><b>PG Degree:</b></td>
											<td><input type="text"
													value="${EditEducationDetails.PGDegree}"></td>
										</tr>
										<tr>
											<td><b>Specialization :</b></td>
											<td><input type="text"
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
						<h3>Hobbies Details</h3>
						<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${hobbiesList}" var="hobbiesDetails">
										<tr>
											<td style="width: 200px;"><b>Hobbies :</b></td>
											<td>${hobbiesDetails.hobbies}</td>
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
					<form action="/vanjariudyogvishwa-v2/EditHobbiesDetails">
					
					
					
					<h3>Edit Hobbies Details</h3>
						<div id="InsideProfileDetails">
							
								<table>
									<c:forEach items="${editHobbiesList}" var="editHobbiesDetails">
										<tr>
											<td style="width: 200px;"><b>Hobbies :</b></td>
											<td><input type="text"
													value="${editHobbiesDetails.hobbies}"></td>
										</tr>
										<tr>
											<td><b>Favourite Music :</b></td>
											<td><input type="text"
													value="${editHobbiesDetails.favouriteMusic}"></td>
										</tr>
										<tr>
											<td><b>Favourite Book :</b></td>
											<td><input type="text"
													value="${editHobbiesDetails.favouriteBooks}"></td>
										</tr>
									<%-- 	<tr>
								<td><b>Dress Style :</b>
								</td>
								<td><input type="text" value="${editHobbiesDetails.DressStyletyle}">
								</td>
							</tr> --%>
										<tr>
											<td><b>Favourite TV show :</b></td>
											<td><input type="text"
													value="${editHobbiesDetails.favouritrTvShows}"></td>
										</tr>
										<%-- <tr>
								<td><b>Favourite Movie :</b>
								</td>
								<td><input type="text"
													value="${editHobbiesDetails.FavouriteMovies}"></td>
							</tr> --%>
										<tr>
											<td><b>Favourite Sport :</b></td>
											<td><input type="text"
													value="${editHobbiesDetails.sports}"></td>
										</tr>
										<tr>
											<td><b>Food I Cook :</b></td>
											<td><input type="text"
													value="${editHobbiesDetails.foodIcook}"></td>
										</tr>
										<%-- <tr>
								<td><b>Vacation Destination :</b>
								</td>
								<td><input type="text"
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
					<form action="/vanjariudyogvishwa-v2/EditAstroDetails">
					
					<h3>Edit Astro Details</h3>
					<table>
								<c:forEach items="${editAstroList}" var="editAstroDetails">
									<tr>
										<td><b>Country :</b></td>
										<td><input type="text"
													value="${editAstroDetails.country}"></td>
									</tr>
									<tr>
										<td><b>City :</b></td>
										<td><input type="text"
													value="${editAstroDetails.city}"></td>
									</tr>
									<tr>
										<td><b>Zodiac :</b></td>
										<td><input type="text"
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
							<form action="/vanjariudyogvishwa-v2/EditLifeStyleDetails">
								<h3>Edit Lifestyle and Attributes Details</h3>
								<div id="InsideProfileDetails">
								
								<table>
								<c:forEach items="${editLifeStyleList}" var="editLifeStyleDetails">
									<tr>
										<td><b>Diet :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.diet}"></td>
									</tr>
									<tr>
										<td><b>Smoke :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.smoke}"></td>
									</tr>
									<tr>
										<td><b>Drink :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.drink}"></td>
									</tr>
									<tr>
										<td><b>Complexion :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.complexion}"></td>
									</tr>
									<tr>
										<td><b>Body Type :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.bodytype}"></td>
									</tr>

									<tr>
										<td><b>Blood Group :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.bloodgroup}"></td>
									</tr>
									<tr>
										<td><b>Weight :</b></td>
										<td><input type="text" value="${editLifeStyleDetails.weight}"></td>
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
							<form action="/vanjariudyogvishwa-v2/EditOtherDetails">



								<h3>Edit Other Details</h3>
								<div id="InsideProfileDetails">
									<table>
										<c:forEach items="${EditOtherDetailsList}"
											var="EditOtherDetails">
											<tr>
												<td style="width: 200px"><b>Social Status :</b></td>
												<td style="width: 590px;"><input type="text"
													value="${EditOtherDetails.socialStatus}"></td>
											</tr>
											<tr>
												<td><b>Polytical Status :</b></td>
												<td><input type="text" value="${EditOtherDetails.polyticalstatus}"></td>
											</tr>
											<tr>
												<td><b>Social Activities :</b></td>
												<td><input type="text"
													value="${EditOtherDetails.socialact}"></td>
											</tr>
											<tr>
												<td><b>Polytical Activities :</b></td>
												<td><input type="text"
													value="${EditOtherDetails.polyticalact}"></td>
											</tr>
											<tr>
												<td><b>Cultural activities :</b></td>
												<td><input type="text"
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
						<h3><img src="${pageContext.request.contextPath}/resources/images/PhotoGallary.png" style="width: 70px; height: 60px;"> Photos </h3>
						
							

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
