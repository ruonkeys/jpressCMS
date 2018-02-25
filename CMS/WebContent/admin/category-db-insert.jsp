<%@page import="com.jpress.DbConnect"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.*" %>
<%@ page import="com.mysql.jdbc.PreparedStatement" %>

<%!String a;
int r;%>
<%a=request.getParameter("ar");%>
<%
try
{   
	r=0;
	    
		Connection con=DbConnect.jdbcConnect();
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from `jpress_category`");
		while(rs.next())
		{
			if(a.equalsIgnoreCase(rs.getString("category_name")))
			{
				r=1;
				out.println(1);
				break;
			}
		}
	if(r==0)
	{
	Connection cn = DbConnect.jdbcConnect();
	PreparedStatement ps = (PreparedStatement)cn.prepareStatement("insert into `jpress_category`(category_name) values(?)");
	ps.setString(1, a);
	ps.executeUpdate();
	int k = (int)ps.getLastInsertID();
	out.print(k+","+a);
	}
			
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
