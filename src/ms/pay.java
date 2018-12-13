package ms;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class pay {
   
   String jdbcUrl; 
   String dbId;
   String dbPass;
   
   Connection conn;
   PreparedStatement pstmt;
   ResultSet rs;
   
   
   private void connectDB() {
      this.jdbcUrl = "jdbc:mysql://localhost:3306/moviebooking?useSSL=false";
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
   
   public void ticket(String kind, String way, String date, String point) {
       connectDB();
          String  sql = "INSERT INTO pay VALUES (?, ?, ?, ?, ?)";
          
          double randomValue = Math.random();
          int intvalue = (int)(randomValue * 20190000) + 20180000;
          try {
             pstmt = conn.prepareStatement(sql);
             pstmt.setInt(1, intvalue);
             pstmt.setString(2, kind);
             pstmt.setString(3, way);
             pstmt.setString(4, date);
             pstmt.setString(5, point);
             
             pstmt.executeUpdate();
          } catch (SQLException e) {
             e.printStackTrace();
             }
          
          disConnectDB();
     
   }
}