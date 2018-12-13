<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.cinema" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String c_name = request.getParameter("c_name");
	String time = request.getParameter("time");
	String seatnum = request.getParameter("seatnum");
	
	cinema cinema = new cinema();
	cinema.register(c_name, time, seatnum);
	
%>
<script>
	alert("추가되었습니다.");
	location.href="admin.jsp";	// 처음 페이지로 이동
</script>