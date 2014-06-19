<%-- 
    Document   : Step3LifeStyle
    Created on : Dec 24, 2013, 7:36:40 PM
    Author     : vishal,ab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
          <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Step-9 LifeStyle Details Page</title>
    </head>
    <body>
        
        
        <center>
        <div id="mainMsg">
        <div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>
				
			</div>
            
            <div id="leftMainStep3"></div>
            
            <div id="middleStep4">
                <form action="/vanjariudyogvishwa-v2/LifeStyle" method="POST">
                <h2>Step-9</h2>
                <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Your LifeStyle & Attributes Details</font></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>
                                    <tr><td colspan="2"><hr/></td></tr>
                                    <tr><td><br><br></td></tr>

                                    <tr>
                                        <td>Diet</td><td><select id="diet" name="diet" style="width: 223px;">
                                                <option selected value="">-------Please Select-------</option>
                                                <option>Veg</option>
                                                <option>Non-Veg</option>
                                                <option>Mix</option></select>
                                           </td>
                                    </tr> <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Smoke</td><td><select name="smoke" id="smoke" style="width: 223px;">
                                                <option selected value="">-------Please Select-------</option>
                                                <option>Yes</option>
                                                <option>No</option>
                                                <option>occasionally</option>
                                                </select>
                                           </td>
                                    </tr> <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Drink <font color="red">*</font></td><td>
                                        <select name="drink" id="drink" style="width: 223px;">
                                                <option selected value="">-------Please Select-------</option>
                                                <option>Yes</option>
                                                <option>No</option>
                                                <option>occasionally</option>
                                        </select>
                                           </td>
                                    </tr> <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Complexion</td>
                                        <td><select name="complexion" id="complexion" style="width: 223px;">
                                                <option selected value="">-------Please Select-------</option>
                                                <option>Very Fair</option>
                                                <option>Whitish</option>
                                                <option>Black</option>
                                                <option>Fair</option>
                                            </select>

                                            </td>
                                    </tr> <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td> Health</td>
                                        <td><select name="bodytype" id="bodytype" style="width: 223px;">
                                                <option selected value="">-------Please Select-------</option>
                                                <option>Fat</option>
                                                <option>Slim</option>
                                                <option>Over Weight</option>
                                                <option>Light Weight</option>
                                                <option>Athlete</option>
                                                <option>Average</option>
                                            </select>
                                           </td>
                                    </tr> <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Blood Group </td><td><select name="bloodgroup" id="bloodgroup" style="width: 223px;">
                                                <option selected value="">-------Please Select-------</option>
                                                <option>A+</option>
                                                <option>A-</option>
                                                <option>B+</option>
                                                <option>B-</option>
                                                <option>O+</option>
                                                <option>AB+</option>
                                                <option>AB-</option>
                                            </select>
                                           </td>
                                    </tr> <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Weight (in Kg)</td><td><input type="text" name="weight" id="weight" size="30" maxlength="3" onkeypress="return isNumberKey(event)">
                                           </td>
                                    </tr> 
                                    <tr><td colspan="2"><br></tr>

                                    <tr>
                                        <td><input type="hidden" name="usermail" value="${CurrentEmailId}"><a href="Hobbies"><font color="green"><b>SKIP</font></a></td>
                                        <td align="right">

                                            <input type="submit" class="savebtn" name="save_lifestyle" id="submit" value="Save & Continue" >
                                        </td>
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
