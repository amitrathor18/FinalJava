<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cdac.dto.User"%>
    <%@ include file="Cache-Control.jsp" %>
    <jsp:useBean id="user" class="com.cdac.dto.User" scope="session" ></jsp:useBean>
<% 
	if(user !=null && user.getUserId()>0){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body style="background-color:">
   
      <%@ include file="header.jsp" %>
	<!--<h1> Welcome <%=(session.getAttribute("user")!=null) ?((User)session.getAttribute("user")).getUserName():"!!!!!!!!" %></h1>-->

	<div style="text-align: center; margin-top: 50px; margin-left: 20px;">
	
   <a href="prep_recharge_add_form.htm">Recharge!!!</a><br>
   <a href="recharge_Bill.htm"> See your Bills</a>
   </div>
   
   
</body>
</html>

<% }else{
	
	response.sendRedirect("login_form.jsp");	
	
}
	%>