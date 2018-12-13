<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="ms.point" %>

<% request.setCharacterEncoding("euc-kr"); %>    

<%
	String id = request.getParameter("id");
	point point = new point();
	point.pointInfo(id);
	
%>