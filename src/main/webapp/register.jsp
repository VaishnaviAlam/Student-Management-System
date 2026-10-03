<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
	background:#f4f6f9;
}

.container{
	margin-top:40px;
}

.card{
	box-shadow:0px 0px 10px gray;
	border-radius:15px;
}

.card-header{
	background:#0d6efd;
	color:white;
	font-size:25px;
	font-weight:bold;
	text-align:center;
}

</style>

<script>

function validateForm(){

	let id=document.getElementById("id").value.trim();
	let name=document.getElementById("name").value.trim();
	let age=document.getElementById("age").value.trim();
	let email=document.getElementById("email").value.trim();
	let phone=document.getElementById("phone").value.trim();
	let course=document.getElementById("course").value.trim();
	let address=document.getElementById("address").value.trim();

	let emailPattern=/^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
	let phonePattern=/^[0-9]{10}$/;

	if(id==""){
		alert("Enter Student ID");
		return false;
	}

	if(name==""){
		alert("Enter Student Name");
		return false;
	}

	if(age<18){
		alert("Age must be greater than or equal to 18");
		return false;
	}

	if(!emailPattern.test(email)){
		alert("Enter Valid Email");
		return false;
	}

	if(!phonePattern.test(phone)){
		alert("Phone Number must contain 10 digits");
		return false;
	}

	if(course==""){
		alert("Enter Course");
		return false;
	}

	if(address==""){
		alert("Enter Address");
		return false;
	}

	return true;
}

</script>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card">

<div class="card-header">

Student Registration

</div>

<div class="card-body">

<form action="register" method="post" onsubmit="return validateForm()">

<div class="row">

<div class="col-md-6 mb-3">

<label>Student ID</label>

<input type="number"
class="form-control"
id="id"
name="id">

</div>

<div class="col-md-6 mb-3">

<label>Student Name</label>

<input type="text"
class="form-control"
id="name"
name="name">

</div>

<div class="col-md-6 mb-3">

<label>Age</label>

<input type="number"
class="form-control"
id="age"
name="age">

</div>

<div class="col-md-6 mb-3">

<label>Gender</label>

<select class="form-select" name="gender">

<option>Male</option>

<option>Female</option>

<option>Other</option>

</select>

</div>

<div class="col-md-6 mb-3">

<label>Email</label>

<input type="email"
class="form-control"
id="email"
name="email">

</div>

<div class="col-md-6 mb-3">

<label>Phone</label>

<input type="text"
class="form-control"
id="phone"
name="phone">

</div>

<div class="col-md-6 mb-3">

<label>Course</label>

<input type="text"
class="form-control"
id="course"
name="course">

</div>

<div class="col-md-6 mb-3">

<label>Address</label>

<input type="text"
class="form-control"
id="address"
name="address">

</div>

<div class="col-md-12">

<button class="btn btn-primary">
Register Student
</button>

<button type="reset" class="btn btn-danger">
Reset
</button>

<a href="dashboard.jsp" class="btn btn-secondary">
Back
</a>

</div>

</div>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>