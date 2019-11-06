<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>badumbl Company Home Page</title>
</head>
<body>
	<hr2> badumbl Company Home Page</hr2>
	<hr>
	Welcome!
	<hr>
	<p>
		<b>User:</b>
		<security:authentication property="principal.username" />
		<br> <br> <b>Role:</b>
		<security:authentication property="principal.authorities" />
	</p>

	
	<!--  add link a link to point /leaders for managers -->
<security:authorize access="hasRole('MANAGER')">
	<p>
		<a href="${pageContext.request.contextPath}/leaders">Leadership
			Meeting</a> (Only for Managers)
	</p>
	</security:authorize>
	<security:authorize access="hasRole('ADMIN')">
	<p>
		<a href="${pageContext.request.contextPath}/systems">System
			Note</a> (Only for Admins)
	</p>
	</security:authorize>
	<hr>

	<form:form action="${pageContext.request.contextPath}/logout"
		method="POST">
		<input type="submit" value="Logout" />
	</form:form>
</body>
</html>