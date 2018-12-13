<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영화 추가</title>
<link type="text/css" rel="stylesheet" href="admin.css"/>
</head>
<body>
	<div bgcolor="#a6a6a6" id="form">
		<a href="admin.jsp"><img src="home.png" alt="home"/></a>
		<h2>movie 테이블에 영화 수정</h2>
		<form method="post" action="modifyMoviePro.jsp">
			영화 id : <input type="text" name="id"><br/>
			영화 name : <input type="text" name="name"><br/>
			영화 director : <input type="text" name="director"><br/>
			영화 actor : <input type="text" name="actor"><br/>
			영화 등급 : <input type="text" name="type"><br/>
			영화 정보 : <input type="text" name="info"><br/>
			<input type="submit" value="수정">
		</form>
	</div>
</body>
</html>