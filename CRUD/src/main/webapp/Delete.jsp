<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.Delete" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>
   <%int id=Integer.parseInt(request.getParameter("id")); %>
   <%session.setAttribute("id", id); %>
   <%Delete.Remove(id); %>
   <script>alert("Deleted Successfully")</script>
   <%response.sendRedirect("index.jsp");%>
</body>
</html>