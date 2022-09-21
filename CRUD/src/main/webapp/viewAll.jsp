<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.Model.Details" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Informations</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
</head>
<body>
    <div style="margin-left:70%;margin-top:10%">
        <a href="index.jsp"><button class="btn btn-primary">Home</button></a>
    </div>
	<div class="col-sm-8" style="margin-top:50px;margin-left:200px">
		<div class="panel-body">
			<table id="tbl-student" class="table table-responsive table-bordered"
				cellpadding="0" width="100%">
				<thead>
					<tr>
						<th>Student Name</th>
						<th>Age</th>
						<th>Course</th>
						<th>Fee</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					</thead>
					<%
					    List<Details> D=(List<Details>)session.getAttribute("Data");
				        for(Details info:D){
					%>
					<tr>
					  <td><%=info.getName() %></td>
					  <td><%=info.getAge()%></td>
					  <td><%=info.getCourse()%></td>
					  <td><%=info.getFee()%></td>
					  <td><a href="Edit.jsp?id=<%=info.getId()%>">Edit</a></td>
					  <td><a href="Delete.jsp?id=<%=info.getId()%>">Delete</a> </td>
					</tr>
					  <%} %>	  
			</table>
		</div>
	</div>
</body>
</html>