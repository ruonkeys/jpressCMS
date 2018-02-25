package com.jpress;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SiteOption {
	
	public String bloginfo(String blogstring) throws ClassNotFoundException, SQLException
	{
	Connection cn = DbConnect.jdbcConnect();
	PreparedStatement ps = cn.prepareStatement("select option_value from jpress_options where option_name=?");
	ps.setString(1, blogstring);
	ResultSet rs = ps.executeQuery();
	rs.next();
	return rs.getString(1);
	}

}
