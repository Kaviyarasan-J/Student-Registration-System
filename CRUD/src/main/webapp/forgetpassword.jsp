<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
<script>
function fun(){
	   var d=document.getElementById('pass1').value;
	   var e=document.getElementById('pass2').value;
	   if(d.length<8&&e.length<8){
		   alert('Password must be minimum 8 characters');
		   return;
	   }
	   if(!d.equals(e)){
		   alert('Password mismatch');
	   }
	   document.getElementById("submission").style.display='block';
}
</script>
</head>
<body>
    <form action="ForgetPassword" method="post">
       Enter Username:<input type="text" value="Nishanth" name="uname" required><br>
       Enter Password:<input  type="password" name="password1" id="pass1" placeholder="Enter Password" required><br>
       Confirm Password:<input type="password" name="password2" id="pass2" placeholder="Confirm Password" required><br>
       <input type="radio" name="type" onclick="fun()" value="admin">Admin<br>
       <input type="radio" name="type" onclick="fun()" value="user">user<br>
       <div id="submission" style="display:none">
        <input type="submit" value="login" >
    </form>
</body>
</html>