<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="/include/inludetags.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HelloWorld page</title>
</head>
<body>Greeting : ${greeting}
<form:form commandName="usera" method="POST">
	firstName:<form:input path="firstName" />
			<form:errors path="firstName"></form:errors>
	<br>
	lastName:<form:input path="lastName"/>
	<form:errors path="lastName"></form:errors>
	<br>
	email:<form:input path="email"/>
	<form:errors path="email"></form:errors>
	<br>
	<form:hidden path="phone" />
	<input type="submit" value="Submit">
	<input type="reset" value="Cancel">
</form:form>
</body>
</html>