<%@ page language="java" pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" contentType="text/html;charset=euc-kr"%>
<%

	String ID = (String) session.getAttribute("ID");
	String POINT = request.getParameter("plusPoint");

	int poi = Integer.parseInt(POINT);
	
	if(poi >= 100000)
	{	
		out.println("<script>window.alert('10만 포인트 이상은 요청할 수 없습니다.'); location.replace('store.jsp');</script>");
	}	
	
	try {
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:DBSERVER";
		String DB_USER = "KIM";
		String DB_PASSWORD = "DBSERVER";
		
	 	Class.forName("oracle.jdbc.driver.OracleDriver");
	 	

		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		
		String query = "select * from point_admin";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		
		int num = 0;
		
		while(rs.next())
		{
			if(Integer.parseInt(rs.getString(1)) >= num)
				num = Integer.parseInt(rs.getString(1));
			
		}
		num++;
		int point = Integer.parseInt(POINT);
		
		//out.println("new" + ID + "//" + point  + "//" + num);
		query = "insert into point_admin values("+num+",'"+ID+"',"+point+",'before')";
		
		rs = stmt.executeQuery(query);
		
		conn.close();

		//out.println("oracle jdbc test: connect ok!!");
	} catch (Exception e) {
		out.println(e.getMessage());
	}
%>

<html>
<head>
	<meta charset="UTF-8"/>
	<title> </title>
	<link type="text/css" rel="stylesheet" href="login.css"/>
</head>
<body>
	<div>
			<h2>포인트 충전 요청되었습니다.</h2>
			<br>
			<p> 입금하실 계좌 : 470101-00-00000</p>
			<p> 예금자명 : 홍길동 </p>
			<p> 금액 : <%=POINT %> </p>
			<br>
			<p> 입금이 확인되면 포인트가 충전됩니다. </p>
			
			<button value="back"  onclick="location.href='store.jsp'" >뒤로가기</button>
	</div>
</body>
</html>
