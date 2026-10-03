<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Student</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body{
    background:#f4f4f4;
}
.container{
    width:500px;
    margin-top:80px;
    background:white;
    padding:30px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
}
</style>

</head>
<body>

<div class="container">

<h2 class="text-center mb-4">Search Student</h2>

<form action="search" method="get">

<div class="mb-3">
<label>Student ID</label>

<input
type="number"
name="id"
class="form-control"
placeholder="Enter Student ID"
required>

</div>

<div class="d-grid">

<button class="btn btn-primary">
Search Student
</button>

</div>

</form>

<br>

<a href="dashboard.jsp" class="btn btn-success">
Back to Dashboard
</a>

</div>

</body>
</html>