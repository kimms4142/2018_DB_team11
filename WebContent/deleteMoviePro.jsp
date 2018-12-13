<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.movie" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String id = request.getParameter("id");
	movie movie = new movie();
	movie.delete(id);
	
%>
<script>
	alert("삭제되었습니다.");
	location.href="admin.jsp";	// 처음 페이지로 이동
</script>