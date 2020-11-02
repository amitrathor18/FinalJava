<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <spr:form action="recharge_add.htm" method="post" commandName="recharge" >
	<table align="center" style="text-align: center;margin-top:20px">
	  <h3 style="text-align: center">Recharge Here!!!!</h3><br>
		<tr>
			<td>
				Enter Mobile Number :
			</td>
			<td>
				<spr:input path="mobNo"/>
			</td>
		</tr>
		<!-- <tr>
			<td>
				Operator:
			</td>
			<td>
				<spr:radiobutton path="operator" value="vodaphone" />vodafone
				<spr:radiobutton path="operator" value="idea"/>idea
				<spr:radiobutton path="operator" value="gio"/>jio
				<spr:radiobutton path="operator" value="airtel"/>airtel
				<spr:radiobutton path="operator" value="bsnl"/>bsnl
				
			</td>
		</tr>-->
		<tr>
			<td>
		         <a href="view_offer.jsp">View Offer</a>
			</td>
		</tr>
		<tr>
			<td>
				Enter Recharge Amount:
			</td>
			<td>
				<spr:input path="amount"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Recharge" >
			</td>
		</tr>
	</table>
	</spr:form>

</body>
</html>