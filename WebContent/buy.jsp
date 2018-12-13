<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*, java.util.*, java.text.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	String product = request.getParameter("movie");  //value에 produc1인지 2인지 3인지 4인지가 저장되어서 parameter로 넘어옴
	
	/* 구매하려는 product의 파일 경로 */
	String directory = application.getRealPath("product");
	String filePath = directory + "/" + product + ".txt";
	File file = new File(filePath);
		
	if(file.isFile()) {  //파일이 있다면 
		BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"euc-kr"));
	
		String point = (String) session.getAttribute("POINT");
		int Point = Integer.parseInt(point);
		reader.readLine();
		String name = reader.readLine();
		reader.readLine();
		String price = reader.readLine();
		int Price = Integer.parseInt(price);
		
		out.println(point);
		/* user의 point로 구매할 수 있는 가격인지 비교 */
		if(Point < Price) { //포인트 부족하면
			out.println("<script>alert('포인트가 부족합니다.'); location.href='store.jsp';</script>");
		}
		else { //구매 가능하면
			
			/* 구매버튼이 눌린 product의 재고 감소시키기 */
			String number = reader.readLine();
			String link = reader.readLine();
			int Number = Integer.parseInt(number); 	
			Number--;
			number = Number + "";
			
			BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(filePath), "euc-kr"));
			writer.write(name + "\n" + price + "\n" + number + "\n" + link);
			writer.close();
			
			
			/* 포인트 차감시키기 */
			Point -= Price;
			point = Point + "";
			String ID = (String) session.getAttribute("ID");
			String PW = (String) session.getAttribute("PW");
			directory = application.getRealPath("users");
			String userFilePath = directory + "/" + ID + ".txt";
			session.removeAttribute("POINT");
			session.setAttribute("POINT", point);
			writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(userFilePath), "euc-kr"));
			writer.write(PW + "\n" + point);
			writer.close();
			
			
			/* 이용내역을 텍스트 파일에 내용 저장 */
			String useListFilePath = directory + "/" + ID + "_이용내역.txt";
			reader = new BufferedReader(new InputStreamReader(new FileInputStream(useListFilePath),"euc-kr"));
			
				/* 오늘 날짜 가져오기 */
			java.text.SimpleDateFormat formatter = new java.text.SimpleDateFormat("yyyyMMdd");
			String today = formatter.format(new java.util.Date());  
				
				/* index 값 정하기 위해 */
			int i = 1;
			while(true) {
				if(reader.readLine() == null) {
					break;
				}
				i++;
			}
			String index = i + "";
			
				/* 파일에 내용 write */
			writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(useListFilePath, true), "euc-kr"));
			writer.write(index + "|" + name + "|"  + price + "|" + today + "|구매\n");
			writer.close();
			
			out.println("<script>alert('구매 완료'); location.href='store.jsp';</script>");
		}
	}	
%>