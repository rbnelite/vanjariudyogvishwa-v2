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
         <link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/RBNelite.js" />"></script>

<script type="text/javascript">

function DisplayChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='block';
}

function HideChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='none';
}

</script>

<style type="text/css">
#ChangePhotoHome{
	border-radius: 5px;
    width: 300px;
    height:100px;
    background-color: bisque;
    display: none;
    margin-left: 1090px;
    border: 1px solid gray; 
    position: absolute;
    margin-top: 130px;
    }
</style>

        <title>Products Page</title>
       
    </head>
    <body>
        
        <center>
        <div id="main">
            <div id="Header">

                <input  id="input_search" type="text" name="SearchProfile" placeholder="Search"/>
                <label style="margin-left:110px; margin-right:5px; float: right;">WelCome !<b>${loginUser.firstName} ${loginUser.lastName}</b></label>
                <br>
               <div id="profile_photo" style="margin-top: -20px;">
					<c:if test="${! empty ProfileImageList}">
				<c:forEach items="${ProfileImageList}" var="ProfileImage">
					<img width="140px" height="140px"
						src="${pageContext.request.contextPath}/resources/ProfileImages/${ProfileImage.profileImage}">
					<br>&nbsp;&nbsp;&nbsp; <a href="#" onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:forEach>
					</c:if>
					<c:if test="${empty ProfileImageList}">
						<img width="140px" height="140px"
						src="${pageContext.request.contextPath}/resources/ProfileImages/DefaultProfileImg.png">
					<br>&nbsp;&nbsp;&nbsp; <a href="#" onclick="return DisplayChangePhotoBlock()">Change Photo</a>
					</c:if>

				</div>
				
				<div id="ChangePhotoHome">
				<form action="/vanjariudyogvishwa-v2/UpdateProfileImage" method="post" enctype="multipart/form-data">
				<input type="hidden" name="JspPageName" value="Products">
				<a onclick="return HideChangePhotoBlock()">
				 <img src="${pageContext.request.contextPath}/resources/images/close (3).png"
								style="width: 40px; height: 40px; float: right; margin-right: 10px; margin-top: 5px;"></a>
								
				<table>
				<tr>
                                        <td>Pick file : 
                                        <input type="file" name="updateProfileImage" size="50" /></td>
                                    </tr>
                                    <tr><td colspan="2"><br></tr>
                                    <tr>
                                     <td><input type="submit" value="Upload" name=""></td>
                                        <td>
                                        
                                        </td>
                                    </tr> 
                                </table>
                                </form>
				</div>
            </div>
            <div id="hiderMenu">
				<a id="anchor" href="Home"><font color="white">Home</font> </a> 
				<a	id="anchor" href="#"><font color="white">My Profile</font> </a>
				<a id="anchor" href="message"><font color="white">Message</font></a>
				<a id="anchor" href="#"	onclick="DisplayNotificationBlockPro()"><font color="white">Notification</font>	</a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()"><font color="white">Requests</font> </a>
				<a id="anchor" href="#"	onclick="return DisplaySettingBlock()"><font color="white">Setting</font></a>
				<a id="anchor" href="logoutUser"><font color="white">LogOut</font> </a>
			</div>

            <div id="leftMain">

                <div id="leftMain1">
						<table width=100%>
							<th style="background-color: #fab039"><font color="white">Upcoming
									Events</font></th>
							<c:forEach items="${eventstList}" var="myEvents">
								<tr>
									<td align="left">Anil Budge created an event
										:${myEvents.name}</td>
								</tr>
							</c:forEach>
						</table>

			    </div>
                <div id="leftMain2">
                  <table width=100%><th style="background-color: #fab039"><font color="white">Links</font></th></table>
                    <br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/message-1.png" title="Message" height="32"width="32"><a style="float: left;" href="message"><h4><font color="#00cccc">Message</font></h4></a>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/event.png" title="Events" height="32"width="32"><a style="float: right;" href="Events"><h4><font color="#00cccc">Events</font></h4></a> <br><br><br>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/photo.png" title="Photos" height="32"width="32"><a style="float: left;" href="Photos"><h4><font color="#00cccc">Photos</font></h4></a> <br><br><br>
                    <img style="float: right;" src="${pageContext.request.contextPath}/resources/images/product1.png" title="My Products" height="32"width="32"><a style="float: right;" href="Product"> <h4><font color="black">Products</font></h4></a>
                    <img style="float: left;" src="${pageContext.request.contextPath}/resources/images/friends1.png" title="Friend's" height="32"width="32"><a style="float: left;" href="Friends"> <h4><font color="#00cccc">Friends</font></h4></a>
                </div>
                <div id="leftMain3">Needs</div>

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

            

            
             
            
            
            <div id="middleProduct">
            <div id="outsideShowStatusUpdetProduct">
                <div id="ShowStatusUpdetProduct">
                <div id="ProductInfoheading">
                <font color="blue;"><a><b>Products Information</b></a></font>
               <input type="button" name="" value="Add Product" id="addProduct" onclick="return addProductUnable()" >
                </div>
                <!-- <div id="productsearch">
                <input id="input_searchProduct" type="search" name="ProductSearchName" placeholder="Search Product here....">
                <input type="submit" value="Search">
                </div> -->
                
                
                
                <div id="MiddleTopProduct">
            <form action="/vanjariudyogvishwa-v2/AddProduct", method="POST" enctype="multipart/form-data">
            <a onclick="return DisableaddProductUnable()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" style="width: 40px;height: 40px; float: right;"></a>
            <input type="hidden" name="userMail"
								value="${loginUser.email}">
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
                
                
                
                <c:if  test="${!empty ProductList}">
                    
                    
                    <c:forEach items="${ProductList}" var="productNAME">
                    <div id="ShowProductInfoMain">
                        <div id="ShowProductUpdetImage">
                        		<%-- ${productNAME.imgPath} --%>
                                <img style="float: left;" src="${pageContext.request.contextPath}/resources/ProductImages/${productNAME.imgPath}" title="Photos" height="100" width="120">
                         </div>
                         <div id="ShowProductInfo">
                            <table width=100%>
                            <tr>
                            <td>.
                            <a style="float: left;"><font color="Purple"><b> ${productNAME.productName}:</b></font></a>
                            </td>
                            </tr>
                            <br>
                            <tr>
                            <td align="left">
                            <a style="float: left;">
                            ${productNAME.productDetails}
                            </a>
                            </td>
                             </tr>
                             </table>
                        </div>
                        </div>
                        </c:forEach>
                    
                    </c:if>
                </div>
                </div>
            </div>


            <div id="rightMainProducts"></div>

        </div>
    </center>
        
        
    </body>
</html>
