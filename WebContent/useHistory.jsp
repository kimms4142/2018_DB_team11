<%@page contentType="text/html; charset=UTF-8"%>
<%@page import="java.io.*"%>

<%
	request.setCharacterEncoding("UTF-8");
	
	/* session에서 ID랑 POINT 값 받아옴 - 아래 html에서 보여질 값들 */
	String ID = (String) session.getAttribute("ID");
	String POINT = (String) session.getAttribute("POINT");
	
	String directory = application.getRealPath("users");
	String filePath = directory + "/" + ID + "_이용내역.txt";
	File file = new File(filePath);
	BufferedReader reader = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"euc-kr"));
	
	/* 이용내역이 있나 없나 확인 - check 변수로 확인함 */
	int check = 0;
    while(true) {
        if(reader.readLine() == null) {  //이용내역이 없으면 break
			break;
        }
        check++;  //이용내역이 있으면 check값을 올려줌 (0 아니도록)
    }
	if(check == 0) {  //이용내역이 없는 경우
		out.println("<script>alert('이용내역이 존재하지 않습니다.'); location.href='store.jsp';</script>");
	}
	else {  //이용내역이 있는 경우
%>

</DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8"/>
	<title>이용내역</title>
	<link type="text/css" rel="stylesheet" href="store.css">
</head>
<body>
	<h2>영화 예매 시스템</h2>
	<a href="store.jsp"><img id="storeLinkImg" src="store.png" alt="store 페이지"/></a>
	<div id="content">
		<div id="useHistory">
			<table id="useListTable">
				<tr>
					<th></th>
					<th>영화명</th>
					<th>가격</th>
					<th>날짜</th>
					<th></th>
				</tr>
			</table>
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
		</div>
	</div>
	
</body>
</html>

<%
		BufferedReader reader2 = new BufferedReader(new InputStreamReader(new FileInputStream(filePath),"euc-kr"));
		
		/* 이용내역 텍스트 파일에 있는 정보들 테이블에 추가 */
%>
		<script>
			var table = document.getElementById("useListTable");
		</script>
<%
		while(true) {
			String line = reader2.readLine();
			if(line == null) {  //다 읽었으면 break
				break;
			}
			else {
				int wordNum = 1;  //한 라인에서 '|'를 기준으로 끊어줘가며 각 정보들을 저장하기 위해 사용되는 변수
				String index = "";
				String productName = "";
				String price = "";
				String today = "";
				String state = "";
				for(int i=0; i<line.length(); i++) {
					String readChar = line.charAt(i) + "";
					if(wordNum == 1) {
						if(!readChar.equals("|")) {
							index += readChar;	
						}
					}
					else if(wordNum == 2) {
						if(!readChar.equals("|")) {
							productName += readChar;	
						}
					}
					else if(wordNum == 3) {
						if(!readChar.equals("|")) {
							price += readChar;	
						}
					}
					else if(wordNum == 4) {
						if(!readChar.equals("|")) {
							today += readChar;	
						}
					}
					else if(wordNum == 5) {
							state += readChar;						
					}
					if(readChar.equals("|")) {
						wordNum++;
					}
				}
%>
				<script>
					var tableRow = document.createElement("tr");
					
					var tableData1 = document.createElement("td");
					var index = document.createTextNode("<%=index%>");
					tableData1.appendChild(index);
					
					var tableData2 = document.createElement("td");
					var productName = document.createTextNode("<%=productName%>");
					tableData2.appendChild(productName);
					
					var tableData3 = document.createElement("td");
					var price = document.createTextNode("<%=price%>");
					tableData3.appendChild(price);
					
					var tableData4 = document.createElement("td");
					var today = document.createTextNode("<%=today%>");
					tableData4.appendChild(today);
					
					var tableData5 = document.createElement("td");
					tableData5.setAttribute("id","rd5");
<%	
					if(state.equals("구매")) {
%>
						var form = document.createElement("form");
						form.setAttribute("action","cancelConfirm.jsp");
						form.setAttribute("method","post");
						var indexPara = document.createElement("input");
						indexPara.setAttribute("type","hidden");
						indexPara.setAttribute("name","indexPara");
						indexPara.setAttribute("value","<%=index%>");
						var namePara = document.createElement("input");
						namePara.setAttribute("type","hidden");
						namePara.setAttribute("name","namePara");
						namePara.setAttribute("value","<%=productName%>");
						var pricePara = document.createElement("input");
						pricePara.setAttribute("type","hidden");
						pricePara.setAttribute("name","pricePara");
						pricePara.setAttribute("value","<%=price%>");
						var cancelBtn = document.createElement("input");
						cancelBtn.setAttribute("type","submit");
						cancelBtn.setAttribute("value","구매 취소");
						form.appendChild(indexPara);
						form.appendChild(namePara);
						form.appendChild(pricePara);
						form.appendChild(cancelBtn);
						tableData5.appendChild(form);
<%
					}
					else {
%>
						var pNode = document.createElement("p");
						var state = document.createTextNode("구매 취소됨");
						pNode.appendChild(state);
						tableData5.appendChild(pNode);
						
<%						
					}				
%>				
					tableRow.appendChild(tableData1);
					tableRow.appendChild(tableData2);
					tableRow.appendChild(tableData3);
					tableRow.appendChild(tableData4);
					tableRow.appendChild(tableData5);
					
					table.appendChild(tableRow);
				</script>
<%
			}
		}
	}
%>