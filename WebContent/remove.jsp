<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="ms.signup" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String ID = (String) session.getAttribute("ID");
	
	signup Signup = new signup();
	Signup.remove(ID);
	
	response.setHeader("Refresh", "0; URL=start.jsp");  //start.jsp로 이동 
	
%>