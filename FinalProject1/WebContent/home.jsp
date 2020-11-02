<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cdac.dto.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>
   <h1>Welcome Home </h1>
       
	<h1> Welcome <%=(session.getAttribute("user")!=null) ?((User)session.getAttribute("user")).getUserName():"!!!!!!!!" %></h1>
	<div>
   <a href="prep_recharge_add_form.htm">Recharge!!!</a><br>
   <a href="recharge_history.htm"> See your Bills</a>
   </div>
</body>
</html>