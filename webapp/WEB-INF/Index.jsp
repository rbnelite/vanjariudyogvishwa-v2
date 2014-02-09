<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
	<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
	<title>Registration</title>
	
	
	 <script>
            function isNumberKey(evt)
            {
                var charCode=(evt.which) ? evt.which :event.keyCode;
                if(charCode >31 && (charCode<48 || charCode >57))
                    return false;
                return true;
            }
            
            function passwordNotSame()
            {
            	
            	var pass=document.getElementById("password2").value;
            	var pass1=document.getElementById("password2");
            	if(pass==null || pass=="")
            			{
            		pass1.style.background='red';
            		return false;
            			}
            	
            	var pass2=document.getElementById("password").value;
            	if(pass2!=pass)
            		{
            		alert("both password not same");
            		return false;
            		}
            }
    </script>
</head>
<body>

	<div align="center">

		<table align="center" width="1321" height="874">
			<div id="logo1" align="center">
				<img src="${pageContext.request.contextPath}/resources/images/banner12.png"
					width="142" height="150" alt="logo" />
			</div>
			<tr>
				<td height="79" colspan="2" bgcolor="#fab039">
					<form action="/vanjariudyogvishwa-v2/loginAuthentication"
						method="post">
						<table width="1194" border="0" align="right">
							<tr>
								<td width="577" height="21">&nbsp;</td>
								<td width="607"><span class="style8"><span
										class="style16"><span class="style8">Email-</span></span></span><span
									class="style8 style8"></span><span class="style8"></span><span
									class="style8"><span class="style16" class="password">&nbsp;&nbsp;&nbsp;Password-
									</span></span></td>
							</tr>
							<tr>
								<td height="26"></td>
								<td><input name="user_name" type="text" maxlength="40" /> 
									<input name="password" type="password" maxlength="20" /> 
									<input type="submit" value="" name="login"
									style="background-image:url(${pageContext.request.contextPath}/resources/images/login_1.png);width :70px; height: 25px" />
								</td>

							</tr>
							<tr>
								<td>&nbsp;</td>
								<td><marquee><font color="Red">${LoginError}</font></marquee><marquee><font color="white">${LogOutMsg}</font></marquee></td>
							</tr>
							<tr>
								<td height="22">&nbsp;</td>
								<td><span class="style7"><span class="style8">
											<input name="" type="checkbox" value="" /> <span
											class="style21"><span class="style8">Remember
													Me</span>&nbsp;</span><span class="style7"></span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
												<a href="#" style="text-decoration: none"
