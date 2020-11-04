<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Registration Form</title>
</head>
<body style="background-color:LightGray;">
<H2 style="text-align: center;">Register Here!!!</H2>
   <spr:form action="reg.htm" method="post" commandName="user" >
	<table align="center;" style="border: 2px solid black; margin-top: 50px;
	 margin-left: 300px; border-collapse: separate; border-spacing: 15px;border-radius: 20px" >
		<tr>
			<td>
			 Name:
			</td>
			<td>
			 <font color="red" ><spr:errors path="userName" ></spr:errors></font>
				<spr:input path="userName"/>
				
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
			 
				<spr:password path="userPass"/>
				 <font color="red" ><spr:errors path="userPass" ></spr:errors></font>
			</td>
		</tr>
		<tr>
			<td>
			 
				Mobile No:
			</td>
			<td>
			 
				<spr:input path="mobNo"/>
				<font color="red" ><spr:errors path="mobNo" ></spr:errors></font>
			</td>
		</tr>
		<tr>
			<td>
			 
				EmailId:
			</td>
			<td>
			<font color="red" ><spr:errors path="emailId" ></spr:errors></font>
				<spr:input path="emailId"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp" >Back</a>
			</td>
			<td>
				<input style="background-color:lightGreen; coursor:pointer"  type="submit"  value="Register" >
			</td>
		</tr>
	</table>
	</spr:form>
    
</body>

</html>
