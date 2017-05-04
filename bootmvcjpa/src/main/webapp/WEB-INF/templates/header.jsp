<%@include  file="/WEB-INF/templates/include.jsp"%>
<sec:authorize access="isAuthenticated()">
	<form:form action="/logout" method="POST">
		<input type="submit" value="Sign Out"/>
	</form:form>
</sec:authorize>
<sec:authorize access="isAnonymous()">
	<form:form action="/login">
		<input type="submit" value="Sign In"/>
	</form:form>
</sec:authorize>