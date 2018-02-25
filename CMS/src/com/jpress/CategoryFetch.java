package com.jpress;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class CategoryFetch {
	Connection cn;
	ResultSet rs;
	StringBuffer cat;
	int ctgry_id;
	public CategoryFetch()
	{   
		try
	{
		cn=DbConnect.jdbcConnect();
		Statement st=cn.createStatement();
	    rs=st.executeQuery("select * from `jpress_category`");
	    //System.out.println(rs);
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}

}
	public CategoryFetch(int ctgry_id)
	{
		this.ctgry_id=ctgry_id;
		try
		{
			cn=DbConnect.jdbcConnect();
			Statement st=cn.createStatement();
		    rs=st.executeQuery("select * from `jpress_category`");
		    //System.out.println(rs);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public StringBuffer allCategory()
	{
		cat=new StringBuffer("");
		cat.append("<select name='category' id=\"ctgry\">");
		try
		{
			while(rs.next())
			{
				if(rs.getInt(1)!=this.ctgry_id)
				{
				cat.append("<option value=\""+rs.getInt(1)+"\">"+rs.getString("category_name")+"</option>");
			    }
				else
				{
					cat.append("<option value=\""+rs.getInt(1)+"\"selected=\"selected\">"+rs.getString("category_name")+"</option>");	
				}
		}}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		cat.append("</select>");
		return cat;
	}
	
	
}