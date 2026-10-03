<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System | Login</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
	background:#f5f5f5;
}

.login-box{
	width:400px;
	margin:80px auto;
	background:white;
	padding:30px;
	border-radius:10px;
	box-shadow:0 0 10px gray;
}

h2{
	text-align:center;
	margin-bottom:25px;
}
</style>

<script>

function validateLogin(){

	let username=document.getElementById("username").value.trim();
	let password=document.getElementById("password").value.trim();

	if(username==""){
		alert("Please Enter Username");
		document.getElementById("username").focus();
		return false;
	}

	if(password==""){
		alert("Please Enter Password");
		document.getElementById("password").focus();
		return false;
	}

	return true;
}

</script>

</head>

<body>

<div class="login-box">

<h2>Student Management System</h2>

<form action="login" method="post" onsubmit="return validateLogin()">

<div class="mb-3">

<label class="form-label">Username</label>

<input
type="text"
id="username"
name="username"
class="form-control"
placeholder="Enter Username">

</div>

<div class="mb-3">

<label class="form-label">Password</label>

<input
type="password"
id="password"
name="password"
class="form-control"
placeholder="Enter Password">

</div>

<div class="d-grid">

<button class="btn btn-primary">
Login
</button>

</div>

</form>

</div>

</body>
</html>