<%@ page language="java"  pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" contentType="text/html;charset=euc-kr"%>
<%@ page import="ms.signup" %>
<%

	request.setCharacterEncoding("UTF-8");
	try {
		String DB_URL = "jdbc:mysql:http://localhost:8090/2018_DB_team11/moviebooking.jsp";
		String DB_USER = "kimms4142";
		String DB_PASSWORD = "kimms4142";
		
	 	Class.forName("com.mysql.jdbc.Driver");
 	

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
	
		conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		String query = "select * from point_admin where state='before'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
	
		
		int num = 0;
		while(rs.next())
		{
			if(Integer.parseInt(rs.getString(1)) >= num)
				num = Integer.parseInt(rs.getString(1));
		}
		
		out.println("<h2>관리자 계정입니다</h2>");
		rs.close();
		
		rs = stmt.executeQuery(query);
		while(rs.next())
		{
			out.println("<div>결제번호 : "+rs.getString(1)+"  ,  ID : "+rs.getString(2)+" ,  포인트 : "+rs.getString(3)+" <button id='list' value='"+rs.getString(1)+"' onclick=\"success("+rs.getString(1)+",'"+rs.getString(3)+"')\">승인</button></div>");
		}
		
		
	}catch (Exception e) {
		out.println(e.getMessage());
	}

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>포인트 관리자</title>
<script type="text/javascript">
	function success(value, value2) {
		location.replace("success.jsp?value="+value+"&avalue="+value2);
	}
</script>
</head>
<body>
<br>
<form action="logout.jsp" method="post">
              <button>로그아웃</button>
</form>
</body>
</html>