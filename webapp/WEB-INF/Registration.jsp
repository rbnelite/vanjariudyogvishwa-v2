
<%-- 
    Document   : Registration @ Vanjari Udyog Vishwa.
    Created on : Dec 21, 2013, 11:02:28 AM
    Author     : sawantmanojm@gmail.com
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<%-- <link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet"> --%>
<link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
<script src="<c:url value="/resources/js/anil.js" />"></script>
<script src="<c:url value="/resources/js/RBNelite4.js" />"></script>
<script src="<c:url value="/resources/js/ManojSawant.js"/>"></script>


<title>Registration | Vanjari Udyog Vishwa</title>
	<script>
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
    		 
    	        if(charCode >64 && charCode<123)
    	            return true;
    	        return false;
        }
		
		function check()
        {
        	
        	var temp=document.getElementById("fav_music");
        
        	var totalChecked = 0;
        	 for (i = 0; i < temp.options.length; i++) {
                 if (temp.options[i].selected) {
                     totalChecked++;
                 }
             }
        	 
        	 if(totalChecked > 4)
        		 {
        		 document.getElementById("massage").innerHTML="You can't check more than 4 options";
        		 return false;
        		 }
        	 document.getElementById("massage").innerHTML="";
        	 return true;
        	 
        }
		
	</script>
	<style type="text/css">
		.error {
			color: #ff0000;
		}
			
		.errorblock {
			color: #000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
			/* CSS for Input, Select and textArea START here...*/
			input[type="text"], select {
				width:290px;
				height:30px;
				border: 1px solid gray;
				border-radius:5px;
				background-color: rgba(246, 212, 212, 0.42);
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			}
			
			input[type="text"]:FOCUS, select :ACTIVE{
				width:290px;
				height:30px;
				border: 2px solid red;
				border-radius:5px;
				background-color:white;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
			}
						
			textarea{
				resize: none;
				width:290px;
				height:50px;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				background-color: rgba(246, 212, 212, 0.42);
				border: 1px solid gray;
				border-radius:5px;
			}
			textarea:FOCUS{
				resize: none;
				width:290px;
				height:50px;
				font-size: 18px;
				font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
				background-color:white;
				border: 1px solid red;
				border-radius:5px;
			}
			
		/* CSS for Input, Select and textArea END here...*/
			
	</style>

</head>
<body>


	<center>
		<div id="mainInterestAreas" style="height: auto;">

			<div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${loginUser.firstName} ${loginUser.lastName}</label> <br>
				
			</div>


			<div id="info_step2" style="height: auto;">
				
				<!-- Registration Step-2 InterestArea Starts Here -->
				<c:if test="${IndexStatus}">
				<div id="MyIntrestAreas" style="display: block;">
				<h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 740px;">Step-2</h2>
				<form name="IntrestAreasForm" action="/vanjariudyogvishwa-v2/IntrestAreas" method="post" onsubmit="return displayMyIntrestAreas();">
					
					<table>
						<tr>
							<td colspan="2"><font size="5">Select Your Interest areas Details</font>
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
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="5" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/5-musics.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Sports</td><td>Drawing</td><td>Photography</td><td>Travelling</td><td>Music</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="6" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/6-READING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="7" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/7-BROWSING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="8" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/8-BIKE RIDING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="9" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/9-CAR_RIDING.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="10" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/10-TRACKING.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Reading</td><td>Surfing/Browsing</td><td>Bike Riding</td><td>Car Riding</td><td>Trekking</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="11" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/11-Movies-.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="12" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/12-SocialWork.jpg" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="13" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/13-POLITICAL.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="14" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/14-parties.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="15" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/15-shopping-bag.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Movies</td><td>Social Work</td><td>Politics</td><td>Friends/Parties</td><td>Shopping</td>
						</tr>
						<tr><td>&nbsp;</td></tr>
						<tr>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="16" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/16-business.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="17" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/17-drama.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="18" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/18-CIRCUS.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="19" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/19-DanceShow.png" height="100" width="100"></td>
							<td style="border :1px solid gray; border-radius: 5px;"><input type="checkbox"  name="interestId" value="20" style=" position: absolute; "><img src="${pageContext.request.contextPath}/resources/icons/1-SPORTS.png" height="100" width="100"></td>
						</tr>
						<tr>
							<td>Business</td><td>Drama</td><td>Circus</td><td>Dance Shows</td><td>Cultural activities</td>
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
							<td></td><td></td>
							<td align="left">
								<input type="submit" name="save_intrests" value="Save & Continue" class="savebtn"
								 style="margin-top: 10px"> <!-- onmouseover="return displayMyOccupation();" -->
							</td>
							<td></td>
						</tr>

					</table>
				</form>
				</div>
				</c:if>
				<!-- Registration Step-2 InterestArea End Here -->
				
				<!-- Registration Step-3 Occupation Start Here -->
					<c:if test="${IAstatus}">
					<div id="MyOccupation" style="display: block;">
				<h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 600px;">Step-3</h2>
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
							<td><input type="text" name="companyName" size="30" maxlength="30"/>
								
							</td>
						</tr>
						<tr>
						<td></td>
							<td colspan="2"><form:errors path="companyName" cssClass="error"/><br></td>

					</tr>
						
						<tr>
							<td>Occupation <font color="red">*</font> </td>
							<td> <select id="occupation" name="occupatiuon">
									<option>--Please select--</option>
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
							<td><textarea name="productdetils" id="product_details" style="resize: none;"></textarea>
							
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
							<td><select name="emptype" id="emp_type">
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
							<td><input type="text" name="annualincome"	size="30" maxlength="9" onkeypress="return isNumberKey(event)"/>
								
							</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="2"><form:errors path="annualincome" cssClass="error"/><br></td>
						</tr>
						<tr>
							<td>Web Address :</td>
							<td><input type="text" name="webAddress" size="30" maxlength="200"/>
								
							</td>
						</tr>
						<tr>
							<td><input type="hidden" name="usermail" value="${CurrentEmailId}">
								<!-- <input type="button" name="PrevInterestArea" id="submit" value="Previous" class="savebtn" style="width: 100px" onmouseover="return displayMyIntrestAreas();"> -->
							</td>
							<td align="right">
								<input type="submit" name="save_occupation" id="submit" value="Save & Continue" class="savebtn" style="margin-top: 10px;">
								<!-- onmouseover="return displayMyContactDetails()" -->
							</td>
						</tr>
					</table>
				</form:form>
				</div>
				</c:if>
				<!-- Registration Step-3 Occupation End Here -->
				
				<!-- Registration Step-4 Contact Start Here -->
					<c:if test="${OccupationStatus}">
					<div id="MyContactDetails" style="display: block;">
					<form:form action="/vanjariudyogvishwa-v2/Contact" method="post"
						commandName="contact">
						<h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 560px;">Step-4</h2>
						<table align="center">
							<tr>
								<td colspan="2"><br>
							</tr>
							<tr>
								<td colspan="2"><font size="5">Fill Your Contact
										Details</font></td>
							</tr>
							<tr>
								<td colspan="2">This Information will help us to Create
									Your Profile</td>
							</tr>
							<tr>
								<td colspan="2"><hr /></td>
							</tr>
							<tr>
								<td><br>
								<br></td>
							</tr>

							<tr>
								<td>Permanent Home Address <font color="red">*</font></td>
								<td><input type="text" name="homeAddress" maxlength="200" /> <form:errors
										path="homeAddress" cssClass="error" /></td>
							</tr>
							<tr>
								<td colspan="2"><br>
							</tr>
							<tr>
								<td>Office Location <font color="red">*</font></td>
								<td><input type="text" name="officeAddress" id="off_ad"
										maxlength="200" /> <form:errors path="officeAddress"
										cssClass="error" /></td>
							</tr>
							<tr>
								<td colspan="2"><br>
							</tr>

							<tr>
								<td>Office Telephone/Mobile</td>
								<td><input type="text" name="telephoneNo" maxlength="12"
									onkeypress="return isNumberKey(event)"></td>
							</tr>
							<tr>
								<td><input type="hidden" name="userMail" value="${loginUser.email}">
									<!-- <input type="button" name="PrevOccupation" id="submit" value="Previous" class="savebtn" style="width: 100px;margin-top: 5px" onmouseover="return displayMyOccupation();"> -->
								</td>
								<td align="right"><input type="submit" class="savebtn"
									id="submit" name="save_contact" value="Save & Continue" 
									style="margin: 8px 14px 0px 0px;"> <!-- onmouseover="return displayMyReligionDetails();" -->
								</td>
							</tr>
						</table>
					</form:form>
				</div>
				</c:if>
				<!-- Registration Step-4 Contact End Here -->
				
				<!-- Registration Step-5 Religion Start Here -->
					<c:if test="${ContactStatus}">
					<div id="MyReligionDetails" style="display: block;">
					<form action="/vanjariudyogvishwa-v2/Religion" method="POST">
						<h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 560px;">Step-5</h2>
						<table align="center">
							<tr>
								<td colspan="2"></td>
								<br>
							</tr>
							<tr>
								<td colspan="2"><font size="5">Fill Your Religion
										and Ethnicity Details</font></td>
							</tr>

							<tr>
								<td colspan="2">This Information will help us to Create
									Your Profile</td>
							</tr>
							<tr>
								<td colspan="2"><hr /></td>
							</tr>
							<tr>
								<td><br></td>
							</tr>

							<tr>
								<td>Religion <font color="red">*</font></td>
								<td><select name="religionname">
										<option>--Select Religion--</option>
										<option value="Hindu">Hindu</option>
										<option value="Muslim">Muslim</option>
										<option value="Christen">Christen</option>
										<option value="Sikh">Sikh</option>
										<option value="Other">Other</option>
									</select> </td>
							</tr>
							<tr>
								<td colspan="2"><br></td>
							</tr>
							<tr>
								<td>Caste</td>
								<td><input type="text" name="relCast" onkeypress="return isCharKey(event);" /></td>
							</tr>

							<tr>
								<td colspan="2"><br></td>
							</tr>

							<tr>
								<td><input type="hidden" name="usermail" value="${loginUser.email}">
									<!-- <input type="button" name="PrevContact" id="submit" value="Previous" class="savebtn" style="width: 100px" onmouseover="return displayMyContactDetails();"> -->
								</td>
								<td align="right"><input type="submit" name="save_religion" style="margin: 10px 50px 10px 0px;"
									id="submit" value="Save & Continue" class="savebtn">
								<!-- onmouseover="return displayMyEducationDetails();" -->
								</td>
							</tr>
						</table>
					</form>
				</div>
				</c:if>	
				<!-- Registration Step-5 Religion End Here -->
				
				<!-- Registration Step-8 Education Start Here -->
					<c:if test="${ReligionStatus}">
					<div id="MyEducationDetails" style="display: block;">
            <h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 560px;">Step-6</h2>
                <form:form action="/vanjariudyogvishwa-v2/educationwork" method="POST" commandName="educationWork">
                          
                <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Your Education Details</font></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>
                                    <tr><td colspan="2"><hr/></td></tr>
                                    <tr><td><br><br></td></tr>
                                    <tr>
                                        <td> Name of School <font color="red">*</font></td>
                                        <td><input type="text" name="school" size="30" maxlength="100"/>
                                            <form:errors path="school" cssClass="error"/></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Name of Graduation College</td> 
                                        <td><input type="text" name="collage" size="30" maxlength="100"/>
                                           </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Graduation Degree</td>
                                        <td>
                                            <select name="graduation" id="graduation">
                                                <option>--Please select--</option>
                                                <option>BA</option>
                                                <option>BBA</option>
                                                <option>B.B.M.</option>
                                                <option>BCA</option>
                                                <option>B.Com</option>
                                                <option>B.D.S</option>
                                                <option>B.Sc</option>
                                                <option>B.Sc.HS</option>
                                                <option>B.E</option>
                                                <option>B.Tech</option>
                                                <option>B.Ed.</option>
                                                <option>BHMCT</option>
                                                <option>B.Pharm</option>
                                                <option>D.T.L</option>
                                                <option>Diploma in Journalism</option>
                                                <option>Diploma in Philosophy</option>
                                                <option>Diploma in Social Work</option>
                                                <option>DM</option>
                                                <option>D.Ed</option>
                                                <option>GNM</option>
                                                <option>LLB</option>
                                                <option>LLM</option>
												<option>none</option>
                                            </select>
                                            </td>
                                    </tr>
                                    <tr><td colspan="2" ><br></tr>
                                    <tr>
                                        <td> Specialization 
                                        </td><td><input type="text" name="otherGraduation" size="30" maxlength="50"/>
                                       
                                        </td>
                                    </tr><tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>PG College Name </td>
                                        <td><input type="text" name="PGCollege" size="30" maxlength="100"/>
                                            </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td> PG Degree </td>
                                        <td><select name="PGDegree">
                                                <option>--Please select--</option>
                                                <option>MA</option>
                                                <option>M.Sc</option>
                                                <option>MCA</option>
                                                <option>MBA</option>
                                                <option>M.Tech</option>
                                                <option>M.E</option>
                                                <option>M.Com</option>
                                                <option>MD</option>
                                                <option>MS</option>
                                                <option>MBBS</option>
                                                <option>M.CH</option>
                                                <option>M.D.S</option>
                                                <option>M.PhT.</option>
                                                <option>M.Arch.</option>
                                                <option>M.Ed</option>
                                                <option>M.Phil</option>
                                                <option>M.P.Ed.</option>
                                                <option>M.P.E.</option>
                                                <option>M.Pharm</option>
                                                <option>PGICVTCA</option>
                                                <option>Ph.D</option>
                                                <option>Other</option>
												<option>none</option>	
                                            </select>
                                            <div id="pg_degreeError" class="red" colspan="2"/>
                                        </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Specialization</td><td>
                                        <input type="text" name="otherPG" size="30" maxlength="50"/></td>
                                    </tr>

                                    <tr>
                                        <td><input type="hidden" name="userMail" value="${CurrentEmailId}">
                                        	<!-- <input type="button" name="PrevReligion" id="submit" value="Previous" class="savebtn" style="width: 100px;margin-top: 15px" onmouseover="return displayMyReligionDetails();"> -->
                                        </td>
                                        <td align="right">
                                            <input type="submit" class="savebtn" name="SaveEducation" id="submit" value="Save & Continue" style="margin: 8px 5px 0px 0px;">
                                            <!-- onmouseover="return displayMyHobbies();" -->
                                        </td>
                                    </tr>
                                </table>
                </form:form>
                </div>
				</c:if>	
				<!-- Registration Step-8 Education End Here -->
				
				<!-- Registration Step-10 Hobbies Start Here -->
					<c:if test="${EducationStatus}">
					<div id="MyHobbies" style="display: block;">
            
            <form action="/vanjariudyogvishwa-v2/Hobbies" method="post">
            	<h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 600px;">Step-7</h2>
                <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Your Hobbies and Interests Details</font></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>

                                    <tr><td colspan="2"><hr/></td></tr>
                                    


                                    <tr>
                                        <td> Hobbies </td><td><textarea name="hobbiesName" id="hobbies" style="resize: none;"></textarea>
                                           </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td>Favourite Music</td><td>
                                        <!-- </textarea> -->
                                        <select name="favouriteMusic" id="fav_music" style="resize: none;height: 50px; width: 295px" multiple="multiple" size="4">
                                        <option>Blues</option>
                                        <option>Alternative Music</option>
                                        <option>Classical Music</option>
                                        <option>Country Music</option>
                                        <option>Dance Music</option>
                                        <option>Easy Listening</option>
                                        <option>Electronic Music</option>
                                        <option>European Music</option>
                                        <option>Indie Pop</option>
                                        <option>Hip Hop / Rap</option>
                                        <option>Jazz</option>
                                        <option>Latin Music</option>
                                        <option>Pop</option>
                                        <option>Rock</option>
                                         <option>World Music / Beats</option>
                                        <option>Soul</option>
                                           </select>
                                            </td>
                                    </tr> 
                                    <tr><td></td><td><span id="massage" style="color: red;"></span></td></tr>
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Favourite Books </td><td><textarea name="favouriteBooks" id="fav_books" style="resize: none;" onfocus=" return check()"></textarea>
                                            </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Dress Style </td>
                                        <td>
                                        <select name="dressStyletyle" id="dress_style" style="width: 295px">
                                                <option selected value="">--Please Select --</option>
                                                <option>Indian</option>
                                                <option>Western</option>
                                                <option>Sports</option>
                                                <option>Formal</option>
                                                <option>Casual</option>
                                                <option>Not particular</option>
                                        </select>
                                        </td>
                                    <!--</tr> <tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td>Favourite TV Shows </td><td><textarea name="favouritrTvShows" id="fav_tvShows" style="resize: none;"></textarea>
                                            <div id="fav_tvShowsError" class="red" colspan="2"/></td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    
                                   <tr>
                                        <td>Favourite Movies </td><td><textarea name="favouriteMovies" id="fav_movies" style="resize: none;"></textarea>
                                        </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Sports</td>
                                        <td><textarea name="sports" id="sports" style="resize: none;" ondblclick="return "></textarea>
                                        </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->

                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Food I Cook </td><td><textarea name="foodIcook" id="food" style="resize: none;"></textarea>
                                            </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td>Favourite Vacation<br> Destination </td>
                                        <td><textarea name="vacationDestination" id="vac_dest" style="resize: none;"></textarea>
                                           </td>
                                    </tr> 
                                    <tr><td colspan="2"><br></tr>

                                    <tr>
                                        <td><input type="hidden" name="usermail" value="${loginUser.email}">
                                        	<!-- <input type="button" name="PrevEducation" id="submit" value="Previous" class="savebtn" style="width: 100px" onmouseover="return displayMyEducationDetails();"> -->
                                        </td>
                                        <td align="right">

                                            <input type="submit" class="savebtn" name="save_hobbies" id="submit" value="Save & Continue" style="margin: 0px 49px 0px 0px;">
                                            <!-- onmouseover="return displayMyOtherDetails();" -->
                                        </td>
                                    </tr>
                                </table>
                
                </form>
            	</div>
				</c:if>
				<!-- Registration Step-10 Hobbies End Here -->
				
				<!-- Registration Step-11 OtherDetails Start Here -->
					<c:if test="${HobbiesStatus}">
					<div id="MyOtherDetails" style="display: block;">
			<form action="/vanjariudyogvishwa-v2/OtherDetails" method="post"  commandName="otherdetails">
			<form:errors path="*" cssClass="errorblock" element="div"/>
			<h2 style="background-color: #FBB819;margin-top: 0px;height: 33px;width: 560px;">Step-8</h2>
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
						<td><textarea name="socialStatus" style="resize: none;"></textarea>
						</td>						
                         <td><form:errors path="socialStatus" cssclass="error"/></td>
						
						
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Political Status/View</td>
						<td><textarea name="polyticalstatus" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Social Activity</td>
						<td><textarea name="socialact" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Political Activity</td>
						<td><textarea name="polyticalact" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td>Cultural Activity</td>
						<td><textarea name="culturalact" style="resize: none;"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2"><br>
					</tr>
					<tr>
						<td><input type="hidden" name="usermail" value="${loginUser.email}">
							<!-- <input type="button" name="PrevHobbies" id="submit" value="Previous" class="savebtn" style="width: 100px" onmouseover="return displayMyHobbies();"> -->
						</td>
						<td align="right"> &nbsp;&nbsp;&nbsp;&nbsp;
						<input type="submit" name="save_other" value="Save & Continue"  class="savebtn">

						</td>
					</tr>
				</table>
				</form>
				</div>
				</c:if>
				<!-- Registration Step-11 OtherDetails End Here -->
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

