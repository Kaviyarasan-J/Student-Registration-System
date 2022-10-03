package com.View;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import com.Model.User;
import com.crud.UserData;

public class UserValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String username=request.getParameter("uname");
		String password=request.getParameter("password");
		String type=request.getParameter("type");
		User Data=new User(username,password,type);
		try {
			if(UserData.validate(Data,request)) {
			    if(type.equals("admin")) {
			    	session.setAttribute("type","admin");
			    	response.sendRedirect("Admin.jsp");
			    }
			    else {
			    	session.setAttribute("type","user");
			    	response.sendRedirect("User.jsp");
			    }
			    
			}
			else {
				response.sendRedirect("Error.jsp");
			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
