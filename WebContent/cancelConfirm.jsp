<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	String index = request.getParameter("indexPara");
	String productName = request.getParameter("namePara");
	String price = request.getParameter("pricePara");
%>

<html>
<head>
</head>
<body>
	<!-- 확인 눌렀을 때 buyCancel페이지로 넘겨줄 parameter들을 위한 form -->
	<form id="submitForm" action="buyCancel.jsp" method="post"> 
		<input type="hidden" name="indexPara" value="<%=index%>"></input>
		<input type="hidden" name="namePara" value="<%=productName%>"></input>
		<input type="hidden" name="pricePara" value="<%=price%>"></input>
	</form>
</body>
</html>

<script>
	if( confirm('구매 취소를 요청하셨습니다.\n맞으면 확인을, 아니면 취소를 눌러주세요.') ) { //확인 눌렀으면
		document.getElementById('submitForm').submit();  //form submit시킴
	}
	else {  //취소 눌렀으면 그냥 다시 useHistory.jsp로.
		location.href="useHistory.jsp";
	}
</script>
	
