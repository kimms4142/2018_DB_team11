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
      <form action="OnlineReserve.jsp">
      <h2>결제 유형</h2>
      <label>온라인 결제</label><input type="radio" name="kind" value="online" required>
      <label>현장 결제</label><input type="radio" name="kind" value="offline" required>
      <h2>결제 방법</h2>
      <label>현금 결제</label><input type="radio" name="way" value="cash" id="cash" required>
      <label>포인트 결제</label><input type="radio" name="way" value="point" id="point" required><br>
      
      <h2>결제 일자</h2>
      <input type="date" id="now_date" name="date"><br><br>
      <script>document.getElementById("now_date").valueAsDate = new Date();</script>
      
      <input type="submit" value="결제하러 가기">
      
      </form>
      
      </form>
        
   </div>
   

<%

    
%>

</body>
</html>