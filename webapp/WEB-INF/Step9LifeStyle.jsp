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
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Step-9 LifeStyle Details Page</title>
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
        </center>
        
        
    </body>
</html>
