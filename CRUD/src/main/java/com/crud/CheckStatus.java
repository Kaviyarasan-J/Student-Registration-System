package com.crud;

import java.sql.*;


public class CheckStatus {
	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost:3306/crud";
	private static final String UNAME = "root";
	private static final String PASSWORD = "Kaviyarasan@753";
	private static String insertQuery;
	
	public static void loadDriver() throws ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		
	}

    private static Connection getConnection() throws SQLException {
    	Connection con;
    	
		con=DriverManager.getConnection(DB_URL,UNAME,PASSWORD);
		
    	return con;
    }
    public static boolean getStatus() throws SQLException, ClassNotFoundException {	
		insertQuery = "select * from lists";
		
		loadDriver();
		
		Connection con = getConnection();
	    
		
		Statement st ;
		st = con.createStatement();
		
		
		ResultSet Rs;
		
		Rs = st.executeQuery(insertQuery);
		
		
		return Rs.next();
	}
		
}