onclick="javascript:void window.open('ForgotPassword','1364071233609','width=500,height=300,toolbar=0,menubar=0,location=100,status=0,scrollbars=1,resizable=0,left=450,top=250');return false;">Forgot	your Password ?</a>
										</span>
									</span></span></td>
							</tr>
						</table>
					</form>

				</td>
			</tr>
			<tr>
				<td width="639" height="731"><label></label> <span
					class="style2"><span class="style6"><span
							class="style42">&nbsp;<span class="style71"> <span
									class="style72">Stay Connected and Share</span></span></span></span></span><span
					class="style36"> ..... </span>

					<p>
						<img
							src="${pageContext.request.contextPath}/resources/images/world mapu.png"
							alt="network" align="middle" width="500" height="400" />
					</p>
					<p>&nbsp;</p>
					<p>&nbsp;</p>
					<table width="639" height="121" border="0">
						<tr>
							<td width="207" height="117"><p class="style75">
									<img
										src="${pageContext.request.contextPath}/resources/images/1.png"><span
										class="style74">Get the Latest</span>
								</p>
								<p class="style77">Update with ur latest activity</p></td>
							<td width="217"><p>
									<img
										src="${pageContext.request.contextPath}/resources/images/2.png"><span
										class="style76">Connect and share</span>
								</p>
								<p class="style77">Share the moments with us</p></td>
							<td width="201"><p>
									<img
										src="${pageContext.request.contextPath}/resources/images/3.png"><span
										class="style76">Add photos</span>
								</p>
								<p class="style77">share photo and videos</p></td>
						</tr>
					</table></td>
				<td width="670">
					<form:form action="/vanjariudyogvishwa-v2/Index" method="post" commandName="index">
						<table width="493" align="top" height="678" border="0"
							style="background-image:url(${pageContext.request.contextPath}/resources/images/Untitled-2.png);">
							<tr>
								<td width="10"><div>
										<th width="473" height="600" class="style27"><span
											class="style64">Create Your Account...</span>
											<div align="top">

												<p>&nbsp;</p>
												<table width="327" height="480" align="center">

													<tr>
														<td width="121" align="left" class="style59">First
															Name<font color="red">*</font>
														</td>
														<td width="194"><form:input path="firstName" size="30" maxlength="15" />
														<form:errors path="firstName" cssClass="error"/></td>
													</tr>

													<tr>
														<td align="left"><span class="style34"><span
																class="style46">Middle Name<font color="red">*</font></span></span>
														</td>
														<td><form:input path="middleName"	size="30" maxlength="15" />
														<form:errors path="middleName" cssClass="error" /></td>
													</tr>

													<tr>
														<td align="left" class="style46">Last Name<font
															color="red">*</font></td>
														<td><form:input path="lastName" size="30" maxlength="15" />
														<form:errors path="lastName" cssClass="error" /></td>
													</tr>
													<tr>
														<td align="left" class="style46">Email Id<font
															color="red">*</font></td>
														<td><form:input path="emailId" 	size="30" maxlength="30" />
														<form:errors path="emailId" cssClass="error" />${requestScope.message_email}</td>
													</tr>

													<tr>
														<td align="left" class="style46">Contact No.<font
															color="red">*</font></td>
														<td><form:input path="contactNo" size="30" maxlength="10" onkeypress="return isNumberKey(event)" />
														<form:errors path="contactNo" cssClass="error" /></td>
													</tr>
													<tr>
														<td align="left" class="style46">Birth Date<font
															color="red">*</font></td>
														<td><form:input path="birthDate" size="30" placeholder="mm/dd/yyyy"/><form:errors path="birthDate"/>
														</td>
																												</td>
													</tr>

													<tr>
														<td>&nbsp;</td>
														<td><font color="red" style="font-weight: normal">${requestScope.message11}</font>
												</tr>
													<tr>
														<td align="left" class="style46">Gender<font color="red">*</font></td>
														<td><form:radiobutton path="gender" value="male"/>
																<span class="style46">Male</span><span class="style24">&nbsp;</span>&nbsp;

																<form:radiobutton path="gender" value="female"/>
																	<span class="style46">Female</span>
																	<form:errors path="gender" cssClass="error"/></td>
													</tr>
													<tr>
														<td align="left" class="style46">Password<font
															color="red">*</font></td>
														<td><form:password path="password" id="password" size="30" maxlength="20"  />
														<form:errors path="password" cssClass="error" /></td>
													</tr>

													<tr>
														<td align="left" class="style46">Confirm Password<font
															color="red">*</font></td>
														<td><input type="password" name="password2" id="password2" size="30" maxlength="20" style="background: white;" />
														</td>
													</tr>

													<tr>
														<td height="96"></td>
														<td align="right">
														<input name="Register" type="submit" value="" id="submit"  onclick="return passwordNotSame()" style="background-image: url(${pageContext.request.contextPath}/resources/images/signup.png); width:72px; height:27px;" />
														</td>
													</tr>
												</table>
											</div>
											</th>
											</div></td>
							</tr>
							<tr>
							</tr>
						</table>
					</form:form>
				</td>

			</tr>
			<tr>
				<td height="45" colspan="2" bgcolor="#fab039" align="center"><span
					class="style10"> About | Developers | Create Ad | Music |
						Games | Apps | Privacy | Help</span>

					<p class="style8">
						<u>All Right Reserved</u>
					</p></td>
			</tr>
		</table>
	</div>
	</form>
</body>
</html>
