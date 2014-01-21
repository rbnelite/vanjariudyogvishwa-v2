<%-- 
    Document   : InterestAreas
    Created on : Dec 21, 2013, 11:02:28 AM
    Author     : Mayur
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8">
        <title>Step-2 Interest Areas page</title>
    </head>
    <body>
        
        
        <center>
        <div id="mainInterestAreas">
            
            <div id="Header">
                <label style="margin-left: 470px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="images/DefaultProfileImg.png">
                    <br>
                    <a href="ProfilePhotoOperation.jsp">Change Profile Photo</a>
                </div>
            </div>
            
            <div id="leftMainInterestAreas"></div>
             
                <div id="info_step2">
                    <h2>Step-2 Create Group's</h2>
                        <form action="ActionController" method="post">
           <table border="0" align="center">
           
                           <tr><td colspan="3">
           <font color=" Sky blue"><h4>Please Select Your Interest Areas. Which help us to create your groups</h4></font>
                            </td></tr>
           <tr>
               <td> <input type="checkbox" name="sports" value="Sports">Sports</td>
           
            <td><input type="checkbox" name="drawing" value="Drawing">Drawing </td>
            <td> <input type="checkbox" name="photography" value="Photography">Photography </td>
            <td><input type="checkbox" name="travelling" value="Travelling">Traveling </td>
           </tr>
           <tr><td>&nbsp;</td></tr>
           <tr>
             <td><input type="checkbox" name="music" value="Music">Music</td>
             <td><input type="checkbox" name="reading" value="Reading">Reading </td>
             <td><input type="checkbox" name="surfing" value="Surfing">Surfing/Browsing </td>
             <td><input type="checkbox" name="bike_riding" value="Bike_riding">Bike Riding</td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
             <td><input type="checkbox" name="car_riding" value="Car_riding">Car Riding</td>
             <td> <input type="checkbox" name="tracking" value="Tracking">Tracking</td>
             <td> <input type="checkbox" name="movies" value="Movies">Movies </td>
            <td> <input type="checkbox" name="social" value="Social">Social Work</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
            <td> <input type="checkbox" name="polytics" value="Polytics">Politics </td>
            <td> <input type="checkbox" name="friends" value="Friends">Friends/Parties/dating</td>
             <td><input type="checkbox" name="shopping" value="Shopping">Shopping </td>
            <td><input type="checkbox" name="business" value="Business">Business</td>
            </tr>
             <tr><td>&nbsp;</td></tr>
            <tr>
                <td><input type="checkbox" name="drama" value="Drama">Drama</td> 
             <td><input type="checkbox" name="circus" value="Circus">Circus</td>
            <td><input type="checkbox" name="dance" value="Dance">Dance Shows </td>
             <td><input type="checkbox" name="culteral" value="Culteral">Cultural activities</td>
            </tr>
             <tr><td>&nbsp;</td></tr>
              <tr>
            <td><input type="checkbox" name="speech" value="Speech">Speech </td>
            <td><input type="checkbox" name="gym" value="Gym">Gym</td>
            <td> <input type="checkbox" name="teaching" value="Teaching">Teaching</td>
            <td> <input type="checkbox" name="spirituality" value="Spirituality">Spirituality </td>
            </tr>
             <tr><td>&nbsp;</td></tr>
             <tr>
             <td></td>
              <td align="right">
                <input type="submit" name="save_intrests" value="Save & Continue">
              </td>
             </tr> 
             
            </table>
            </form>
                    </div>
           

<div id="rightMainInterestAreas"></div>
            

        </div>
    </center>
        
        
    </body>
</html>
