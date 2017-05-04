<%@include  file="/WEB-INF/templates/include.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="/WEB-INF/templates/header.jsp" ></jsp:include>
	<c:choose>
		<c:when test="${empty users }">
			No User found.
			<a href="${pageContext.request.contextPath}/users/add">Add user </a>
		</c:when>
		<c:when test="${not empty users }">
			List of All Users
			<table border="1">
				<thead>
					<jsp:include page="/WEB-INF/views/users/_user.jsp" >
	  					<jsp:param name="type" value="userheader" />
	  					<jsp:param name="showdelete" value="true" />
	  					<jsp:param name="showupdate" value="true" />
					</jsp:include>
				</thead>
				<tbody>
					<c:forEach items="${users }" var="user">
						<c:set var="_user" value="${user}" scope="request" />
						<jsp:include page="/WEB-INF/views/users/_user.jsp" >
	  						<jsp:param name="type" value="datarow" />
	  						<jsp:param name="showdelete" value="true" />
	  						<jsp:param name="showupdate" value="true" />
						</jsp:include>
					</c:forEach>
				</tbody>
			</table>
			<a href="${pageContext.request.contextPath}/users/add">Add user </a>		
		</c:when>
		<c:otherwise>
			<a href="${pageContext.request.contextPath}/users/add">Add user </a>
		</c:otherwise>
	</c:choose>
</body>
</html>