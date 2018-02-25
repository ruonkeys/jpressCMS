package com.jpress;
import java.sql.*;
public class DynamicArea {
	Connection cn;
	ResultSet rs;
	Statement st;
	String[] gt;
	
	public boolean isDynamic(String str)
	{
		boolean s=false;
		try
		{
		cn=DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from `dynamic_area` where area_name='"+str+"'");
		while(rs.next())
		{
			s=true;
		}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return s;
	}
	
	public String getSidebar(String str)
	{
		String widget="";
	
		try
		{
		cn=DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from `dynamic_area` where area_name='"+str+"'");
		while(rs.next())
		{
			gt=rs.getString("widget_id").split(",");
		}
		Widget wg = new Widget();
		for(String sid:gt)
		{
		int id=Integer.parseInt(sid);
		widget=wg.showWidget(id);
		}
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return widget;
	}
}
