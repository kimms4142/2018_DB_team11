package ms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class movie {
	
	String name,director,actor,type,info;

	String jdbcUrl;
	String dbId;
	String dbPass;

	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;

	private void connectDB() {
		this.jdbcUrl = "jdbc:mysql://localhost:3306/moviebooking";
		this.dbId = "kimms4142";
		this.dbPass = "kimms4142";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			this.conn = DriverManager.getConnection(jdbcUrl, dbId, dbPass);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void disConnectDB() {
		if (rs != null)
			try {
				rs.close();
			} catch (Exception e) {
			}
		if (pstmt != null)
			try {
				pstmt.close();
			} catch (SQLException sqle) {
			}
		if (conn != null)
			try {
				conn.close();
			} catch (SQLException sqle) {
			}
	}

	public boolean register(String id, String name, String director, String actor, String type, String info) {
		connectDB();
		String sql = "INSERT INTO movie VALUES (?, ?, ?, ?, ?, ?)";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, director);
			pstmt.setString(4, actor);
			pstmt.setString(5, type);
			pstmt.setString(6, info);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		disConnectDB();
		return true;
	}

	public boolean modify(String id, String name, String director, String actor, String type, String info) {

		connectDB();
		String sql = "UPDATE movie SET name = ?, director = ?, actor = ?, type = ?, info = ? WHERE id = ?";

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.setString(2, director);
			pstmt.setString(3, actor);
			pstmt.setString(4, type);
			pstmt.setString(5, info);
			pstmt.setString(6, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		disConnectDB();
		return true;
	}
	public boolean delete(String id) {
		connectDB();
		String sql = "delete from movie where id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}

		disConnectDB();
		return true;
	}
	
	public movie getmovieInformation(String movie_id) {
		connectDB();
		String sql = "SELECT * FROM movie WHERE movie_id = ?";
		movie movie_Info = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, movie_id);
			rs = pstmt.executeQuery();
			
			if(!rs.next()) {
				return null;
			}
			
			
			movie_Info = new movie();
			movie_Info.setname(rs.getString("name"));
			movie_Info.setdirector(rs.getString("director"));
			movie_Info.setactor(rs.getString("actor"));
			movie_Info.settype(rs.getString("type"));
			movie_Info.setinfo(rs.getString("info"));
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		disConnectDB();
		
		return movie_Info;
	}

	

	

	
	private void setname(String name) {
		this.name = name;
	}
	public String getname() {
		return name;
	}
	private void setdirector(String director) {
		this.director = director;
	}
	public String getdirector() {
		return director;
	}

	private void setactor(String actor) {
		this.actor = actor;
	}
	private String getactor() {
		return actor;
	}
	
	private void settype(String type) {
		this.type = type;
	}
	public String gettype() {
		return type;
	}
	private void setinfo(String info) {
		this.info = info;
	}
	private String getinfo() {
		return info;
	}

}
