package com.jpress;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class LoginValidator {
	String loginid;
	String loginpass;
	/**
	 * @return the loginid
	 */
	public String getLoginid() {
		return loginid;
	}
	/**
	 * @param loginid the loginid to set
	 */
	public void setLoginid(String loginid) {
		this.loginid = loginid;
	}
	/**
	 * @return the loginpass
	 */
	public String getLoginpass() {
		return loginpass;
	}
	/**
	 * @param loginpass the loginpass to set
	 */
	public void setLoginpass(String loginpass) {
		this.loginpass = loginpass;
	}
	
	public boolean isValid() throws ClassNotFoundException, SQLException
	{ 
		DbConnect db = new DbConnect();
			Connection cn = db.jdbcConnect();
			PreparedStatement st =cn.prepareStatement("select * from jpress_users where user_login=? and user_pass=md5(?)");
			st.setString(1,this.loginid);
			st.setString(2, this.loginpass);
			ResultSet rs =st.executeQuery();
			if(rs.next())
			{
				return true;
			}
			else
			{
				return false;
			}
			
	
	}
	
	}

