

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>





<c:forEach items="${SearchUserList}" var="myEvents">

${myEvents.firstName} ${myEvents.middleName} ${myEvents.lastName}===>${myEvents.emailId}

</c:forEach>


