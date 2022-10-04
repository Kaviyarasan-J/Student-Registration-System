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
<title>Insert title here</title>
</head>
<body>
    <%int listid=Integer.parseInt(request.getParameter("listid"));
     Delete.Remove(listid); 
     List<Details> D=new ArrayList<>();
     D=Read.getData();
     session.setAttribute("Data",D);
     response.sendRedirect("viewAll.jsp"); %>
</body>
</html>