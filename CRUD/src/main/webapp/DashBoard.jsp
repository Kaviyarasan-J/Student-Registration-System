<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
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
<body >
   <%@include file="header.jsp" %>
   <div class="row" style="margin-left:31% ; margin-top:300px">
   <div class="col-sm-4" >
    <span style="padding:50px">
        <a href="login.jsp"> <button class="btn btn-primary btn-lg">Login</button></a>
    </span>
    </div>
    <div class="col-sm-4">
    <span style="padding:50px">
        <a href="signup.jsp"><button class="btn btn-primary btn-lg">Sign Up</button></a>
     </span>
   </div>
   </div>
   <div style="margin-top:16%">
      <%@include file="Footer.jsp"%>
   </div>
</body>
</html>