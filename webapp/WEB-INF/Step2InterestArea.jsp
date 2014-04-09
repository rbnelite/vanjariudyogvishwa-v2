
<%-- 
    Document   : InterestAreas
    Created on : Dec 21, 2013, 11:02:28 AM
    Author     : Mayur
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>


<title>Step-2 Interest Areas page</title>
</head>
<body>


	<center>
		<div id="mainInterestAreas">

			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>
				
			</div>


			<div id="info_step2" style="height: auto;">

				<h2>Step-2</h2>
				<form name="IntrestAreasForm" action="/vanjariudyogvishwa-v2/IntrestAreas" method="post">
					
					<table>
						
						<tr>
							<td colspan="2"><br></td>
						</tr>
						<tr>
							<td colspan="2"><font size="5">Select Your
									Interest areas Details</font>
							</td>
						</tr>
						<tr>
							<td colspan="2">This Information will help us to Create Your Profile</td>
						</tr>
						<tr>
							<td colspan="2"><hr/>
							</td>
						</tr>
					
					</table>
					
					<table border="0" align="center">
						
						<tr>

							<td style="border :1px solid gray; border-radius: 5px; border-radius: 5px;"><input type="checkbox" style=" position: absolute; " name="interestId" value="1"><img src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png" height="100" width="100"> </td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="2" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/2-DRAWING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="3" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/3-PhotoGraphy.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="4" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/4-TRAVELLING.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Sports</td><td>Drawing</td><td>Photography</td><td>Travelling</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="5" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/5-musics.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="6" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/6-READING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="7" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/7-BROWSING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="8" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/8-BIKE RIDING.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Music</td><td>Reading</td><td>Surfing/Browsing</td><td>Bike Riding</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="9" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/9-CAR_RIDING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="10" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="11" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/11-Movies-.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="12" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/12-SocialWork.jpg" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Car Riding</td><td>Trekking</td><td>Movies</td><td>Social Work</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="13" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/13-POLITICAL.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="14" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/14-parties.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="15" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/15-shopping-bag.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="16" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/16-business.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Politics</td><td>Friends/Parties</td><td>Shopping</td><td>Business</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="17" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/17-drama.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="18" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/18-CIRCUS.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="19" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/19-DanceShow.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="20" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Drama</td><td>Circus</td><td>Dance Shows</td><td>Cultural activities</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="21" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/21-SPEEECH.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="22" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/22-gym.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="23" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/23-teaching.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="24" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/24-SPIRTUALITY.png" height="100" width="100"></td>

						</tr>
						<tr>
							<td>Speech</td><td>Gym</td><td>Teaching</td><td>Spirituality</td>
						</tr>
						<tr>
							<td><input type="hidden" name="userMail" value="${CurrentEmailId}"></td>
						</tr>
						<tr>
							<td></td>
							<td align="right"><input type="submit" name="save_intrests"
								value="Save & Continue"></td>
						</tr>

					</table>
				</form>
			</div>


		


		</div>
	</center>


</body>
</html>

