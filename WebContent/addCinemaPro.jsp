<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.cinema" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String t_name = request.getParameter("t_name");
	String c_name = request.getParameter("c_name");
	String time = request.getParameter("time");
	String seatnum = request.getParameter("seatnum");
	
	cinema cinema = new cinema();
	cinema.register(t_name, c_name, time, seatnum);
	
%>
<script>
	alert("�߰��Ǿ����ϴ�.");
	location.href="admin.jsp";	// ó�� �������� �̵�
</script>