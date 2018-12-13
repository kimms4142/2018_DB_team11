<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영화 추가</title>
</head>
<body>
	<form method="post" action="addMovieForm.jsp">
		<input type="submit" value="영화추가">
	</form><br/>
	<form method="post" action="modifyMovieForm.jsp">
		<input type="submit" value="영화수정">
	</form><br/>
	<form method="post" action="deleteMovieForm.jsp">
		<input type="submit" value="영화삭제">
	</form><br/>
</body>
</html>