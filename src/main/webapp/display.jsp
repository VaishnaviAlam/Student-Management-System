<%@page import="java.util.List"%>
<%@page import="controller.entity.Student"%>

<%
List<Student> studentList=(List<Student>)request.getAttribute("studentList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Students</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.container{
    margin-top:40px;
}

table{
    background:white;
}

h2{
    text-align:center;
    margin-bottom:20px;
}

</style>

</head>

<body>

<div class="container">

<h2>Student Details</h2>

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>
<th>Name</th>
<th>Age</th>
<th>Gender</th>
<th>Email</th>
<th>Phone</th>
<th>Course</th>
<th>Address</th>
<th>Edit</th>
<th>Delete</th>

</tr>

</thead>

<tbody>

<%

if(studentList!=null){

for(Student student:studentList){

%>

<tr>

<td><%=student.getId()%></td>

<td><%=student.getName()%></td>

<td><%=student.getAge()%></td>

<td><%=student.getGender()%></td>

<td><%=student.getEmail()%></td>

<td><%=student.getPhone()%></td>

<td><%=student.getCourse()%></td>

<td><%=student.getAddress()%></td>

<td>

<a href="edit?id=<%=student.getId()%>"
class="btn btn-warning btn-sm">

Edit

</a>

</td>

<td>

<a href="delete?id=<%=student.getId()%>"
class="btn btn-danger btn-sm"
onclick="return confirm('Are you sure?')">

Delete

</a>

</td>

</tr>

<%

}

}

%>

</tbody>

</table>

<a href="dashboard.jsp" class="btn btn-primary">

Back to Dashboard

</a>

</div>

</body>
</html>