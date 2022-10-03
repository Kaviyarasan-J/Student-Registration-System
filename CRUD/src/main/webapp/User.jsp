<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
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
   <div class="row" style="margin-top:5%;margin-left:90%">
   <div class="col-sm-4">
   <form action="DashBoard.jsp">
    <div>
        <button class="btn btn-danger">Logout</button>
    </div>
    </form>
    </div>
    </div>
  <div class="row" style="margin-top:5%;margin-left:40%">
  <div class="col-sm-4">
   <form action="UserDatas" method="post">
     <div align="center">
         <button class="btn btn-primary btn-lg">View All Bookings</button>
     </div>
     <br>
     
   </form>
   <form action="index.jsp">
   <div align="center">
        <button class="btn btn-primary btn-lg">Add Course</button>
     </div>
    </form>
    </div>
   </div> 
</body>
</html>