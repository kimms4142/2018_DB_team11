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
	  String t_name =request.getParameter("sel");
	  Connection conn= null;
	  Statement stmt = null;
	  ResultSet rs   = null;
	  try {
	      conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
	      stmt = conn.createStatement();

	      String query = "SELECT c_name, time, seatnum FROM cinema where t_name = '" + request.getParameter("sel")+"'";
	      rs = stmt.executeQuery(query);
	 %>


	</DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8"/>
		<title>영화 예매 시스템</title>
		<link type="text/css" rel="stylesheet" href="store.css">
	</head>
	<body bgcolor="#5D5D5D">
		<h2 style="color:white">영화 예매 시스템</h2>
		<div id="content">
			<div id="movie">
			<font color="white">

			
					<div class="movie_room">
					<form action="selectDate.jsp" method="post">
						<table border="1" cellspacing="0">
						<tr>
						<td>날짜 선택</td>
						<td>상영관 이름</td>
						<td>상영 시간</td>
						<td>좌석+<%= t_name %></td>
						
						<th></th>
						</tr>
						<%
						    while(rs.next()) { //rs 를 통해 테이블 객체들의 필드값을 넘겨볼 수 있다.
						%><tr>
						<td><input type="date"></td>
						<td><%=rs.getString(1)%></td>
						<td><%=rs.getString(2)%></td>
						<td><%=rs.getString("seatnum")%></td>
						<td><a href="selectDate.jsp">선택</a>
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

					</div>
		
			<div id="rightContent">
				<div id="aboutUser">
					<p>정보</p>
					<p>아이디: <%=ID%></p>
					<p>포인트: <%=POINT%></p>
					<form id="useList" action="useHistory.jsp" method="post">
						<button>이용내역 확인</button>
					</form>
					<form action="modify.jsp" method="post">
						<button>개인정보 수정</button>
					</form>
					<form action="remove.jsp" method="post">
						<button>회원 탈퇴</button>
					</form>
					<form action="logout.jsp" method="post">
						<button>로그아웃</button>
					</form>
				</div>
				<br><br><br><br><br>
				<div id="addPoint">
					<p>포인트 추가</p>
					<form action="pointAdmin.jsp" method="post">
						<input type="number" name="plusPoint"></input>
						<input type="submit" value="포인트 충전요청"></input>
					</form>
				</div>
			</div>
		</div>
		
		<footer>
		
		</footer>
	</body>
	</html>
