<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script>
   function fun(x){
	   var d=document.getElementById('pass').value;
	   if(d.length<8){
		   alert('Password must be minimum 8 characters');
		   return;
	   }
	   if(x==0){
		   document.getElementById("msg").style.display='block';
		   document.getElementById("submission").style.display='none';
	   }
	   else{
		   document.getElementById("msg").style.display='none';
		   document.getElementById("submission").style.display='block';
	   }
   }
   function check(){
	   var d=document.getElementById('adminaccess').value;
	   if(d!='admin'){
		   alert('Access key is wrong Try again!!');
	   }
	   else{
		   document.getElementById("submission").style.display='block';
	   }
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
<form action="AddUser" method="post">
       <div align="left">
           <label class="form-label" style="color:white">Name</label>
           <input type="text" class="form-control" name="uname" placeholder="Enter Name" required autofocus>
        </div>
        <br>
        <div align="left">
           <label class="form-label" style="color:white">Create Password</label>
           <input type="password" class="form-control" id="pass" name="password" placeholder="Create Password" required>
        </div>
        <br>
    <div align="center">
          <span >
              <input class="form-check-input" type="radio" name="type" onclick="fun(0)" value="admin">
              <label class="form-check-label" for="flexRadioDefault1" style="color:white">Admin</label>
           </span>
           <span>
              <input class="form-check-input" type="radio" name="type" onclick="fun(1)" value="user">
              <label class="form-check-label" for="flexRadioDefault1" style="color:white">User</label>
           </span>
        </div>
        <br>
    <div id="msg" style="display:none" align="left">
      <label class="form-label" style="color:white">Enter Access Key :</label>
       <input type="password" class="form-control"  id="adminaccess" name="adminaccess">
       <input type="button"  class="btn btn-primary" onclick="check()" value="Validate"><br>
       <br>
       <br>
       <br>
    </div>
     <div id="submission" style="display:none" align="center">
             <input type="submit" class="btn btn-success" value="Sign in" >
     </div>
</form>
</div>
</div>
</body>
</html>