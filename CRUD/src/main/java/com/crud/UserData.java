package com.crud;

import com.Model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Controller.ConnectionProvider;

public class UserData {
     public static boolean validate(User Data) throws ClassNotFoundException, SQLException{
    	 String insertQuery="select * from user where username=? and password=?";
    	 Connection con=ConnectionProvider.getConnection();
    	 PreparedStatement ps=con.prepareStatement(insertQuery);
    	 ps.setString(1,Data.getUsername());
    	 ps.setString(2, Data.getPassword());
    	 ResultSet rs=ps.executeQuery();
    	 return rs.next();
     }
}
