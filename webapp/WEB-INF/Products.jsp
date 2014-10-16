


<%-- 
    Document   : Products
    Created on : Dec 10, 2013, 6:19:54 PM
    Author     : vishal
--%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="<c:url value="/resources/css/style4.css" />" rel="stylesheet">
         <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
         <link rel="shortcut icon" href="/vanjariudyogvishwa-v2/resources/images/banner12.png">
		<script src="<c:url value="/resources/js/RBNelite.js" />"></script>
		<script src="<c:url value="/resources/js/AsyncFriendRequest.js" />"></script>

<script type="text/javascript">

function DisplayChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='block';
}

function HideChangePhotoBlock(){
    var dispPhoto=document.getElementById("ChangePhotoHome");
    dispPhoto.style.display='none';
}

function jumpcomment(NotificationId) {
	/* alert(NotificationId); */
	document.getElementById("notificationId").value = NotificationId;

	var temp = document.getElementById("submit1").click();
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
#peopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 500px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    /* border: 1px solid gray; */
    overflow: auto;
    padding-right: 40px;
}
#OutsidepeopleMayKnw
{
	width: 290px;
    height: auto;
    max-height: 256px;
    overflow: auto;
    border-radius: 3px;
    background-color: bisque;
    /* border: 1px solid gray; */
    overflow: hidden;
    margin-left: -3px;
    margin-top: -19px;
}

#leftMainHome {
	float: left;
	width: 300px;
	height: 350px;
	overflow: auto;
	background-color: bisque;
	margin-left: 20px;
}

