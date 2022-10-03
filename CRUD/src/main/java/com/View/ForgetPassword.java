package com.View;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.Model.User;
import com.crud.UpdateUserDB;

public class ForgetPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String password=request.getParameter("password1");
		String password2=request.getParameter("password2");
		
		String username=request.getParameter("uname");
		String type="user";
		if(password.equals(password2)){
			User Data=new User(username,password,type);
			try {
				UpdateUserDB.update(Data);
				response.sendRedirect("Success.jsp");
			} catch (ClassNotFoundException | SQLException e) {
				response.sendRedirect("Error.jsp");
			}
		}
		else {
			response.sendRedirect("Error.jsp");
		}
	}

}
