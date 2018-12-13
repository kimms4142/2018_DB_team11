<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
	
<%
		request.setCharacterEncoding("UTF-8");
		
		/* session에 저장되어있는 ID, PW, POINT 값 받아와서 각 변수들에 저장 */
		String ID = (String) session.getAttribute("ID");
		String PW = (String) session.getAttribute("PW");
		String point = (String) session.getAttribute("POINT");
		int Point = Integer.parseInt(point);
		
		/* 구매 취소할 product와 관련 된 정보들 parameter로 받아옴 */
		String index = request.getParameter("indexPara");
		int Index = Integer.parseInt(index);
		String productName = request.getParameter("namePara");
		String price = request.getParameter("pricePara");
		int Price = Integer.parseInt(price);
		
		String directory = "";
		String productNum = "";
		
		BufferedReader reader = null;
		BufferedWriter writer = null;
		
		/* 어떤 product인지 알아내기 */
		directory = application.getRealPath("product");
		for(int i=1; i<5; i++) {
			String iString = i + "";
			String filePath = directory + "/product" + iString + ".txt";
			reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"euc-kr"));
			String readName = reader.readLine();
			/* parameter로 받아온 product 이름과 파일의 product 이름이 같다면 productNum에 어떤 product인지 저장 - 아래에서 productNum을 이용하여 그 product의 파일을 사용함 */
			if(productName.equals(readName)) { 
				productNum = "product" + iString;
				break;
			}
		}
		reader.close();
		
		
		/* 취소한 product 재고 올리기 위한 작업 */
		String productFilePath = directory + "/" + productNum + ".txt";
		reader = new BufferedReader(new InputStreamReader(new FileInputStream(productFilePath),"euc-kr"));
		reader.readLine();  //이름 읽은 거
		reader.readLine();  //가격 읽은 거 
		String number = reader.readLine();  //갯수 읽어서 저장
		int Number = Integer.parseInt(number);
		Number++;
		number = Number + "";
		String link = reader.readLine();  //상품 이미지 파일 URL 읽어서 저장
		reader.close();
		
			/* file에 다시 적어주기 ~ */
		writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(productFilePath), "euc-kr"));
		writer.write(productName + "\n" + price + "\n" + number + "\n" + link);
		writer.close();
		
		
		
		/* 포인트 환불하기 */
		directory = application.getRealPath("users");
		String userFilePath = directory + "/" + ID + ".txt";
		Point += Price;
		point = Point + "";
		
			/* session에 point 값 바뀐 거 다시 저장~ */
		session.removeAttribute("POINT");
		session.setAttribute("POINT", point);

			/* user file에 정보 다시 입력 */
		FileWriter userWriter = new FileWriter(userFilePath);
		userWriter.write(PW + "\n" + point);
		userWriter.close();
		
		
		/* 이용내역 텍스트 파일에서 구매 상태를 '구매'에서 '구매취소'로 바꿔주는 작업 */
		String useListFilePath = directory + "/" + ID + "_이용내역.txt";
		reader = new BufferedReader(new InputStreamReader(new FileInputStream(useListFilePath),"euc-kr"));
		
		String save = "";
		int count = 1;

		while(true) {
			String line = reader.readLine();
			if(line == null) {  //다 읽었으면 break
				break;
			}
			else {
				if(count == Index) {  //구매 취소를 누른 인덱스라면
					save += line;
					save += "취소\n";
				}
				else { //아니면 그냥 그 라인 다 save 변수에 저장
					save += line;
					save += "\n";
				}
				count++;
			}
		}
		reader.close();
		
		writer = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(useListFilePath),"euc-kr"));
		writer.write(save);
		writer.close();

		out.println("<script>location.href='useHistory.jsp';</script>");
%>
	