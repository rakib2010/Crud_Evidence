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

	<div class="container col-md-5">
	<h1>Create New Employee</h1>
		<form action="/save" method="post">
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Employee ID</label> 
					<input type="number" class="form-control"
					id="id" placeholder="Type your ID" name="id">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Salary</label> 
					<input type="number" class="form-control"
					id="salary" placeholder="Type your Salary" name="salary">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Designation</label> 
					<input type="text" class="form-control"
					id="designation" placeholder="Type your designation" name="designation">
			</div>
			<div class="mb-3">
				<label for="exampleFormControlInput1" class="form-label">Joined Date</label> 
					<input type="date" class="form-control"
					id="date"  name="date">
			</div>
			
			<div>
			<button type="submit" class="btn btn-success" >Save</button>
			
			</div>
			
			<a href="/show">Show Employee List</a>
			



		</form>

	</div>

</body>
</html>