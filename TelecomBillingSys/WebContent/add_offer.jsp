<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <spr:form action="offer_add.htm" method="post" commandName="offers" >
	<table align="center" >
		<tr>
			<td>
				Plan :
			</td>
			<td>
				<spr:input path="plan"/>
			</td>
		</tr>
		<tr>
			<td>
				Validity:
			</td>
			<td>
				<spr:input path="validity"/>
			</td>
		</tr>
		<tr>
			<td>
				Benefits:
			</td>
			<td>
				<spr:input path="Benefits"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input type="submit"  value="Add Offers" >
			</td>
		</tr>
	</table>
	</spr:form>
</body>
</html>