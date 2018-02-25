package com.jpress;

import java.sql.*;

public class viewAllPost {
	
	Connection cn;
	Statement st;
	ResultSet rs;
	String content,title;

	public viewAllPost(int lim,String post_type){
		
		try {
			cn =DbConnect.jdbcConnect();
			st=cn.createStatement();
			rs=st.executeQuery("select * from jpress_posts where `post_type`='"+post_type+"' limit "+lim+",10");
		
		}
		
		catch (ClassNotFoundException e) {
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
	 String a= rs.getString("post_content");
	 if(a.length()>60)
	 {
		 String r=a.substring(0,60);
		 int d=r.lastIndexOf(" ");
		 String ra=r.substring(0, d);
		 return ra;
	 }
	 else
	 {
		 return a;
	 }
	//return  rs.getString("post_content");
}
public String the_author() throws SQLException
{
	return rs.getString("post_author");
}
}
	
