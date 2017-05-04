<%@include file="/WEB-INF/includes/_include.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${not empty name }">
		welome, <c:out value="${name }"></c:out> here again
	</c:when>
	<c:otherwise>
		welome, Guest
	</c:otherwise>
</c:choose> 
</body>
</html>