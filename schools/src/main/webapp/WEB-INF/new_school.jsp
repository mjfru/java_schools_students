<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>Dojo | Add</title>
</head>
<body>
	<div class="container">
		<div class="header">
			<h1>Add a Dojo</h1>
		</div>
		<div class="form-container">
			<form:form action="/school/new" method="POST" modelAttribute="school">
				<div class="form-input">
					<form:label path="schoolName">Dojo Name: </form:label>
					<form:input type="text" path="schoolName" class="last-input"/>
					<form:errors path="schoolName" class="error-message"/>
				</div>
					<input type="submit" value="Add Dojo" class="btn btn-primary" id="submit-btn"/>	
					<a href="/" class="btn btn-light">Back to Dashboard</a>
			</form:form>
		</div>
	</div>
</body>
</html>