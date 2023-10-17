<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/viewStyle.css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&display=swap" rel="stylesheet">
<title><c:out value="${school.schoolName}"/> | View</title>
</head>
<body>
<div class="view-container">

	<div class="view-header">
		<h1><c:out value="${school.schoolName}" /> Ninjas </h1>
		<a href="/" class="btn btn-light">Back to Dashboard</a>
	</div>
	
	<div class="view-table">
		<table class="table table-light table-striped table-hover">
			<thead>
				<tr id="table-headings">
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="student" items="${school.students}">
					<tr class="student-info">
						<td><c:out value="${student.firstName}"/> </td>
						<td><c:out value="${student.lastName}"/></td>
						<td><c:out value="${student.age}"/></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</div>
</div>
</body>
</html>