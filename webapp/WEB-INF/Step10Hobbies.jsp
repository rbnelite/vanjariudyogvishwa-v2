<%-- 
    Document   : Step7Hobbies
    Created on : Dec 24, 2013, 7:45:28 PM
    Author     : anil
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
        <title>Step-7 Hobbies Details Page</title>
        <script type="text/javascript">
        function check()
        {
        	
        	var temp=document.getElementById("fav_music");
        
        	var totalChecked = 0;
        	 for (i = 0; i < temp.options.length; i++) {
                 if (temp.options[i].selected) {
                     totalChecked++;
                 }
             }
        	 
        	 if(totalChecked > 4)
        		 {
        		 document.getElementById("massage").innerHTML="You can't check more than 4 options";
        		 return false;
        		 }
        	 document.getElementById("massage").innerHTML="";
        	 return true;
        	 
        	}
        </script>
    </head>
    <body>
        
        <center>
        <div id="mainMsg">
        <div id="Header">
				<label style="margin-left: 470px;">WelCome ! ${CurrentEmailId}</label> <br>
				
			</div>
            
            <div id="leftMainStep10"></div>
            
            <div id="middleStep10">
            
            <form action="/vanjariudyogvishwa-v2/Hobbies" method="post">
            	<h2>Step-7</h2>
                <table align="center">
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                        <td colspan="2"><font size="5">Fill Your Hobbies and Interests Details</font></td>
                                    </tr>

                                    <tr>
                                        <td colspan="2">This Information will help us to Create Your Profile</td>
                                    </tr>

                                    <tr><td colspan="2"><hr/></td></tr>
                                    <tr><td><br><br></td></tr>


                                    <tr>
                                        <td> Hobbies </td><td><textarea name="hobbiesName" id="hobbies" rows="1" cols="25" maxlength="50" style="resize: none;"></textarea>
                                           </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td>Favourite Music</td><td><!-- <textarea name="favouriteMusic" id="fav_music" rows="1" cols="25" maxlength="50" style="resize: none;"> -->
                                        <!-- </textarea> -->
                                        <select name="favouriteMusic" id="fav_music" style="resize: none;" multiple="multiple" size="4">
                                        <option>Blues</option>
                                        <option>Alternative Music</option>
                                        <option>Classical Music</option>
                                        <option>Country Music</option>
                                        <option>Dance Music</option>
                                        <option>Easy Listening</option>
                                        <option>Electronic Music</option>
                                        <option>European Music</option>
                                        <option>Indie Pop</option>
                                        <option>Hip Hop / Rap</option>
                                        <option>Jazz</option>
                                        <option>Latin Music</option>
                                        <option>Pop</option>
                                        <option>Rock</option>
                                         <option>World Music / Beats</option>
                                        <option>Soul</option>
                                           </select>
                                            </td>
                                    </tr> 
                                    <tr><td></td><td><span id="massage" style="color: red;"></span></td></tr>
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Favourite Books </td><td><textarea name="favouriteBooks" id="fav_books" rows="1" cols="25" maxlength="50" style="resize: none;" onfocus=" return check()"></textarea>
                                            </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Dress Style </td>
                                        <td>
                                        <select name="dressStyletyle" id="dress_style" style="width: 219px; height: 35px;">
                                                <option selected value="">--Please Select --</option>
                                                <option>Indian</option>
                                                <option>Western</option>
                                                <option>Sports</option>
                                                <option>Formal</option>
                                                <option>Casual</option>
                                                <option>Not particular</option>
                                        </select>
                                        </td>
                                    <!--</tr> <tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td>Favourite TV Shows </td><td><textarea name="favouritrTvShows" id="fav_tvShows" rows="1" cols="25" maxlength="50" style="resize: none;"></textarea>
                                            <div id="fav_tvShowsError" class="red" colspan="2"/></td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    
                                   <tr>
                                        <td>Favourite Movies </td><td><textarea name="favouriteMovies" id="fav_movies" rows="1" cols="25" maxlength="50" style="resize: none;"></textarea>
                                        </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Sports</td>
                                        <td><textarea name="sports" id="sports" rows="1" cols="25" maxlength="50" style="resize: none;"></textarea>
                                        </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->

                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td> Food I Cook </td><td><textarea name="foodIcook" id="food"rows="1" cols="25" maxlength="50" style="resize: none;"></textarea>
                                            </td>
                                    </tr> 
                                    <!--<tr><td colspan="2"><br></tr>-->
                                    <tr>
                                        <td>Favourite Vacation<br> Destination </td>
                                        <td><textarea name="vacationDestination" id="vac_dest"rows="1" cols="25" maxlength="50" style="resize: none;"></textarea>
                                           </td>
                                    </tr> 
                                    <tr><td colspan="2"><br></tr>

                                    <tr>
                                        <td><input type="hidden" name="usermail" value="${loginUser.email}"><a href="OtherDetails"><font color="green"><b>SKIP</b></font></a></td>
                                        <td align="right">

                                            <input type="submit" class="savebtn" name="save_hobbies" id="submit" value="Save & Continue" >
                                        </td>
                                    </tr>
                                </table>
                
                </form>
            
            </div>
                
            
            
        <div id="rightMainStep10"></div>
        
        </div>
        </center>
        
        
       
    </body>
</html>