#OutsideleftMainHome {
	float: left;
	width: 300px;
	height: 350px;
	overflow: hidden;
	background-color: bisque;
	margin-top: -20px;
	/* border: 1px solid gray; */
}
#leftMain3{
	height: 575px;
}
#InsideRightMessage {
	width: 292px;
	height: 270px;
	background-color: yellow;
	margin-top: -20px;
}
#OutsideRightMessage {
	border-radius: 3px;
	width: 300px;
	height: 830px;
	background-color: transparent;
	float: right;
}
textarea{
	resize: none;
	width:290px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color: rgba(255, 255, 255, 0.09);
	border: 1px solid gray;
	border-radius:5px;
}
textarea:FOCUS{
	resize: none;
	width:290px;
	height:50px;
	font-size: 18px;
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
	background-color:white;
	border: 1px solid red;
	border-radius:5px;
}
#middleProduct{
    
    width: 790px;
    height: 1163px;
}
</style>

        <title>Products | Vanjari Udyog Vishwa</title>
       
    </head>
    <body>
        
        <center>
        <div id="main" style="border-color: bisque">
            <%@include file="header.jsp" %>
            
            <div id="hiderMenu">
				<a id="anchor" href="Home">Home</a> 
				<a id="anchor" href="Profile">My Profile</a>
				<a id="anchor" href="SearchPeopleByProfession">Members</a>
				<a id="anchor" href="message">Message</a>
				<a id="anchor" href="#" onclick="DisplayNotificationBlockPro()">Notification<font color="red">${fn:length(NotificationList)}</font> </a>
				<a id="anchor" href="#" onclick="DisplayRequestBlockPro()">Requests<font color="red">${fn:length(friendRequestList)}</font></a>
				<a id="anchor" href="#" onclick="return DisplaySettingBlock()">Setting</a>
				<a id="anchor" style="margin-right: -550px" href="logoutUser">LogOut</a>
			</div>

            <div id="leftMain">
				<%@include file="LeftContainer.jsp" %>

			</div>
			
			<%@include file="NotificationPopUp.jsp" %>
			
            <div id="RequestTopHome">
				<table width=100%>
					<th colspan=3 style="background-color: #fab039"><font color=white>
					Contact Requests</font> <a
						onclick="return DisableRequestBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right;"></a></th>
							<c:if test="${!empty friendRequestList}">
					<c:forEach items="${friendRequestList}" var="friendRequest">
					<form action="/vanjariudyogvishwa-v2/acceptFriendRequest" method="post">
					
					<tr align="center">
									<input type="hidden" name="requestFrom"
										value="${friendRequest[0]}">
									<input type="hidden" name="requestTo"
										value="${loginUser.email}">
									<td><img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${friendRequest[1]}"
										height="30" width="30"></td>
									<td><b>${friendRequest[0]}</b><br>${friendRequest[3]}  @ ${friendRequest[2]}</td>
									<td><input type="submit" name="status" value="Accept"
										class="connectBtn"> <input type="submit" name="status"
										value="Reject" class="connectBtn"></td>

								</tr>
					</form>
					</c:forEach>
					
					</c:if>
				</table>
			</div> 
            <div id="SettingTopHome">
				<table width=100%>
					<tr>
						<th style="background-color: #fab039"><a
							href="ChangePassword"
							style="text-decoration: none; color: white">Change Account
								Setting</a><a onclick="return DisableSettingBlock()"> <img
								src="${pageContext.request.contextPath}/resources/images/close (3).png"
								id="close" style="width: 40px; height: 40px; float: right;"></a></th>
					</tr>
					<tr>
						<td align="left"><a href="ChangePassword"
							style="text-decoration: none; color: black">Change Password</a></td>
					</tr>
					
				</table>
			</div>

            

            
             
            
            
            <div id="middleProduct">
            <div id="ProductInfoheading">
                
               <input type="button" name="" value="Add Product" id="ViewProDetailsBtn" onclick="return addProductUnable()" >
            </div>
            <div id="outsideShowStatusUpdetProduct">
                <div id="ShowStatusUpdetProduct">
                <!-- <div id="productsearch">
                <input id="input_searchProduct" type="search" name="ProductSearchName" placeholder="Search Product here....">
                <input type="submit" value="Search">
                </div> -->
                
                
                
                <div id="MiddleTopProduct" style="width: 733px;margin-top: 2px;margin-bottom: 20px; margin-left: 0px;">
            <form action="/vanjariudyogvishwa-v2/AddProduct", method="POST" enctype="multipart/form-data">
            <a onclick="return DisableaddProductUnable()"> <img src="${pageContext.request.contextPath}/resources/images/close.png" id="close" style="width: 40px;height: 40px; float: right;"></a>
            <input type="hidden" name="userMail"
								value="${loginUser.email}">
                <table>
                    <b><font color="purple">Add Product</font></b>

                    <tr>
                        <td>Product Name :</td>
                        <td><input type="text" name="productName" maxlength="50" placeholder= "Write Product's Name...." style="width: 400px; height: 30px; margin-left: -100px;"></td>
                    </tr>
                    <tr>
                        <td>Products Details :</td>
                        <td><textarea type="text"  name="productDetails" maxlength="200" placeholder="Write Product's Details...." style="width: 400px; height: 100px; resize: none;margin-left: -100px;padding: 0px 8px;"></textarea></td>
                    </tr>
                    
                    <tr>
                        <td>Product Image :</td>
                        <td><input type="file" name="imgPath" style="width: 400px; height: 30px;margin-left: -100px;"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Add Product" class="connectBtn" style="margin-left: 290px; width: 100px"></td>
                        <td><input type="reset" value="Cancel" class="connectBtn" style="margin-left: 100px;" onclick="return DisableaddProductUnable()"></td>
                    </tr>
                </table>
                </form>
            </div>
                
                
                
                <c:if  test="${!empty ProductList}">
                    <font color="blue;"><b>Products List & Information</b></font>
                    
                    <c:forEach items="${ProductList}" var="productNAME">
                    	<table width=98% style="border: 2px solid rgba(243, 174, 9, 0.99);border-radius: 15px; margin-top: 10px;margin-bottom: 5px;">
							<tr>
								<td width="40"><img src="${pageContext.request.contextPath}/resources/ProductImages/${productNAME.imgPath}" title="${productNAME.productName}" height="80" width="80" style="margin: 4px auto auto 4px;border-radius: 50px;border: 3px solid #F00;"></td>
								<td><a style="font-size: 22px;color: rgba(42, 163, 240, 0.68);">${productNAME.productName}</a></td>
							</tr>
							<tr>
								<td></td>
								<td><a style="font-size: 16px;color: rgba(59, 79, 105, 0.62);float: left;"><b style="color: green;">Product Details :</b> ${productNAME.productDetails}</a></td>
							</tr>
						</table>
                       
                        </c:forEach>
                    	
                    </c:if>
                    <div style="width: 90%;height: 40px;"></div>
                </div>
                </div>
            </div>


            <div id="rightMain" style="background-color: bisque;margin-top: -1163px;border: none;">
				<%@include file="RightContainer.jsp" %>
			</div>
			
        </div>
        
        
		<%@include file="footer.jsp" %>        
        
    </center>
        
        
    </body>
</html>
