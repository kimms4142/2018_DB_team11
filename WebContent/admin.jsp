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
		<a href="start.jsp"><img src="home.png" alt="home"/></a>
		<form method="post" action="addMovieForm.jsp">
			<input type="submit" value="��ȭ�߰�" class="btn">
		</form>
		
		<form method="post" action="modifyMovieForm.jsp">
			<input type="submit" value="��ȭ����" class="btn">
		</form>
		
		<form method="post" action="deleteMovieForm.jsp">
			<input type="submit" value="��ȭ����" class="btn">
		</form>
		
		<form method="post" action="addTheaterForm.jsp">
			<input type="submit" value="��ȭ���߰�" class="btn">
		</form>
	
		<form method="post" action="modifyTheaterForm.jsp">
			<input type="submit" value="��ȭ������" class="btn">
		</form>
	
		<form method="post" action="deleteTheaterForm.jsp">
			<input type="submit" value="��ȭ������" class="btn">
		</form> 
		
		<form method="post" action="pointInfo.jsp">
			<input type="submit" value="����Ʈ ��ȸ" class="btn">
		</form>
	</div>

	

</body>
</html>
