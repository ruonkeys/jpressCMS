package com.jpress;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Loop {
	int post_per_page;
	String post_type;
	Connection cn;
	PreparedStatement st;
	ResultSet rs;
	public Loop()
	{
		post_per_page=5;
		post_type="post";
		try {
			cn =DbConnect.jdbcConnect();
			st = cn.prepareStatement("select * from jpress_posts where post_type=? LIMIT ?");
			st.setString(1, post_type);
			st.setInt(2,post_per_page);
			rs=st.executeQuery();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public Loop(int post_per_page, String post_type){
		this.post_per_page=post_per_page;
		this.post_type=post_type;
		try {
			cn =DbConnect.jdbcConnect();
			st = cn.prepareStatement("select * from jpress_posts where post_type=? LIMIT ?,5");
			st.setString(1, this.post_type);
			st.setInt(2,this.post_per_page);
			rs=st.executeQuery();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

 public boolean havePost() throws SQLException
 {
	 return rs.next();
 }
 public String the_id() throws SQLException
 {
	 return rs.getString("ID");
 }
 public String the_title() throws SQLException
 {
	 return rs.getString("post_title");
 }
 
 public String the_content() throws SQLException
 {
	 return rs.getString("post_content");
 }
 public String the_author() throws SQLException
 {
	 return rs.getString("post_author");
 }
}

	
