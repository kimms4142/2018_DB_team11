<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.io.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	/* session에 저장되어있는 ID와 POINT 값을 읽어서 변수에 저장 - 아래 html 코드에서 사용 */
	String ID = (String) session.getAttribute("ID");
	String POINT = (String) session.getAttribute("POINT");
	
	
	/* 각 product들의 정보들이 저장되어 있는 txt파일 경로 */	
	String directory = application.getRealPath("product");
	String filePath1 = directory + "/movie1.txt";
	String filePath2 = directory + "/movie2.txt";
	String filePath3 = directory + "/movie3.txt";
	String filePath4 = directory + "/movie4.txt";

	BufferedReader reader = null;
	
	String price="";
	// 영화 코드 / 영화 명 / 영화 설명 / 가격 / 수량 / 이미지
	
	reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath1),"euc-kr"));
	String code1 = reader.readLine();
	String name1 = reader.readLine();
	String content1 = reader.readLine();
	price = reader.readLine();
	int price1 = Integer.parseInt(price);
	String number = reader.readLine();
	int number1 = Integer.parseInt(number);
	String img1 = reader.readLine();
	
	price="";
	reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath2),"euc-kr"));
	String code2 = reader.readLine();
	String name2 = reader.readLine();
	String content2 = reader.readLine();
	price = reader.readLine();
	int price2 = Integer.parseInt(price);
	number = reader.readLine();
	int number2 = Integer.parseInt(number);
	String img2 = reader.readLine();
	
	price="";
	reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath3),"euc-kr"));
	String code3 = reader.readLine();
	String name3 = reader.readLine();
	String content3 = reader.readLine();
	price = reader.readLine();
	int price3 = Integer.parseInt(price);
	number = reader.readLine();
	int number3 = Integer.parseInt(number);
	String img3 = reader.readLine();
	
	price="";
	reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath4),"euc-kr"));
	String code4 = reader.readLine();
	String name4 = reader.readLine();
	String content4 = reader.readLine();
	price = reader.readLine();
	int price4 = Integer.parseInt(price);
	number = reader.readLine();
	int number4 = Integer.parseInt(number);
	String img4 = reader.readLine();
	reader.close();
%>

</DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>영화 예매 시스템</title>
	<link type="text/css" rel="stylesheet" href="store.css">
</head>
<body bgcolor="#5D5D5D">
	<h2 style="color:white">영화 예매 시스템</h2>
	<div id="content">
		<div id="movie">
		<font color="white">
			<div class="movie">
			<p><1관></p>
				<img src="<%=img1%>" alt="movie1"></img>
				<div class="movie_room">
					<p>영화번호 : <%=code1%></p>
					<p>영화명 : <%=name1%></p>
					<p>영화설명 : <%=content1%></p>
					<p>가격 : <%=price1%></p>
					<p>수량 : <%=number1%></p>
					<p>
					<form action="buy.jsp" method="post">
						<button id="btn1" value="movie1" name="movie">예매</button>
					</form>
					<p id="예매불가1"></p>
					<%
					if(number1 == 0) {  //수량이 0인 경우에 버튼 삭제하고 예매불가라는 p 태그 추가
						out.println("<script>var btn = document.getElementById('btn1'); btn.parentNode.removeChild(btn); var textNode = document.createTextNode('예매불가'); var P = document.getElementById('예매불가1'); P.appendChild(textNode);</script>");
					}
					%>
				</div>
			</div>
			<div class="movie">
				<p><2관></p>
				<img src="<%=img2%>" alt="e-port"></img>
				<div class="movie_room">
					<p>영화번호 : <%=code2%></p>
					<p>영화명 : <%=name2%></p>
					<p>영화설명 : <%=content2%></p>
					<p>가격 : <%=price2%></p>
					<p>수량 : <%=number2%></p>
					<form action="buy.jsp" method="post">
						<button id="btn2" value="movie2" name="movie">예매</button>
					</form>
					<p id="예매불가2"></p>
					<%
						if(number2 == 0) {  //재고가 0인 경우에 버튼 삭제하고 예매불가라는 p 태그 추가
							out.println("<script>var btn = document.getElementById('btn2'); btn.parentNode.removeChild(btn); var textNode = document.createTextNode('예매불가'); var P = document.getElementById('예매불가2'); P.appendChild(textNode);</script>");
						}
					%>
				</div>
			</div>
			<div class="movie">
				<p><3관></p>
				<img src="<%=img3%>" alt="keyboard"></img>
				<div class="movie_room">
					<p>영화번호 : <%=code3%></p>
					<p>영화명 : <%=name3%></p>
					<p>영화설명 : <%=content3%></p>
					<p>가격 : <%=price3%></p>
					<p>수량 : <%=number3%></p>
					<form action="buy.jsp" method="post">
						<button id="btn3" value="movie3" name="movie">예매</button>
					</form>
					<p id="예매불가3"></p>
					<%
						if(number3 == 0) {  //재고가 0인 경우에 버튼 삭제하고 예매불가라는 p 태그 추가
							out.println("<script>var btn = document.getElementById('btn3'); btn.parentNode.removeChild(btn); var textNode = document.createTextNode('예매불가'); var P = document.getElementById('예매불가3'); P.appendChild(textNode);</script>");
						}
					%>
				</div>
			</div>
			<div class="movie">
				<p><4관></p>
				<img src="<%=img4%>" alt="VRBox"></img>
				<div class="movie_room">
					<p>영화번호 : <%=code4%></p>
					<p>영화명 : <%=name4%></p>
					<p>영화설명 : <%=content4%></p>
					<p>가격 : <%=price4%></p>
					<p>수량 : <%=number4%></p>
					<form action="buy.jsp" method="post">
						<button id="btn4" value="movie4" name="movie">예매</button>
					</form>
					<p id="예매불가4"></p>
					<%  
						if(number4 == 0) {  //재고가 0인 경우에 버튼 삭제하고 예매불가라는 p 태그 추가
							out.println("<script>var btn = document.getElementById('btn4'); btn.parentNode.removeChild(btn); var textNode = document.createTextNode('예매불가'); var P = document.getElementById('예매불가4'); P.appendChild(textNode);</script>");
						}
					%>
				</div>
			</div>
		</div>
		<div id="rightContent">
			<div id="aboutUser">
				<p>정보</p>
				<p>아이디: <%=ID%></p>
				<p>포인트: <%=POINT%></p>
				<form id="useList" action="useHistory.jsp" method="post">
					<button>이용내역 확인</button>
				</form>
				<form action="logout.jsp" method="post">
					<button>로그아웃</button>
				</form>
			</div>
			<div id="addPoint">
				<p>포인트 추가</p>
				<form action="pointAdmin.jsp" method="post">
					<input type="number" name="plusPoint"></input>
					<input type="submit" value="포인트 충전요청"></input>
				</form>
			</div>
		</div>
	</div>
	
	<footer>
	
	</footer>
</body>
</html>