<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<title> </title>
	<link type="text/css" rel="stylesheet" href="login.css"/>
</head>
<body bgcolor="#4c4c4c">
	<div bgcolor="#a6a6a6" id="loginForm" >
		<form action="login.jsp" method="post">
			I D : <input type="text" name="ID"></input><br/>
			P W : <input type="password" name="PW"></input><br/>
			
			<input class="btn" type="submit" value="로그인"></input>
			<input class="btn" type="submit" value="회원가입" formaction="join.jsp"></input>
		<form>
	</div>
</body>
</html>