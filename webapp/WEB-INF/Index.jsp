
<%-- 
    Document   : Index page For Vanjari Udyog Vishwa
    Created on : Dec 3, 2013, 4:00:34 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
	<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
	<script src="<c:url value="/resources/js/VUVRregistrationValidation.js" />"></script>
	<title>Vanjari Udyog Vishwa</title>
	
	<style type="text/css">
		
	</style>

	<script>
	 function LoginMailValidation(){
		 var uName=document.getElementById("LoginUserName").value;
		 if(uName==null || uName=="" || uName.length<10){
			 document.getElementById("EmailNullErrorDiv").innerHTML=" Enter Valid User Name";
			 document.getElementById("LoginUserName").focus();
			return false;
		 }
	 }
	 function LoginPasswordValidation(){
		 var uPass=document.getElementById("LoginPassword").value;
		 if(uPass==null || uPass=="" || uPass.length<6){
			 document.getElementById("PasswordNullErrorDiv").innerHTML="Enter Valid Password";
			 document.getElementById("LoginPassword").focus();
			return false;
		 }
	 }
	 function hideErrorMsg(){
		 var xyz=document.getElementById("LoginErrorDiv");
		 xyz.style.display='none';
		 var xyz=document.getElementById("LogOutMsgDiv");
		 xyz.style.display='none';
	 }
	 function LoginFormValidation(){
		 
		 var uName=document.getElementById("LoginUserName").value;
		 var uPass=document.getElementById("LoginPassword").value;
		 
		 
		 
		 if((uName==null || uName=="") && (uPass==null || uPass=="")){
			 
			document.getElementById("EmailNullErrorDiv").innerHTML="Enter Valid User Name & Password";
			document.getElementById("LoginUserName").focus();
			 return false;
		 }
		 
		 if(uName==null || uName=="" || uName.length<10){
			 document.getElementById("EmailNullErrorDiv").innerHTML="Enter Valid User Name";
			 document.getElementById("LoginUserName").focus();
			 return false;
		 }
		 if(uPass==null || uPass=="" || uPass.length<6){
			 document.getElementById("PasswordNullErrorDiv").innerHTML="Enter Valid Password";
			 document.getElementById("LoginPassword").focus();
			 return false;
		 }
	 }
	function hideEmailError(){
		document.getElementById("EmailNullErrorDiv").innerHTML="";
		document.getElementById("PasswordNullErrorDiv").innerHTML="";
	 }
	 	 
	 function isNumberKey(evt)
            {
		 		clearRegiError();
                var charCode=(evt.which) ? evt.which :event.keyCode;
                if(charCode >31 && (charCode<48 || charCode >57))
                    return false;
                return true;
            }
            
            function isCharKey(evt)
            {
            	clearRegiError();
        		 var charCode=(evt.which) ? evt.which :event.keyCode;
        		 
        	        if(charCode >64 && charCode<123 || charCode==8)
        	            return true;
        	        return false;
            }
            function isValidDOB(evt){
            	clearRegiError();
            	var charCode=(evt.which) ? evt.which :event.keyCode;
                if((charCode >46 && charCode<58) || charCode==8)
                    return true;
                return false;
            }
            
            function validateRegiForm()
            {
            	
            	var fname=document.getElementById("myFName");
            	var mname=document.getElementById("myMName");
            	var lname=document.getElementById("myLName");
            	var myemail=document.getElementById("myEmailId");
            	var mycontactNo=document.getElementById("myContactNo");
            	var mydob=document.getElementById("txtDOB");
            	var pass=document.getElementById("password");
            	var pass2=document.getElementById("password2");
            	
            	if(fname.value == "" ){ 
            		fname.focus();
            		document.getElementById("myFNameError").innerHTML="First Name Required.";
            		return false; 
            	}
            	else if(mname.value == ""){ 
            		mname.focus(); 
            		document.getElementById("myMNameError").innerHTML="Middle Name Required.";
            		return false;
            	}
            	else if(lname.value == ""){
            		lname.focus();
            		document.getElementById("myLNameError").innerHTML="Last Name Required.";
            		return false;
            		}
            	else if( myemail.value=="") { 
            		myemail.focus();
            		document.getElementById("myEmailIdError").innerHTML="Email ID Required.";
            		return false;
            		}
            	else if( mycontactNo.value=="") { 
            		mycontactNo.focus();
            		document.getElementById("myContactNoError").innerHTML="10 Digits Mobile No is Required.";
            		return false; 
            		}
            	else if( mydob.value=="") { 
            		mydob.focus();
            		/* document.getElementById("txtDOBError").innerHTML="Birth Date is Required."; */
            		return false; 
            		}
            	
            	else if(ValidateMyDobForm(mydob.value))
            	{
            		document.getElementById("myBDError").innerHTML="";
            		
            		if( pass.value=="") { 
            			pass.focus();
            			document.getElementById("passwordError").innerHTML="Password Is Required.";
            			return false; 
            		}
                 	else if( pass2.value=="") { 
                 		pass2.focus();
                 		document.getElementById("password2Error").innerHTML="Re-Enter Password.";
                 		return false;
                 	}
            		 
	            	if(pass.value != pass2.value)
	            	{
	            		pass2.focus();
	            		document.getElementById("password2Error").innerHTML="Confirm Password not matching.";
	            		return false;
	            	}
	            }
            	else
            	{
	            	return false;
	            }
            }
            function clearRegiError() {
            	document.getElementById("myFNameError").innerHTML="";
            	document.getElementById("myMNameError").innerHTML="";
            	document.getElementById("myLNameError").innerHTML="";
            	document.getElementById("myEmailIdError").innerHTML="";
            	document.getElementById("myContactNoError").innerHTML="";
            	document.getElementById("passwordError").innerHTML="";
            	document.getElementById("password2Error").innerHTML="";
			}
    </script>
    <style type="text/css">
			#VUVloginBtn{
				height: 40px;
				width: 80px;
				color:white;
				background-color: #7AD77A;
				font-size: 20px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				border-radius: 6px;
				border: none;
				transition: all 1s;
			}
			#VUVloginBtn:HOVER,#VUVloginBtn:FOCUS{
				height: 40px;
				width: 80px;
				color: white;
				background-color: #87CEEB;
				font-size: 20px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				border-radius: 6px;
				border: none;
				cursor: pointer;
				transition: all 1s;
			}
			#EmailNullErrorDiv{
				color:#F80CAA;
				font-size: 18px;
			}
			#PasswordNullErrorDiv{
				color:#F80CAA;
				font-size: 18px;
			}
    </style>
