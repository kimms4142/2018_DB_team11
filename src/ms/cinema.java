package ms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class cinema {
	
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
		if(rs!= null) 
			try {
				rs.close();
			}catch (Exception e) {
			}
		if(pstmt != null)
			try{
				pstmt.close();
				}catch(SQLException sqle){
				}
		if(conn != null) 
			try{conn.close();
			}catch(SQLException sqle){
			}
	}
	public boolean register(String t_name, String c_name, String time, String seatnum) {
		 connectDB();
	       String  sql = "INSERT INTO cinema VALUES (?, ?, ?, ?)";
	       
	       try {
	          pstmt = conn.prepareStatement(sql);
	          pstmt.setString(1, t_name);
	          pstmt.setString(2, c_name);
	          pstmt.setString(3, time);
	          pstmt.setString(4, seatnum); 
	          pstmt.executeUpdate();
	       } catch (SQLException e) {
	          e.printStackTrace();
	          return false;
	       }
	       
	       disConnectDB();
	       return true;
	}

}

