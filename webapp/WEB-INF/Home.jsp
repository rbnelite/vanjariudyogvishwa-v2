<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : dogkiller
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Home Page</title>
    </head>

    <body>
    <center>
        <div id="main">
            <div id="Header">

                <input  id="input_search" type="text" name="SearchProfile" placeholder="Search"/>
                <label style="margin-left: 410px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="images/DefaultProfileImg.png">
                    <br>
                    <a href="ProfilePhotoOperation.jsp">Change Photo</a>
                </div>
            </div>
            <div id="hiderMenu">
                <a id="anchor" href="Home.jsp"><font color="indigo">Home</font></a>
                <a id="anchor" href="Profile.jsp"><font color="#f868f2">My Profile</font></a>
                <a id="anchor" href="Message.jsp"><font color="#f868f2">Message</font></a>
                <a id="anchor" href="#" onclick="return DisplayINeedBlock()"><font color="#f868f2">I Need</font></a>
                <a id="anchor" href="#" onclick="return DisplayNotificationBlock()"><font color="#f868f2">Notification</font></a>
                <a id="anchor" href="#" onclick="return DisplayRequestBlock()"><font color="#f868f2">Requests</font></a>
                <a id="anchor" href="#" onclick="return DisplaySettingBlock()"><font color="#f868f2">Setting</font></a>
                <a id="anchor" href="index.jsp"><font color="#f868f2">LogOut</font></a>
            </div>

            <div id="leftMain">

                <div id="leftMain1">Upcoming Events</div>
                <div id="leftMain2">
                    <a><h2><font color="Red">Links</font></h2></a>
                    <br>
                    <img style="float: left;" src="images/message-1.png"  title="Message" height="32"width="32"><a style="float: left;" href="Message.jsp"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="images/event.png"  title="Events" height="32"width="32"><a style="float: right;" href="Events.jsp"><h4><font color="#00cccc">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="images/photo.png"  title="Photos" height="32"width="32"><a style="float: left;" href="Photos.jsp"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="images/product1.png"  title="My Products" height="32"width="32"><a style="float: right;" href="Products.jsp"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="images/friends1.png"  title="Friend's" height="32"width="32"><a style="float: left;" href="Friends.jsp"> <h4><font color="#00cccc">Friends</font></h4></a>
                </div>
                <div id="leftMain3">Needs</div>

            </div>
            <div id="NeedTopHome">
                <table>
                    <label><font color="purple">Need Something?</font></label>
                    <a onclick="return DisableINeedBlock()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
                    <tr>
                <td>I Need :</td>
                <td><input type="text" placeholder="Write your Need here...." style="width: 400px; height: 30px;"></td>
                </tr>
                <tr>
                <td>
                Description :
                </td>
                <td>
                    <textarea type="text" placeholder="Write your Need here...." style="width: 400px; height: 100px; resize: none;"></textarea>
                </td>
                </tr>
                <tr>
                <td>
                Contact No :
                </td>
                <td>
                    <input type="text" placeholder="Write your Need here...." style="width: 400px; height: 30px;"><br><br>
                </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                <input type="submit" value="Ask for Solution" style="margin-left: 287px;" onclick="return DisableINeedBlock()">
                </td>
                </tr>
                </table>
            </div>
            
            
            <div id="NotificationTopHome">
                <a onclick="return DisableNotificBlock()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                
            </div>
            
            <div id="RequestTopHome">
                <a onclick="return DisableRequestBlock()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                
            </div>
            <div id="SettingTopHome">
                <a>Change Account Setting</a>
                <a onclick="return DisableSettingBlock()"> <img src="images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                <br>
                <a href="AccountSetting.jsp">More Settings...</a>
            </div>
            <div id="MiddleTop">
                <label>Update Status/Photo</label>
                <br>
                <input type="text" placeholder="" style="width: 760px; height: 50px;"/>
                <br>
                <a id="anchor" href="#" style="float: left;"><font color="purple">Text</font></a>
                <a id="anchor" href="#"><font color="purple">Photo</font></a>
                <a id="anchor" href="#"style="margin-left: 280px;"><input type="submit" value="Post"></a>
            </div>

            <div id="middle">
                <div id="ShowStatusUpdet">
                    <table style="width: 740px;">
                        <tr>
                            <td>
                                <img src="images/DefaultProfileImg.png" height="50" width="52">
                            </td>
                            <td>
                                &nbsp;&nbsp;&nbsp;
                                Status Name:
                                status........
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <img src="images/DefaultProfileImg.png" height="28" width="30">
                                <input type="text" placeholder="Write a comment and Press Enter...."style="width: 420px;">
                            </td>
                        </tr>
                    </table>
                </div>
            </div>


            <div id="rightMain"></div>

        </div>
    </center>
</body>
</html>
