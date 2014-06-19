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
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>



<title>Step-6 Family Details Page</title>
</head>
<body>


	<center>
		<div id="mainMsg">
			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>
				
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
							<td colspan="2"><font size="5">Fill Your Family
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
