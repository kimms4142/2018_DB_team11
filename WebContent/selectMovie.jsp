<%@ page  contentType="text/html;charset=UTF-8" 
        import="java.sql.DriverManager,
                   java.sql.Connection,
                   java.sql.Statement,
                   java.sql.ResultSet,
                   java.sql.SQLException" %>
<%

  response.setContentType("text/html;charset=utf-8;");
  request.setCharacterEncoding("utf-8");     //charset, Encoding 설정

  Class.forName("com.mysql.jdbc.Driver");    // load the drive
  String DB_URL = 
          "jdbc:mysql://localhost:3306/moviebooking";
                

  String DB_USER = "kimms4142";
  String DB_PASSWORD= "kimms4142";

  Connection conn= null;
  Statement stmt = null;
  ResultSet rs   = null;

  try {
      conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
      stmt = conn.createStatement();

      String query = "SELECT id, name, director, actor, type, info FROM movie";
      rs = stmt.executeQuery(query);
 %>

<form action="selectTheater.jsp" method="post">
<table border="1" cellspacing="0">
<tr>
<td>영화 id</td>
<td>영화 이름</td>
<td>감독</td>
<td>출연</td>
<td>등급</td>
<td>주요 정보</td>
<th></th>
</tr>
<%
    while(rs.next()) { //rs 를 통해 테이블 객체들의 필드값을 넘겨볼 수 있다.
%><tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(2)%></td>
<td><%=rs.getString("director")%></td>
<td><%=rs.getString("actor")%></td>
<td><%=rs.getString("type")%></td>
<td><%=rs.getString("info")%></td>
<td><a href="selectTheater.jsp">선택</a>
</td>
</tr>
<%
    } // end while
%></table>
</form>
<%
  rs.close();        // ResultSet exit
  stmt.close();     // Statement exit
  conn.close();    // Connection exit
}
catch (SQLException e) {
      out.println("err:"+e.toString());
} 
%>
