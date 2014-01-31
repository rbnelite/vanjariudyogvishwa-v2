<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
		<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Registration</title>
        
        <script>
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
    <form action="/vanjariudyogvishwa-v2/Index" method="post">
        <div align="center">
            <table align="center" width="1321" height="874">
                <div id="logo1" align="center">
                    <img src="${pageContext.request.contextPath}/resources/images/banner12.png" width="142" height="150" alt="logo"/>
                </div>
                <tr>
                    <td height="79" colspan="2" bgcolor="#fab039">
                       
                            <table width="1194" border="0" align="right">
                                <tr>
                                    <td width="577" height="21">&nbsp;</td>
                                    <td width="607"><span class="style8"><span class="style16"><span class="style8">Email-</span></span></span><span class="style8 style8"></span><span class="style8"></span><span class="style8"><span class="style16" class="password">&nbsp;&nbsp;&nbsp;Password- </span></span></td>
                                </tr>
                                <tr>
                                    <td height="26">&nbsp;</td>
                                    <td>
                                        <input name="user_name" type="text" maxlength="40"/>      
                                        <input name="pass" type="password" maxlength="20"/> 

                                        <input type="submit" value="" name="login"style="background-image:url(${pageContext.request.contextPath}/resources/images/login_1.png);width :70px; height: 25px"/>
                                    </td>

                                </tr>
                                <tr>
                                    <td>&nbsp;</td><td><font color="red">${requestScope.message}</font></td>
                                </tr>
                                <tr>
                                    <td height="22">&nbsp;</td>
                                    <td><span class="style7"><span class="style8"> 
                                                <input name="" type="checkbox" value=""/>
                                                <span class="style21"><span class="style8">Remember Me</span>&nbsp;</span><span class="style7"></span><span class="style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="#" style="text-decoration: none" onclick="javascript:void window.open('Forgot_Pass.jsp','1364071233609','width=500,height=300,toolbar=0,menubar=0,location=100,status=0,scrollbars=1,resizable=0,left=450,top=250');return false;">Forgot your Password</a></span></span></span>
                                    </td>
                                </tr>
                            </table>
                        
                    </td>
                </tr>
                <tr>
                    <td width="639" height="731">

                            <label></label>
                            <span class="style2"><span class="style6"><span class="style42">&nbsp;<span class="style71"> <span class="style72">Stay Connected and Share</span></span></span></span></span><span class="style36">
                                .....
                            </span>
                      
                        <p><img src="${pageContext.request.contextPath}/resources/images/world mapu.png" alt="network"   align="middle" width="500" height="400" />        </p>
                        <p>&nbsp;</p>
                        <p>&nbsp;</p>
                        <table width="639" height="121" border="0">
                            <tr>
                                <td width="207" height="117"><p class="style75"><img src="${pageContext.request.contextPath}/resources/images/1.png"><span class="style74">Get the Latest</span></p>
                                    <p class="style77">Update with ur latest activity</p></td>
                                <td width="217"><p><img src="${pageContext.request.contextPath}/resources/images/2.png"><span class="style76">Connect and share</span></p>
                                    <p class="style77">Share the moments with us</p></td>
                                <td width="201"><p><img src="${pageContext.request.contextPath}/resources/images/3.png"><span class="style76">Add photos</span></p>
                                    <p class="style77">share photo and videos</p></td>
                            </tr>
                        </table>
                    </td>
                    <td width="670">
                       <table width="493" align="top" height="678" border="0" style="background-image:url(${pageContext.request.contextPath}/resources/images/Untitled-2.png);">
                                <tr>
                                    <td width="10"><div>
                                            <th width="473" height="600" class="style27" ><span class="style64">Create Your Account...</span>
                                                <div align="top">

                                                    <p>&nbsp;</p>
                                                    <table width="327" height="480" align="center" >

                                                        <tr> 
                                                            <td width="121"  align="left" class="style59">First Name<font color="red">*</font></td>
                                                            <td width="194"><input type="text" name="firstName" id="firstName"size="30" maxlength="15"/><div id="fnameError" class="red"colspan="2"/></td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" ><span class="style34"><span class="style46">Middle Name<font color="red">*</font></span></span> </td>
                                                            <td ><input type="text" name="middleName" id="mname"size="30" maxlength="15"/><div id="mnameError" class="red" colspan="2"/></td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" class="style46">Last Name<font color="red">*</font></td>
                                                            <td><input type="text" name="lastName" id="lname"size="30" maxlength="15" /><div id="lnameError" class="red"colspan="2" /></td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="style46">Email Id<font color="red">*</font></td>
                                                            <td><input type="text" name="emailId" id="email_id" size="30" maxlength="30"/><div id="email_idError" class="red"colspan="2"/>${requestScope.message_email}</td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" class="style46">Contact No.<font color="red">*</font></td>
                                                            <td><input type="text" name="contactNo" id="contact" size="30" maxlength="10" onkeypress="return isNumberKey(event)"/><div id="contactError" class="red"colspan="2"/></td>
                                                        </tr>

                                                        <tr>
                                                            <td align="left" class="style46">Birth Date<font color="red">*</font></td>
                                                            <td><select id="birthDay" name="birthDay">
                                                                    <option selected value="">dd</option>
                                                                    <option>1</option>
                                                                    <option>2</option>
                                                                    <option>3</option>
                                                                    <option>4</option>
                                                                    <option>5</option>
                                                                    <option>6</option>
                                                                    <option>7</option>
                                                                    <option>8</option>
                                                                    <option>9</option>
                                                                    <option>10</option>
                                                                    <option>11</option>
                                                                    <option>12</option>
                                                                    <option>13</option>
                                                                    <option>14</option>
                                                                    <option>15</option>
                                                                    <option>16</option>
                                                                    <option>17</option>
                                                                    <option>18</option>
                                                                    <option>19</option>
                                                                    <option>20</option>
                                                                    <option>21</option>
                                                                    <option>22</option>
                                                                    <option>23</option>
                                                                    <option>24</option>
                                                                    <option>25</option>
                                                                    <option>26</option>
                                                                    <option>27</option>
                                                                    <option>28</option>
                                                                    <option>27</option>
                                                                    <option>29</option>
                                                                    <option>30</option>
                                                                    <option>31</option>
                                                                </select>
																
																<select id="birthMonth" name="birthMonth">
                                                                    <option selected value="">mm</option>
                                                                    <option>Jan</option>
                                                                    <option>Feb</option>
                                                                    <option>Mar</option>
                                                                    <option>Apr</option>
                                                                    <option>May</option>
                                                                    <option>Jun</option>
                                                                    <option>Jul</option>
                                                                    <option>Aug</option>
                                                                    <option>Sep</option>
                                                                    <option>Oct</option>
                                                                    <option>Nov</option>
                                                                    <option>Dec</option> 
                                                                </select>
                                                               
                                                                <select id="birthYear" name="birthYear">
                                                                    <option selected value="">yy</option>
                                                                    <option>1970</option>
                                                                    <option>1971</option>
                                                                    <option>1972</option>
                                                                    <option>1973</option>
                                                                    <option>1974</option>
                                                                    <option>1975</option>
                                                                    <option>1976</option>
                                                                    <option>1977</option>
                                                                    <option>1978</option>
                                                                    <option>1979</option>
                                                                    <option>1980</option>
                                                                    <option>1981</option>
                                                                    <option>1982</option>
                                                                    <option>1983</option>
                                                                    <option>1984</option>
                                                                    <option>1985</option>
                                                                    <option>1986</option>
                                                                    <option>1987</option>
                                                                    <option>1988</option>
                                                                    <option>1989</option>
                                                                    <option>1990</option>
                                                                    <option>1991</option>
                                                                    <option>1992</option>
                                                                    <option>1993</option>
                                                                    <option>1994</option>
                                                                    <option>1995</option>
                                                                    <option>1996</option>
                                                                    <option>1997</option>
                                                                    <option>1998</option>
                                                                    <option>1999</option>
                                                                    <option>2000</option>
                                                                    <option>2001</option>
                                                                    <option>2002</option>
                                                                    <option>2003</option>
                                                                    <option>2004</option>
                                                                    <option>2005</option>
                                                                    <option>2006</option>
                                                                    <option>2007</option>

                                                                </select> 
                                                            </td>
                                                        </tr>

                                                        <tr>
                                                            <td>&nbsp;</td>
                                                            <td><font color="red" style="font-weight: normal">${requestScope.message11}</font>
                                                                <div id="bdayError" class="red" colspan="2"/>
                                                                <div id="bmonthError" class="red" colspan="2"/>
                                                                <div id="byearError" class="red" colspan="2"/>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="left" class="style46" >Gender<font color="red">*</font></td>
                                                            <td><input type="radio" name="gender" value="male" checked="checked">
                                                                    <span class="style46">Male</span><span class="style24">&nbsp;</span>&nbsp;
																<input type="radio" name="gender" value="female">
                                                                        <span class="style46">Female</span>
                                                                        <div id="genderError" class="red" colspan="2"/>
                                                                        </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td align="left" class="style46">Password<font color="red">*</font></td>
                                                                            <td><input type="password" name="password1" id="password1" size="30" maxlength="20"/><div id="pass1Error" class="red"colspan="2"/></td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td align="left" class="style46" >Confirm Password<font color="red">*</font></td>
                                                                            <td><input type="password" name="password2" id="password2" size="30" maxlength="20"/><div id="pass2Error" class="red" colspan="2"/></td>
                                                                        </tr>

                                                                        <tr>
                                                                            <td height="96">     </td>
                                                                            <td align="right">
                                                                                <input name="Register" type="submit" value="" id="submit" style="background-image: url(${pageContext.request.contextPath}/resources/images/signup.png); width:72px; height:27px;"/>
                                                                            </td>  
                                                                        </tr>
                                                                        </table>
                                                                        </div>
                                                                        </tr>
                                                                        <tr>          </tr>
                                                                        </table>  
                       
                                                                        </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="45" colspan="2" bgcolor="#fab039" align="center"><span class="style10"> About | Developers | Create Ad | Music | Games | Apps | Privacy | Help</span>

                                                                                <p class="style8"><u>All Right Reserved</u></p>      </td>
                                                                        </tr>
                                                                        </table>
                                                                        </div>
                                                                        </form>
                                                                        </body>
                                                                        </html>
