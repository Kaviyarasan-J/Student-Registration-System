package com.crud;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.Controller.ConnectionProvider;
import com.Model.Details;

public class FetchById {
      public static Details getData(int id) throws ClassNotFoundException, SQLException {
    	  String query="select * from lists where id=?";
    	  Connection con=ConnectionProvider.getConnection();
    	  PreparedStatement pst=con.prepareStatement(query);
    	  pst.setInt(1, id);
    	  ResultSet Rs=pst.executeQuery();
    	  Rs.next();
    	  Details D=new Details(Rs.getInt(1),Rs.getString(2),Rs.getInt(3),Rs.getString(4),Rs.getInt(5));
    	  return D;
      }
}
