<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�󿵰� �߰�</title>
<link type="text/css" rel="stylesheet" href="admin.css"/>
</head>
<body>
	<div bgcolor="#a6a6a6" id="form">
		<a href="admin.jsp"><img src="home.png" alt="home"/></a>
		<h2>Cinema ���̺� �󿵰� �߰�</h2>
		
		<form method="post" action="addCinemaPro.jsp">
			�󿵰� �̸� : <input type="text" name="c_name"><br/>
			�󿵽ð� : <input type="text" name="time"><br/>
			�¼��� : <input type="text" name="seatnum"><br/>
			<input type="submit" value="�߰�">
		</form>
	</div>
</body>
</html>