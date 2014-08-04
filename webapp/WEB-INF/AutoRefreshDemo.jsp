<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
#Upper{
	width: 100%;
	height: 1000px;
	background: pink;
	color: blue;
}
#Lower{
	width: 100%;
	height: 300px;
	background: red;
	color: yellow;
}
</style>

<script>
function loadXMLDoc()
{
	alert("Useing Ajax to load part of page without reloding of complete paje");
	
	var EventName=document.getElementById("EventName").value;
	var EventDetails=document.getElementById("EventDetails").value;
	var EventLocation=document.getElementById("EventLocation").value;
	var EventDate=document.getElementById("EventDate").value;
	var EventUserMail=document.getElementById("EventUserMail").value;
	
	var parameters = "name="+EventName+"&details="+EventDetails+"&location="+EventLocation+"&datatime="+EventDate+"&usermail="+EventUserMail+"";
	
	alert("**"+parameters+"**");
	
	/* var parameters = "name=Manoj&details=123&location=Pune&date=02-0802014&usermail=sawantmanojm@gmail.com" */
	
	
	alert(EventName);
	alert(EventDetails);
	alert(EventLocation);
	alert(EventDate);
	alert(EventUserMail);
	
	myfirstReq=new XMLHttpRequest();
	
	alert("step2");
	myfirstReq.open("POST", "/vanjariudyogvishwa-v2/AutoRefresh", true);
	
	//Send the proper header information along with the request
	myfirstReq.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	myfirstReq.setRequestHeader("Content-length", parameters .length);
	myfirstReq.setRequestHeader("Connection", "close");
	
	
	myfirstReq.onreadystatechange=function()
	  {
	  if (myfirstReq.readyState==4)
	    {
	    document.getElementById("Lower").innerHTML=myfirstReq.responseText;
	    }
	  };
	
	alert("step3");
	myfirstReq.send(parameters);
	alert("step4");
	
}
</script>

</head>
<body>





<div id="Upper">
	<font size="18"> ${UpperDivContents} </font>
</div>

<div id="Lower">

<!-- <form action="/vanjariudyogvishwa-v2/AutoRefresh" method="post"> -->
	<input id="EventName" type="text" name="name" placeholder="Enter Event Name">
	<input id="EventDetails" type="text" name="details" placeholder="Enter Event details">
	<input id="EventLocation" type="text" name="location" placeholder="Enter Event Location">
	<input id="EventDate" type="text" name="datatime" placeholder="Enter Event Date">
	<input id="EventUserMail" type="text" name="usermail" placeholder="Enter Event usermail">
	<input type="submit" value="send" onclick="loadXMLDoc()">
<!-- </form> -->



<font size="15">${LowerDivContents}</font><br>


	<c:if test="${! empty myEventData }">
	<table>
		<tr>
			<td>${myEventData.name}</td>
			<td>${myEventData.details}</td>
			<td>${myEventData.location}</td>
			<td>${myEventData.datatime}</td>
			<td>${myEventData.usermail}</td>
		</tr>
	</table>
	</c:if>
	
	<c:if test="${ empty myEventData }">
	<table border="2">
		<tr>
			<td>A</td>
			<td>B</td>
			<td>C</td>
			<td>D</td>
			<td>E</td>
		</tr>
	</table>
	</c:if>
	
	

</div>





</body>
</html>