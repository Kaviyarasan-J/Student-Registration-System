package com.View;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.Model.User;
import com.crud.AddUserDB;

public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname=request.getParameter("uname");
		String password=request.getParameter("password");
		String type=request.getParameter("type");
		
		User Data=new User(uname,password,type);
		
		try {
			AddUserDB.add(Data);
			response.sendRedirect("Success.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			response.sendRedirect("Error");
		}
	}

}
