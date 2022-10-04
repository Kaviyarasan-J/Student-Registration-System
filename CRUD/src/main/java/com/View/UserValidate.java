package com.View;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

import com.Model.User;
import com.crud.UserData;

public class UserValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("uname");
		String password=request.getParameter("password");
		String type=request.getParameter("type");
		User Data=new User(username,password,type);
		try {
			if(UserData.validate(Data,request)) {
			    if(type.equals("admin")) {
			    	response.sendRedirect("Admin.jsp");
			    }
			    else {
			    	response.sendRedirect("User.jsp");
			    }
			    
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher rs=request.getRequestDispatcher("Error.jsp");
		rs.include(request, response);
	}
	

}
