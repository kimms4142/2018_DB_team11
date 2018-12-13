<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="ms.signup" %>

<%
	request.setCharacterEncoding("UTF-8");
	
	String ID = (String) session.getAttribute("ID");
	
	String PW = request.getParameter("PW");
	String name = request.getParameter("name");
	String birth = request.getParameter("birth");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
	
	signup Signup = new signup();
	Signup.modify(PW, name, birth, address, tel, ID);
	
	response.setHeader("Refresh", "0; URL=store.jsp");  //store.jsp로 이동 
	
	
%>
