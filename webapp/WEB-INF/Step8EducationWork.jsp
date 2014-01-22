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
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Step-8 Education & Work Details Page</title>
   
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
</style>
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
                <form:form action="/vanjariudyogvishwa-v2/educationwork" method="POST" commandName="educationWork">
               <form:errors path="*" cssClass="errorblock" element="div"/>
               
                <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Out Your Education Details</font></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>
                                    <tr><td colspan="2"><hr/></td></tr>
                                    <tr><td><br><br></td></tr>
                                    <tr>
                                        <td> Name of School <font color="red">*</font></td>
                                        <td><form:input path="school"/>
                                            <div id="school_nameError" class="red" colspan="2"/></td>
                                   </tr>
                                    <tr><td><form:errors path="school" cssclass="error"/></td></tr>
                                    
                                    
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Name of College <font color="red">*</font></td><td><input type="text" name="collage" id="clg_name" size="30" maxlength="50">
                                            <div id="clg_nameError" class="red" colspan="2"/></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Graduation Degree <font color="red">*</font></td>
                                        <td>
                                            <select name="graduation" id="graduation" style="width: 223px;">
                                                <option selected value="">--Please select--</option>
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

                                            </select>
                                            <div id="graduationError" class="red" colspan="2"/></td>
                                    </tr>
                                    <tr><td colspan="2" ><br></tr>
                                    <tr>
                                        <td> Specialization 
                                        </td><td><input type="text" name="otherGraduation" id="othr_graduation" size="30" maxlength="30">
                                        </td>
                                    </tr><tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>PG College Name </td><td><input type="text" name="PGCollege" id="pg_clg" size="30" maxlength="50">
                                            <div id="pg_clgError" class="red" colspan="2"/></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td> PG Degree </td>
                                        <td><select name="PGDegree" id="pg_degree" style="width: 223px;">
                                                <option selected value="">--Please select--</option>
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

                                            </select>
                                            <div id="pg_degreeError" class="red" colspan="2"/>
                                        </td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td>Specialization</td><td><input type="text" name="otherPG" id="othr_pg" size="30" maxlength="30"></td>
                                    </tr>

                                    <tr>
                                        <td></td>
                                        <td align="right">
                                            <input type="submit" class="savebtn" name="SaveEducation" id="submit" value="Save & Continue" >
                                        </td>
                                    </tr>
                                </table>
                </form:form >
            </div>
            
            
        <div id="rightMainStep3"></div>
        
        </div>
        </center>
    </body>
</html>

