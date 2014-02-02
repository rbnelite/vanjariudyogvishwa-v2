<%-- 
    Document   : Products
    Created on : Dec 10, 2013, 6:19:54 PM
    Author     : vishal
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
        <title>Products Page</title>
    </head>
    <body>
        
        <center>
        <div id="main">
            <div id="Header">

                <input  id="input_search" type="text" name="SearchProfile" placeholder="Search"/>
                <label style="margin-left: 410px;">WelCome ! User</label>
                <br>
                <div id="profile_photo">
                    <img  src="images/friends1.png">
                    <br>
                    <a href="ProfilePhotoOperation.jsp">Change Photo</a>
                </div>
            </div>
            <div id="hiderMenu">
                <a id="anchor" href="Home.jsp"><font color="#f868f2">Home</font></a>
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
                    <img style="float: right;" src="images/event.png"  title="Events" height="32"width="32"><a style="float: right;" href="#"><h4><font color="Black">Events</font></h4></a> <br><br><br>
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

            

            <div id="middleProduct">
            <div id="MiddleTopProduct">
            <form action="/vanjariudyogvishwa-v2/AddProduct" method="POST">
                <table>
                    <label><font color="purple">Add Product</font></label>

                    <tr>
                        <td>Product Name :</td>
                        <td><input type="text" name="productName" maxlength="50" placeholder= "Write Product's Name...." style="width: 400px; height: 30px; margin-left: -100px;"></td>
                    </tr>
                    <tr>
                        <td>Products Details :</td>
                        <td><textarea type="text"  name="productDetails" maxlength="200" placeholder="Write Product's Details...." style="width: 400px; height: 100px; resize: none;margin-left: -100px;"></textarea></td>
                    </tr>
                    
                    <tr>
                        <td>Product Image :</td>
                        <td>
                            <input type="file"  name="imgPath" placeholder="Upload Your Product Image" style="width: 400px; height: 30px;margin-left: -100px;">
                            
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add Product" style="margin-left: 290px;"></td>
                        <td><input type="reset" value="Cancel" style="margin-left: 100px;"></td>
                    </tr>
                </table>
                </form>
            </div>
                <div id="ShowStatusUpdetProduct">
                <div id="ProductInfoheading">
                <font color="blue;"><a><b>Products Information</b></a></font>
                </div>
                <div id="productsearch">
                <input id="input_searchProduct" type="search" name="ProductSearchName" placeholder="Search Product here....">
                <input type="submit" value="Search">
                </div>
                <c:if  test="${!empty ProductList}">
                    
                    
                    <c:forEach items="${ProductList}" var="productNAME">
                    <div id="ShowProductInfoMain">
                        <div id="ShowProductUpdetImage">
                                <img src="images/DefaultProfileImg.png">
                         </div>
                         <div id="ShowProductInfo">
                            
                            <a style="float: left;"><font color="Purple"><b> ${productNAME.productName}:</b></font></a>
                            
                            <br>
                            <a style="float: left;">
                            ${productNAME.productDetails}
                            </a>
                        </div>
                        </div>
                       </c:forEach>
                    
                    </c:if>
                </div>
            </div>


            <div id="rightMainProducts"></div>

        </div>
    </center>
        
        
    </body>
</html>
