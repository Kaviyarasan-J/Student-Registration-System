package com.crud.courses;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.Controller.ConnectionProvider;
import com.Model.Course;

public class Courses {
      public static void addCourse(Course c) throws ClassNotFoundException, SQLException {
    	  String insertQuery="insert into courses values(?,?,?);";
    	  Connection con=ConnectionProvider.getConnection();
    	  PreparedStatement ps=con.prepareStatement(insertQuery);
    	  ps.setString(1,c.getCourse());
    	  ps.setInt(2, c.getFee());
    	  ps.setString(3, c.getUrl());
    	  ps.executeUpdate();
    	  ps.close();
    	  con.close();
      }
      
      public static void alterUrl(Course c) throws ClassNotFoundException, SQLException {
    	  String insertQuery="update courses set url=? where course=?;";
    	  Connection con=ConnectionProvider.getConnection();
    	  PreparedStatement ps=con.prepareStatement(insertQuery);
    	  ps.setString(1, c.getUrl());
    	  ps.setString(2,c.getCourse());
    	  ps.executeUpdate();
    	  ps.close();
    	  con.close();
      }
      
      public static String getUrl(String s) throws ClassNotFoundException, SQLException {
    	  String insertQuery="select url from courses where course=?;";
    	  Connection con=ConnectionProvider.getConnection();
    	  PreparedStatement ps=con.prepareStatement(insertQuery);
    	  ps.setString(1, s);
    	  ResultSet rs=ps.executeQuery();
    	  if(rs.next()) {
    		  return rs.getString(1);
    	  }
    	  return null;
    	  
      }
      
      public static List<Course> getData() throws ClassNotFoundException, SQLException {
    	  List<Course>Data=new ArrayList<>();
    	  String insertQuery="select * from courses";
    	  Connection con=ConnectionProvider.getConnection();
    	  Statement st=con.createStatement();
    	  ResultSet rs=st.executeQuery(insertQuery);
    	  while(rs.next()) {
    		  Course c=new Course(rs.getString(1),rs.getInt(2),rs.getString(3));
    		  Data.add(c);
    	  }
    	  st.close();
    	  con.close();
    	  return Data;
      }
}
