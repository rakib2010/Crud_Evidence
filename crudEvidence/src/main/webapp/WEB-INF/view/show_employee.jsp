<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body>
	
	
	<div class="container">
	
	<h1 class="text-center">Employee List</h1>
	<div class="container d-grid gap-2 d-md-flex justify-content-md-end">
	<a href="/" class="btn btn-success" role="button">Create New</a>
	
	</div>
		<table class="table table-responsive table-striped table-dark mt-3">
			<thead>
				<tr>
					<th scope="col">ID</th>
					<th scope="col">Salary</th>
					<th scope="col">Designation</th>
					<th scope="col">Joining Date</th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="e" items="${data.emp}">
			<tr>
					<td>${e.id}</td>
					<td>${e.salary}</td>
					<td>${e.designation}</td>
					<td>${e.date}</td>
					<td>
					<a class="btn btn-info" href="/edit/${e.id}" >Edit</a> &nbsp &nbsp <a class="btn btn-danger" href="/delete/${e.id}" >Delete</a>
					
					</td>
				
				</tr>
			
			
			</c:forEach>
				
			</tbody>
		</table>

	</div>



</body>
</html>