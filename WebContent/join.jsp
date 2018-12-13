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
		<a href="start.jsp"><img src="home.png" alt="home"/></a>
		
		<form action="회원가입.jsp" method="post">
			I D : <input type="text" 	 name="ID" required><br>
			P W : <input type="password" name="PW" required><br>
			이 름 : <input type="text" 	 name="name" required><br>
			생년월일 : <input type="date"   name="birth" required><br>
			주 소 : <input type="text" 	 name="address" required><br>
			전화번호 : <input type="text"   name="tel" required><br>
			
			<input id="btn" type="submit" value="가입">
		</form>
		
	</div>
</body>
</html>