<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/formStyle.css"/>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&display=swap" rel="stylesheet">
<title>Ninja | Add</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Add a Ninja</h1>
		</div>
			<div class="form-container">
			<form:form action="/student/new" method="POST" modelAttribute="student">
				<div>
					<form:label path="school">Dojo:</form:label>
					<form:select path="school">
					<option value=""></option>
						<c:forEach var="school" items="${schools}">
							<option value="${school.id}">${school.schoolName}</option>
						</c:forEach>
					</form:select>
					<form:errors path="school" class="error-message"/>
				</div>
				<div>
					<form:label path="firstName">First Name:</form:label>
					<form:input type="text" path="firstName"/>
					<form:errors path="firstName" class="error-message"/>
				</div>
				<div>
					<form:label path="lastName">Last Name:</form:label>
					<form:input type="text" path="lastName"/>
					<form:errors path="lastName" class="error-message"/>
				</div>
				<div>
					<form:label path="age">Age:</form:label>
					<form:input type="number" path="age" class="last-input"/>
					<form:errors path="age" class="error-message"/>
				</div>
				<div>
					<input type="submit" value="Add Ninja" class="btn btn-primary"/>
					<a href="/" class="btn btn-light">Back to Dashboard</a>
				</div>
			</form:form>	
			</div>
	</div>
</body>
</html>