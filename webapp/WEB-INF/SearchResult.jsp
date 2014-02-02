
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hii This is your Search Result</h1>

<table width=100%>
			<th>Users List</th>
	<c:if test="${!empty SearchUserList}">
		
			<c:forEach items="${SearchUserList}" var="searchUser">
				<tr>
					<td align="left">${searchUser.firstName}&nbsp;${searchUser.middleName}&nbsp;${searchUser.lastName}&nbsp;</td>
				</tr>
			</c:forEach>
	
	</c:if>
		</table>
	
<table width=100%>
			<th>Products List</th>
	<c:if test="${!empty SearchUserList}">
		
			<c:forEach items="${SearchUserList}" var="searchUser">
				<tr>
					<td align="left">${searchUser.firstName}&nbsp;${searchUser.middleName}&nbsp;${searchUser.lastName}&nbsp;</td>
				</tr>
			</c:forEach>
		
		
	</c:if>
	</table>
	<table width=100%>
			<th>Events List</th>
	<c:if test="${!empty SearchUserList}">
			<c:forEach items="${SearchUserList}" var="searchUser">
				<tr>
					<td align="left">${searchUser.firstName}&nbsp;${searchUser.middleName}&nbsp;${searchUser.lastName}&nbsp;</td>
				</tr>
			</c:forEach>
		
	</c:if>
	</table>
</body>
</html>