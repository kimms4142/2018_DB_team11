<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ȭ ����</title>
<link type="text/css" rel="stylesheet" href="admin.css"/>
</head>
<body>
	<div bgcolor="#a6a6a6" id="delete">
		<a href="admin.jsp"><img src="home.png" alt="home"/></a>
		<h2>movie ���̺� ��ȭ ����</h2>
		
		<form method="post" action="deleteMoviePro.jsp">
			���̵� : <input type="text" name="id"><br/>
			<input class ="btn" type="submit" value="�Է¿Ϸ�">
		</form>
	</div>
</body>
</html>