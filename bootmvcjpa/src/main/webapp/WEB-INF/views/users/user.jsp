<%@include  file="/WEB-INF/templates/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/templates/header.jsp" ></jsp:include>
<c:if test="${not empty message }">
	<c:out value="${message }"></c:out>
</c:if>
<c:choose>
	<c:when test="${not empty user }">
		<table border="1">
			<thead>
				<jsp:include page="/WEB-INF/views/users/_user.jsp" >
  					<jsp:param name="type" value="userheader" />
  					<jsp:param name="showupdate" value="true" />
				</jsp:include>
			</thead>
			<tbody>
					<c:set var="_user" value="${user}" scope="request" />
					<jsp:include page="/WEB-INF/views/users/_user.jsp" >
  						<jsp:param name="type" value="datarow" />
  						<jsp:param name="showupdate" value="true" />
					</jsp:include>					
			</tbody>
		</table>
		
	</c:when>
	<c:otherwise>
		No User Found. Click here to 
		<a href="${pageContext.request.contextPath}/users/add">Add user </a>
	</c:otherwise>
</c:choose>
</body>
</html>