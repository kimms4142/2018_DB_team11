<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.theater" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	String room = request.getParameter("room");
	String seatnum = request.getParameter("seatnum");
	
	theater theater = new theater();
	theater.modify(name, address, tel, room, seatnum);
	
%>