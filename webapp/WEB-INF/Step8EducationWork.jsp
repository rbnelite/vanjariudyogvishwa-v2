<%-- 
    Document   : Step6EducationWork
    Created on : Dec 24, 2013, 7:42:49 PM
    Author     : dogkiller,ab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
      <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Step-6 Education & Work Details Page</title>
   
   <style>
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
	#MyEducationDetails {
		width: 560px;
		height: 585px;
		background-color: yellow;
		box-shadow: 10px 10px 5px #888888;
		border-radius: 15px;
	}
</style>	
    </head>
    <body>
       <center>
        <div id="mainMsg">
        <div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>
				
		</div>
            
            <div id="leftMainStep3"></div>
            
            <div id="middleOccupation">
            <div id="MyEducationDetails">
            <h2>Step-6</h2>
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
                                        <td><form:input path="school" size="30" maxlength="100"/>
                                            <form:errors path="school" cssClass="error"/></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Name of Graduation College</td> 
                                        <td><form:input path="collage" size="30" maxlength="100"/>
                                           </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Graduation Degree</td>
                                        <td>
                                            <form:select path="graduation" id="graduation" style="width: 223px;">
                                                <form:option value="-" label="--Please select--"/>
                                                <form:option value="BA"/>
                                                <form:option value="BBA"/>
                                                <form:option value="B.B.M."/>
                                                <form:option value="BCA"/>
                                                <form:option value="B.Com"/>
                                                <form:option value="B.D.S"/>
                                                <form:option value="B.Sc"/>
                                                <form:option value="B.Sc.HS"/>
                                                <form:option value="B.E"/>
                                                <form:option value="B.Tech"/>
                                                <form:option value="B.Ed."/>
                                                <form:option value="BHMCT"/>
                                                <form:option value="B.Pharm"/>
                                                <form:option value="D.T.L"/>
                                                <form:option value="Diploma in Journalism"/>
                                                <form:option value="Diploma in Philosophy"/>
                                                <form:option value="Diploma in Social Work"/>
                                                <form:option value="DM"/>
                                                <form:option value="D.Ed"/>
                                                <form:option value="GNM"/>
                                                <form:option value="LLB"/>
                                                <form:option value="LLM"/>
												<form:option value="none"/>
                                            </form:select>
                                            </td>
                                    </tr>
                                    <tr><td colspan="2" ><br></tr>
                                    <tr>
                                        <td> Specialization 
                                        </td><td><form:input path="otherGraduation" size="30" maxlength="50"/>
                                       
                                        </td>
                                    </tr><tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>PG College Name </td>
                                        <td><form:input path="PGCollege" size="30" maxlength="100"/>
                                            </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td> PG Degree </td>
                                        <td><form:select path="PGDegree"  style="width: 223px;">
                                                <form:option value="-" label="--Please select--"/>
                                                <form:option value="MA"/>
                                                <form:option value="M.Sc"/>
                                                <form:option value="MCA"/>
                                                <form:option value="MBA"/>
                                                <form:option value="M.Tech"/>
                                                <form:option value="M.E"/>
                                                <form:option value="M.Com"/>
                                                <form:option value="MD"/>
                                                <form:option value="MS"/>
                                                <form:option value="MBBS"/>
                                                <form:option value="M.CH"/>
                                                <form:option value="M.D.S"/>
                                                <form:option value="M.PhT."/>
                                                <form:option value="M.Arch."/>
                                                <form:option value="M.Ed"/>
                                                <form:option value="M.Phil"/>
                                                <form:option value="M.P.Ed."/>
                                                <form:option value="M.P.E."/>
                                                <form:option value="M.Pharm"/>
                                                <form:option value="PGICVTCA"/>
                                                <form:option value="Ph.D"/>
                                                <form:option value="Other"/>
												<form:option value="none"/>	
                                            </form:select>
                                            <div id="pg_degreeError" class="red" colspan="2"/>
                                        </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Specialization</td><td>
                                        <form:input path="otherPG" size="30" maxlength="50"/></td>
                                    </tr>

                                    <tr>
                                        <td><input type="hidden" name="userMail" value="${CurrentEmailId}"></td>
                                        <td align="right">
                                            <input type="submit" class="savebtn" name="SaveEducation" id="submit" value="Save & Continue" style="margin: 7px 5px 0px 0px;">
                                        </td>
                                    </tr>
                                </table>
                </form:form>
                </div>
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

