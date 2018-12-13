<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>
<%@ page import="ms.signup" %>

<%
	request.setCharacterEncoding("UTF-8");
	String ID = request.getParameter("ID"); //로그인에서 입력한 아이디
	String PW = request.getParameter("PW"); //로그인에서 입력한 비밀번호
	boolean ischeck = false;

	signup signUp = new signup();
	ischeck = signUp.check(ID, PW); //아이디와 비밀번호를 DB의 값과 비교
	
	if(ischeck == true){
		session.setAttribute("ID",ID);
		session.setAttribute("PW",PW);
		response.setHeader("Refresh", "0; URL=store.jsp");  //store.jsp로 이동 
	}
	else{
		out.println("<script>window.alert('아이디와 비밀번호를 다시 입력해주세요'); location.replace('start.jsp');</script>");
	}
		
%>