package ms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class theater {
	
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
	public boolean register(String name, String address, String tel, String room, String seatnum) {
		 connectDB();
	       String  sql = "INSERT INTO theater VALUES (?, ?, ?, ?, ?)";
	       
	       try {
	          pstmt = conn.prepareStatement(sql);
	          pstmt.setString(1, name);
	          pstmt.setString(2, address);
	          pstmt.setString(3, tel);
	          pstmt.setString(4, room);
	          pstmt.setString(5, seatnum);    
	          pstmt.executeUpdate();
	       } catch (SQLException e) {
	          e.printStackTrace();
	          return false;
	       }
	       
	       disConnectDB();
	       return true;
	}

	
	public boolean modify(String name, String address, String tel, String room, String seatnum) {
		 connectDB();
	       String  sql = "UPDATE theater SET address = ?, tel = ?, room = ?, seatnum = ? WHERE name = ?";
	       
	       try {
	          pstmt = conn.prepareStatement(sql);
	          pstmt.setString(1, address);
	          pstmt.setString(2, tel);
	          pstmt.setString(3, room);
	          pstmt.setString(4, seatnum);
	          pstmt.setString(5, name);    
	          pstmt.executeUpdate();
	       } catch (SQLException e) {
	          e.printStackTrace();
	          return false;
	       }
	       
	       disConnectDB();
	       return true;
	}
	
	public boolean delete(String name) {
		connectDB();
		String sql = "delete from theater where name = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, name);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	
		disConnectDB();
		return true;
	}
}

