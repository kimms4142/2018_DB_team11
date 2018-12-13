<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영화 추가</title>
<link type="text/css" rel="stylesheet" href="admin.css"/>
</head>
<body>
	<div bgcolor="#a6a6a6" id="form">
		<a href="start.jsp"><img src="home.png" alt="home"/></a>
		<form method="post" action="addMovieForm.jsp">
			<input type="submit" value="영화추가" class="btn">
		</form>
		
		<form method="post" action="modifyMovieForm.jsp">
			<input type="submit" value="영화수정" class="btn">
		</form>
		
		<form method="post" action="deleteMovieForm.jsp">
			<input type="submit" value="영화삭제" class="btn">
		</form>
		
		<form method="post" action="addTheaterForm.jsp">
			<input type="submit" value="영화관추가" class="btn">
		</form>
	
		<form method="post" action="modifyTheaterForm.jsp">
			<input type="submit" value="영화관수정" class="btn">
		</form>
	
		<form method="post" action="deleteTheaterForm.jsp">
			<input type="submit" value="영화관삭제" class="btn">
		</form> 
		
		<form method="post" action="pointInfo.jsp">
			<input type="submit" value="포인트 조회" class="btn">
		</form>
	</div>

	

</body>
</html>
