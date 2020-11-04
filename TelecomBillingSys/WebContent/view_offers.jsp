<%@page import="com.cdac.dto.AdminAddOffers"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User offers </title>
</head>
<body>
<div class= "container">
	<table class="table text-center">
  <thead class="thead-dark ">
    <tr>
      
      <th scope="col">Plan</th>
      <th scope="col">validity</th>
      <th scope="col">Benefits</th>
       
  <tbody>
  	<% 
		List<AdminAddOffers> clist = (List<AdminAddOffers>)request.getAttribute("offerlist");
		for( AdminAddOffers ofr : clist){
		%>
  
    <tr>  
			<td>
				<%= "Rs. "+ofr.getPlan()%>
			</td>
			<td>
				<%=ofr.getValidity()+"Days" %>
			</td>
			<td>
				<%=ofr.getBenefits()%>
			</td>
		
			
		</tr>
		<% } %>
    
  </tbody>
</table>
 
   </div>

   <div style="text-align: center;">
     <a href="prep_recharge_add_form.htm">Back And Recharge</a>
   </div>	
  
</body>
</html>