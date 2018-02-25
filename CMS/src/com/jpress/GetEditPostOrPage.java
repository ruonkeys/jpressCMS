package com.jpress;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class GetEditPostOrPage {
	
	String post_type;
	Connection cn;
	PreparedStatement st;
	ResultSet rs;
	int id;

	public GetEditPostOrPage(int id, String post_type){
		this.id=id;
		this.post_type=post_type;
		try {
			cn =DbConnect.jdbcConnect();
			st = cn.prepareStatement("select * from jpress_posts where `ID`=? AND post_type=?");
			st.setInt(1, this.id);
			st.setString(2, this.post_type);
			rs=st.executeQuery();
			rs.next();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public String the_title() throws SQLException
	{
		return rs.getString("post_title");
	}
	
	public String the_content() throws SQLException
	{
		return rs.getString("post_content");
	}
	public int the_categoryId() throws SQLException
	{
		return rs.getInt("category");
	}
	public String the_author() throws SQLException
	{
		return rs.getString("post_author");
	}
	

}
