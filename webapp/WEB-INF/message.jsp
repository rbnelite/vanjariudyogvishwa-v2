<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<center>
		<form action="/vanjariudyogvishwa-v2/message" method="post">
			<label>Receiver's Name :</label><input type="text" name="receiverID"
				placeholder="Enter Receivers Name...."> <br> 
				<label>Message :&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label><input type="text" name="messageText"
				placeholder="Enter Yoyr Message here...."><br> <input
				type="submit" name="SendMsg" Value="Send"> <input
				type="submit" name="EditMsg" Value="Edit"> <input
				type="submit" name="Delete" Value="Delete"> <input
				type="reset" Value="Cancel"><br>
			<h3>Status : ${msgStatus}</h3>
		</form>
	</center>

</body>
</html>