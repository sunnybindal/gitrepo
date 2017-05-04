<%@include  file="/WEB-INF/templates/include.jsp"%>
<c:choose>
	<c:when test="${param.type eq 'userheader' }">
		<tr>
			<th>firstname</th>
			<th>middlename</th>
			<th>lasatname</th>
			<th>email</th>
			<th>mobile</th>
			<th>login-id</th>
			<c:if test="${param.showdelete eq 'true' }">
				<th>delete</th>
			</c:if>
			<c:if test="${param.showupdate eq 'true' }">
				<th>update</th>
			</c:if>
		</tr>
	</c:when>
	<c:when test="${param.type eq 'datarow' }">
		<tr>
			<td>${_user.firstname}</td>
			<td>${_user.middlename }</td>
			<td>${_user.lastname }</td>
			<td>${_user.email }</td>
			<td>${_user.mobile }</td>
			<td>${_user.loginid }</td>
			<c:if test="${param.showdelete eq 'true' }">
				<th><a href="${pageContext.request.contextPath}/users/delete?userid=${_user.id}">DELETE</a></th>
			</c:if>
			<c:if test="${param.showupdate eq 'true' }">
				<th><a href="${pageContext.request.contextPath}/users/update?userid=${_user.id}">UPDATE</a></th>
			</c:if>
		</tr>
	</c:when>
</c:choose>