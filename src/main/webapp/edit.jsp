<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="controller.entity.Student"%>

<%
Student s = (Student) request.getAttribute("student");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Student</title>

<style>

body{
    font-family:Arial;
    background:#f2f2f2;
}

.container{
    width:420px;
    margin:30px auto;
    background:white;
    padding:20px;
    border-radius:8px;
    box-shadow:0 0 10px gray;
}

h2{
    text-align:center;
}

input,select,textarea{

    width:100%;
    padding:10px;
    margin:8px 0;
    box-sizing:border-box;
}

button{

    width:100%;
    padding:12px;
    background:green;
    color:white;
    border:none;
    cursor:pointer;
    font-size:16px;
}

button:hover{

    background:darkgreen;
}

</style>

</head>

<body>

<div class="container">

<h2>Update Student</h2>

<form action="update" method="post">

<input type="number"
name="id"
value="<%=s.getId()%>"
readonly>

<input type="text"
name="name"
value="<%=s.getName()%>"
required>

<input type="number"
name="age"
value="<%=s.getAge()%>"
required>

<select name="gender">

<option value="Male"
<%= s.getGender().equals("Male")?"selected":"" %>>
Male
</option>

<option value="Female"
<%= s.getGender().equals("Female")?"selected":"" %>>
Female
</option>

</select>

<input type="email"
name="email"
value="<%=s.getEmail()%>"
required>

<input type="text"
name="phone"
value="<%=s.getPhone()%>"
required>

<input type="text"
name="course"
value="<%=s.getCourse()%>"
required>

<textarea
name="address"><%=s.getAddress()%></textarea>

<button type="submit">
Update Student
</button>

</form>

</div>

</body>
</html>