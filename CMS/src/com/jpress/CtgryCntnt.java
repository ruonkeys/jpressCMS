package com.jpress;
import java.sql.*;

public class CtgryCntnt {
	Connection cn;
	ResultSet rs;
	Statement st;
	int ra;
	String title[],content[],author[];
	public CtgryCntnt(int r)
	{
		TotalEntries t=new TotalEntries(r);
		try {
			ra=t.netEntries();
		} catch (SQLException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		try
		{
		cn=DbConnect.jdbcConnect();
		st=cn.createStatement();
		rs=st.executeQuery("select * from `jpress_posts` where category='"+r+"'");
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	public int fillEntries() throws SQLException
	{
		int i=0;
		title=new String[ra];
		content=new String[ra];
		author=new String[ra];
		while(rs.next())
		{
			title[i]=rs.getString("post_title");
			content[i]=rs.getString("post_content");
			author[i]=rs.getString("post_author");
			i++;
		}
		return ra;
	}
	
	public String the_title(int j)
	{	
		return title[j];
	}
	public String the_content(int k)
	{
		return content[k];
	}
	public String the_author(int l)
	{
		return author[l];
	}
}
