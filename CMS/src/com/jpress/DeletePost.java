package com.jpress;
import java.sql.*;
public class DeletePost {
	Connection cn;
	Statement st;
	ResultSet rs;
	
	public DeletePost(int r)
	{
		try
		{
			cn=DbConnect.jdbcConnect();
			st=cn.createStatement();
			rs=st.executeQuery("delete * from `jpress_posts` where id='"+r+"'");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}

}
