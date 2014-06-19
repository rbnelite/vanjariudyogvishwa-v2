<%-- 
    Document   : Step3Occupation
    Created on : Dec 24, 2013, 7:52:32 PM
    Author     :anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
 <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
		<script src="<c:url value="/resources/js/anil.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script>
function isNumberKey(evt)
{
    var charCode=(evt.which) ? evt.which :event.keyCode;
    if(charCode >31 && (charCode<48 || charCode >57))
        return false;
    return true;
}
</script>
<title>Step-3 Occupation Details Page</title>
</head>
<body>
	<center>
		<div id="mainMsg">
			<div id="Header">

				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>

			</div>
			<div id="leftMainStep3"></div>
			<div id="middleOccupation" style="background-color: bisque;">
				<h2>Step-3</h2>
				<form:form action="/vanjariudyogvishwa-v2/Occupation" method="post" commandName="occupation">
			
					<table align="center">
						<tr>
							<td colspan="2"><br></td>
						</tr>
						<tr>
							<td colspan="2"><font size="5">Fill Your
									Occupation or Business Details</font>
							</td>
						</tr>
						<tr>
							<td colspan="2">This Information will help us to Create Your Profile</td>
						</tr>
						<tr>
							<td colspan="2"><hr/>
							</td>
						</tr>
						<tr>
							<td>
							<br>
							</td>
						</tr>
						<tr>
							<td>Currently Working <font color="red">*</font></td>
							<td><form:input path="companyName" size="30" maxlength="30"/>
								
							</td>
						</tr>
						<tr>
						<td></td>
							<td colspan="2"><form:errors path="companyName" cssClass="error"/><br></td>

					</tr>
						
						<tr>
							<td>Occupation <font color="red">*</font> </td>
							<td> <select id="occupation" name="occupatiuon" style="width: 223px;">
									<option selected value="">--Please select--</option>
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
							<td colspan="2"><br></td>
						</tr>
						<tr>
							<td>Product/Manufacturing Details </td>
							<td><textarea name="productdetils"
									style="resize: none; font: normal 12px Trebuchet MS; font-family: Verdana; font-size: 12px;"
									id="product_details" rows="1" cols="25" maxlength="150"
									style="resize: none;"></textarea>
							
							</td>
						</tr>
						<tr>
							<td colspan="2"><br></td>
						</tr>
						<tr>
							<td>Total Number of Employees 
							</td>
							<td><input type="text" name="numberofemp" id="total_emp" size="30" maxlength="6" onkeypress="return isNumberKey(event)">
								
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Employment Type 
							</td>
							<td><select name="emptype" id="emp_type"
								style="width: 223px;">
									<option selected value="">--Please Select--</option>
									<option>Permanent</option>
									<option>Contract</option>
									<option>Trainee</option>
									<option>Temporary</option>
							</select>
								
						</tr>
						<tr>
							<td colspan="2"><br></td>
						</tr>
						<tr>
							<td>Annual Income <font color="red">*</font>
							</td>
							<td><form:input path="annualincome"	size="30" maxlength="8" onkeypress="return isNumberKey(event)"/>
								
							</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="2"><form:errors path="annualincome" cssClass="error"/><br></td>
						</tr>
						<tr>
							<td><input type="hidden" name="usermail" value="${CurrentEmailId}"></td>
							<td align="right"><input type="submit" name="save_occupation" id="submit" value="Save & Continue" class="savebtn">
							</td>
						</tr>
					</table>
				</form:form>
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