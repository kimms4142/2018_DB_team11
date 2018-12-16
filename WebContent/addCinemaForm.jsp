<%@ page  contentType="text/html;charset=UTF-8" 
	        import="java.sql.DriverManager,
	                   java.sql.Connection,
	                   java.sql.Statement,
	                   java.sql.ResultSet,
	                   java.sql.SQLException" %>
	<%
	/* session에 저장되어있는 ID와 POINT 값을 읽어서 변수에 저장 - 아래 html 코드에서 사용 */
	  String ID = (String) session.getAttribute("ID");
	  String POINT = (String) session.getAttribute("POINT");
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

	      String query = "SELECT t_name FROM theater";
	      rs = stmt.executeQuery(query);
	 %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>상영관 추가</title>
<link type="text/css" rel="stylesheet" href="admin.css"/>
</head>
<body>
	<div bgcolor="#a6a6a6" id="form">
		<a href="admin.jsp"><img src="home.png" alt="home"/></a>
		<h2>Cinema 테이블에 상영관 추가</h2>
		
		<form method="post" action="addCinemaPro.jsp">
			영화관 이름: <select name="t_name">
			<% while(rs.next()) 
			{%>
			<option>
			<%=rs.getString(1) %>
			</option>
			<% } %>
			</select>
			<%
			  rs.close();        // ResultSet exit
			  stmt.close();     // Statement exit
			  conn.close();    // Connection exit
			}
			catch (SQLException e) {
				 out.println("err:"+e.toString());
			} 
			%><br/>
			상영관 이름 : <input type="text" name="c_name"><br/>
			상영시간 : <input type="text" name="time"><br/>
			좌석수 : <input type="text" name="seatnum"><br/>
			<input type="submit" value="추가">
		</form>
	</div>
</body>
</html>