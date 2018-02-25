package com.jpress;
import java.sql.*;
public class CategoryTypeFetch {
	Connection cn;
	ResultSet rs;
	Statement st;
	StringBuffer type;
	
	public CategoryTypeFetch()
	{
		try {
			cn=DbConnect.jdbcConnect();
			st=cn.createStatement();
			rs=st.executeQuery("select * from `jpress_category`");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public StringBuffer netCategory()
	{
		type=new StringBuffer("");
		type.append("<ul>");
		try
	{
		while(rs.next())
		{
			type.append("<li><a href=\"http://localhost:9999/CMS/ctgry.jsp?id="+rs.getInt(1)+"\">"+rs.getString(2)+"</a></li>|");
		}
		type.append("</ul>");
	}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return type;
	}

}
