package com.jpress;
	import java.sql.Connection;
	import java.sql.SQLException;

	import com.mysql.jdbc.PreparedStatement;

	/**
	 * @author Surendra Shukla
	 *
	 */
	public class AddPage {
		String content;
		public String title;
		String cotegory;
		int lastinsertId;
		String author;

		public void setContent(String content) {
			this.content = content;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public void setCotegory(String cotegory) {
			this.cotegory = cotegory;
		}
		
		public void setAuthor(String author)
		{
			this.author=author;
		}

		public boolean insertData() throws ClassNotFoundException, SQLException {
			boolean status = true;

			Connection cn = DbConnect.jdbcConnect();
			PreparedStatement ps = (PreparedStatement) cn.prepareStatement(
					"insert into jpress_posts(`post_date`,`post_type`,`post_content`,`post_title`,`category`,`post_author`) values(now(),'page',?,?,?,?)");
			ps.setString(1, this.content);
			ps.setString(2, this.title);
			ps.setString(3,this.cotegory);
			ps.setString(4, this.author);
			int i = ps.executeUpdate();
			this.lastinsertId = (int) ps.getLastInsertID();

			if (i == 1) {
				status = true;
			} else {
				status = false;
			}

			return status;

		}

		public int getId() {
			return this.lastinsertId;
		}

	}



