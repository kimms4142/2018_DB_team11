<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.movie" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String director = request.getParameter("director");
	String actor = request.getParameter("actor");
	String type = request.getParameter("type");
	String info = request.getParameter("info");
	movie movie = new movie();
	movie.modify(id, name, director, actor, type, info);
	
%>
<script>
	alert("�����Ǿ����ϴ�.");
	location.href="admin.jsp";	// ó�� �������� �̵�
</script>