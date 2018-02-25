package com.jpress.widget;
import java.sql.*;
import java.util.Collection;
import com.jpress.DbConnect;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import org.json.*;
import com.jpress.DbConnect;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;


import org.json.*;
public class TextWidget  {
	Connection cn;
	ResultSet rs;
	Statement st;
	public String widget(int a)
	{
		String ab="";
		JSONParser parser=new JSONParser();
		try
		{
			System.out.println(a);
		cn=DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from `widget` where widget_id='"+a+"'");
		rs.next();
		Object obj=parser.parse(rs.getString("widget_option"));
		JSONArray array= (JSONArray)obj;
		JSONObject js=(JSONObject) array.get(0);
		 ab="<h1 style=\"color:white\">"+js.get("title")+"</h1>"+"<p style=\"color:white\">"+js.get("Description")+"</p>";
	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ab;
	}

}
