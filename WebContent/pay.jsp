<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="ms.pay" %>
<%@ page import="java.util.Calendar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>결제 페이지</title>
</head>
<body>

<h1>결제 페이지</h1>
   <div>
      <form action="pay.jsp">
      <h2>결제 유형</h2><br>
      <label>현장 결제</label><input type="radio" name="kind" value="offline">
      <label>온라인 결제</label><input type="radio" name="kind" value="online"><br>
      
      <h2>결제 방법</h2>
      <label>현금 결제</label><input type="radio" name="way" value="cash" id="cash">
      <label>포인트 결제</label><input type="radio" name="way" value="point" id="point"><br>
      
      <h2>결제 일자</h2>
      <input type="date" id="now_date" name="date"><br>
      <script>document.getElementById("now_date").valueAsDate = new Date();</script>
      
      <input type="submit" value="결제하러 가기">
      
      </form>
   </div>

<%
   request.setCharacterEncoding("UTF-8");
   String kind = request.getParameter("kind");
   String way = request.getParameter("way");
   String date = request.getParameter("date");
   
   
   pay Pay = new pay();
   Pay.ticket(kind, way, date);  
    
%>

</body>
</html>