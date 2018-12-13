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
			I D : <input type="text" name="ID" required></input><br/>
			P W : <input type="password" name="PW" required></input><br/>
			<input id="btn" type="submit" value="가입"></input>
		</form>
	</div>
</body>
</html>