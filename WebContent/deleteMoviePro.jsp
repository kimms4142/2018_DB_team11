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
<<<<<<< HEAD
	alert("���ŵǾ����ϴ�..");
=======
	alert("�����Ǿ����ϴ�.");
>>>>>>> 8ca92b37073d853b5ca143166214b776da4fe179
	location.href="admin.jsp";	// ó�� �������� �̵�
</script>