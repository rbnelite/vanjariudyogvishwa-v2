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
	background: white;
	color: black;
}
</style>

<script>
function loadXMLDoc()
{
	alert("Useing Ajax to load part of page without reloding of complete page");
	
	var EventName=document.getElementById("name").value;
	var EventDetails=document.getElementById("details").value;
	var EventLocation=document.getElementById("location").value;
	var EventDate=document.getElementById("datatime").value;
	var EventUserMail=document.getElementById("MyUsermail").value;
	
	var parameters = "name="+EventName+"&details="+EventDetails+"&location="+EventLocation+"&datatime="+EventDate+"&usermail="+EventUserMail+"";
	
	/* alert("**"+parameters+"**"); */
	
	/* var parameters = "name=Manoj&details=123&location=Pune&date=02-0802014&usermail=sawantmanojm@gmail.com" */
	
	
	/* alert(EventName);
	alert(EventDetails);
	alert(EventLocation);
	alert(EventDate);
	alert(EventUserMail); */
	
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
		  alert(myfirstReq.responseText);
	    	document.getElementById("Lower").innerHTML=myfirstReq.responseText;
	    }
	  };
	
	alert("step3");
	myfirstReq.send(parameters);
	alert("step4");
	
}
</script>


<!-- <script type="text/javascript">
	function loadXMLDoc() {
		alert("Useing Ajax to load part of page without reloding of complete page");
		
		// get the form values
		var EventName=document.getElementById("name").value;
		alert(1);
		var EventDetails=document.getElementById("details").value;
		alert(2);
		var EventLocation=document.getElementById("location").value;
		alert(3);
		var EventDate=document.getElementById("datatime").value;
		alert(4);
		var EventUserMail=document.getElementById("MyUsermail").value;
		alert(5);
		$.ajax({
			type : "POST",
			url : "/vanjariudyogvishwa-v2/AutoRefresh",
			data : "name=" +EventName+ "&details=" +EventDetails+"&location="+EventLocation+"&date="+EventDate+"&usermail="+EventUserMail,
			success : function(response) {
				alert(6);
				// we have the response
				$('#Lower').html(response);
				/* $('#name').val('');
				$('#education').val(''); */
				alert(7);
			},
			error : function(e) {
				alert('Error: ' + e);
			}
		});
	}
</script> -->

</head>
<body>





<div id="Upper">
	<font size="18"> ${UpperDivContents} </font>
</div>

<div id="Lower">

<!-- <form action="/vanjariudyogvishwa-v2/AutoRefresh" method="post"> -->
	<input id="name" type="text" name="name" placeholder="Enter Event Name">
	<input id="details" type="text" name="details" placeholder="Enter Event details">
	<input id="location" type="text" name="location" placeholder="Enter Event Location">
	<input id="datatime" type="text" name="datatime" placeholder="Enter Event Date">
	<input id="MyUsermail" type="text" name="usermail" placeholder="Enter Event usermail">
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
	
	
	
	

</div>





</body>
</html>