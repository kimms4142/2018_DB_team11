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
	alert("�ԷµǾ����ϴ�..");
=======
	alert("�����Ǿ����ϴ�.");
>>>>>>> 8ca92b37073d853b5ca143166214b776da4fe179
	location.href="admin.jsp";	// ó�� �������� �̵�
</script>