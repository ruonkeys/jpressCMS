package com.jpress;
import java.sql.*;
public class TotalEntries {
	Connection cn;
	Statement st;
	ResultSet rs;
	int r=0;
	
	public TotalEntries(int a)
	{
		try {
			cn=DbConnect.jdbcConnect();
			st=cn.createStatement();
			rs=st.executeQuery("select * from `jpress_posts` where category='"+a+"'");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public int netEntries() throws SQLException
	{
		while(rs.next())
		{
			r++;
		}
		return r;
	}
}
