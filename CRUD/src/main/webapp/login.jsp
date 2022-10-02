<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
  <form action="UserValidate" method="post">
    <div>
        Enter Name:<input type="text" name="uname" placeholder="Enter Name" required><br>
        Enter Password:<input type="password" name="password" placeholder="Enter Password" required><br>
        <input type="submit" value="login">
    </div>
   </form>

</body>
</html>