<%-- 
    Document   : Home
    Created on : Dec 9, 2013, 1:27:15 PM
    Author     : Anil
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
		<script src="<c:url value="/resources/js/anil.js" />"></script>
   
        <title>Vanjari Udyog Vishwa | Home</title>
    </head>

    <body>
    <center>
        <div id="main">
            <div id="Header">
                <input  id="input_search" type="text" name="SearchProfile" placeholder="Search"/>
                <label style="margin-left: 410px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="120" width="115" >
                </div>
                 <a href="ProfilePhotoOperation.jsp" style="float: right; margin-top: 120px; margin-right: -95px">Change Photo</a>
            </div>
            <div id="hiderMenu" >
                <a id="anchor" href="Home.jsp" class="menuContent">Home</a>
                <a id="anchor" href="Profile.jsp" class="menuContent">My Profile</a>
                <a id="anchor" href="Message.jsp" class="menuContent">Message</a>
                <a id="anchor" href="#" onclick="return DisplayINeedBlock()" class="menuContent">Looking for</a>
                <a id="anchor" href="#" onclick="return DisplayNotificationBlock()" class="menuContent">Notification</a>
                <a id="anchor" href="#" onclick="return DisplayRequestBlock()" class="menuContent">Requests</a>
                <a id="anchor" href="#" onclick="return DisplaySettingBlock()" class="menuContent">Setting</a>
                <a id="anchor" href="index.jsp" class="menuContent">LogOut</a>
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
            <form action="/vanjariudyogvishwa-v2/Need" method="post">
                <table>
                    <th style="background-color:#fab039" colspan=2><font color="white">Need Something?</font></th>
                    <a onclick="return DisableINeedBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close (3).png" style="width: 40px;height: 40px; float: right; margin-right:10px;margin-top: 5px;"></a>
                    <tr>
                <td>Looking For :</td>
                <td><input type="text" name="need" placeholder="Write your Need here...." style="width: 400px; height: 30px;"></td>
                </tr>
                <tr>
                <td>
                Description :
                </td>
                <td>
                    <textarea type="text" name="description" placeholder="Write your Need here...." style="width: 400px; height: 100px; resize: none;"></textarea>
                </td>
                </tr>
                <tr>
                <td>
                Contact No :
                </td>
                <td>
                    <input type="text" name="mobile" placeholder="Write your Need here...." style="width: 400px; height: 30px;"><br><br>
                </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                <input type="submit" value="Ask for Solution" style="margin-left: 287px;" onclick="return DisableINeedBlock()">
                </td>
                </tr>
                </table>
                </form>
            </div>
            <div id="NotificationTopHome">
                <table width="100%">
                <th style="background-color: #fab039"><font color="white">Notification</font>
                <a onclick="return DisableNotificBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close (3).png" style="width: 40px;height: 40px; float: right;"></a>
             </th>
               <tr>
               <td colspan=2 align="center">No notifications for display</td>
               </tr>
                </table>
            </div>
            <div id="RequestTopHome">
                <a onclick="return DisableRequestBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close (3).png" style="width: 40px;height: 40px; float: right;"></a>
                
            </div>
            <div id="SettingTopHome">
               <table width=100%><tr><th style="background-color: #fab039"> <a href="AccountSetting.jsp" style="text-decoration: none; color: white">Change Account Setting</a><a onclick="return DisableSettingBlock()"> <img src="${pageContext.request.contextPath}/resources/images/close (3).png" style="width: 40px;height: 40px; float: right;"></a></th></tr>
                
               <tr>
               <td align="left"><a href="" style="text-decoration: none;color: black">Change Password</a></td></tr>
                <tr>
               <td align="left"><a href="" style="text-decoration: none; color: black">Change Profile Picture</a></td></tr>
                </table>
            </div>
            	<div id="MiddleTop">
            	<form action="/vanjariudyogvishwa-v2/Status" method="post">
                <table align="left"><tr><td>Update Status/Photo</td></tr></table>
                <br>
                <textarea name="status" rows="2" cols="95" style="resize: none" ></textarea>
                <br>
                <table align="left" width="170%" >
                <tr>
                <td><font color="purple">Text</font></td>
                <td><font color="purple">Photo</font></td>
                <td><input type="submit" value="POST" class="buttonclr"></td>
                </tr></table>
                </form>
            </div>

			<div id="outsidemiddleHome">
            <div id="middleHome">
            <c:if  test="${!empty statusList}">
             		    <c:forEach items="${statusList}" var="status11">
                <div id="ShowStatusUpdet">
                   <div class="userStatusImage">
                   <img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="72" width="70">
                   </div>
             		
             		<div class="statusUserName" style="float: left; margin-left: 10px;"><font color="green">Anil Budge</font></div>
             		<br>
             		  <div class="StatusContent" >
                     <table width=100%><tr><td align="left">${status11.status} </td></tr></table>
                        
                         <br>
                          <c:if  test="${!empty commentList}">
                           <c:forEach items="${commentList}" var="myComment">
                          
                         <div id="Showcomment" style="border: 1px solid bisque; margin-top: 5px">
                         
                         <div class="commentBoxImage">
                         <img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="42" width="40">
                        </div>
                       
                       <div>
                       <table width=90%>
                        <tr>
                        <td align="left"><font color="green">Vishal Pansare</font>
                        <br>${myComment.comment}
                        </td>
                        </tr>
                        </table>
                       </div>
                        </div>
                          </c:forEach>
						  </c:if>
                         
                         <div id="commentBox">
                         <div class="commentBoxImage">
                         <img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="42" width="40">
                        </div>
                        <div >
                        <form action="/vanjariudyogvishwa-v2/Comment" method="post" onKeyPress="return submitenter(this,event)" name="commentZone"> 
                        <input type="hidden" name="statusIdForComment" value="${status11.id}">
                         <input type="text" name="commenttext" placeholder="Write a comment and Press Enter...."style="width: 440px;height: 20px;margin-top: 10px;margin-left: -30px">
                        </form>
                        </div>
                        <br><table align="left" width=50%><tr><td><form action="/vanjariudyogvishwa-v2/LikeStatus" method="post"><input type="submit" value="Like" class="LikeUnlikeBtn"> 0</form> </td><td><form action="/vanjariudyogvishwa-v2/UnlikeStatus" method="post"><input type="submit" value="Unlike" class="LikeUnlikeBtn"> 0</form></td><td>Comments 0</td></tr></table>
                         </div>
                         </div>
                       </div>
                       </c:forEach>
                     </c:if>
            		</div>
            		</div>
            	  	<div id="rightMain">
                        <div id="peopleMayKnw">
                        <table width=100%>
                        <th colspan=3 style="background-color: #fab039"><font color="">People You May Know</th>
                        <tr>
                        <td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="30" width="30"></td>
                        <td>Manoj Savant</td>
                        <td><input type="button" value="Connect" class="connectBtn"></td>
                        </tr>
                        <tr>
                        <td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="30" width="30"></td>
                        <td>Mayur Kulkarni</td>
                         <td><input type="button" value="Connect" class="connectBtn"></td>
                        </tr>
                        <tr>
                        <td><img src="${pageContext.request.contextPath}/resources/images/ashok.jpg" height="30" width="30"></td>
                        <td>Vishal Pansare</td>
                         <td><input type="button" value="Connect" class="connectBtn"></td>
                        </tr>
                        </table>
                        </div>
                        </div>
        </div>
    </center>
</body>
</html>
