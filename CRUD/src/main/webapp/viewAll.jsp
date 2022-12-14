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
<style>
body {
  background-image: url('https://shorturl.at/cnOP7');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
</head>
<body>
    <%if(session.getAttribute("type").toString().equals("admin"))
    {%>
    	<div style="margin-left:70%;margin-top:3%">
        <a href="Admin.jsp"><button class="btn btn-primary">Go Home</button></a>
        <button onclick="window.print()">Print</button>
        </div>
    <%
    }
    %>
     <%if(session.getAttribute("type").toString().equals("user"))
    {%>
    	<div style="margin-left:70%;margin-top:3%">
        <a href="User.jsp"><button class="btn btn-primary">Go Home</button></a>
        <button onclick="window.print()">Print</button>
        </div>
    <%
    }
    %>
	<div class="col-sm-8" style="margin-top:30px;margin-left:250px">
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
						<th>View</th>
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
					  <td><a href="Edit.jsp?listid=<%=info.getListid()%>"><button class="btn btn-success">Edit</button></a></td>
					  <td><a href="Delete.jsp?listid=<%=info.getListid()%>"><button onclick="alert('Deleted Successfully')" class="btn btn-danger">Delete</button></a> </td>
					  <td><a href="View.jsp?course=<%=info.getCourse()%>"><button class="btn btn-primary">View</button></a></td>
					</tr>
					  <%} %>	  
			</table>
		</div>
	</div>
</body>
</html>