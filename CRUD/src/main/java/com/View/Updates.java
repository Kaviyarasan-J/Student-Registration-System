package com.View;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;

import com.Model.Details;
import com.crud.Update;

public class Updates extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String Uname=request.getParameter("name");
		int Age=Integer.parseInt(request.getParameter("age"));
		String Course=request.getParameter("course");
		int Fee=Integer.parseInt(request.getParameter("fee"));
		int id=Integer.parseInt(session.getAttribute("id").toString());
		
		Details D=new Details(id,Uname,Age,Course,Fee);

			try {
				Update.update(D);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		response.sendRedirect("index.jsp");
		
	}

}
