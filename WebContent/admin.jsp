<%@ page language="java"  pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" contentType="text/html;charset=euc-kr"%>
<%
	
	try {
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:DBSERVER";
		String DB_USER = "KIM";
		String DB_PASSWORD = "DBSERVER";
		
	 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	

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
		
		out.println("<h2>������ �����Դϴ�</h2>");
		rs.close();
		
		rs = stmt.executeQuery(query);
		while(rs.next())
		{
			out.println("<div>������ȣ : "+rs.getString(1)+"  ,  ID : "+rs.getString(2)+" ,  ����Ʈ : "+rs.getString(3)+" <button id='list' value='"+rs.getString(1)+"' onclick=\"success("+rs.getString(1)+",'"+rs.getString(3)+"')\">����</button></div>");
		}
		
		
	}catch (Exception e) {
		out.println(e.getMessage());
	}

%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>����Ʈ ������</title>
<script type="text/javascript">
	function success(value, value2) {
		location.replace("success.jsp?value="+value+"&avalue="+value2);
	}
</script>
</head>
<body>
<br>
<form action="logout.jsp" method="post">
              <button>�α׾ƿ�</button>
</form>
</body>
</html>