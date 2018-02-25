package com.jpress;
import java.sql.*;
public class AllPostsPages {
	Connection cn;
	Statement st;
	ResultSet rs;
	int all;
	public AllPostsPages(String type)
	{
		try
		{
		cn=DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from jpress_posts where `post_type`='"+type+"'");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public int allFields() throws SQLException
	{
		while(rs.next())
		{
			all++;
		}
		return all;
	}

}
