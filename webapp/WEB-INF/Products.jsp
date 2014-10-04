


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
<script type="text/javascript">
function sendRequest(RequestTo){
	
	sendFriendRequest(RequestTo);
	return false;
}

function sendFriendRequest(RequestTo){
	RequestFrom="";
	requestStatus="";
	reqDate="";
	var parameters = "requestTo="+RequestTo+"&requestFrom="+RequestFrom+"&requestDate="+reqDate+"&requestStatus="+requestStatus+"";
	
	if (window.XMLHttpRequest)
	{
		// code for IE7+, Firefox, Chrome, Opera, Safari
		myfirstReq=new XMLHttpRequest();
	}
	else
	  {
		// code for IE6, IE5
		myfirstReq=new ActiveXObject("Microsoft.XMLHTTP");
	  }
	myfirstReq.open("POST", "/vanjariudyogvishwa-v2/sendFriendRequest", true);
	
	//Send the proper header information along with the request
	myfirstReq.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	myfirstReq.setRequestHeader("Content-length", parameters .length);
	myfirstReq.setRequestHeader("Connection", "close");
	
	myfirstReq.onreadystatechange=function()
	  {
	  if (myfirstReq.readyState==4 && myfirstReq.status==200)
	    {
		  		document.getElementById("people"+RequestTo).style.display='none';
	    } 
	  };
		myfirstReq.send(parameters);
	
}
</script>
<script type="text/javascript">
            
            var image1=new Image()
            image1.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 2.jpg"
            var image2=new Image()
            image2.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 3.jpg"
            var image3=new Image()
            image3.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 4.jpg"
            var image4=new Image()
            image4.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 5.jpg"
            var image5=new Image()
            image5.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 6.jpg"
            var image6=new Image()
            image6.src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 7.jpg"
            
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
#NotificationTopHome{
    border-radius: 5px;
    width: 350px;
    height: 300px;
    background-color: bisque;
    display: none;
    margin-left: 650px;
    border: 1px solid gray; 
    position: absolute;
    overflow: hidden;
    /* style="height: auto ;overflow:auto" */
 }
#InsideNotificationTopHome{
    border-radius: 5px;
    width: 350px;
    height: 300px;
    background-color: bisque;
    /* margin-left: 650px; */
    border: 1px solid gray; 
    position: absolute;
    overflow: auto;
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

            


            <div id="NotificationTopHome">
				<div id="InsideNotificationTopHome">
				<table width="100%">
					<th style="background-color: #fab039"><font color="white">Notification</font>
						<a onclick="return DisableNotificBlock()"> <img
							src="${pageContext.request.contextPath}/resources/images/close (3).png"
							id="close" style="width: 40px; height: 40px; float: right;"></a></th>
					<form action="/vanjariudyogvishwa-v2/Notification" method="post">
											<c:if test="${!empty NotificationList}">
						<c:forEach items="${NotificationList}" var="note">
						<tr><td colspan=2 align="left">
						<div class="userStatusImage">
									<img
										src="${pageContext.request.contextPath}/resources/ProfileImages/${note[4]}"
										height="20" width="20">
								</div><h7 id="${note[3]}" onclick="jumpcomment('${note[3]}')"><b style="color: red;">${note[1]} ${note[2]}</b> commented on status: <i style="color: gray;">${note[0]}</i></h7>
						
						<input type="submit" id="submit1" style="display: none">
						</td></tr>						
						</c:forEach>
						<input type="hidden" id="notificationId" name="notificationId">
						</c:if>
						
					</form>
				</table>
				<table style="float: right;">
					<tr><td>
						<a href="Notificationjsp"> See All Notification....</a>
					</td></tr>
				</table>
			</div>
			</div>
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
			<h3 style="background-color: #FF6300; font-family: vardana; margin-top: 0px;">People You May Know</h3>
			<div id="OutsidepeopleMayKnw">
				<div id="peopleMayKnw">

					<table width=100%>
						
						<c:if test="${!empty knownPeopleList}">
							<c:forEach items="${knownPeopleList}" var="knownPeople">
								<c:if test="${loginUser.email != knownPeople[0]}">
									<tr id="people${knownPeople[0]}">
										<form action="/vanjariudyogvishwa-v2/FriendProfile" method="post">
											<input type="hidden" name="friendsEmailId" value="${knownPeople[0]}">
											<td>
												<img src="${pageContext.request.contextPath}/resources/ProfileImages/${knownPeople[3]}"
														height="30" width="30">
											</td>
											<td><input id="MayKnowUserName" title="View Profile of ${knownPeople[1]} ${knownPeople[2]}" type="submit" value="${knownPeople[1]} ${knownPeople[2]}"><br></td>	
										</form>
										<form action="/vanjariudyogvishwa-v2/sendFriendRequest"method="post">
											<td>
												<input type="hidden" id="sendRequestToId" name="requestTo" value="${knownPeople[0]}">
												<input type="hidden" id="sendRequestFromId" name="requestFrom" value="${loginUser.email}">
												<input type="submit" value="Connect" class="connectBtn"	style="float: right;" onclick="return sendRequest('${knownPeople[0]}');">
											</td>
										</form>
									</tr>
								</c:if>
								
							</c:forEach>
						</c:if>
					</table>
				</div>
				</div>
				
				<h3 style="background-color:#FF6300; font-family: vardana; margin-top: 0px;">AdvertiseMents</h3>
				<div id="OutsideRightMessage">
					<div id="InsideRightMessage">
						
						<div style="width: 292px;height: 270px;">
							<img src="${pageContext.request.contextPath}/resources/Advertisement/Advertise 1.jpg" name="slide" width="292" height="270"/>
                        </div>
                        
                            <script>
                                
                                //variable that will increment through the images
                                var step=1
                               
                                function slideit(){
                                    //if browser does not support the image object, exit.
                                    if (!document.images)
                                        return
                                    document.images.slide.src=eval("image"+step+".src")
                                    
                                    if (step<6 )
                                       	step++
                                       
                                    else
                                        step=1
                                        
                                    //call function "slideit()" every 2.5 seconds
                                    setTimeout("slideit()",9900)
                                }
                                slideit()
                                
                            </script>
						
						</div>
					</div>
				</div>
			
        </div>
        
        
		<%@include file="footer.jsp" %>        
        
    </center>
        
        
    </body>
</html>
