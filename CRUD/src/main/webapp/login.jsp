<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
function fun(){
	   var d=document.getElementById('pass').value;
	   if(d.length<8){
		   alert('Password must be minimum 8 characters');
		   return;
	   }
	   document.getElementById("submission").style.display='block';
}
body {
	 background-image:url('https://scx1.b-cdn.net/csz/news/800/2017/theoreticala.jpg');
}
</script>
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
   <div  class="col-sm-4">
  <form action="UserValidate" method="post">
        <div align="left">
           <label class="form-label" style="color:white">Name</label>
           <input type="text" class="form-control" name="uname" placeholder="Enter Name" required autofocus>
        </div>
        <br>
        <div align="left">
           <label class="form-label" style="color:white">Password</label>
           <input type="password" class="form-control" id="pass" name="password" placeholder="Enter Password" required>
        </div>
        <br>
        <div align="center">
          <span >
              <input class="form-check-input" type="radio" name="type" onclick="fun()" value="admin">
              <label class="form-check-label" for="flexRadioDefault1" style="color:white">Admin</label>
           </span>
           <span>
              <input class="form-check-input" type="radio" name="type" onclick="fun()" value="user">
              <label class="form-check-label" for="flexRadioDefault1" style="color:white">User</label>
           </span>
        </div>
        <br>
        <div id="submission" style="display:block" align="center">
             <input type="submit" class="btn btn-primary" value="Login" >
        </div>
   </form>
   </div>
   </div>

</body>
</html>