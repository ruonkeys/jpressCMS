package com.jpress;
import java.sql.*;
public class DbConnect {
	public static final String DRIVER_NAME="com.mysql.jdbc.Driver";
	public static final String URL="jdbc:mysql://localhost:3306/jpress";
	public static final String NAME="root";
	public static final String PASSWORD="";
public static Connection jdbcConnect() throws ClassNotFoundException, SQLException
{

			Class.forName(DbConnect.DRIVER_NAME);
			Connection con=DriverManager.getConnection(DbConnect.URL,DbConnect.NAME,DbConnect.PASSWORD);;  
		
	return con;
}
}
