

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>





<c:forEach items="${SearchUserList}" var="myFriends">
${myFriends[0]} ${myFriends[11]} ${myFriends[1]} '${myFriends[5]}'
</c:forEach>