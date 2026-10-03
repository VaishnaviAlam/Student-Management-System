<%@ page import="controller.entity.Student"%>

<%
Student student=(Student)request.getAttribute("student");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Result</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body class="container mt-5">

<%
if(student!=null){
%>

<h2>Student Details</h2>

<table class="table table-bordered">

<tr>
<th>ID</th>
<td><%=student.getId()%></td>
</tr>

<tr>
<th>Name</th>
<td><%=student.getName()%></td>
</tr>

<tr>
<th>Age</th>
<td><%=student.getAge()%></td>
</tr>

<tr>
<th>Gender</th>
<td><%=student.getGender()%></td>
</tr>

<tr>
<th>Email</th>
<td><%=student.getEmail()%></td>
</tr>

<tr>
<th>Phone</th>
<td><%=student.getPhone()%></td>
</tr>

<tr>
<th>Course</th>
<td><%=student.getCourse()%></td>
</tr>

<tr>
<th>Address</th>
<td><%=student.getAddress()%></td>
</tr>

</table>

<%
}else{
%>

<h2 class="text-danger">Student Not Found</h2>

<%
}
%>

<a href="search.jsp" class="btn btn-primary">Search Again</a>

<a href="dashboard.jsp" class="btn btn-success">Dashboard</a>

</body>
</html>