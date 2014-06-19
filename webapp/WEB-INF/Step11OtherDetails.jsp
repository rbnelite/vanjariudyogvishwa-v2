
<%-- 
    Document   : Step8OtherDetails
    Created on : Dec 24, 2013, 8:00:42 PM
    Author     : dogkiller,ab
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
	<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>

<title>Step-8 Other Details Page</title>
</head>
<body>
	<center>
		<div id="mainMsg">
			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>
				
			</div>

			<div id="leftMainStep3"></div>

			<div id="middleOccupation">
			<form action="/vanjariudyogvishwa-v2/OtherDetails" method="post"  commandName="otherdetails">
			<form:errors path="*" cssClass="errorblock" element="div"/>
			<h2>Step-8</h2>
				<table align="center">
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td colspan="2"><font size="5">Fill Your Other
								Details</font>
						</td>
					</tr>

					<tr>
						<td colspan="2">This Information will helps us to Create Your
							Profile</td>
					</tr>
					
				 <tr><td colspan="2"><hr/></td></tr>

					<tr>
						<td>Social Status</td>
						<td><textarea name="socialStatus" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>						
                         <td><form:errors path="socialStatus" cssclass="error"/></td>
						
						
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Political Status/View</td>
						<td><textarea name="polyticalstatus" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Social Activity</td>
						<td><textarea name="socialact" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Political Activity</td>
						<td><textarea name="polyticalact" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Cultural Activity</td>
						<td><textarea name="culturalact" rows="1" cols="25"
								maxlength="80" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td><input type="hidden" name="usermail" value="${loginUser.email}"><a><a href="Index"><font color="green"><b>SKIP</b></font></a></td>
						<td align="right"> &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" name="save_other" value="Save & Continue"  class="savebtn">

						</td>
					</tr>
				</table>
				</form>
			</div>
			<div id="rightMainStep3"></div>
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

