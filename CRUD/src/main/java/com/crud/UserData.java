package com.crud;

import com.Model.User;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



import com.Controller.ConnectionProvider;

public class UserData {
     public static boolean validate(User Data,HttpServletRequest request) throws ClassNotFoundException, SQLException{
    	 HttpSession session=request.getSession();
    	 String insertQuery="select * from user where username=? and password=? and type= ?";
    	 Connection con=ConnectionProvider.getConnection();
    	 PreparedStatement ps=con.prepareStatement(insertQuery);
    	 ps.setString(1,Data.getUsername());
    	 ps.setString(2, Data.getPassword());
    	 ps.setString(3, Data.getType());
    	 
    	 ResultSet rs=ps.executeQuery();
    	 Boolean status=rs.next();
    	 session.setAttribute("id", rs.getInt(1));
    	 return status;
     }
}
