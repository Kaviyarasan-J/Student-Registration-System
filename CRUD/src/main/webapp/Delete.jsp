<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="com.crud.Delete" %>
 <%@page import="com.Model.Details" %>
 <%@page import="java.util.*" %>
 <%@page import="com.crud.Read" %>
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
   <%List<Details> D=new ArrayList<>();%>
   <%D=Read.getData();%>
   <%session.setAttribute("Data",D); %>
   <%response.sendRedirect("viewAll.jsp"); %>
</body>
</html>