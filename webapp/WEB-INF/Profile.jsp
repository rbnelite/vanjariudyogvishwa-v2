<%-- 
    Document   : Profile
    Created on : Dec 9, 2013, 6:10:34 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">

<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>
<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
<script src="<c:url value="/resources/js/VUVProfileUpdate.js" />"></script>
<script type="text/javascript">
	function DisplayChangePhotoBlock() {
		var dispPhoto = document.getElementById("ChangePhotoHome");
		dispPhoto.style.display = 'block';
	}

	function HideChangePhotoBlock() {
		var dispPhoto = document.getElementById("ChangePhotoHome");
		dispPhoto.style.display = 'none';
	}

	function jumpcomment(NotificationId) {
		/* alert(NotificationId); */
		document.getElementById("notificationId").value = NotificationId;

		var temp = document.getElementById("submit1").click();
	}
	function isCharKey(evt)
    {
		 var charCode=(evt.which) ? evt.which :event.keyCode;
		 
	        if(charCode >64 && charCode<123 || charCode==8)
	            return true;
	        return false;
    }
	function isNumberKey(evt)
	{
	    var charCode=(evt.which) ? evt.which :event.keyCode;
	    if((charCode>47 && charCode<58) || charCode ==8)
	        return true;
	    return false;
	}
</script>

<style type="text/css">
h3 {
	background-color: coral;
	/* background-color:#00FF00; */
	margin-top: 0px;
}
h4{
	font-family: "Verdana";
    font-size: 12px;
}

input[type="text"], select {
	margin-bottom: 10px;
}
select{
	width: 255px;
	height: 35px;
}
input[value="Edit"], input[type="reset"]{
	height: 30px;
	width: 67px;
	font-size: 16px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	cursor: pointer;
	border-radius:5px;
	background: -moz-linear-gradient(center top , #FAA51A, #F47A20) repeat scroll 0% 0% transparent;
    background-color: orange;
    color: black;
    border: 1px solid orange;
	margin-top: 10px;
	transition: all 1s;
}
input[value="Edit"]:HOVER, input[type="reset"]:HOVER{
	height: 30px;
	width: 67px;
	font-size: 16px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	cursor: pointer;
	border-radius:5px;
	background: -moz-linear-gradient(center top , #FAA51A, #F47A20) repeat scroll 0% 0% transparent;
    background-color: rgba(26, 118, 222, 0.43);
    color: rgba(216, 241, 242, 1);
    border: 1px solid orange;
    transition: all 1s;
}
#IntrestAreaImages {
	width: 100px;
	height: 50px;
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
	margin-left: 23px;
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
#InsideProfileDetails table{
	float: left;
	margin-left: 10px;
}
#InsideProfileDetails form table{
	float:none;
	margin-left: 10px;
}
#InsideProfileDetails table tr td {
	text-align: left;
}
#InsideProfileDetails table tr td b{
	font-size: 17px;
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}
</style>

<title>${loginUser.firstName}${loginUser.lastName}'s Profile Page on Vanjari Udyog Vishwa</title>

