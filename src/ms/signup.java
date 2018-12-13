package ms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class signup {
	
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
		if(rs!= null) try {rs.close();}catch (Exception e) {}
		if(pstmt != null) try{pstmt.close();}catch(SQLException sqle){}
		if(conn != null) try{conn.close();}catch(SQLException sqle){}
	}
	
	//ȸ�� ���
	public boolean register(String id, String pw, String name, String birth, String address, String tel) {
	       connectDB();
	       String  sql = "INSERT INTO member VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	       
	       try {
	          pstmt = conn.prepareStatement(sql);
	          pstmt.setString(1, id);
	          pstmt.setString(2, pw);
	          pstmt.setString(3, name);
	          pstmt.setString(4, birth);
	          pstmt.setString(5, address);
	          pstmt.setString(6, tel);
	          pstmt.setString(7, "��"); // ȸ�� ���� ����������
	          pstmt.setString(8, "��ȸ��"); //ȸ�� ���
	          pstmt.setInt(9,0); //����ư
	          pstmt.setInt(10, 0); //���� Ƚ��
	          
	          
	          pstmt.executeUpdate();
	       } catch (SQLException e) {
	          e.printStackTrace();
	          return false;
	       }
	       
	       disConnectDB();
	       return true;
	    }
	 
	//���̵�, ��й�ȣ �˻�
	public boolean check(String id, String pw) {
		connectDB();
		String sql = "SELECT * FROM member WHERE (id = ?) and (pw = ?)";
		rs = null;
	
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				return true;
			}
			return false;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		disConnectDB();	
		return true;
	}
}
