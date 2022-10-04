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
   <%int listid=Integer.parseInt(request.getParameter("listid"));
     int id=(int)session.getAttribute("id");
     String type=session.getAttribute("type").toString();
     session.setAttribute("listid", listid);
     Delete.Remove(listid); 
     List<Details> D=new ArrayList<>();
     if(type.equals("admin")){
    	 D=Read.getData();
     }
     else{
        D=Read.getData(id);
     }
     session.setAttribute("Data",D);
     response.sendRedirect("viewAll.jsp"); %>
</body>
</html>