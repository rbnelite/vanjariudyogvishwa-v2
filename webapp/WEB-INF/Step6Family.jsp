<%-- 
    Document   : Step6Family
    Created on : Dec 24, 2013, 7:44:05 PM
    Author     : Manoj
--%>


<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>



<title>Step-6 Family Details Page</title>
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

			<div id="middleStep4">
				<form action="/vanjariudyogvishwa-v2/Family" method="post">
				<h2>Step-6</h2>
					<table align="center">
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td colspan="2"><font size="5">Fill Out Your Family
									Details</font>
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
							<td>No. Of Family Members <font color="red">*</font>
							</td>
							<td><input type="text" name="familyValue" size="30"
								maxlength="3" onkeypress="return isNumberKey(event)">
								
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Family Type <font color="red">*</font>
							</td>
							<td><select id="familyType" name="familyType"
								style="width: 223px;">
									<option selected value="">--Please Select--</option>
									<option>Nuclear</option>
									<option>Joint</option>
							</select>
								
							</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Family Status <font color="red">*</font>
							</td>
							<td><select name="familyStatus" id="fmly_status"
								style="width: 223px;">
									<option selected value="">--Please Select--</option>
									<option>Poor</option>
									<option>Middle Class</option>
									<option>Upper Middle Class</option>
									<option>Lower Middle Class</option>
									<option>Lower Class</option>
							</select>
								
								</td>
						</tr>
						<tr>
							<td colspan="2"><br>
						</tr>
						<tr>
							<td>Family Income <font color="red">*</font>
							</td>
							<td><select id="familyIncome" name="familyIncome"
								style="width: 223px;">
									<option selected value="">--Please Select--</option>
									<option>Less than 100000</option>
									<option>100000-200000</option>
									<option>200000-300000</option>
									<option>300000-400000</option>
									<option>400000-500000</option>
									<option>500000-600000</option>
									<option>600000-700000</option>
									<option>700000-800000</option>
									<option>800000-900000</option>
									<option>900000-1000000</option>
									<option>Greater than 1000000</option>

							</select>
								
							</td>
						</tr>

						<tr>
							<td></td>
							<td align="right"><input type="submit" class="savebtn" name="save_family" id="submit" value="Save & Continue"></td>
						</tr>
					</table>
				</form>

			</div>


			<div id="rightMainStep3"></div>

		</div>
	</center>



</body>
</html>
