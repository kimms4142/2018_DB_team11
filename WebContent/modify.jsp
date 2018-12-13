<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원 정보 수정</title>
</head>
<body>

	<h1>회원 정보 수정</h1>
	<div id="Form">
		<a href="store.jsp"><img src="home.png" alt="home"/></a>
		
		<form action="modifymember.jsp" method="post">
			P W : <input type="password" name="PW" required><br>
			이 름 : <input type="text" 	 name="name" required><br>
			생년월일 : <input type="date"   name="birth" required><br>
			주 소 : <input type="text" 	 name="address" required><br>
			전화번호 : <input type="text"   name="tel" required><br>
			
			<input id="transfer" type="submit" value="수정">
		</form>
		
	</div>

</body>
</html>