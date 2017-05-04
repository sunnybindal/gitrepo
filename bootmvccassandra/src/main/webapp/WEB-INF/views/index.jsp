<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to Spring Boot + Spring MVC + Spring Data cassandra.</h1>
<c:if test="${not empty user }">
	<c:out value="${user.name }"></c:out>
	<c:out value="${user.addresses }"></c:out>
	<br>
	<c:out value="${userstring }"></c:out>
	<br>
	<c:out value="${userstring.name }"></c:out>
	<c:out value="${userstring.addresses }"></c:out>
	<br>
	<c:out value="${userjson }"></c:out>
	<br>
	<c:out value="${userjson.name }"></c:out>
	<c:out value="${userjson.addresses }"></c:out>
</c:if>
</body>
</html>