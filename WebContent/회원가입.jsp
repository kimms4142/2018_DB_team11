<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="ms.signup" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String ID = request.getParameter("ID");
	String PW = request.getParameter("PW");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	signup Signup = new signup();
	Signup.register(ID, PW, name, birth, address, tel);
	
	response.setHeader("Refresh", "0; URL=start.jsp");  //start.jsp로 이동 
	
	
%>
