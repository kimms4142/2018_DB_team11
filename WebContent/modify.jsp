<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� ���� ����</title>
</head>
<body>

	<h1>ȸ�� ���� ����</h1>
	<div id="Form">
		<a href="store.jsp"><img src="home.png" alt="home"/></a>
		
		<form action="modifymember.jsp" method="post">
			P W : <input type="password" name="PW" required><br>
			�� �� : <input type="text" 	 name="name" required><br>
			������� : <input type="date"   name="birth" required><br>
			�� �� : <input type="text" 	 name="address" required><br>
			��ȭ��ȣ : <input type="text"   name="tel" required><br>
			
			<input id="transfer" type="submit" value="����">
		</form>
		
	</div>

</body>
</html>