<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>INDEX</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
body {
  background-image: url('https://mypcwalls.com/wp-content/uploads/2021/08/Abstract-Wallpaper.jpg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size: cover;
}
</style>
</head>
<body>
   <%@ include file ="header.jsp" %>
   <div class="row" style="margin-left:40% ; margin-top:110px" >
      <div class="col-sm-4">
           <form action="Lists" method="post">
               <div align="left">
                <label class="form-label" style="color:white">Name</label>
                <input type="text" class="form-control" name="name" placeholder="Enter Name" required>
                </div>
                <br>
               <div align="left">
                 <label class="form-label"  style="color:white">Age</label>
                <input type="text" class="form-control" name="age" placeholder="Enter Age" required>
                </div>
                <br>
               <div align="left">
                 <label class="form-label"  style="color:white">Course</label>
                <input type="text" class="form-control" name="course" placeholder="Enter Course" required>
                </div>
                <br>
               <div align="left">
                 <label class="form-label"  style="color:white">Fee</label>
                <input type="text" class="form-control" name="fee" placeholder="Enter Fee"required>
                </div>
                <br>
               <div align="right">
                 <input type="submit" value="ADD" class="btn btn-primary">
                 <input type="reset" value="RESET" class="btn btn-warning">
               </div>
           </form>
      </div>
   </div>
</body>
</html>