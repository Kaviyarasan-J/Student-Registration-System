package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Controller.ConnectionProvider;
import com.Model.User;

public class AddUserDB {
    public static void add(User Data) throws ClassNotFoundException, SQLException {
    	String insertQuery="insert into user(username,password,type)values (?,?,?);";
    	Connection con=ConnectionProvider.getConnection();
    	PreparedStatement ps=con.prepareStatement(insertQuery);
    	ps.setString(1,Data.getUsername());
    	ps.setString(2,Data.getPassword());
    	ps.setString(3,Data.getType());
    	ps.executeUpdate();
    }
}