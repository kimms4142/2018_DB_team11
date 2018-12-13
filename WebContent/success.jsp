<%@ page language="java"  pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" contentType="text/html;charset=euc-kr"%>
<%@page import="java.io.*"%>

<%
	String a = request.getParameter("value");
	String b = request.getParameter("avalue");
	out.println(a+"   " +b);
	String id="";
	
	try {
		String DB_URL = "jdbc:oracle:thin:@127.0.0.1:1521:DBSERVER";
		String DB_USER = "KIM";
		String DB_PASSWORD = "DBSERVER";
		
	 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

		String query = "select * from point_admin where pay_number='"+Integer.parseInt(a)+"'";
		stmt = conn.createStatement();
		rs = stmt.executeQuery(query);
		
		rs.next();
		id = rs.getString(2);
		out.print("여기서의 아이디/" + id);
		
		rs.close();

		query = "update point_admin set state = 'after' where pay_number = "+Integer.parseInt(a);
		rs = stmt.executeQuery(query);
		
		rs.close();

		
	}catch (Exception e) {
		out.println(e.getMessage());
	}

	String ID = id;

	String directory = application.getRealPath("users");
	String filePath = directory + "/" + ID + ".txt";  //login한 user의 file 경로
	File user = new File(filePath);
	
	if( user.isFile() )  //파일이 있다면
	{
		FileReader fileReader = new FileReader(filePath);
		BufferedReader reader = new BufferedReader(fileReader);
		
		String checkPW = reader.readLine();	//file의 첫 번째 줄에 있는 비밀번호
		String POINT = reader.readLine();	//file의 두 번째 줄에 있는 point
		int POINT2=0;
		POINT2 = Integer.parseInt(POINT) + Integer.parseInt(b);
		
		POINT = String.valueOf(POINT2);
		
		FileWriter writer = new FileWriter(filePath);
		writer.write(checkPW + "\n" + POINT);
		writer.close();
	}

	out.println("<script>window.alert('수행되었습니다. '); location.replace('admin.jsp');</script>");

%> 
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>