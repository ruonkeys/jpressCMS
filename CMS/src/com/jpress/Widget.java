package com.jpress;
import java.sql.*;
import com.jpress.widget.*;
public class Widget {
	Connection cn;
	ResultSet rs;
	Statement st;
	String name;
	public String showWidget(int id)
	{
		String wid="";
		try
	{
		System.out.println("id is "+id);
		cn=DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from `widget` where widget_id='"+id+"'");
		while(rs.next())
		{
		
	    name=rs.getString("widget_name");
		TextWidget tw =(TextWidget) Class.forName("com.jpress.widget."+name).newInstance(); 
		wid=tw.widget(id);
		}
	}
	
	catch(Exception e)
	{
		e.printStackTrace();
	}
		return wid;
	}
}
