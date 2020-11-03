<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.cdac.dto.User"%>
<!DOCTYPE html>
<html>
<head>

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  
 <ul>
  <li style="color: white; margin-right: 10px;"><h3>Easy Pay</h3></li>
  
  <li><h3 style="color: white;float:right;"> Welcome <%=(session.getAttribute("user")!=null) ?((User)session.getAttribute("user")).getUserName():"   " %></h3></li>
  <li style="float:right"><a class="active" href="#about">Logout</a></li>
  <li style="float:right"><a href="prep_recharge_add_form.htm">Recharge</a></li>
  <li style="float:right"><a href="view_offer.htm">Offers</a></li>
  
</ul>
 
</body>
</html>