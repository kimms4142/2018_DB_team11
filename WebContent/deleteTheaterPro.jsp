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
	alert("삭제되었습니다.");
	location.href="admin.jsp";	// 처음 페이지로 이동
</script>