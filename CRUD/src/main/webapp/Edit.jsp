<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ page import="com.Model.Details" %>
  <%@ page import="com.crud.FetchById" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <%Details D=FetchById.getData(Integer.parseInt(request.getParameter("id"))); %>
    <%session.setAttribute("id", Integer.parseInt(request.getParameter("id"))); %>
    <div class="row" style="margin-left:40% ; margin-top:110px" >
      <div class="col-sm-4">
           <form action="Updates" method="post">
               <div align="left">
                <label class="form-label">Name</label>
                <input type="text" class="form-control" name="name" placeholder="Enter Name" value=<%=D.getName() %> required>
                </div>
               <div align="left">
                 <label class="form-label">Age</label>
                <input type="text" class="form-control" name="age" placeholder="Enter Age" value=<%=D.getAge() %>required>
                </div>
               <div align="left">
                 <label class="form-label">Course</label>
                <input type="text" class="form-control" name="course" placeholder="Enter Course" value=<%=D.getCourse() %>required>
                </div>
               <div align="left">
                 <label class="form-label">Fee</label>
                <input type="text" class="form-control" name="fee" placeholder="Enter Fee" value=<%=D.getFee()%>required>
                </div>
                <br>
            
               <div align="right">
                 <input type="submit" value="Update" class="btn btn-primary">
               </div>
           </form>
</body>
</html>