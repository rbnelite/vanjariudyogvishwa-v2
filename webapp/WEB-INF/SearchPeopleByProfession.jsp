<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search People By Profession | Vanjari Udyog Vishwa</title>
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>
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
#VUVsearchByProBtn2{
	width: 100px;
	height: 100px;
	background-color: transparent;
	border-radius: 6px;
	border: none;
	background-repeat: no-repeat;
	margin-left: 40px;
}
#VUVsearchByProBtn2:HOVER{
	width: 100px;
	height: 100px;
	background-color: transparent;
	border-radius: 6px;
	border: none;
	cursor: pointer;
}
#SearchOccupationName{
	text-align: center;
	color: rgba(118, 112, 120, 0.99);
	font-size: 16px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
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

			<div id="outsidemiddleHome" style="margin-right: 300px; height: 1195px">
				<div id="middleHome" style="height: 1195px">
								
				<table>
					<tr>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Doctor"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Doctors" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/doctor1.png');"></td></tr></table>
						</form></td>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Finance Professional"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Finance Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Finance-Professional.png');"></td></tr></table>
						</form></td>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Charted Accountant"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Charted Accountant" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/chartered-account.png');"></td></tr></table>
						</form></td>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Banking Professional"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Banking Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Banking.png');"></td></tr></table>
						</form></td>
					</tr>
					<tr id="SearchOccupationName"><td>Doctor</td><td>Finance Professional</td><td>Charted Accountant</td><td>Banking Professional</td></tr>
				
					<tr>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Admin Professional"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Admin Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/AdminProfessional.png');"></td></tr></table>
						</form></td>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Mechanical/Production Engineer"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Mechanical/Production Engineer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/electrical_engineer_icon.jpg');"></td></tr></table>
						</form></td>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Architect"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Architect" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/architecture.png');"></td></tr></table>
						</form></td>
						<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
							<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Electronics/Telecom Engineer"></td>
									<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Electronics/Telecom Engineer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Telecom Engineer.jpg');"></td></tr></table>
						</form></td>
					</tr>
				
					<tr id="SearchOccupationName"><td>Admin Professional</td><td>Mechanical/Production Engineer</td><td>Architect</td><td>Electronics/Telcom Engineer</td></tr>
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Software Developer/Programmer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Software Developer/Programmer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/softwareengineer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Civil Engineer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Civil Engineer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/CivilEngineer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Teacher"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Teacher" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/teacher_icon.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Lecturer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Lecturer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/lecturer.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Software Engineer</td><td>Civil Engineer</td><td>Teacher</td><td>Lecturer</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Training Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Training Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/teacher_icon.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Writer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Writer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Writer_Male_Light.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Student"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Student" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/student_icon1.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Animator"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Animator" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/animator.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Training Professional</td><td>Writer</td><td>Student</td><td>Animator</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Advertising Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Advertising Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/advertising.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Businessman"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Businessman" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/businessman.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Actor"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Actor" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Actor-Male.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Company Secretory"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Company Secretory" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/company_secretary.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Advertising Professional</td><td>Businessman</td><td>Actor</td><td>Company Secretory</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Army"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Army" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Catering Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Catering Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/catering.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Commercial Artist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Commercial Artist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/commercial_artist.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Customer Support/BPO/KPO"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Customer Support/BPO/KPO" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Customer-SupportBPOKPO.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Army</td><td>Catering Professional</td><td>Commercial Artist</td><td>Customer Support/ BPO/KPO</td></tr>
				
				
				<tr>
					<td></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Defence Services"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Defence Services" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/defence-service.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Dentist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Dentist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/dentist.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Entertainment Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Entertainment Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Entertainment_professinal.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Student</td><td>Defence Services</td><td>Dentist</td><td>Entertainment Professional</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Event Manager"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Event Manager" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/event_manager.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Agent/Broker"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Agent/Broker" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/broker.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Agricultural Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Agricultural Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Ford-Tractor-icon.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Fashion Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Fashion Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Fashion-Designer.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Event Manager</td><td>Agent/Brocker</td><td>Agricultural Professional</td><td>Fashion Designer</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Farming"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Farming" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/farming.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Human Resource Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Human Resource Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Human Resource.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Horticulturist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Horticulturist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Hardware Network Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Hardware Network Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Hardware Network Professional.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Farming</td><td>Human Resource Professional</td><td>Horticulturist</td><td>Hardware Network Professional</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Investment Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Investment Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Investment Professional.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Interior Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Interior Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Interior Designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="IAS/IES/IRS/IFS"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for IAS/IES/IRS/IFS" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Indian Police Service(IPS)"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Indian Police Service(IPS)" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Investment Professional</td><td>Interior Designer</td><td>IAS/IES /IRS/IFS</td><td>Indian Police Service(IPS)</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Jewellary Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Jewellary Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Jewellary Designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Journalist"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Journalist" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/journalist.jpg');"></td></tr></table>
					</form></td>
					<td></td>
					<td></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Jewellary Designer</td><td>Journalist</td><td>Teacher</td><td>Lecturer</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Landscape Architect"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Landscape Architect" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Landscape Architect.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Media Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Media Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Media Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Marketing Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Marketing Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Marketing Professional.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Lawyer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Lawyer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/lawyer_icon.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Landscape Architect</td><td>Media Professional</td><td>Marketing Professional</td><td>Lawyer</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Sr.Manager/Manager"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Sr.Manager/Manager" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Navy"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Navy" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/navy.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Nurse"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Nurse" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/nurse.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Other Airline Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Other Airline Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Airline Professional.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				
				<tr id="SearchOccupationName"><td>Sr.Manager / Manager</td><td>Navy</td><td>Nurse</td><td>Other Airline Professional</td></tr>
				
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Pilot"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Pilot" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/pilot_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Professor"></td>
					<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Professor" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Poet"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Poet" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/writer_icon.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Politician"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Politician" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/politician_icon.jpg');"></td></tr></table>
					</form></td>
					
				</tr>
				
				<tr id="SearchOccupationName"><td>Pilot</td><td>Professor</td><td>Poet</td><td>Politician</td></tr>
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Research Asst."></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Research Asst." style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Research Asst.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Airforce"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Airforce" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/airforce.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Software Consultant"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Software Consultant" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Singer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Singer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/singer-icon.jpg');"></td></tr></table>
					</form></td>
				</tr>
				
				<tr id="SearchOccupationName"><td>Research Asst.</td><td>Airforce</td><td>Software Consultant</td><td>Singer</td></tr>
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Surgeon"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Surgeon" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Science Professional"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Science Professional" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Science Professional.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Social Worker"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Social Worker" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/aaaaa.png');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Sportsman"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Sportsman" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/tennis_player_icon.jpg');"></td></tr></table>
					</form></td>
				</tr>
				<tr id="SearchOccupationName"><td>Surgeon</td><td>Science Professional</td><td>Social Worker</td><td>Sportsman</td></tr>
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Web Designer"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Web Designer" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Web Designer.jpg');"></td></tr></table>
					</form></td>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Air Hostes"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title=" Search for Air Hostes" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/airhostess.png');"></td></tr></table>
					</form></td>
					<td></td>
					<td></td>
				</tr>
				<tr id="SearchOccupationName"><td>Web Designer</td><td>Air Hostes</td><td>Training Professional</td><td>Writer</td></tr>
				
				<tr>
					<td><form action="/vanjariudyogvishwa-v2/SearchResultForProffestion">
						<table><tr><td><input type="hidden" name="SearchDatabyprofession" value="Not Working"></td>
								<td><input id="VUVsearchByProBtn2" type="submit" value="" title="Search for Not Working / Unemployed" style="background-image: url('${pageContext.request.contextPath}/resources/icons/occupation/Not Working.jpg');"></td></tr></table>
					</form></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr id="SearchOccupationName"><td>Not Working</td></tr>
				
			</table>
					
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