<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import "ms.pay" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html> 
<head> 
<meta charset="UTF-8"> 
<title>�¶��� ����</title>  
</head> 
<body> 
 
 <%String ID = (String)session.getAttribute("ID"); %>
 <form action="store.jsp" method="post">
  <table style="border-collapse:collapse;" cellpadding="10px" rules="rows" frame="hsides"> 
	  <tr> 
	  	<th colspan="2">�¶��� ���� - �ſ�ī�� ������ �����մϴ�.</th> 
	  </tr> 
	  <tr>
	  	<td>ȸ�����̵� : <%=ID %></td>
	  <tr> 
	  	<td>ī������</td> 
	  	<td> 
		  <select name="cardName"> 
			  <option value="ī�带 �����ϼ���">ī�带 �����ϼ���</option> 
			  <option value="ī�带 �����ϼ���">BCī��</option> 
			  <option value="ī�带 �����ϼ���">����ī��</option> 
			  <option value="ī�带 �����ϼ���">����ī��</option> 
			  <option value="ī�带 �����ϼ���">�Ｚī��</option> 
			  <option value="ī�带 �����ϼ���">����ī��</option> 
		  </select> 
	  	</td> 
	  </tr> 
	  <tr> 
		  <td>ī���ȣ</td> 
		  <td>
		  <input type="text" name="cardnum1" maxlength="4" size="5" required>-<input type="text" name="cardnum2" maxlength="4" size="5" required>-<input type="password" name="cardnum3" maxlength="4" size="5" required>-<input type="password" name="cardnum4" maxlength="4" size="5" required>
		  </td> 
	  </tr> 
	  <tr> 
		  <td>��й�ȣ</td> 
		  <td><input type="password" name="cardpw" maxlength="4" size="6" required></td> 
	  </tr> 
	  <tr> 
		  <td>�������Ʈ</td> 
		  <td><input type="number" min=1000 name="usepoint" required>��</td> 
	  </tr> 
	  <tr>
	  	<td>��밡�� ����Ʈ</td>
	  	<td><input type="number" name="availablepoint" disabled>��<input type="button" value="����Ʈ Ȯ���ϱ�"></td>
	  </tr>
	  <tr> 
		  <td>�����������<br>(6�ڸ�)</td> 
		  <td><input type="password" name="birth" maxlength="6" size="7" required> - * * * * * * *</td> 
	  </tr> 
	  <tr>
	  		<td>����ó</td>
	  		<td><input type="text" name="tel" maxlength="11" size=15" placeholder=" - ���� �Է�" required></td>
	  <tr> 
		  <td colspan="2" style="text-align:center"> 
		  <input type="submit" value="�����ϱ�" class="button">
		  </td> 
	  </tr> 
  	</table> 
  </form>
</body> 
</html> 
