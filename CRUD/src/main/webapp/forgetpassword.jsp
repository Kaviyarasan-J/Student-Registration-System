<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
</head>
<body>
    <form action="ForgetPassword" method="post">
       Username:<input type="text" value="Nishanth" name="uname" required><br>
       Enter Password:<input  type="password" name="password1" placeholder="Enter Password" required><br>
       Confirm Password:<input type="password" name="password2" placeholder="Confirm Password" required><br>
       <input type="submit" value="Confirm">
    </form>
</body>
</html>