<%-- 
    Document   : Step9Religion
    Created on : Dec 24, 2013, 7:46:57 PM
    Author     : vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
       <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Step-5 Religion Details Page</title>
		<script type="text/javascript">
		function isCharKey(evt)
        {
    		 var charCode=(evt.which) ? evt.which :event.keyCode;
    		 
    	        if(charCode >64 && charCode<123)
    	            return true;
    	        return false;
        }
		</script> 
    </head>
    <body>
        <center>
        <div id="mainMsg">
        <div id="Header">

				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>

				
			</div>
            
            <div id="leftMainStep3"></div>
            
            <div id="middleStep4">
            <form:form action="/vanjariudyogvishwa-v2/Religion" method="POST" commandName="religion">
            <h2>Step-5</h2>
                        <table align="center">
                            <tr><td colspan="2"></td><br></tr>
                            <tr>
                                <td colspan="2"><font size="5">Fill Your Religion and Ethnicity Details</font></td>
                            </tr>
                           
                            <tr>
                                <td colspan="2">This Information will help us to Create Your Profile</td>
                            </tr>
                            <tr><td colspan="2"><hr/></td></tr>
                            <tr><td><br></td></tr>
                           
                <tr>
                    <td>Religion <font color="red">*</font></td>
                    <td>
                        <form:select path="religionname" style="width: 223px;">
                             <form:option value="--Select Religion--"/>
                            <form:option value="Hindu"/>
                            <form:option value="Muslim"/>
                            <form:option value="Christen"/>
                            <form:option value="Sikh"/>
                            <form:option value="Other"/>
                        </form:select>
                        <form:errors path="religionname" cssClass="error"/>
                     </td>
                </tr>
                 <tr><td colspan="2"><br></td></tr>
                <tr>
                    <td>Caste</td>
                    <td><form:input path="relCast" onkeypress="return isCharKey(event);"/>
                    <form:errors path="relCast" cssClass="error"/>
                   </td>
                </tr>
                              
                 <tr><td colspan="2"><br></td></tr>
                
                 <tr>
                     <td><input type="hidden" name="usermail" value="${loginUser.email}"></td>
                     <td align="right">
                    
                     <input type="submit" name="save_religion" id="submit" value="Save & Continue" class="savebtn">
                            </td>
                        </tr>
                       </table>
           </form:form>
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