</head>
<body>
<center>
	<div id="main" style="background-color: transparent; height: 1000px">
		<div id="Header">
			
			<form action="/vanjariudyogvishwa-v2/loginAuthentication" method="post">
						<table width="636" border="0" align="right" style="margin-top: 15px">
							<tr>
								<td><span class="style8"><span
										class="style16"><span class="style8" style="margin-left: 5px">Email</span></span></span><span
									class="style8 style8"></span><span class="style8"></span><span
									class="style8"><span class="style16" class="password" style="margin-left: 85px">&nbsp;&nbsp;&nbsp;Password:
									</span></span></td>
							</tr>
							<tr>
								<td><input id="LoginUserName" name="user_name" type="text" maxlength="40" placeholder="Email ID" onfocus="return hideErrorMsg()" onkeypress="return hideEmailError();"/> 
									<input id="LoginPassword" name="password" type="password" maxlength="20" placeholder="Password" onfocus="return LoginMailValidation()" onkeypress="return hideEmailError();"/> 
									<input id="VUVloginBtn" type="submit" value="Log In" name="login" style="width: 100px;" onclick="return LoginFormValidation();" onfocus="return LoginPasswordValidation();"/>
								</td>

							</tr>
							
							<tr style="height: 23px;">
								<td>
									<a id="EmailNullErrorDiv"></a>
									<a id="PasswordNullErrorDiv" style="float: right;margin-right: 140px;"></a>
								</td>
							</tr>
							
							<tr>
								<td><span class="style7"><span class="style8">
											<input name="" type="checkbox" value="" /> <span
											class="style21"><span class="style8" style="background-image: url('/vanjariudyogvishwa-v2/resources/images/tick.ico');">Remember
													Me</span>&nbsp;</span><span class="style7"></span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="text-decoration: none; cursor: help;" title="If you dont know your password then click here..."
												onclick="javascript:void window.open('ForgotPassword','1364071233609','width=700,height=550,toolbar=0,menubar=0,location=100,status=0,scrollbars=1,resizable=0,left=450,top=250', focus());return false;">Forgot	your Password ?</a>
										</span>
									</span></span></td>
							</tr>
							
							<tr>
								<td>
									<a id="LoginErrorDiv"><font color="#F80CAA" style="font-size: 18px;">${LoginError}</font></a>
									<a id="LogOutMsgDiv"><font color="green" style="font-size: 18px;">${LogOutMsg} ${changePwdMessage}</font></a>
								</td>
							</tr>
							
						</table>
					</form>
		</div>
		
		
				
		
		
		<div id="leftMiddleIndex">
			
			<table>
			<tr>
				<td width="639" height="731">
							<span class="style42">&nbsp;
								<span class="style72">Stay Connected and Share</span>
							</span>
						<p>
						<img
							src="/vanjariudyogvishwa-v2/resources/images/worldMap.png"
							alt="network" align="middle" width="800" height="600" />
					</p>
				</td>
			</tr>
			</table>
			
			
		
		
			<table width="639" height="121" border="0" style="margin-top: -50px">
						<tr>
							<td width="207" height="117"><p class="style75">
									<img
										src="/vanjariudyogvishwa-v2/resources/images/1.png"><span
										class="style74">Get the Latest</span>
								</p>
								<p class="style77">Update with ur latest activity</p></td>
							<td width="217"><p>
									<img
										src="/vanjariudyogvishwa-v2/resources/images/2.png"><span
										class="style76">Connect and share</span>
								</p>
								<p class="style77">Share the moments with us</p></td>
							<td width="201"><p>
									<img
										src="/vanjariudyogvishwa-v2/resources/images/3.png"><span
										class="style76">Add photos</span>
								</p>
								<p class="style77">share photo and videos</p></td>
						</tr>
					</table>
		</div>
		
		<div id="rightMiddleIndex">
			
			<span class="style42">&nbsp;
				<span class="style72">
					Create Your Account...
				</span>
			</span>
					<form action="/vanjariudyogvishwa-v2/Index" method="post">
						
						<table id="MyRegistrationTable">
							<!-- <tr >
								<td colspan="3" rowspan="18" width="20"></td>
							</tr> -->
							<tr>
								<td width="20"></td>
								<td width="170" class="RegistrationCredentials">First Name<font color="red">*</font></td>
								<td><input type="text" name="firstName" id="myFName" size="30" maxlength="15" placeholder="First Name" onkeypress="return isCharKey(event);" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="myFNameError" style="color: red;"></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Middle Name<font color="red">*</font></td>
								<td><input type="text" name="middleName" id="myMName" size="30" maxlength="15" placeholder="Middle Name" onkeypress="return isCharKey(event);"/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="myMNameError" style="color: red;"></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Last Name<font color="red">*</font></td>
								<td><input type="text" name="lastName" id="myLName" size="30" maxlength="15" placeholder="Last Name" onkeypress="return isCharKey(event);" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="myLNameError" style="color: red;"></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Email Id<font color="red">*</font></td>
								<td><input name="emailId" type="email" id="myEmailId"	size="30" maxlength="30" placeholder="EmailId" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="myEmailIdError" style="color: red;">${requestScope.message_email}</td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Contact No.<font color="red">*</font></td>
								<td><input type="text" name="contactNo" id="myContactNo" size="30" maxlength="10" placeholder="Mobile No." onkeypress="return isNumberKey(event)" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="myContactNoError" style="color: red;"></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Birth Date<font color="red">*</font></td>
								<td><input type="text" name="birthDate" name="txtDOB" id="txtDOB" maxlength="10" onkeypress="return isValidDOB(event);" size="30" placeholder="dd/mm/yyyy"/></td>
							</tr>
							<tr>
								<!-- <td></td>
								<td></td> -->
								<td colspan="3">
									<div id="myBDError" style="color: red"></div>
								</td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2"><font Class="error">${requestScope.message11}</font>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Gender<font color="red">*</font></td>
								<td><input type="radio"  name="gender" checked="checked" value="male" style="width: 19px; height: 25px;" />
									<span>Male</span>&nbsp;&nbsp;
									<input type="radio"  name="gender" value="female" style="width: 19px; height: 25px;"/>
									<span>Female</span><br>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Password<font color="red">*</font></td>
								<td><input type="password" name="password" id="password" placeholder="New Password" onkeypress="return clearRegiError();" size="30" maxlength="20" title="Password must contain 1 digit, 1 Character, and Length must be 6 to 16." /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="passwordError" style="color: red;"></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Confirm Password<font color="red">*</font></td>
								<td><input type="password" name="password2" id="password2" class="password2" placeholder="Confirm Password" onkeypress="return clearRegiError();" size="30" maxlength="20" title="Type password matches to above" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td id="password2Error" style="color: red;"></td>
							</tr>
							
							<tr>
								<td colspan="3"><input name="Register" type="submit" value="Sign Up" id="VUVloginBtn" style="width: 200px;margin-left: 35%;"  onclick="return validateRegiForm()"/></td>
							</tr>
						</table>
					</form>
				
			
			
		</div>
		
		
	</div>
	<div id="footer">
			<div id="footer-box">
				<div class="footer_left" style="margin-left: -200px;">
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
						<td height="23"><div align="right">Email &nbsp-</div></td>
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

<%-- 
    Document   : Index page For Vanjari Udyog Vishwa
    Created on : Dec 9, 2013, 6:10:34 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>
