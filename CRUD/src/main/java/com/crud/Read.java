package com.crud;

import java.sql.*;
import java.util.*;

import com.Controller.ConnectionProvider;
import com.Model.Details;

public class Read {
	
	public static List<Details> getData() throws SQLException, ClassNotFoundException {
	 List<Details> Data = new ArrayList<>();
	 String query="select * from lists";
   	 Connection con=ConnectionProvider.getConnection();
   	 Statement stmt=con.createStatement();
   	 ResultSet Rs=stmt.executeQuery(query);
   	 while(Rs.next()) {
   		 Details D=new Details(Rs.getInt(1),Rs.getString(2),Rs.getInt(3),Rs.getString(4),Rs.getInt(5));
   		 Data.add(D);
   	 }
   	 return Data;
	}
	
	public static List<Details> getData(int id) throws SQLException, ClassNotFoundException {
		 List<Details> Data = new ArrayList<>();
		 String query="select * from lists where id="+id+" ;";
	   	 Connection con=ConnectionProvider.getConnection();
	   	 Statement stmt=con.createStatement();
	   	 ResultSet Rs=stmt.executeQuery(query);
	   	 while(Rs.next()) {
	   		 Details D=new Details(Rs.getInt(1),Rs.getString(2),Rs.getInt(3),Rs.getString(4),Rs.getInt(5));
	   		 Data.add(D);
	   	 }
	   	 return Data;
		}

}
