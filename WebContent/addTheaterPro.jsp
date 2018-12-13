<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.theater" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String tel = request.getParameter("director");
	String room = request.getParameter("actor");
	String seat = request.getParameter("type");
	theater theater = new theater();
	theater.register(name, address, tel, room, seat);
	
%>