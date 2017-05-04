<%@include file="/WEB-INF/templates/include.jsp"%>
<%@include file="/WEB-INF/templates/script.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form modelAttribute="user" id="userregister">
		<table border="1">
			<thead>
				<jsp:include page="/WEB-INF/views/users/_user.jsp">
					<jsp:param name="type" value="userheader" />
				</jsp:include>
			</thead>
			<tbody>
				<tr>
					<td><form:input path="firstname" />
						<p>
							<form:errors path="firstname" cssClass="_error"></form:errors>
						</p></td>
					<td><form:input path="middlename" />
						<p>
							<form:errors path="middlename" cssClass="_error"></form:errors> 
						</p></td>
					<td><form:input path="lastname" />
						<p>
							<form:errors path="lastname" cssClass="_error"></form:errors>
						</p></td>
					<td><form:input path="email" />
						<p>
							<form:errors path="email" cssClass="_error"></form:errors>
						</p></td>
					<td><form:input path="mobile" />
						<p>
							<form:errors path="mobile" cssClass="_error"></form:errors>
						</p></td>
					<td><form:input path="loginid" />
						<p>
							<form:errors path="loginid" cssClass="_error"></form:errors>
						</p></td>
				</tr>
				<tr>
					<form:hidden path="id"/>
					<td><form:button name="submit" value="SUBMIT">SUBMIT</form:button></td>
					<td><input type="button" value="CLEAR"
						onclick="javascript:clearform('hard');"></td>
					<td><input type="button" value="RESET"
						onclick="javascript:clearform('soft');"></td>
				</tr>
			</tbody>
		</table>
	</form:form>
</body>
<script type="text/javascript">
	function clearform(type) {
		$("._error").hide();
		if (type == "" || type == "soft")
			$("#userregister")[0].reset(); //clear the form but if there is already data in the fields then reset will again display previous one.
		else {
			$(':input', $("#userregister")[0]).each(function() {
				var type = this.type;
				var tag = this.tagName.toLowerCase(); // normalize case
				// it's ok to reset the value attr of text inputs,
				// password inputs, and textareas
				if (type == 'text' || type == 'password' || tag == 'textarea')
					this.value = "";
				// checkboxes and radios need to have their checked state cleared
				// but should *not* have their 'value' changed
				else if (type == 'checkbox' || type == 'radio')
					this.checked = false;
				// select elements need to have their 'selectedIndex' property set to -1
				// (this works for both single and multiple select elements)
				else if (tag == 'select')
					this.selectedIndex = -1;
			});
		}
	}
	$(document).ready(function() {
		console.log("page loaded");
	});
</script>
</html>