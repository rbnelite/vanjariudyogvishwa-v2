<%-- 
    Document   : Step3Occupation
    Created on : Dec 24, 2013, 7:52:32 PM
    Author     :anil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
 <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
		<script src="<c:url value="/resources/js/anil.js" />"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Step-3 Occupation Details Page</title>
</head>
<body>
	<center>
		<div id="mainMsg">
			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! User</label> <br>
				<div id="profile_photo">
					<img src="${pageContext.request.contextPath}/resources/images/dummy_male_ic.png"> <br> 
				</div>
			</div>
			<div id="leftMainStep3"></div>
			<div id="middleOccupation">
				<h2>Step-3</h2>
				<form action="/vanjariudyogvishwa-v2/Occupation" method="post">
					<table align="center">
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td colspan="2"><font size="5">Fill Your
									Occupation or Business Details</font>
							</td>
						</tr>
						<tr>
							<td colspan="2">This Information will help us to Create Your
								Profile</td>
						</tr>
						<tr>
							<td colspan="2"><hr />
							</td>
						</tr>
						<tr>
							<td><br>
							<br>
							</td>
						</tr>
						<tr>
							<td>Currently Working <font color="red">*</font></td>
							<td><input type="text" name="companyName" id="org_name"
								size="30" maxlength="30">
								<div id="org_nameError" class="red" colspan="2" />
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Occupation <font color="red">*</font>
							</td>
							<td><select id="occupation" name="occupatiuon"
								style="width: 223px;">
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
								<div id="occupationError" class="red" colspan="2" /></td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Product/Manufacturing Details <font color="red">*</font>
							</td>
							<td><textarea name="productdetils"
									style="resize: none; font: normal 12px Trebuchet MS; font-family: Verdana; font-size: 12px;"
									id="product_details" rows="1" cols="25" maxlength="150"
									style="resize: none;"></textarea>
								<div id="product_detailsError" class="red" colspan="2" />
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Total Number of Employees <font color="red">*</font>
							</td>
							<td><input type="text" name="numberofemp" id="total_emp"
								size="30" maxlength="6" onkeypress="return isNumberKey(event)">
								<div id="total_empError" class="red" colspan="2" />
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Employment Type <font color="red">*</font>
							</td>
							<td><select name="emptype" id="emp_type"
								style="width: 223px;">
									<option selected value="">--Please Select--</option>
									<option>Permanent</option>
									<option>Contract</option>
									<option>Trainee</option>
									<option>Temporary</option>
							</select>
								<div id="emp_typeError" class="red" colspan="2" /></td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Annual Income <font color="red">*</font>
							</td>
							<td><input type="text" name="annualincome"
								id="annual_income" size="30" maxlength="8"
								onkeypress="return isNumberKey(event)">
								<div id="annual_incomeError" class="red" colspan="2" />
							</td>
						</tr>
						<tr>
							
							<td colspan="2"><br>
						</tr>
						<tr>
							<td><input type="hidden" name="usermail" value="${CurrentEmailId}"></td>
							<td align="right"><input type="submit" name="save_occupation" id="submit" value="Save & Continue" class="savebtn">
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div id="rightMainStep3"></div>

		</div>

	</center>


</body>
</html>
