<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영화 추가</title>
<style>
#form {
	margin: auto;
	border: 2px dotted #66c2ff;
	padding: 3% 2% 2% 2%;
	width: 350px;
	height: 50%;
	text-align: center;
	margin-top: 10%;
}
#delete {
	margin: auto;
	border: 2px dotted #66c2ff;
	padding: 3% 2% 2% 2%;
	width: 350px;
	height: 200px;
	text-align: center;
	margin-top: 10%;
}
img {
	width: 40px;
	margin-bottom: 5px;
}

input {
	margin:10px;
}

.btn {
	width: 100px;
	height: 30px;
	color: white;
	border-radius: 5px;
	background-color: #66c2ff;
	margin-top: 20px;
}
</style>
</head>
<body>
	<div bgcolor="#a6a6a6" id="form">
	<a href="start.jsp"><img src="home.png" alt="home"/></a>
	<ul>
		<li><a><h1>영화 관리</h1></a></li>
		<ul>
			<li><a href="addMovieForm.jsp"><h2>영화 추가</h2></a></li>
			<li><a href="modifyMovieForm.jsp"><h2>영화 수정</h2></a></li>
			<li><a href="deleteMovieForm.jsp"><h2>영화 삭제</h2></a></li>
		</ul>
		
		<li><a><h1>영화관 관리</h1></a></li>
		<ul>
			<li><a href="addTheaterForm.jsp"><h2>영화관 추가</h2></a></li>
			<li><a href="modifyTheaterForm.jsp"><h2>영화관 수정</h2></a></li>
			<li><a href="deleteTheaterForm.jsp"><h2>영화관 삭제</h2></a></li>
			<li><a href="addCinemaForm.jsp"><h2>상영관 추가</h2></a></li>
		</ul>
		
		<li><a href="pointInfo.jsp"><h1>포인트 조회</h1></a></li>
		
	</ul>
		
		
	</div>

	

</body>
</html>
