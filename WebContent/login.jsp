<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	String ID = request.getParameter("ID");
	String PW = request.getParameter("PW");
	
	String directory = application.getRealPath("users");
	String filePath = directory + "/" + ID + ".txt";  //login한 user의 file 경로
	File user = new File(filePath);
	
	if( user.isFile() )  //파일이 있다면
	{
		FileReader fileReader = new FileReader(filePath);
		BufferedReader reader = new BufferedReader(fileReader);
		
		String checkPW = reader.readLine();	//file의 첫 번째 줄에 있는 비밀번호
		String POINT = reader.readLine();	//file의 두 번째 줄에 있는 point
			
		if(checkPW.equals(PW))
		{	
			if(ID.equals("admin"))
			{
				out.println("<script>window.alert('관리자 계정으로 로그인합니다.'); location.replace('admin.jsp');</script>");
				response.setHeader("Refresh", "0; URL=admin.jsp");
				return;
			}
			session.setAttribute("ID",ID);
			session.setAttribute("PW",PW);
			session.setAttribute("POINT",POINT);
			response.setHeader("Refresh", "0; URL=store.jsp");  //store.jsp로 이동 
		}
		else
		{	
			out.println("<script>window.alert('비밀번호를 다시 입력해주세요.'); location.replace('start.jsp');</script>");
		}	
	}
	else
	{  
		out.println("<script>window.alert('존재하지 않는 아이디'); history.back();</script>");
	}
%>