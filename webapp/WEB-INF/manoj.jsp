


<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
Status : ${status}
  <form action="/vanjariudyogvishwa-v2/manoj" method="post">
  First Name : <input name="fName" type="text"/><br>      
  Last Name  : <input name="lName" type="text" /><br>
  <input type="submit" name="SubmitName" value="">
  </form>
  
  <br>
  <br>
  <br>
  
  <h3>List From Database</h3>
<c:if  test="${!empty contactList}">
<table class="data">
<tr>
	<th>Sr.No</th>
	<th>First Name</th>
	<th>last Name</th>
	<th>&nbsp;</th>
</tr>
<c:forEach items="${contactList}" var="contact">
	<tr>
		<td>${contact.sno}</td>
		<td>${contact.fName},</td>
		<td> ${contact.lName} </td>
		
	</tr>
</c:forEach>
</table>
</c:if>


  </center>
</body>
</html>