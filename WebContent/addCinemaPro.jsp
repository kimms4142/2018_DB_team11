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