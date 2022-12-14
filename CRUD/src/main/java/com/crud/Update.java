package com.crud;

import java.sql.*;

import com.Controller.ConnectionProvider;
import com.Model.Details;

public class Update {
	 public static int add(Details D) throws SQLException, ClassNotFoundException {
		 String query="insert into lists (id,Name,Age,Course,Fee)values(?,?,?,?,?)";
    	 Connection con=ConnectionProvider.getConnection();
    	 PreparedStatement ps=con.prepareStatement(query);
    	 ps.setInt(1, D.getId());
    	 ps.setString(2, D.getName());
    	 ps.setInt(3,D.getAge());
    	 ps.setString(4,D.getCourse());
    	 ps.setInt(5,D.getFee());
    	 return ps.executeUpdate();
    
     }
	 
	 public static int update(Details D) throws SQLException, ClassNotFoundException {
		 String query="update lists set Name = ?,Age = ? ,Course = ? ,Fee= ? where listid = ? ";
    	 Connection con=ConnectionProvider.getConnection();
    	 PreparedStatement ps=con.prepareStatement(query);
    	 ps.setString(1, D.getName());
    	 ps.setInt(2,D.getAge());
    	 ps.setString(3,D.getCourse());
    	 ps.setInt(4,D.getFee());
    	 ps.setInt(5, D.getListid());
    	 return ps.executeUpdate();
     }
	 
}
