
<%-- 
    Document   : Index page For Vanjari Udyog Vishwa
    Created on : Dec 3, 2013, 4:00:34 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
	<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
	<title>Vanjari Udyog Vishwa</title>
	
	<style type="text/css">
		
	</style>
	<script>
	 function LoginMailValidation(){
		 var uName=document.getElementById("LoginUserName").value;
		 if(uName==null || uName=="" || uName.length<10){
			 document.getElementById("EmailNullErrorDiv").innerHTML="Valid User Name";
			 document.getElementById("LoginUserName").focus();
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
			 
			document.getElementById("EmailNullErrorDiv").innerHTML="please provide User Name & Password";
			document.getElementById("LoginUserName").focus();
			 return false;
		 }
		 
		 if(uName==null || uName=="" || uName.length<10){
			 document.getElementById("EmailNullErrorDiv").innerHTML="please provide Valid User Name";
			 document.getElementById("LoginUserName").focus();
			 return false;
		 }
		 if(uPass==null || uPass=="" || uPass.length<6){
			 document.getElementById("PasswordNullErrorDiv").innerHTML="please provide Password";
			 document.getElementById("LoginPassword").focus();
			 return false;
		 }
	 }
	function hideEmailError(){
		document.getElementById("EmailNullErrorDiv").innerHTML="";
		document.getElementById("PasswordNullErrorDiv").innerHTML="";
	 }
	 function validateDOB(){

		    var dob = document.getElementById("txtDOB").value;
		    alert(dob);
		    var pattern =/^([0-9]{2})-([0-9]{2})-([0-9]{4})$/;
		    if (dob == null || dob == "" || !pattern.test(dob))
		    {
		        errMessage += "Invalid date of birth\n"; 
		        return false;
		    }
		    else{
		        return true;
		    }
		}
	 
	 function isNumberKey(evt)
            {
                var charCode=(evt.which) ? evt.which :event.keyCode;
                if(charCode >31 && (charCode<48 || charCode >57))
                    return false;
                return true;
            }
            
            function isCharKey(evt)
            {
        		 var charCode=(evt.which) ? evt.which :event.keyCode;
        		 
        	        if(charCode >64 && charCode<123 || charCode==8)
        	            return true;
        	        return false;
            }
            
            function passwordNotSame()
            {
            	
            	var pass=document.getElementById("password2").value;
            	var pass1=document.getElementById("password2");
            	if(pass==null || pass=="")
            			{
            		alert("Confirm password should not be Blank !");
            		return false;
            			}
            	
            	var pass2=document.getElementById("password").value;
            	if(pass2!=pass)
            		{
            			alert("Password and Confirm Password must be equal");
            		return false;
            		}
            }
    </script>
    <style type="text/css">
    	input[type="text"],input[type="password"], select {
				width:235px;
				height:30px;
				border: 1px solid gray;
				border-radius:5px;
				background-color: rgba(246, 212, 212, 0.42);
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				padding: 0px 8px;
			}
			
			input[type="text"]:FOCUS, input[type="password"]:FOCUS, select :ACTIVE{
				width:235px;
				height:30px;
				border: 2px solid red;
				border-radius:5px;
				background-color:white;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				padding: 0px 8px;
			}
			#VUVloginBtn{
				height: 35px;
				width: 80px;
				color:white;
				background-color: green;
				font-size: 20px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				border-radius: 6px;
				border: none;
			}
			#VUVloginBtn:HOVER{
				height: 35px;
				width: 80px;
				color:black;
				background-color: rgba(188, 26, 249, 0.75);
				font-size: 20px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				border-radius: 6px;
				border: none;
				cursor: pointer;
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
	<div id="main" style="background-color: bisque; height: 1000px">
		<div id="Header">
			
			<form action="/vanjariudyogvishwa-v2/loginAuthentication" method="post">
						<table width="616" border="0" align="right" style="margin-top: 15px">
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
									<input id="VUVloginBtn" type="submit" value="Log In" name="login" onfocus="return LoginFormValidation()"/>
								</td>

							</tr>
							
							<tr>
								<td><span class="style7"><span class="style8">
											<input name="" type="checkbox" value="" /> <span
											class="style21"><span class="style8">Remember
													Me</span>&nbsp;</span><span class="style7"></span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="text-decoration: none; cursor: help;"
												onclick="javascript:void window.open('ForgotPassword','1364071233609','width=500,height=300,toolbar=0,menubar=0,location=100,status=0,scrollbars=1,resizable=0,left=450,top=250', focus());return false;">Forgot	your Password ?</a>
										</span>
									</span></span></td>
							</tr>
							
							<tr><td><a id="EmailNullErrorDiv"></a></td></tr>
							<tr><td><a id="PasswordNullErrorDiv"></a></td></tr>
							
							<tr>
								<td>
									<a id="LoginErrorDiv"><font color="#F80CAA" style="font-size: 18px;">${LoginError}</font></a>
									<a id="LogOutMsgDiv"><font color="green" style="font-size: 18px;">${LogOutMsg}</font></a>
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
					<form:form action="/vanjariudyogvishwa-v2/Index" method="post" commandName="index">
						
						<table id="MyRegistrationTable">
							<!-- <tr >
								<td colspan="3" rowspan="18" width="20"></td>
							</tr> -->
							<tr>
								<td width="20"></td>
								<td width="170" class="RegistrationCredentials">First Name<font color="red">*</font></td>
								<td><form:input path="firstName" size="30" maxlength="15" placeholder="First Name" onkeypress="return isCharKey(event);" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="firstName" cssClass="error"/></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Middle Name<font color="red">*</font></td>
								<td><form:input path="middleName" size="30" maxlength="15" placeholder="Middle Name" onkeypress="return isCharKey(event);"/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="middleName" cssClass="error" /></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Last Name<font color="red">*</font></td>
								<td><form:input path="lastName" size="30" maxlength="15" placeholder="Last Name" onkeypress="return isCharKey(event);" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="lastName" cssClass="error" /></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Email Id<font color="red">*</font></td>
								<td><form:input path="emailId" 	size="30" maxlength="30" placeholder="EmailId" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="emailId" cssClass="error" />${requestScope.message_email}</td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Contact No.<font color="red">*</font></td>
								<td><form:input path="contactNo" size="30" maxlength="10" placeholder="Mobile No." onkeypress="return isNumberKey(event)" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="contactNo" cssClass="error" /></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Birth Date<font color="red">*</font></td>
								<td><form:input path="birthDate" name="txtDOB" onblur="return validateDOB();" size="30" placeholder="dd/mm/yyyy"/></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="birthDate" cssClass="error" /></td>
							</tr>
							<tr>
								<td></td>
								<td colspan="2"><font Class="error">${requestScope.message11}</font>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Gender<font color="red">*</font></td>
								<td><form:radiobutton path="gender" value="male" style="width: 19px; height: 25px;" />
									<span>Male</span>&nbsp;&nbsp;
									<form:radiobutton path="gender" value="female" style="width: 19px; height: 25px;"/>
									<span>Female</span><br>
								</td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td><form:errors path="gender" cssClass="error"/></td>
							</tr>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Password<font color="red">*</font></td>
								<td><form:password path="password" id="password" placeholder="New Password" size="30" maxlength="20" title="Password must contain 1 digit, 1 Character, and Length must be 6 to 16." /></td>
							</tr>
							<%-- <tr>
								<td colspan="2"><form:errors path="password" cssClass="error" /></td>
							</tr> --%>
							<tr>
								<td></td>
								<td class="RegistrationCredentials">Confirm Password<font color="red">*</font></td>
								<td><input type="password" name="password2" id="password2" class="password2" placeholder="Confirm Password" size="30" maxlength="20" title="Type password matches to above" /></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td ><input name="Register" type="submit" value="Sign Up" id="VUVloginBtn"  onclick="return passwordNotSame()"/></td>
							</tr>
						</table>
											
							<form:errors path="password" cssClass="error" />				
							
						<%-- <table>
							<tr><form:errors path="password" cssClass="error" /><br></tr>
							<tr><form:errors path="gender" cssClass="error"/><br></tr>
							<tr><form:errors path="birthDate" cssClass="error" /><br></tr>
							<tr><form:errors path="contactNo" cssClass="error" /><br></tr>
							<tr><form:errors path="emailId" cssClass="error" />${requestScope.message_email}<br></tr>
							<tr><form:errors path="lastName" cssClass="error" /><br></tr>
							<tr><form:errors path="middleName" cssClass="error" /><br></tr>
							<tr><form:errors path="firstName" cssClass="error"/><br></tr>
						</table> --%>
					</form:form>
				
			
			
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
