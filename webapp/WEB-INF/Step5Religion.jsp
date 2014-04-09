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
        </center>
    </body>
</html>
