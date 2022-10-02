package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Controller.ConnectionProvider;
import com.Model.User;

public class UpdateUserDB {
     public static void update(User Data) throws ClassNotFoundException, SQLException {
    	 String insertQuery="update user set password=? where username=?;";
     	Connection con=ConnectionProvider.getConnection();
     	PreparedStatement ps=con.prepareStatement(insertQuery);
     	ps.setString(2,Data.getUsername());
     	ps.setString(1, Data.getPassword());
     	ps.executeUpdate();
     }
}
