<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/dashStyle.css"/>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Rock+Salt&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Oxygen+Mono&display=swap" rel="stylesheet">
<meta charset="UTF-8">
<title>Dashboard | Home</title>
</head>
<body>
<div class="main-dash-container">
	<div class="dash-header">
		<h1>Dojo Dashboard</h1>
		<div class="dash-nav">
			<a href="/school/new" class="btn btn-light">Add a Dojo</a>
			<a href="/student/new" class="btn btn-info">Add a Ninja</a>
		</div>
	</div>
	
	<div class="dash-table">
		<table class="table table-light table-striped table-hover">
			<thead>
				<tr id="table-headings">
					<th>Dojo Locations</th>
					<th>User Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="school" items="${schools}">
					<tr>
						<td class="school-name"><p><c:out value="${school.schoolName}"/></p></td>
						<td class="school-link"><a href="/school/${school.id}">View the <c:out value="${school.schoolName}"/> Dojo's Class List</a></td>			
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
</body>
</html>