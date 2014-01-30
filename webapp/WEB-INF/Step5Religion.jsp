<%-- 
    Document   : Step9Religion
    Created on : Dec 24, 2013, 7:46:57 PM
    Author     : vishal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Step-5 Religion Details Page</title>
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
            <form action="/vanjariudyogvishwa-v2/Religion" method="POST">
            <h2>Step-5</h2>
                        <table align="center">
                            <tr><td colspan="2"><br></tr>
                            <tr>
                                <td colspan="2"><font size="5">Fill Your Religion and Ethnicity Details</font></td>
                            </tr>
                           
                            <tr>
                                <td colspan="2">This Information will help us to Create Your Profile</td>
                            </tr>
                            <tr><td colspan="2"><hr/></td></tr>
                            <tr><td><br><br></td></tr>
                           
                <tr>
                    <td>Religion <font color="red">*</font></td><td>
                        <select id="religionname" name="religionName" style="width: 223px;">
                            <option selected value="">--Please Select--</option>
                            <option>Hindu</option>
                            <option>Muslim</option>
                            <option>Christen</option>
                            <option>Sikh</option>
                            <option>Other</option>
                        </select>
                        
                    <div id="religion11Error" class="red" colspan="2"/></td>
                </tr>
                 <tr><td colspan="2"><br></tr>
                <tr>
                    <td>Caste <font color="red">*</font></td><td><input type="text" name="relCast" id="relcast" size="30" maxlength="20">
                    <div id="castError" class="red" colspan="2"/></td>
                </tr>
                              
                 <tr><td colspan="2"><br></tr>
                <tr>
                    <td>Mother Tongue <font color="red">*</font></td><td><input type="text" name="motherToung" id="mothertoung"size="30" maxlength="30">
                    <div id="motherError" class="red" colspan="2"/></td>
                </tr>
                 <tr><td colspan="2"><br></tr>
                <tr>
                    <td>Native Place <font color="red">*</font></td><td><input type="text" name="nativePlace" id="nativeplace" size="30" maxlength="50">
                    <div id="natplaceError" class="red" colspan="2"/></td>
                </tr>
                 <tr><td colspan="2"><br></tr>
                  <tr>
                     <td><input type="hidden" name="userMail" value="${CurrentEmailId}"></td>
                     <td align="right">
                    
                     <input type="submit" name="save_religion" id="submit" value="Save & Continue" class="savebtn">
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
