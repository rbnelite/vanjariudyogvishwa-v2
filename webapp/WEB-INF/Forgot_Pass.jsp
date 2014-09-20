<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon"
	href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<title>Forgot My Password | Vanjari Udyog Vishwa</title>

<script>
	
	function isBlank() {
		var email = document.getElementById("emailAddress").value;
		if (email == null || email == "") {
			
			document.getElementById("EmailError").innerHTML="Enter Email Address.";
			document.getElementById("ValidEmailerror").innerHTML="";
			document.getElementById("emailAddress").focus();
			return false;
		}
	}
	
	function onloadChangePwd(){
		document.getElementById("emailAddress").focus();
	}
	
	function hideEmailError() {
		document.getElementById("EmailError").innerHTML="";
		document.getElementById("ValidEmailerror").innerHTML="";
		
	}
</script>
</head>
<body style="background-color: bisque" onload="return onloadChangePwd();">
	
	<div id="InstructionChangePwd" style="text-align: center;width: 525px;height: 200px;margin-left: 100px;" >
		<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px; font-size: 21px">Forgot Password Form:</h3>
		<form action="/vanjariudyogvishwa-v2/ForgotPassword" method="post" >
			<table style="width: 500px;">
				<tr>
					<td><a style="float: left;margin-left: 88px;"><b>Email Address :-</b></a></td>
				</tr>
				<tr>
					<td><input type="email" name="emailAddress" id="emailAddress"
						placeholder="Registered Email Id" onkeypress="return hideEmailError();"
						style="height: 25px; width: 300px;"/></td>
				</tr>
				<tr height="25px;">
					<td>
						<a id="EmailError" style="color: red;"></a>
						<a id="ValidEmailerror" style="color: red;">${forgotPassMessage}</a>
						<!-- <a id="ValidEmailerror" style="color: red;">If the email address you entered, sawantmanojm@gmail.com, is associated with an account in our records, you will receive an email from us with instructions for resetting your password.If you don't receive this email, please check your junk mail folder.</a> -->
					</td>
				</tr>
				<tr>

					<td align="right"><input type="submit" value="Send Request"
						class="savebtn" onclick="return isBlank()"></td>
				</tr>
			</table>
		</form>
	</div>
	
	<div id="InstructionChangePwd" style="text-align: center;width: 525px;height: 200px;margin-left: 100px;" >
		<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px; font-size: 21px">Instructions:</h3>
		<ol style="text-align: left;">
			<li>Enter your Registered Email ID in above TextBox.</li>
			<li>Click on Send Request Button to get password.</li>
			<li>Check your MailBox containing Vanjari Udyog Vishwa Password</li>
			<li>Also Look in your Spam Mail or Junk Mail folder</li>
			<li>For any Help: +91 99-70-71-61-41. OR www.rbnelite.com</li>
		</ol>
	</div>
</body>
</html>