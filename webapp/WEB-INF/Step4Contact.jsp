<%-- 
    Document   : Step4Contact
    Created on : Dec 24, 2013, 7:39:57 PM
    Author     : Anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
            <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
	   <script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>step-4 Contact Details Page</title>
        <script type="text/javascript">
        function isNumberKey(evt)
        {
            var charCode=(evt.which) ? evt.which :event.keyCode;
            if(charCode >31 && (charCode<48 || charCode >57))
                return false;
            return true;
        }
        </script>
    </head>
    <body>
        
    <center>
        <div id="mainMsg">
            <div id="Header">
                <label style="margin-left: 470px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="${pageContext.request.contextPath}/resources/images/dummy_male_ic.png">
                    <br>
                  
                </div>
            </div>
	<div id="leftMainStep3"></div>

            <div id="middleStep4">
            <form action="/vanjariudyogvishwa-v2/Contact" method="post">
            		<h2>Step-4</h2>
                                <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Your Contact Details</font></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>
                                    <tr><td colspan="2"><hr/></td></tr>
                                    <tr><td><br><br></td></tr>

                                    <tr>
                                        <td>Permanent Home Address <font color="red">*</font></td><td><textarea name="homeAddress" id="home_ad" rows="2" cols="25" maxlength="80" style="resize: none;"></textarea>
                                            <div id="home_adError" class="red" colspan="2"/>
                                        </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Office Location <font color="red">*</font></td><td><textarea name="officeAddress" id="off_ad" rows="2" cols="25" maxlength="80" style="resize: none;"></textarea>
                                            <div id="off_adError" class="red" colspan="2"/></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>

                                    <tr>
                                        <td>Office Telephone/Mobile <font color="red">*</font></td>
                                        <td><input type="text" name="telephoneNo" id="tel_no" size="30" maxlength="12" onkeypress="return isNumberKey(event)">
                                            <div id="tel_noError" class="red" colspan="2"/></td>
                                    </tr>
                                    <tr>
                                        <td><input type="hidden" name="userMail" value="${loginUser.email}"></td>
                                        <td align="right">
                                            <input type="submit" class="savebtn" id="submit" name="save_contact" value="Save & Continue" >
                                        </td>
                                    </tr>
                                </table>
                                </form>
                            </div>
                                            
            <div id="rightMainStep3"></div>
        </div>
        </center>
   
    </body>
</html>
