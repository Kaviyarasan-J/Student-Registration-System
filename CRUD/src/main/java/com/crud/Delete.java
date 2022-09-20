package com.crud;

import java.sql.*;

import com.Controller.ConnectionProvider;

public class Delete {
	public static int Remove(int id) throws SQLException, ClassNotFoundException {
     String query="Delete from lists where id= ?";
   	 Connection con=ConnectionProvider.getConnection();
   	 PreparedStatement ps=con.prepareStatement(query);
   	 ps.setInt(1, id);
   	 return ps.executeUpdate();
    }
}
