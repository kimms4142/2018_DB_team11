<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>영화관  추가</title>
</head>
<body>
	<h2>theater 테이블에 영화관 수정</h2>
	
	<form method="post" action="modifyTheaterPro.jsp">
		영화관 이름 : <input type="text" name="name"><br/>
		영화관 주소 : <input type="text" name="address"><br/>
		전화번호 : <input type="text" name="tel"><br/>
		상영관 : <input type="text" name="room"><br/>
		좌석 수 : <input type="text" name="seatnum"><br/>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>