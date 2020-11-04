<%@page import="com.cdac.dto.AdminAddOffers"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
    <%@page import="com.cdac.dto.User"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recharge Page</title>
</head>
<body>
     <%@ include file="header.jsp" %>
     <h3 style="text-align: center">Recharge Here!!!!</h3><br>
    <spr:form action="recharge_add.htm" method="post" commandName="recharge" >
	<table align="center" style="text-align: center;margin-top:0px;border: 2px solid black; margin-top: 50px;
	 margin-left:270px; border-collapse: separate; border-spacing: 15px;border-radius: 20px">

	  
		<tr>
			<td>
				Enter Mobile Number :
			</td>
			<td>
			    <font color="red" ><spr:errors path="mobNo" ></spr:errors></font>
				<spr:input path="mobNo"/>
				 
			</td>
		</tr>
		
		<tr>
			<td>
				Enter Amount :
			</td>
			<td>
			
			    <font color="red" ><spr:errors path="amount" ></spr:errors></font>
				<spr:input path="amount"/><br>
				
			</td>
		</tr>
		
	    
	     <tr>
			<td>
		         <a href="view_offer.htm">View Offer</a>
			</td>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
		</tr>
		<tr>
			<td>
			    
			</td>
			<td>
				<input style="color: red ; "type="submit"  value="Recharge" >
			</td>
		</tr>
	</table>
	</spr:form>

</body>
</html>
