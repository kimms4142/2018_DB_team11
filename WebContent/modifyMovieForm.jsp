<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>��ȭ �߰�</title>
<link type="text/css" rel="stylesheet" href="admin.css"/>
</head>
<body>
	<div bgcolor="#a6a6a6" id="form">
		<a href="admin.jsp"><img src="home.png" alt="home"/></a>
		<h2>movie ���̺� ��ȭ ����</h2>
		<form method="post" action="modifyMoviePro.jsp">
			��ȭ id : <input type="text" name="id"><br/>
			��ȭ name : <input type="text" name="name"><br/>
			��ȭ director : <input type="text" name="director"><br/>
			��ȭ actor : <input type="text" name="actor"><br/>
			��ȭ ��� : <input type="text" name="type"><br/>
			��ȭ ���� : <input type="text" name="info"><br/>
			<input type="submit" value="����">
		</form>
	</div>
</body>
</html>