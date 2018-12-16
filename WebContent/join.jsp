<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 가입</title>
	<link type="text/css" rel="stylesheet" href="회원가입.css"/>
</head>
<body>
	<div id="form">
		<a href="start.jsp"><img src="home.png" alt="home"/></a><br><br>
		
		<form action="회원가입.jsp" method="post">
			<label>I D : </label><input type="text" size="20" name="ID" required><br>
			<label>P W : </label><input type="password" size="20" name="PW" required><br>
			<label>이 름 : </label><input type="text" size="20"	 name="name" required><br>
			<label>생년월일 : </label><input type="date" size="20"  name="birth" required><br>
			<label>주 소 : </label><input type="text" size="20"	 name="address" required><br>
			<label>전화번호 : </label><input type="text" size="20"  name="tel" required><br>
			
			<input id="btn" type="submit" value="가입">
		</form>
		
	</div>
</body>
</html>