<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
img{
width: 100px;
height: 100px;
float: right;
}
#Form{
margin: auto;
border: 2px dotted #66c2ff;
padding: 3% 2% 2% 2%;
width: 350px;
height: 400px;
text-align: center;
margin-top: 10%;
}
form{
margin-top: 30%;
border : 1px solid black;
}
input{
float: right;
}
label{
float: left;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>ȸ�� ���� ����</title>
</head>
<body>
	
	
	<div id="Form">
		
		<a href="store.jsp"><img src="home.png" alt="home"/></a>
		<h1>ȸ�� ���� ����</h1>
		<form action="modifymember.jsp" method="post">
			<label>P W :</label> <input type="password" name="PW" required><br>
			<label>�� �� :</label> <input type="text" 	 name="name" required><br>
			<label>������� :</label> <input type="date"   name="birth" required><br>
			<label>�� �� :</label> <input type="text" 	 name="address" required><br>
			<label>��ȭ��ȣ :</label> <input type="text"   name="tel" required>
			<br><br><br>
			
			<input id="transfer" type="submit" value="����"><br>
		</form>
		
	</div>

</body>
</html>