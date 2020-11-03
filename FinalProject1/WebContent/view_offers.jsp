<%@page import="com.cdac.dto.AdminAddOffers"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
   
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
				<%=ofr.getPlan()%>
			</td>
			<td>
				<%=ofr.getValidity()%>
			</td>
			<td>
				<%=ofr.getBenefits()%>
			</td>
			
			
			
		</tr>
		<% } %>
    </tr>
  </tbody>
</table>
 
</div>	
   <h3 style="text-align: center;"><a href="recharge_add_form">Back</a></h3>
</body>
</html>