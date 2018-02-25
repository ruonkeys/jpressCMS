package com.jpress;
import java.sql.*;

public class JpressPostsDataFetch {
	Connection cn;
	Statement st;
	ResultSet rs;
	int r;
	
	public JpressPostsDataFetch(int r)
	{
		this.r=r;
		try
		{
		cn= DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from `jpress_posts` where id='"+this.r+"'");
		rs.next();
		}
		catch(Exception e)
		{
			
		}
	}
	public String the_title()
	{
		String status="";
		try {
			status= rs.getString("post_title");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	public String the_content()
	{
		String content = "";
		
		try {
			content=rs.getString("post_content");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return content;
	}
	public String the_author()
	{
		String author="";
		try
		{
			author=rs.getString("post_author");
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return author;
	}
}
