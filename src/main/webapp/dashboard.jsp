<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System - Dashboard</title>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Bootstrap Icons -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
    background:#f4f6f9;
}

.navbar{
    background:#0d6efd;
}

.navbar-brand{
    color:white !important;
    font-size:28px;
    font-weight:bold;
}

.card{
    border:none;
    border-radius:15px;
    box-shadow:0px 3px 10px rgba(0,0,0,0.2);
    transition:0.3s;
}

.card:hover{
    transform:translateY(-8px);
}

.card-title{
    font-size:22px;
    font-weight:bold;
    margin-top:15px;
}

.icon{
    font-size:60px;
}

.btn{
    width:100%;
}

</style>

</head>

<body>

<!-- Navbar -->

<nav class="navbar navbar-expand-lg">
<div class="container">
<a class="navbar-brand" href="#">
Student Management System
</a>
</div>
</nav>

<!-- Dashboard -->

<div class="container mt-5">

<div class="row g-4">

<!-- Add Student -->

<div class="col-md-3">

<div class="card text-center p-4">

<i class="bi bi-person-plus-fill icon text-primary"></i>

<h4 class="card-title">Add Student</h4>

<a href="register.jsp" class="btn btn-primary">
Add
</a>

</div>

</div>

<!-- View Students -->

<div class="col-md-3">

<div class="card text-center p-4">

<i class="bi bi-people-fill icon text-success"></i>

<h4 class="card-title">View Students</h4>

<a href="display" class="btn btn-success">
View
</a>

</div>

</div>

<!-- Search Student -->

<div class="col-md-3">

<div class="card text-center p-4">

<i class="bi bi-search icon text-warning"></i>

<h4 class="card-title">Search Student</h4>

<a href="search.jsp" class="btn btn-warning">
Search
</a>

</div>

</div>

<!-- Logout -->

<div class="col-md-3">

<div class="card text-center p-4">

<i class="bi bi-box-arrow-right icon text-danger"></i>

<h4 class="card-title">Logout</h4>

<a href="logout" class="btn btn-danger">
Logout
</a>

</div>

</div>

</div>

</div>

</body>
</html>