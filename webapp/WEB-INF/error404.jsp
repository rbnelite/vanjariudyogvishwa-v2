<%-- 
    Document   : error404
    Created on : Nov 10, 2014, 12:11:04 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Page Not Found Vanjari Udyog Vishwa</title>
<style type="text/css">
	#VUVError404Div{
		width:1366px;
		height: 683px;
		background-color: rgba(255, 0, 0, 0.7);
		background-image: url('${pageContext.request.contextPath}/resources/images/error404image.png');
	}
	p{
		font-size: 40px;
	}
</style>
  </head>
  <body>
  	<div id="VUVError404Div" ></div>
  	<p><a href="Home">Click here</a> to go on home page...!!!</p>
  </body>
</html>