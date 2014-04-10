<%-- 
    Document   : ProfilePhotoOperation
    Created on : Dec 10, 2013, 6:22:25 PM
    Author     : vishal
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
		<script src="<c:url value="/resources/js/anil.js" />"></script>
        <title>ProfilePhotoOperation Page</title>
    </head>
    <body>
       <center>
       <div id="main">
       <div id="Header">
                <label style="margin-left: 470px;">WelCome ! ${loginUser.firstName} ${loginUser.lastName}</label>
                <br>
                <div id="profile_photo">
                    <img  src="${pageContext.request.contextPath}/resources/images/dummy_male_ic.png">
                    <br>
                   
                </div>
                            
            </div>
            <div id="leftMainStep3"></div>
            <div id="middleStep4">
        <h2>Step-12</h2>
        <form method="post" action="/vanjariudyogvishwa-v2/uploadFile" enctype="multipart/form-data">
        <input type="hidden" name="userMail" value="${loginUser.email}">
            <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Your Profile Image</font></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>
                                    <tr><td colspan="2"><hr/></td></tr>
                                    <tr><td><br><br></td></tr>
                                    <tr>
                                        <td> Upload Your Profile Photo</td>
                                        <td></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Pick file : 
                                        <input type="file" name="profileImage" size="50" /></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                     <td><input type="submit" value="Upload" name=""></td>
                                        <td>
                                        
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
