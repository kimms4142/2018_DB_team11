<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
			상영관 이름 : <input type="text" name="c_name"><br/>
			상영시간 : <input type="text" name="time"><br/>
			좌석수 : <input type="text" name="seatnum"><br/>
			<input type="submit" value="추가">
		</form>
	</div>
</body>
</html>