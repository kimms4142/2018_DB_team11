<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.theater" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String name = request.getParameter("name");
	theater theater = new theater();
	theater.delete(name);
	
%>
<script>
<<<<<<< HEAD
	alert("입력되었습니다..");
=======
	alert("삭제되었습니다.");
>>>>>>> 8ca92b37073d853b5ca143166214b776da4fe179
	location.href="admin.jsp";	// 처음 페이지로 이동
</script>