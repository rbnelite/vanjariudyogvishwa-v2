<%-- 
    Document   : InterestAreas
    Created on : Dec 21, 2013, 11:02:28 AM
    Author     : Mayur
--%>
<<<<<<< HEAD
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
=======
>>>>>>> 3e103e8093e5588e6d4149308aec764792dfa8b3

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<<<<<<< HEAD
         <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
=======
        <link rel="stylesheet" href="css/style.css" type="text/css" charset="utf-8">
>>>>>>> 3e103e8093e5588e6d4149308aec764792dfa8b3
        <title>Step-2 Interest Areas page</title>
    </head>
    <body>
        
        
        <center>
        <div id="mainInterestAreas">
            
            <div id="Header">
                <label style="margin-left: 470px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
<<<<<<< HEAD
                    <img  src="images/friends1.png">
=======
                    <img  src="images/DefaultProfileImg.png">
>>>>>>> 3e103e8093e5588e6d4149308aec764792dfa8b3
                    <br>
                    <a href="ProfilePhotoOperation.jsp">Change Profile Photo</a>
                </div>
            </div>
            
            <div id="leftMainInterestAreas"></div>
             
                <div id="info_step2">
<<<<<<< HEAD
                    <h3>Step-2 Create Group's</h3>
                        <form action="/vanjariudyogvishwa-v2/IntrestAreas" method="post">
=======
                    <h2>Step-2 Create Group's</h2>
                        <form action="ActionController" method="post">
>>>>>>> 3e103e8093e5588e6d4149308aec764792dfa8b3
           <table border="0" align="center">
           
                           <tr><td colspan="3">
           <font color=" Sky blue"><h4>Please Select Your Interest Areas. Which help us to create your groups</h4></font>
                            </td></tr>
           <tr>
<<<<<<< HEAD
            <td> <input type="checkbox" name="interestId" value="1">Sports</td>
            <td><input type="checkbox" name="interestId" value="2">Drawing </td>
            <td> <input type="checkbox" name="interestId" value="3">Photography </td>
            <td><input type="checkbox" name="interestId" value="4">Traveling </td>
           </tr>
           <tr><td>&nbsp;</td></tr>
           <tr>
             <td><input type="checkbox" name="interestId" value="5">Music</td>
             <td><input type="checkbox" name="interestId" value="6">Reading </td>
             <td><input type="checkbox" name="interestId" value="7">Surfing/Browsing </td>
             <td><input type="checkbox" name="interestId" value="8">Bike Riding</td>
            </tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
             <td><input type="checkbox" name="interestId" value="9">Car Riding</td>
             <td> <input type="checkbox" name="interestId" value="10">Tracking</td>
             <td> <input type="checkbox" name="interestId" value="11">Movies </td>
            <td> <input type="checkbox" name="interestId" value="12">Social Work</td></tr>
            <tr><td>&nbsp;</td></tr>
            <tr>
            <td> <input type="checkbox" name="interestId" value="13">Politics </td>
            <td> <input type="checkbox" name="interestId" value="14">Friends/Parties/dating</td>
             <td><input type="checkbox" name="interestId" value="15">Shopping </td>
            <td><input type="checkbox" name="interestId" value="16">Business</td>
            </tr>
             <tr><td>&nbsp;</td></tr>
            <tr>
                <td><input type="checkbox" name="interestId" value="17">Drama</td> 
             <td><input type="checkbox" name="interestId" value="18">Circus</td>
            <td><input type="checkbox" name="interestId" value="19">Dance Shows </td>
             <td><input type="checkbox" name="interestId" value="20">Cultural activities</td>
            </tr>
             <tr><td>&nbsp;</td></tr>
              <tr>
            <td><input type="checkbox" name="interestId" value="21">Speech </td>
            <td><input type="checkbox" name="interestId" value="22">Gym</td>
            <td> <input type="checkbox" name="interestId" value="23">Teaching</td>
            <td> <input type="checkbox" name="interestId" value="24">Spirituality </td>
=======
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
>>>>>>> 3e103e8093e5588e6d4149308aec764792dfa8b3
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
