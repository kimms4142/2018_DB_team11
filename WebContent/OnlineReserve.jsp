<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import "ms.pay" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<meta charset="UTF-8"> 
<title>온라인 결제</title>  
</head> 
<body> 
 
 <%String ID = (String)session.getAttribute("ID"); %>
 <form action="store.jsp" method="post">
  <table style="border-collapse:collapse;" cellpadding="10px" rules="rows" frame="hsides"> 
	  <tr> 
	  	<th colspan="2">온라인 결제 - 신용카드 결제만 가능합니다.</th> 
	  </tr> 
	  <tr>
	  	<td>회원아이디 : <%=ID %></td>
	  <tr> 
	  	<td>카드종류</td> 
	  	<td> 
		  <select name="cardName"> 
			  <option value="카드를 선택하세요">카드를 선택하세요</option> 
			  <option value="카드를 선택하세요">BC카드</option> 
			  <option value="카드를 선택하세요">국민카드</option> 
			  <option value="카드를 선택하세요">신한카드</option> 
			  <option value="카드를 선택하세요">삼성카드</option> 
			  <option value="카드를 선택하세요">현대카드</option> 
		  </select> 
	  	</td> 
	  </tr> 
	  <tr> 
		  <td>카드번호</td> 
		  <td>
		  <input type="text" name="cardnum1" maxlength="4" size="5" required>-<input type="text" name="cardnum2" maxlength="4" size="5" required>-<input type="password" name="cardnum3" maxlength="4" size="5" required>-<input type="password" name="cardnum4" maxlength="4" size="5" required>
		  </td> 
	  </tr> 
	  <tr> 
		  <td>비밀번호</td> 
		  <td><input type="password" name="cardpw" maxlength="4" size="6" required></td> 
	  </tr> 
	  <tr> 
		  <td>사용포인트</td> 
		  <td><input type="number" min=1000 name="usepoint" required>점</td> 
	  </tr> 
	  <tr>
	  	<td>사용가능 포인트</td>
	  	<td><input type="number" name="availablepoint" disabled>점<input type="button" value="포인트 확인하기"></td>
	  </tr>
	  <tr> 
		  <td>법적생년월일<br>(6자리)</td> 
		  <td><input type="password" name="birth" maxlength="6" size="7" required> - * * * * * * *</td> 
	  </tr> 
	  <tr>
	  		<td>연락처</td>
	  		<td><input type="text" name="tel" maxlength="11" size=15" placeholder=" - 없이 입력" required></td>
	  <tr> 
		  <td colspan="2" style="text-align:center"> 
		  <input type="submit" value="결제하기" class="button">
		  </td> 
	  </tr> 
  	</table> 
  </form>
</body> 
</html> 
