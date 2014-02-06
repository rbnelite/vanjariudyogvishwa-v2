<%-- 
    Document   : Photos
    Created on : Dec 10, 2013, 6:18:04 PM
    Author     : anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
		<script src="<c:url value="/resources/js/anil.js" />"></script>
        <title>Vanjari Udyog Vishwa | Photos</title>
        
    </head>
    <body>
      <center>
        <div id="main">
            <div id="Header">

                <input  id="input_search" type="text" name="SearchProfile" placeholder="Search"/>
                <label style="margin-left: 410px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="${pageContext.request.contextPath}/resources/images/dummy_male_ic.png" height="120" width="115" >
                    <br>
                    <a href="ProfilePhotoOperation.jsp">Change Photo</a>
                </div>
            </div>
            <div id="hiderMenu">
               <table width=100% style="margin-left: 30px;">
            <tr>
               <td> <a href="Home" class="menuContent">Home</a> </td>
               <td> <a href="Profile" class="menuContent">My Profile</a></td>
               <td> <a href="Message" class="menuContent">Message</a></td>
               <td> <a href="#" onclick="return DisplayINeedBlock()" class="menuContent">Looking for</a></td>
               <td> <a href="#" onclick="return DisplayNotificationBlock()" class="menuContent">Notification</a></td>
               <td> <a href="#" onclick="return DisplayRequestBlock()" class="menuContent">Requests</a></td>
               <td> <a href="#" onclick="return DisplaySettingBlock()" class="menuContent">Setting</a></td>
               <td> <a href="logoutUser" class="menuContent">LogOut</a></td>
               </tr>
               </table>
            </div>
            <div id="leftMain">
               	 <c:if  test="${!empty eventstList}">
                <div id="leftMain1">
                <table width=100%>
                <th style="background-color: #fab039"><font color="white">Upcoming Events</font></th>
                <c:forEach items="${eventstList}" var="myEvents">
                <tr>
                <td align="left">Anil Budge created an event :${myEvents.name}</td>
                </tr>
                  </c:forEach>
                </table>
                 </div>
                 </c:if>
                   <div id="leftMain2">
                  <table width=100%><th style="background-color: #fab039"><font color="white">Links</font></th></table>
                    <br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32"width="32"><a style="float: left;" href="Message"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32"width="32"><a style="float: right;" href="Events"><h4><font color="#00cccc">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32"width="32"><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32"width="32"><a style="float: right;" href="Products"> <h4><font color="#00cccc">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32"width="32"><a style="float: left;" href="Friends"> <h4><font color="#00cccc">Friends</font></h4></a>
                </div>
                <c:if  test="${!empty needList}">
                <div id="leftMain3">
                 <table width=100%>
                <th style="background-color: #fab039"><font color="white">Looking For</font></th>
                <c:forEach items="${needList}" var="myNeeds">
                <tr>
                <td align="left">Anil Budge Needs : ${myNeeds.need}</td>
                </tr>
                  </c:forEach>
                </table>
                </div>
                  </c:if>
				 </div>

            <div id="NeedTopHome">
                <table>
                    <label><font color="purple">Need Something?</font></label>
                    <a onclick="return DisableINeedBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close (3).png" style="width: 40px;height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
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
                <a onclick="return DisableNotificBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px;height: 40px; float: right;"></a>

            </div>

            <div id="RequestTopHome">
                <a onclick="return DisableRequestBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px;height: 40px; float: right;"></a>

            </div>
            <div id="SettingTopHome">
                <a>Change Account Setting</a>
                <a onclick="return DisableSettingBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px;height: 40px; float: right;"></a>
                <br>
                <a href="AccountSetting.jsp">More Settings...</a>
            </div>

            

            <div id="middlePhotos">
               
                    <table width=90%>
                        <tr>
                        <td>
                        <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                        </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                         </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer"id="personalPhoto" onclick="return viewPhoto();">
                          </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                          </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();" >
                          </td><td>
                         <img  src="${pageContext.request.contextPath}/resources/images/gallery1.thumb.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                          </td>
                          </tr><tr>
                          <td>
                          <img  src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                          </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                         </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg" class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                         </td><td>
                         <img src="${pageContext.request.contextPath}/resources/images/full-image.jpg"class="photoviewer" id="personalPhoto" onclick="return viewPhoto();">
                        </td></tr>
                        
                    </table>
            		  <div id="enlargePhoto">
            		  	
            		  	<form action="/vanjariudyogvishwa-v2/editOther" method="post">
            		  	<table>
            		  		<tr><td><input type="file"></td>
                        <td><input type="submit" value="Upload"> </td>
                        </tr>
            		  	</table>
            		  	
            		  	</form>
            		  	
            		  	
            		  </div>
            </div>
           <div id="rightMainPhotos"></div>

        </div>
    </center>
     </body>
</html>
