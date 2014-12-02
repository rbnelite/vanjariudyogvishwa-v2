<%-- 
    Document   : error500
    Created on : Nov 10, 2014, 05:08:39 PM
    Author     : Manoj Sawant (sawantmanojm@gmail.com)
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error 500 - Vanjari Udyog Vishwa</title>
<style type="text/css">
	#VUVError404Div{
		width:1340px;
		height: 683px;
		transition: all 3s;
		background-color: rgba(255, 0, 0, 0.7);
		background-image: url('${pageContext.request.contextPath}/resources/images/error404image.png');
	}
	#VUVError404Div:HOVER{
		width:1340px;
		height: 683px;
		margin-left:30px;
		margin-top:30px;
		transition: all 3s;
		background-color: rgba(255, 0, 0, 0.5);
		background-image: url('${pageContext.request.contextPath}/resources/images/error404image.png');
	}
	p{
		font-size: 40px;
	}
</style>
  </head>
  <body>
  	<center>
  	<div id="VUVError404Div" ></div>
  	<p><a href="Home">Click here</a> to go on home page...!!!</p>
  	</center>
  </body>
</html>