</head>
<body>
	<center>
		<div id="mainProfile">
			<%@include file="header.jsp" %>
			
			<div id="hiderMenu">
				<a id="anchor" href="Home">Home</a> 
				<a id="anchor" href="Profile"><font color="#E45FF2">My Profile</font></a>
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
			
			  
			
			
			
			<div id="outsidemiddleHome" style="margin-right: 300px; height: 1250px">
				<div id="middleHome" style="height: 1250px; padding-right: 55px;">
				
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty contactInfoList}">
							<input id="EditProfileDetails" type="submit" value="" name="editContactReqBtn" onclick="return dispEditContact();"
								style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">

								<div id="InsideProfileDetails">
									<h3>User Details</h3>
									<c:forEach items="${contactInfoList}" var="contactInfo">
										<table id="ContactDetailsTbl1" style="display: block;">
											<tr>
												<td style="width: 200px;"><b>Name</b></td>
												<td>:</td>
												<td>${contactInfo.firstName} ${contactInfo.middleName} ${contactInfo.lastName}</td>
											</tr>
											<tr>
												<td><b>Email ID</b></td>
												<td>:</td>
												<td>${contactInfo.emailId}</td>
											</tr>
											<tr>
												<td><b>Gender</b></td>
												<td>:</td>
												<td>${contactInfo.gender}</td>
											</tr>
											<tr>
												<td><b>BirthDate</b></td>
												<td>:</td>
												<td>${contactInfo.birthDate}</td>
											</tr>
											<tr>
												<td><b>Home Address</b></td>
												<td>:</td>
												<td>${contactInfo.homeAddress}</td>
											</tr>
											<tr>
												<td><b>Office Address</b></td>
												<td>:</td>
												<td>${contactInfo.officeAddress}</td>
											</tr>
											<tr>
												<td><b>Mobile No.</b></td>
												<td>:</td>
												<td>${contactInfo.contactNo}</td>

											</tr>
										</table>
									
										<form action="/vanjariudyogvishwa-v2/editContact" method="post">
											<input type="hidden" name="emailId" value="${loginUser.email}">
											<table id="ContactDetailsTbl2" style="display: none;">
												<tr>
													<td style="width: 200px;"><b>First Name</b></td>
													<td>:</td>
													<td>
														<input type="text" name="firstName" value="${contactInfo.firstName}" size="30" maxlength="15" placeholder="First Name" onkeypress="return isCharKey(event);">
													</td>
												</tr>
												<tr>
													<td><b>Middle Name</b></td>
													<td>:</td>
													<td>
														<input type="text" name="middleName" value="${contactInfo.middleName}" size="30" maxlength="15" placeholder="Middle Name" onkeypress="return isCharKey(event);">
													</td>
												</tr>
												<tr>
													<td><b>Last Name</b></td>
													<td>:</td>
													<td>
														<input type="text" name="lastName" value="${contactInfo.lastName}" size="30" maxlength="15" placeholder="Last Name" onkeypress="return isCharKey(event);">
													</td>
												</tr>
												<tr>
													<td><b>BirthDate</b></td>
													<td>:</td>
													<td><input type="text" name="birthDate"value="${contactInfo.birthDate}"></td>
												</tr>
												<tr>
													<td><b>Home Address</b></td>
													<td>:</td>
													<td><input type="text" name="homeAddress"value="${contactInfo.homeAddress}"></td>
												</tr>
												<tr>
													<td><b>Office Address</b></td>
													<td>:</td>
													<td><input type="text" name="officeAddress" value="${contactInfo.officeAddress}"></td>
												</tr>
												<tr>
													<td><b>Mobile No.</b></td>
													<td>:</td>
													<td><input type="text" name="telephone" value="${contactInfo.contactNo}" maxlength="10" placeholder="Mobile No." onkeypress="return isNumberKey(event)"></td>
												</tr>
												<tr>
													<td colspan="2"><input type="submit" value="Edit" name="editContactBtn" style="float: right;"></td>
													<td><input type="reset" value="Cancel" style="margin-left: 55px;" onclick="return hideEditContact();"></td>
												</tr>
											</table>
										</form>
									</c:forEach>
								</div>
						</c:if>

					</div>
				</div>
				
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty occupationList}">
							<input id="EditProfileDetails" type="submit" value="" name="editContactReqBtn" onclick="return dispEditOccupation();"
								style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">

								<div id="InsideProfileDetails">
									<h3>Employement Details</h3>
									<c:forEach items="${occupationList}" var="occupation">
										<table id="EmployementDetailsTbl1" style="display: block;">
											<tr>
												<td style="width: 200px;"><b>Company Name</b></td>
												<td>:</td>
												<td>${occupation.companyName}</td>
											</tr>
											<tr>
												<td><b>Occupation</b></td>
												<td>:</td>
												<td>${occupation.occupation}</td>
											</tr>
											<tr>
												<td><b>Annual Incom</b></td>
												<td>:</td>
												<td>${occupation.annualincome}</td>
											</tr>
											<tr>
												<td><b>Employement Type</b></td>
												<td>:</td>
												<td>${occupation.emptype}</td>
											</tr>
											<tr>
												<td><b>No of Employees</b></td>
												<td>:</td>
												<td>${occupation.numberofemp}</td>
											</tr>
											<tr>
												<td><b>Product Details</b></td>
												<td>:</td>
												<td>${occupation.productdetails}</td>
											</tr>
											<tr>
												<td><b>Web Address</b></td>
												<td>:</td>
												<td>${occupation.webAddress}</td>

											</tr>
										</table>
									
										<form action="/vanjariudyogvishwa-v2/editOccupation" method="post">
											<input type="hidden" name="usermail" value="${loginUser.email}">
											<table id="EmployementDetailsTbl2" style="display: none;">
												<tr>
													<td style="width: 200px;"><b>Company Name</b></td>
													<td>:</td>
													<td>
														<input type="text" name="companyName" value="${occupation.companyName}" >
													</td>
												</tr>
												<tr>
													<td><b>Occupation</b></td>
													<td>:</td>
													<td>
														<%-- <input type="text" name="occupation" value="${occupation.occupation}"> --%>
														<select name="occupation" style="width: 380px; height: 50px;">
															<%-- <option value="${occupation.occupation}">${occupation.occupation}</option> --%>
															<option>Admin Professional</option>
															<option>Actor</option>
															<option>Advertising Professional</option>
															<option>Agricultural Professional</option>
															<option>Air Hostes</option>
															<option>Architect</option>
															<option>Airforce</option>
															<option>Army</option>
															<option>Agent/Broker</option>
															<option>Animator</option>
															<option>Banking Professional</option>
															<option>Businessman</option>
															<option>Charted Accountant</option>
															<option>Company Secretory</option>
															<option>Civil Engineer</option>
															<option>Catering Professional</option>
															<option>Commercial Artist</option>
															<option>Customer Support/BPO/KPO</option>
															<option>Doctor</option>
															<option>Defence Services</option>
															<option>Dentist</option>
															<option>Entertainment Professional</option>
															<option>Event Manager</option>
															<option>Electronics/Telecom Engineer</option>
															<option>Finance Professional</option>
															<option>Fashion Designer</option>
															<option>Farming</option>
															<option>Human Resource Professional</option>
															<option>Horticulturist</option>
															<option>Hardware Network Professional</option>
															<option>Investment Professional</option>
															<option>Interior Designer</option>
															<option>IAS/IES/IRS/IFS</option>
															<option>Indian Police Service(IPS)</option>
															<option>Jewellary Designer</option>
															<option>Journalist</option>
															<option>Lawyer</option>
															<option>Lecturer</option>
															<option>Landscape Architect</option>
															<option>Media Professional</option>
															<option>Marketing Professional</option>
															<option>Mechanical/Production Engineer</option>
															<option>Sr.Manager/Manager</option>
															<option>Navy</option>
															<option>Nurse</option>
															<option>Other Airline Professional</option>
															<option>Pilot</option>
															<option>Professor</option>
															<option>Poet</option>
															<option>Politician</option>
															<option>Research Asst.</option>
															<option>Software Developer/Programmer</option>
															<option>Software Consultant</option>
															<option>Singer</option>
															<option>Surgeon</option>
															<option>Science Professional</option>
															<option>Social Worker</option>
															<option>Sportsman</option>
															<option>Student</option>
															<option>Teacher</option>
															<option>Training Professional</option>
															<option>Writer</option>
															<option>Web Designer</option>
															<option>Not Working</option>
															<option>Other</option>
														</select>
													</td>
												</tr>
												<tr>
													<td><b>Annual Incom</b></td>
													<td>:</td>
													<td>
														<input type="text" name="annualincome" value="${occupation.annualincome}" maxlength="9" onkeypress="return isNumberKey(event)">
													</td>
												</tr>
												<tr>
													<td><b>Employement Type</b></td>
													<td>:</td>
													<td><input type="text" name="emptype" value="${occupation.emptype}"></td>
												</tr>
												<tr>
													<td><b>No of Employees</b></td>
													<td>:</td>
													<td><input type="text" name="numberofemp" value="${occupation.numberofemp}" maxlength="6" onkeypress="return isNumberKey(event)"></td>
												</tr>
												<tr>
													<td><b>Product Details</b></td>
													<td>:</td>
													<td><input type="text" name="productdetails" value="${occupation.productdetails}"></td>
												</tr>
												<tr>
													<td><b>Web Address</b></td>
													<td>:</td>
													<td><input type="text" name="webAddress" value="${occupation.webAddress}"></td>
												</tr>
												<tr>
													<td colspan="2"><input type="submit" value="Edit" name="editContactBtn" style="float: right;"></td>
													<td><input type="reset" value="Cancel" style="margin-left: 55px;" onclick="return hideEditOccupation();"></td>
												</tr>
											</table>
										</form>
									</c:forEach>
								</div>
						</c:if>

					</div>
				</div>
				
				
				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">

						<c:if test="${!empty educationworkList}">
							<input id="EditProfileDetails" type="submit" value="" name="editEducationReqBtn" onclick="return dispEditEdu();"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								
								<div id="InsideProfileDetails">
									<h3>Education Details</h3>
									<c:forEach items="${educationworkList}" var="educationWORK">
										<table id="EducationDetailsTbl1" style="display: block;">
											<tr>
												<td style="width: 200px;"><b>Name of School</b></td>
												<td>:</td>
												<td>${educationWORK.school}</td>
											</tr>
											<tr>
												<td><b>Name of College</b></td>
												<td>:</td>
												<td>${educationWORK.collage}</td>
											</tr>
											<tr>
												<td><b>Graduation Degree</b></td>
												<td>:</td>
												<td>${educationWORK.graduation}</td>
											</tr>
											<tr>
												<td><b>Specialization</b></td>
												<td>:</td>
												<td>${educationWORK.otherGraduation}</td>
											</tr>
											<tr>
												<td><b>PG College Name</b></td>
												<td>:</td>
												<td>${educationWORK.PGCollege}</td>
											</tr>
											<tr>
												<td><b>PG Degree</b></td>
												<td>:</td>
												<td>${educationWORK.PGDegree}</td>
											</tr>
											<tr>
												<td><b>Specialization</b></td>
												<td>:</td>
												<td>${educationWORK.otherPG}</td>
											</tr>
										</table>

										<form action="/vanjariudyogvishwa-v2/EditEducation" method="post">
											<input type="hidden" name="userMail" value="${loginUser.email}">
											<table id="EducationDetailsTbl2" style="display: none;">
												<tr>
													<td style="width: 200px;"><b>Name of School</b></td>
													<td>:</td>
													<td><input type="text" name="school"
														value="${educationWORK.school}"></td>
												</tr>
												<tr>
													<td><b>Name of College</b></td>
													<td>:</td>
													<td><input type="text" name="collage"
														value="${educationWORK.collage}"></td>
												</tr>
												<tr>
													<td><b>Graduation Degree</b></td>
													<td>:</td>
													<td><select name="graduation">
															<option selected="selected">${educationWORK.graduation}</option>
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
													</select></td>
												</tr>
												<tr>
													<td><b>Specialization</b></td>
													<td>:</td>
													<td><input type="text" name="otherGraduation"
														value="${educationWORK.otherGraduation}"></td>
												</tr>
												<tr>
													<td><b>PG College Name</b></td>
													<td>:</td>
													<td><input type="text" name="PGCollege"
														value="${educationWORK.PGCollege}"></td>
												</tr>
												<tr>
													<td><b>PG Degree</b></td>
													<td>:</td>
													<td><select name="PGDegree">
															<option selected="selected">${educationWORK.PGDegree}</option>
															<option>MA</option>
															<option>M.Sc</option>
															<option>MCA</option>
															<option>MBA</option>
															<option>M.Tech</option>
															<option>M.E</option>
															<option>M.Com</option>
															<option>MD</option>
															<option>MS</option>
															<option>MBBS</option>
															<option>M.CH</option>
															<option>M.D.S</option>
															<option>M.PhT.</option>
															<option>M.Arch.</option>
															<option>M.Ed</option>
															<option>M.Phil</option>
															<option>M.P.Ed.</option>
															<option>M.P.E.</option>
															<option>M.Pharm</option>
															<option>PGICVTCA</option>
															<option>Ph.D</option>
															<option>Other</option>
															<option>none</option>
													</select></td>
												</tr>
												<tr>
													<td><b>Specialization</b></td>
													<td>:</td>
													<td><input type="text" name="otherPG"
														value="${educationWORK.otherPG}"></td>
												</tr>
												<tr>
													<td colspan="2"><input type="submit" value="Edit"
														name="editEducationBtn" style="float: right;"></td>
													<td><input type="reset" value="Cancel" style="margin-left: 55px;" onclick="return hideEditEdu();"></td>
												</tr>
											</table>
											</form>
										</c:forEach>
									
								</div>
						</c:if>
					</div>

				</div>


				

				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty hobbiesList}">
							<input id="EditProfileDetails" type="submit" value="" name="editHobbiesReqBtn" onclick="return dispEditHobbies();"
								style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
							<div id="InsideProfileDetails">
								<h3>Hobbies Details</h3>
									<c:forEach items="${hobbiesList}" var="hobbiesDetails">
										<table id="HobbiesDetailsTbl1" style="display: block;" >
											<tr>
												<td style="width: 200px;"><b>Hobbies</b></td>
												<td>:</td>
												<td>${hobbiesDetails.hobbiesName}</td>
											</tr>
											<tr>
												<td><b>Favourite Music</b></td>
												<td>:</td>
												<td>${hobbiesDetails.favouriteMusic}</td>
											</tr>
											<tr>
												<td><b>Favourite Book</b></td>
												<td>:</td>
												<td>${hobbiesDetails.favouriteBooks}</td>
											</tr>
											<tr>
												<td><b>Dress Style</b></td>
												<td>:</td>
												<td>${hobbiesDetails.dressStyletyle}</td>
											</tr>
											<tr>
												<td><b>Favourite TV show</b></td>
												<td>:</td>
												<td>${hobbiesDetails.favouritrTvShows}</td>
											</tr>
											<tr>
												<td><b>Favourite Movie</b></td>
												<td>:</td>
												<td>${hobbiesDetails.favouriteMovies}</td>
											</tr>
											<tr>
												<td><b>Favourite Sport</b></td>
												<td>:</td>
												<td>${hobbiesDetails.sports}</td>
											</tr>
											<tr>
												<td><b>Food I Cook</b></td>
												<td>:</td>
												<td>${hobbiesDetails.foodIcook}</td>
											</tr>
											<tr>
												<td><b>Vacation Destination</b></td>
												<td>:</td>
												<td>${hobbiesDetails.vacationDestination}</td>
											</tr>
										</table>
								
										<form action="/vanjariudyogvishwa-v2/editHobbies" method="post">
											<input type="hidden" name="usermail" value="${loginUser.email}">
											<table id="HobbiesDetailsTbl2" style="display: none;">
												<tr>
													<td style="width: 200px;"><b>Hobbies</b></td>
													<td>:</td>
													<td><input type="text" name="hobbiesName"value="${hobbiesDetails.hobbiesName}"></td>
												</tr>
												<tr>
													<td><b>Favourite Music</b></td>
													<td>:</td>
													<td>
														<select name="favouriteMusic" id="fav_music" style="resize: none;height: 70px;" multiple="multiple" size="4">
				                                        <%-- <option selected="selected">${editHobbiesDetails.favouriteMusic}</option> --%>
				                                        <option>Blues</option>
				                                        <option>Alternative Music</option>
				                                        <option>Classical Music</option>
				                                        <option>Country Music</option>
				                                        <option>Dance Music</option>
				                                        <option>Easy Listening</option>
				                                        <option>Electronic Music</option>
				                                        <option>European Music</option>
				                                        <option>Indie Pop</option>
				                                        <option>Hip Hop / Rap</option>
				                                        <option>Jazz</option>
				                                        <option>Latin Music</option>
				                                        <option>Pop</option>
				                                        <option>Rock</option>
				                                         <option>World Music / Beats</option>
				                                        <option>Soul</option>
				                                           </select>	
														</td>
												</tr>
												<tr>
													<td><b>Favourite Book</b></td>
													<td>:</td>
													<td><input type="text" name="favouriteBooks" value="${hobbiesDetails.favouriteBooks}"></td>
												</tr>
												<tr>
													<td><b>Dress Style</b></td>
													<td>:</td>
													<td>
														<select name="dressStyletyle">
			                                                <option selected="selected" value="${hobbiesDetails.dressStyletyle}"></option>
			                                                <option>Indian</option>
			                                                <option>Western</option>
			                                                <option>Sports</option>
			                                                <option>Formal</option>
			                                                <option>Casual</option>
			                                                <option>Not particular</option>
			                                        	</select>
													</td>
												</tr>
												<tr>
													<td><b>Favourite TV show</b></td>
													<td>:</td>
													<td><input type="text" name="favouritrTvShows" value="${hobbiesDetails.favouritrTvShows}"></td>
												</tr>
												<tr>
													<td><b>Favourite Movie</b></td>
													<td>:</td>
													<td><input type="text" name="favouriteMovies" value="${hobbiesDetails.favouriteMovies}"></td>
												</tr>
												<tr>
													<td><b>Favourite Sport</b></td>
													<td>:</td>
													<td><input type="text" name="sports" value="${hobbiesDetails.sports}"></td>
												</tr>
												<tr>
													<td><b>Food I Cook</b></td>
													<td>:</td>
													<td><input type="text" name="foodIcook" value="${hobbiesDetails.foodIcook}"></td>
												</tr>
												<tr>
													<td><b>Vacation Destination</b></td>
													<td>:</td>
													<td><input type="text" name="vacationDestination" value="${hobbiesDetails.vacationDestination}"></td>
												</tr>
												<tr>
													<td colspan="2"><input type="submit" value="Edit" name="editHobbiesBtn" style="float: right;"></td>
													<td><input type="reset" value="Cancel" style="margin-left: 55px;" onclick="return hideEditHobbies();"></td>
												</tr>
											</table>
										</form>
									</c:forEach>
								</div>
							</c:if>
						</div>
				</div>

				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">
						<c:if test="${!empty religionList}">
							<input id="EditProfileDetails" type="submit" value="" name="editOtherReqBtn" onclick="return dispEditReligion();"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
							<div id="InsideProfileDetails">
								<h3>Religion Details</h3>
								<c:forEach items="${religionList}" var="religionDetails">
									<table id="ReligionDetailsTbl1" style="display: block;">
										<tr>
											<td style="width: 200px;"><b>Religion</b></td>
											<td>:</td>
											<td>${religionDetails.religion}</td>
										</tr>
										<tr>
											<td><b>Cast</b></td>
											<td>:</td>
											<td>${religionDetails.subCast}</td>
										</tr>
									</table>
						
									<form action="/vanjariudyogvishwa-v2/editReligion" method="post">
										<input type="hidden" name="emailId" value="${loginUser.email}">
										<table id="ReligionDetailsTbl2" style="display: none;">
											<tr>
												<td style="width: 200px;"><b>Religion</b></td>
												<td>:</td>
												<td>
													<%-- <input type="text" name="religion" value="${religionDetails.religion}"> --%>
													<select name="religion">
														<%-- <option value="${religionDetails.religion}">${religionDetails.religion}</option> --%>
														<option value="Hindu">Hindu</option>
														<option value="Muslim">Muslim</option>
														<option value="Christen">Christen</option>
														<option value="Sikh">Sikh</option>
														<option value="Other">Other</option>
													</select>
												</td>
											</tr>
											<tr>
												<td><b>Cast</b></td>
												<td>:</td>
												<td><input type="text" name="subCast" value="${religionDetails.subCast}"></td>
											</tr>
											<tr>
												<td colspan="2"><input type="submit" value="Edit" name="editReligionBtn" style="float: right;"></td>
												<td><input type="reset" value="Cancel" style="margin-left: 55px;" onclick="return hideEditReligion();"></td>
											</tr>
										</table>
									</form>
								</c:forEach>
							</div>
						</c:if>
					</div>
				</div>

				<div id="OutsideProfileDetails">
					<div id="ProfileDetails">

						<c:if test="${!empty otherDetailsList}">
								<input id="EditProfileDetails" type="submit" value="" name="editOtherReqBtn"  onclick="return dispEditOtherDetails();"
									style="background-image: url('${pageContext.request.contextPath}/resources/images/edit1.png');">
								<div id="InsideProfileDetails">
									<h3>Other Details</h3>
									<c:forEach items="${otherDetailsList}" var="otherDetails">
										<table id="OtherDetailsTbl1" style="display: block;">
											<tr>
												<td style="width: 200px"><b>Social Status</b></td>
												<td>:</td>
												<td>${otherDetails.socialStatus}</td>
											</tr>
											<tr>
												<td><b>Polytical Status</b></td>
												<td>:</td>
												<td>${otherDetails.polyticalstatus}</td>
											</tr>
											<tr>
												<td><b>Social Activities</b></td>
												<td>:</td>
												<td>${otherDetails.socialact}</td>
											</tr>
											<tr>
												<td><b>Polytical Activities</b></td>
												<td>:</td>
												<td>${otherDetails.polyticalact}</td>
											</tr>
											<tr>
												<td><b>Cultural activities</b></td>
												<td>:</td>
												<td>${otherDetails.culturalact}</td>
											</tr>
										</table>

										<form action="/vanjariudyogvishwa-v2/editOther" method="post">
											<input type="hidden" name="usermail" value="${loginUser.email}">
											<table id="OtherDetailsTbl2" style="display: none;">
												<tr>
													<td style="width: 200px"><b>Social Status</b></td>
													<td>:</td>
													<td><input type="text" name="socialStatus" value="${otherDetails.socialStatus}"></td>
												</tr>
												<tr>
													<td><b>Polytical Status</b></td>
													<td>:</td>
													<td><input type="text" name="polyticalstatus" value="${otherDetails.polyticalstatus}"></td>
												</tr>
												<tr>
													<td><b>Social Activities</b></td>
													<td>:</td>
													<td><input type="text" name="socialact" value="${otherDetails.socialact}"></td>
												</tr>
												<tr>
													<td><b>Polytical Activities</b></td>
													<td>:</td>
													<td><input type="text" name="polyticalact" value="${otherDetails.polyticalact}"></td>
												</tr>
												<tr>
													<td><b>Cultural activities</b></td>
													<td>:</td>
													<td><input type="text" name="culturalact" value="${otherDetails.culturalact}"></td>
												</tr>
												<tr>
													<td colspan="2"><input type="submit" value="Edit" name="editOtherBtn" style="float: right;"></td>
													<td><input type="reset" value="Cancel" style="margin-left: 55px;" onclick="return hideEditOtherDetails();"></td>
												</tr>
											</table>
										</form>
									</c:forEach>
								</div>
							</c:if>
						</div>
					</div>
				
				
				<div id="OutsideProfileProducts">
					<h3>Products</h3>
					<div id="ProfileProducts" style="padding-right: 55px;">
						<c:if test="${!empty ProductList}">
							<c:forEach items="${ProductList}" var="productNAME">
								<table width=98% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px;margin-bottom: 5px;">
									<tr>
										<td width="40"><img src="${pageContext.request.contextPath}/resources/ProductImages/${productNAME.imgPath}" title="${productNAME.productName}" height="80" width="80" style="margin: 4px auto auto 4px;border-radius: 50px;border: 3px solid #F00;"></td>
										<td><a style="font-size: 22px;color: rgba(42, 163, 240, 0.68);">${productNAME.productName}</a></td>
									</tr>
									<tr>
										<td></td>
										<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Product Details :</b> ${productNAME.productDetails}</a></td>
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
														<td rowspan="2"><img
															src="${pageContext.request.contextPath}/resources/ProfileImages/${userFriends[4]}"
															height="72" width="70"></td>
													</tr>
													<tr>
														<td>
															<c:if test="${loginUser.email== userFriends[2]}">
																<input type="hidden" name="friendsEmailId"
																	value="${userFriends[3]}">
															</c:if>
															<c:if test="${loginUser.email== userFriends[3]}">
																<input type="hidden" name="friendsEmailId"
																	value="${userFriends[2]}">
															</c:if>
															<input type="submit" id="FriendsName" style="font-size: 22px;"
																value="${userFriends[0]} ${userFriends[1]}"> <br>
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
				
				<div id="OutsideInterestAreas" style="width: 760px;border: 1px solid rgba(245, 186, 118, 0.8);margin: -15px auto 20px 10px;">
					<h3>IntrestAreas Details</h3>
					<div id="InterestAreas" style="width: 730px;border: none;padding-right: 55px;">
						
						<c:if test="${!empty intrestAreasList}">
							<table id="InterestAreasDetailsTbl1" style="display: block;">
								<c:forEach items="${intrestAreasList}" var="intrestAreasDetails">
										<c:set var="tempStr" value="${fn: split(intrestAreasDetails.interestId,',')}"></c:set>
										<c:forEach items="${tempStr}" var="intrestAreaNumber">
											<c:if test="${intrestAreaNumber=='1'}">
												<tr>
													<td><div id="IntrestAreaImageProfile">
															<img
																src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png"
																title="Sports" style="width: 50px; height: 50px;">
															<h4 style="margin-top: -5px; fo">Sports</h4>
														</div></td>
												</tr>
											</c:if>
											<c:if test="${intrestAreaNumber=='2'}">
												<tr>
													<td><div id="IntrestAreaImageProfile">
															<img
																src="${pageContext.request.contextPath}/resources/icons/2-DRAWING.png"
																title="Drawing" style="width: 50px; height: 50px;">
															<h4 style="margin-top: -5px">Drawing</h4>
														</div></td>
												</tr>
											</c:if>
											<c:if test="${intrestAreaNumber=='3'}">
												<div style="width: 120px; float: left;">
													<img
														src="${pageContext.request.contextPath}/resources/icons/3-PhotoGraphy.png"
														title="PhotoGraphy" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">PhotoGraphy</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='4'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/4-TRAVELLING.png"
														title="Travelling">
													<h4 style="margin-top: -5px">Travelling</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='5'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/5-musics.png"
														title="Music" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Music</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='6'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/6-READING.png"
														title="Reading" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Reading</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='7'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/7-BROWSING.png"
														title="Browsing" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Browsing</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='8'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/8-BIKE RIDING.png"
														title="Bike Riding" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Bike Riding</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='9'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/9-CAR_RIDING.png"
														title="Car Riding" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Car Riding</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='10'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png"
														title="Tracking" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Trekking</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='11'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/11-Movies-.png"
														title="Watching Movies" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Movies</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='12'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/12-SocialWork.jpg"
														title="Social Work" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Social Work</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='13'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/13-POLITICAL.png"
														title="Politics" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Politics</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='14'}">
												<div style="width: 140px; float: left;">
													<img
														src="${pageContext.request.contextPath}/resources/icons/14-parties.png"
														title="Friends/Parties/dating"
														style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Friends/Parties/dating</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='15'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/15-shopping-bag.png"
														title="Shopping" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Shopping</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='16'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/16-business.png"
														title="Business" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Business</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='17'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/17-drama.png"
														title="Drama" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Drama</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='18'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/18-CIRCUS.png"
														title="Circus" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Circus</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='19'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/19-DanceShow.png"
														title="Dance Show" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Dance Show</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='20'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/PhotoGallary.png"
														title="Cultural Activities"
														style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Cultural Activities</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='21'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/21-SPEEECH.png"
														title="Speech" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Speech</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='22'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/22-gym.png"
														title="Gym/Health Club" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Gym/Health Club</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='23'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/23-teaching.png"
														title="Teaching" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Teaching</h4>
												</div>
											</c:if>
											<c:if test="${intrestAreaNumber=='24'}">
												<div id="IntrestAreaImageProfile">
													<img
														src="${pageContext.request.contextPath}/resources/icons/24-SPIRTUALITY.png"
														title="Spirituality" style="width: 50px; height: 50px;">
													<h4 style="margin-top: -5px">Spirituality</h4>
												</div>
											</c:if>
										</c:forEach>
									</c:forEach>
								</table>
						</c:if>
					</div>
				</div>
				
				
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

