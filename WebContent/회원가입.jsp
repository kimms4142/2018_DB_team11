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
	
	String POINT = "0";
	
	signup Signup = new signup();
	Signup.register(ID, PW, name, birth, address, tel);
	
	String directory = application.getRealPath("users");  //고객들의 파일들을 저장시킬 디렉토리
	File dir = new File(directory);
	
	if(!dir.exists()) { //users 디렉토리가 없으면 생성시켜줌
		dir.mkdir();
	}
	
	/* user의 PW와 POINT가 저장 될 파일 경로 */
	String userPath = directory + "/" + ID + ".txt";
	File user = new File(userPath);
	
	/* user의 이용내역이 저장 될 파일 경로 만들어줌 */
	String useListFath = directory + "/" + ID + "_이용내역.txt";
	File useList = new File(useListFath);
	useList.createNewFile();
	
	try{
		if(user.isFile()) {  //user의 파일이 있다면 이미 회원가입 했던 user이므로  
			out.println("<script>window.alert('존재하는 아이디'); history.back();</script>");
		}
		else {  //없다면 가입시켜줌 (user 파일에 내용 write)
			FileWriter writer = new FileWriter(userPath);
			writer.write(PW + "\n" + POINT);
			writer.close();
			
			out.println("<script>window.alert('가입 성공');</script>");
			response.setHeader("Refresh", "0; URL=start.jsp");  //start 페이지로 이동
		}
	}
	catch(IOException ioe) { 
	
	}
	finally {
		
	}
%>