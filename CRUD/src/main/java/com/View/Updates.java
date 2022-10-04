package com.View;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.Model.Details;
import com.crud.Read;
import com.crud.Update;

public class Updates extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String Uname=request.getParameter("name");
		int Age=Integer.parseInt(request.getParameter("age"));
		String Course=request.getParameter("course");
		int Fee=Integer.parseInt(request.getParameter("fee"));
		int id=(int)session.getAttribute("id");
		int listid=(int)session.getAttribute("listid");
		String type=session.getAttribute("type").toString();
		Details details=new Details(id,Uname,Age,Course,Fee,listid);

		try {
			Update.update(details);
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		
		List<Details> D=new ArrayList<>();
		if(type.equals("admin")) {
		try {
			D=Read.getData();
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		}
		else {
			try {
				D=Read.getData(id);
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}
		}
		session.setAttribute("Data", D);
		response.sendRedirect("viewAll.jsp");
	}

}
